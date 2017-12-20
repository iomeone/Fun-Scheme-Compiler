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
  %cloptr143630 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143631 = getelementptr inbounds i64, i64* %cloptr143630, i64 0                ; &cloptr143630[0]
  %f143632 = ptrtoint void(i64,i64,i64)* @lam143628 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143632, i64* %eptr143631                                               ; store fptr
  %arg142320 = ptrtoint i64* %cloptr143630 to i64                                    ; closure cast; i64* -> i64
  %cloptr143633 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143634 = getelementptr inbounds i64, i64* %cloptr143633, i64 0                ; &cloptr143633[0]
  %f143635 = ptrtoint void(i64,i64,i64)* @lam143626 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143635, i64* %eptr143634                                               ; store fptr
  %arg142319 = ptrtoint i64* %cloptr143633 to i64                                    ; closure cast; i64* -> i64
  %cloptr143636 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143637 = getelementptr inbounds i64, i64* %cloptr143636, i64 0                ; &cloptr143636[0]
  %f143638 = ptrtoint void(i64,i64,i64)* @lam143178 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143638, i64* %eptr143637                                               ; store fptr
  %arg142318 = ptrtoint i64* %cloptr143636 to i64                                    ; closure cast; i64* -> i64
  %cloptr143639 = inttoptr i64 %arg142320 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143639)                                       ; assert function application
  %i0ptr143640 = getelementptr inbounds i64, i64* %cloptr143639, i64 0               ; &cloptr143639[0]
  %f143642 = load i64, i64* %i0ptr143640, align 8                                    ; load; *i0ptr143640
  %fptr143641 = inttoptr i64 %f143642 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143641(i64 %arg142320, i64 %arg142319, i64 %arg142318); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam143628(i64 %env143629, i64 %cont142310, i64 %aPU$yu) {
  %cloptr143643 = inttoptr i64 %aPU$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143643)                                       ; assert function application
  %i0ptr143644 = getelementptr inbounds i64, i64* %cloptr143643, i64 0               ; &cloptr143643[0]
  %f143646 = load i64, i64* %i0ptr143644, align 8                                    ; load; *i0ptr143644
  %fptr143645 = inttoptr i64 %f143646 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143645(i64 %aPU$yu, i64 %cont142310, i64 %aPU$yu)   ; tail call
  ret void
}


define void @lam143626(i64 %env143627, i64 %_95142131, i64 %FMw$Ycmb) {
  %cloptr143647 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143649 = getelementptr inbounds i64, i64* %cloptr143647, i64 1                ; &eptr143649[1]
  store i64 %FMw$Ycmb, i64* %eptr143649                                              ; *eptr143649 = %FMw$Ycmb
  %eptr143648 = getelementptr inbounds i64, i64* %cloptr143647, i64 0                ; &cloptr143647[0]
  %f143650 = ptrtoint void(i64,i64,i64)* @lam143624 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143650, i64* %eptr143648                                               ; store fptr
  %arg142325 = ptrtoint i64* %cloptr143647 to i64                                    ; closure cast; i64* -> i64
  %cloptr143651 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143652 = getelementptr inbounds i64, i64* %cloptr143651, i64 0                ; &cloptr143651[0]
  %f143653 = ptrtoint void(i64,i64,i64)* @lam143186 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143653, i64* %eptr143652                                               ; store fptr
  %arg142324 = ptrtoint i64* %cloptr143651 to i64                                    ; closure cast; i64* -> i64
  %cloptr143654 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143654)                                       ; assert function application
  %i0ptr143655 = getelementptr inbounds i64, i64* %cloptr143654, i64 0               ; &cloptr143654[0]
  %f143657 = load i64, i64* %i0ptr143655, align 8                                    ; load; *i0ptr143655
  %fptr143656 = inttoptr i64 %f143657 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143656(i64 %FMw$Ycmb, i64 %arg142325, i64 %arg142324); tail call
  ret void
}


define void @lam143624(i64 %env143625, i64 %_95142132, i64 %d8z$_37foldr1) {
  %envptr143658 = inttoptr i64 %env143625 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143659 = getelementptr inbounds i64, i64* %envptr143658, i64 1              ; &envptr143658[1]
  %FMw$Ycmb = load i64, i64* %envptr143659, align 8                                  ; load; *envptr143659
  %cloptr143660 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143662 = getelementptr inbounds i64, i64* %cloptr143660, i64 1                ; &eptr143662[1]
  %eptr143663 = getelementptr inbounds i64, i64* %cloptr143660, i64 2                ; &eptr143663[2]
  store i64 %FMw$Ycmb, i64* %eptr143662                                              ; *eptr143662 = %FMw$Ycmb
  store i64 %d8z$_37foldr1, i64* %eptr143663                                         ; *eptr143663 = %d8z$_37foldr1
  %eptr143661 = getelementptr inbounds i64, i64* %cloptr143660, i64 0                ; &cloptr143660[0]
  %f143664 = ptrtoint void(i64,i64,i64)* @lam143622 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143664, i64* %eptr143661                                               ; store fptr
  %arg142328 = ptrtoint i64* %cloptr143660 to i64                                    ; closure cast; i64* -> i64
  %cloptr143665 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143666 = getelementptr inbounds i64, i64* %cloptr143665, i64 0                ; &cloptr143665[0]
  %f143667 = ptrtoint void(i64,i64,i64)* @lam143198 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143667, i64* %eptr143666                                               ; store fptr
  %arg142327 = ptrtoint i64* %cloptr143665 to i64                                    ; closure cast; i64* -> i64
  %cloptr143668 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143668)                                       ; assert function application
  %i0ptr143669 = getelementptr inbounds i64, i64* %cloptr143668, i64 0               ; &cloptr143668[0]
  %f143671 = load i64, i64* %i0ptr143669, align 8                                    ; load; *i0ptr143669
  %fptr143670 = inttoptr i64 %f143671 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143670(i64 %FMw$Ycmb, i64 %arg142328, i64 %arg142327); tail call
  ret void
}


define void @lam143622(i64 %env143623, i64 %_95142133, i64 %DRi$_37map1) {
  %envptr143672 = inttoptr i64 %env143623 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143673 = getelementptr inbounds i64, i64* %envptr143672, i64 2              ; &envptr143672[2]
  %d8z$_37foldr1 = load i64, i64* %envptr143673, align 8                             ; load; *envptr143673
  %envptr143674 = inttoptr i64 %env143623 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143675 = getelementptr inbounds i64, i64* %envptr143674, i64 1              ; &envptr143674[1]
  %FMw$Ycmb = load i64, i64* %envptr143675, align 8                                  ; load; *envptr143675
  %cloptr143676 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143678 = getelementptr inbounds i64, i64* %cloptr143676, i64 1                ; &eptr143678[1]
  %eptr143679 = getelementptr inbounds i64, i64* %cloptr143676, i64 2                ; &eptr143679[2]
  %eptr143680 = getelementptr inbounds i64, i64* %cloptr143676, i64 3                ; &eptr143680[3]
  store i64 %FMw$Ycmb, i64* %eptr143678                                              ; *eptr143678 = %FMw$Ycmb
  store i64 %d8z$_37foldr1, i64* %eptr143679                                         ; *eptr143679 = %d8z$_37foldr1
  store i64 %DRi$_37map1, i64* %eptr143680                                           ; *eptr143680 = %DRi$_37map1
  %eptr143677 = getelementptr inbounds i64, i64* %cloptr143676, i64 0                ; &cloptr143676[0]
  %f143681 = ptrtoint void(i64,i64,i64)* @lam143620 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143681, i64* %eptr143677                                               ; store fptr
  %arg142331 = ptrtoint i64* %cloptr143676 to i64                                    ; closure cast; i64* -> i64
  %cloptr143682 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143683 = getelementptr inbounds i64, i64* %cloptr143682, i64 0                ; &cloptr143682[0]
  %f143684 = ptrtoint void(i64,i64,i64)* @lam143212 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143684, i64* %eptr143683                                               ; store fptr
  %arg142330 = ptrtoint i64* %cloptr143682 to i64                                    ; closure cast; i64* -> i64
  %cloptr143685 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143685)                                       ; assert function application
  %i0ptr143686 = getelementptr inbounds i64, i64* %cloptr143685, i64 0               ; &cloptr143685[0]
  %f143688 = load i64, i64* %i0ptr143686, align 8                                    ; load; *i0ptr143686
  %fptr143687 = inttoptr i64 %f143688 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143687(i64 %FMw$Ycmb, i64 %arg142331, i64 %arg142330); tail call
  ret void
}


define void @lam143620(i64 %env143621, i64 %_95142134, i64 %F7l$_37take) {
  %envptr143689 = inttoptr i64 %env143621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143690 = getelementptr inbounds i64, i64* %envptr143689, i64 3              ; &envptr143689[3]
  %DRi$_37map1 = load i64, i64* %envptr143690, align 8                               ; load; *envptr143690
  %envptr143691 = inttoptr i64 %env143621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143692 = getelementptr inbounds i64, i64* %envptr143691, i64 2              ; &envptr143691[2]
  %d8z$_37foldr1 = load i64, i64* %envptr143692, align 8                             ; load; *envptr143692
  %envptr143693 = inttoptr i64 %env143621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143694 = getelementptr inbounds i64, i64* %envptr143693, i64 1              ; &envptr143693[1]
  %FMw$Ycmb = load i64, i64* %envptr143694, align 8                                  ; load; *envptr143694
  %cloptr143695 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143697 = getelementptr inbounds i64, i64* %cloptr143695, i64 1                ; &eptr143697[1]
  %eptr143698 = getelementptr inbounds i64, i64* %cloptr143695, i64 2                ; &eptr143698[2]
  %eptr143699 = getelementptr inbounds i64, i64* %cloptr143695, i64 3                ; &eptr143699[3]
  %eptr143700 = getelementptr inbounds i64, i64* %cloptr143695, i64 4                ; &eptr143700[4]
  store i64 %F7l$_37take, i64* %eptr143697                                           ; *eptr143697 = %F7l$_37take
  store i64 %FMw$Ycmb, i64* %eptr143698                                              ; *eptr143698 = %FMw$Ycmb
  store i64 %d8z$_37foldr1, i64* %eptr143699                                         ; *eptr143699 = %d8z$_37foldr1
  store i64 %DRi$_37map1, i64* %eptr143700                                           ; *eptr143700 = %DRi$_37map1
  %eptr143696 = getelementptr inbounds i64, i64* %cloptr143695, i64 0                ; &cloptr143695[0]
  %f143701 = ptrtoint void(i64,i64,i64)* @lam143618 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143701, i64* %eptr143696                                               ; store fptr
  %arg142334 = ptrtoint i64* %cloptr143695 to i64                                    ; closure cast; i64* -> i64
  %cloptr143702 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143703 = getelementptr inbounds i64, i64* %cloptr143702, i64 0                ; &cloptr143702[0]
  %f143704 = ptrtoint void(i64,i64,i64)* @lam143223 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143704, i64* %eptr143703                                               ; store fptr
  %arg142333 = ptrtoint i64* %cloptr143702 to i64                                    ; closure cast; i64* -> i64
  %cloptr143705 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143705)                                       ; assert function application
  %i0ptr143706 = getelementptr inbounds i64, i64* %cloptr143705, i64 0               ; &cloptr143705[0]
  %f143708 = load i64, i64* %i0ptr143706, align 8                                    ; load; *i0ptr143706
  %fptr143707 = inttoptr i64 %f143708 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143707(i64 %FMw$Ycmb, i64 %arg142334, i64 %arg142333); tail call
  ret void
}


define void @lam143618(i64 %env143619, i64 %_95142135, i64 %smX$_37length) {
  %envptr143709 = inttoptr i64 %env143619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143710 = getelementptr inbounds i64, i64* %envptr143709, i64 4              ; &envptr143709[4]
  %DRi$_37map1 = load i64, i64* %envptr143710, align 8                               ; load; *envptr143710
  %envptr143711 = inttoptr i64 %env143619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143712 = getelementptr inbounds i64, i64* %envptr143711, i64 3              ; &envptr143711[3]
  %d8z$_37foldr1 = load i64, i64* %envptr143712, align 8                             ; load; *envptr143712
  %envptr143713 = inttoptr i64 %env143619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143714 = getelementptr inbounds i64, i64* %envptr143713, i64 2              ; &envptr143713[2]
  %FMw$Ycmb = load i64, i64* %envptr143714, align 8                                  ; load; *envptr143714
  %envptr143715 = inttoptr i64 %env143619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143716 = getelementptr inbounds i64, i64* %envptr143715, i64 1              ; &envptr143715[1]
  %F7l$_37take = load i64, i64* %envptr143716, align 8                               ; load; *envptr143716
  %cloptr143717 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr143719 = getelementptr inbounds i64, i64* %cloptr143717, i64 1                ; &eptr143719[1]
  %eptr143720 = getelementptr inbounds i64, i64* %cloptr143717, i64 2                ; &eptr143720[2]
  %eptr143721 = getelementptr inbounds i64, i64* %cloptr143717, i64 3                ; &eptr143721[3]
  %eptr143722 = getelementptr inbounds i64, i64* %cloptr143717, i64 4                ; &eptr143722[4]
  %eptr143723 = getelementptr inbounds i64, i64* %cloptr143717, i64 5                ; &eptr143723[5]
  store i64 %F7l$_37take, i64* %eptr143719                                           ; *eptr143719 = %F7l$_37take
  store i64 %smX$_37length, i64* %eptr143720                                         ; *eptr143720 = %smX$_37length
  store i64 %FMw$Ycmb, i64* %eptr143721                                              ; *eptr143721 = %FMw$Ycmb
  store i64 %d8z$_37foldr1, i64* %eptr143722                                         ; *eptr143722 = %d8z$_37foldr1
  store i64 %DRi$_37map1, i64* %eptr143723                                           ; *eptr143723 = %DRi$_37map1
  %eptr143718 = getelementptr inbounds i64, i64* %cloptr143717, i64 0                ; &cloptr143717[0]
  %f143724 = ptrtoint void(i64,i64,i64)* @lam143616 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143724, i64* %eptr143718                                               ; store fptr
  %arg142337 = ptrtoint i64* %cloptr143717 to i64                                    ; closure cast; i64* -> i64
  %cloptr143725 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143726 = getelementptr inbounds i64, i64* %cloptr143725, i64 0                ; &cloptr143725[0]
  %f143727 = ptrtoint void(i64,i64,i64)* @lam143231 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143727, i64* %eptr143726                                               ; store fptr
  %arg142336 = ptrtoint i64* %cloptr143725 to i64                                    ; closure cast; i64* -> i64
  %cloptr143728 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143728)                                       ; assert function application
  %i0ptr143729 = getelementptr inbounds i64, i64* %cloptr143728, i64 0               ; &cloptr143728[0]
  %f143731 = load i64, i64* %i0ptr143729, align 8                                    ; load; *i0ptr143729
  %fptr143730 = inttoptr i64 %f143731 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143730(i64 %FMw$Ycmb, i64 %arg142337, i64 %arg142336); tail call
  ret void
}


define void @lam143616(i64 %env143617, i64 %_95142136, i64 %MGp$_37foldl1) {
  %envptr143732 = inttoptr i64 %env143617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143733 = getelementptr inbounds i64, i64* %envptr143732, i64 5              ; &envptr143732[5]
  %DRi$_37map1 = load i64, i64* %envptr143733, align 8                               ; load; *envptr143733
  %envptr143734 = inttoptr i64 %env143617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143735 = getelementptr inbounds i64, i64* %envptr143734, i64 4              ; &envptr143734[4]
  %d8z$_37foldr1 = load i64, i64* %envptr143735, align 8                             ; load; *envptr143735
  %envptr143736 = inttoptr i64 %env143617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143737 = getelementptr inbounds i64, i64* %envptr143736, i64 3              ; &envptr143736[3]
  %FMw$Ycmb = load i64, i64* %envptr143737, align 8                                  ; load; *envptr143737
  %envptr143738 = inttoptr i64 %env143617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143739 = getelementptr inbounds i64, i64* %envptr143738, i64 2              ; &envptr143738[2]
  %smX$_37length = load i64, i64* %envptr143739, align 8                             ; load; *envptr143739
  %envptr143740 = inttoptr i64 %env143617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143741 = getelementptr inbounds i64, i64* %envptr143740, i64 1              ; &envptr143740[1]
  %F7l$_37take = load i64, i64* %envptr143741, align 8                               ; load; *envptr143741
  %cloptr143742 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143744 = getelementptr inbounds i64, i64* %cloptr143742, i64 1                ; &eptr143744[1]
  store i64 %MGp$_37foldl1, i64* %eptr143744                                         ; *eptr143744 = %MGp$_37foldl1
  %eptr143743 = getelementptr inbounds i64, i64* %cloptr143742, i64 0                ; &cloptr143742[0]
  %f143745 = ptrtoint void(i64,i64,i64)* @lam143614 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143745, i64* %eptr143743                                               ; store fptr
  %bCM$_37last = ptrtoint i64* %cloptr143742 to i64                                  ; closure cast; i64* -> i64
  %cloptr143746 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143748 = getelementptr inbounds i64, i64* %cloptr143746, i64 1                ; &eptr143748[1]
  %eptr143749 = getelementptr inbounds i64, i64* %cloptr143746, i64 2                ; &eptr143749[2]
  store i64 %F7l$_37take, i64* %eptr143748                                           ; *eptr143748 = %F7l$_37take
  store i64 %smX$_37length, i64* %eptr143749                                         ; *eptr143749 = %smX$_37length
  %eptr143747 = getelementptr inbounds i64, i64* %cloptr143746, i64 0                ; &cloptr143746[0]
  %f143750 = ptrtoint void(i64,i64,i64,i64)* @lam143608 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143750, i64* %eptr143747                                               ; store fptr
  %Ehj$_37drop_45right = ptrtoint i64* %cloptr143746 to i64                          ; closure cast; i64* -> i64
  %cloptr143751 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr143753 = getelementptr inbounds i64, i64* %cloptr143751, i64 1                ; &eptr143753[1]
  %eptr143754 = getelementptr inbounds i64, i64* %cloptr143751, i64 2                ; &eptr143754[2]
  %eptr143755 = getelementptr inbounds i64, i64* %cloptr143751, i64 3                ; &eptr143755[3]
  %eptr143756 = getelementptr inbounds i64, i64* %cloptr143751, i64 4                ; &eptr143756[4]
  %eptr143757 = getelementptr inbounds i64, i64* %cloptr143751, i64 5                ; &eptr143757[5]
  %eptr143758 = getelementptr inbounds i64, i64* %cloptr143751, i64 6                ; &eptr143758[6]
  store i64 %bCM$_37last, i64* %eptr143753                                           ; *eptr143753 = %bCM$_37last
  store i64 %Ehj$_37drop_45right, i64* %eptr143754                                   ; *eptr143754 = %Ehj$_37drop_45right
  store i64 %smX$_37length, i64* %eptr143755                                         ; *eptr143755 = %smX$_37length
  store i64 %MGp$_37foldl1, i64* %eptr143756                                         ; *eptr143756 = %MGp$_37foldl1
  store i64 %FMw$Ycmb, i64* %eptr143757                                              ; *eptr143757 = %FMw$Ycmb
  store i64 %d8z$_37foldr1, i64* %eptr143758                                         ; *eptr143758 = %d8z$_37foldr1
  %eptr143752 = getelementptr inbounds i64, i64* %cloptr143751, i64 0                ; &cloptr143751[0]
  %f143759 = ptrtoint void(i64,i64,i64)* @lam143604 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143759, i64* %eptr143752                                               ; store fptr
  %arg142357 = ptrtoint i64* %cloptr143751 to i64                                    ; closure cast; i64* -> i64
  %cloptr143760 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143762 = getelementptr inbounds i64, i64* %cloptr143760, i64 1                ; &eptr143762[1]
  %eptr143763 = getelementptr inbounds i64, i64* %cloptr143760, i64 2                ; &eptr143763[2]
  store i64 %d8z$_37foldr1, i64* %eptr143762                                         ; *eptr143762 = %d8z$_37foldr1
  store i64 %DRi$_37map1, i64* %eptr143763                                           ; *eptr143763 = %DRi$_37map1
  %eptr143761 = getelementptr inbounds i64, i64* %cloptr143760, i64 0                ; &cloptr143760[0]
  %f143764 = ptrtoint void(i64,i64,i64)* @lam143268 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143764, i64* %eptr143761                                               ; store fptr
  %arg142356 = ptrtoint i64* %cloptr143760 to i64                                    ; closure cast; i64* -> i64
  %cloptr143765 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143765)                                       ; assert function application
  %i0ptr143766 = getelementptr inbounds i64, i64* %cloptr143765, i64 0               ; &cloptr143765[0]
  %f143768 = load i64, i64* %i0ptr143766, align 8                                    ; load; *i0ptr143766
  %fptr143767 = inttoptr i64 %f143768 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143767(i64 %FMw$Ycmb, i64 %arg142357, i64 %arg142356); tail call
  ret void
}


define void @lam143614(i64 %env143615, i64 %cont142137, i64 %AZK$lst) {
  %envptr143769 = inttoptr i64 %env143615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143770 = getelementptr inbounds i64, i64* %envptr143769, i64 1              ; &envptr143769[1]
  %MGp$_37foldl1 = load i64, i64* %envptr143770, align 8                             ; load; *envptr143770
  %cloptr143771 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143772 = getelementptr inbounds i64, i64* %cloptr143771, i64 0                ; &cloptr143771[0]
  %f143773 = ptrtoint void(i64,i64,i64,i64)* @lam143612 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143773, i64* %eptr143772                                               ; store fptr
  %arg142341 = ptrtoint i64* %cloptr143771 to i64                                    ; closure cast; i64* -> i64
  %arg142340 = add i64 0, 0                                                          ; quoted ()
  %cloptr143774 = inttoptr i64 %MGp$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143774)                                       ; assert function application
  %i0ptr143775 = getelementptr inbounds i64, i64* %cloptr143774, i64 0               ; &cloptr143774[0]
  %f143777 = load i64, i64* %i0ptr143775, align 8                                    ; load; *i0ptr143775
  %fptr143776 = inttoptr i64 %f143777 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143776(i64 %MGp$_37foldl1, i64 %cont142137, i64 %arg142341, i64 %arg142340, i64 %AZK$lst); tail call
  ret void
}


define void @lam143612(i64 %env143613, i64 %cont142138, i64 %cL9$x, i64 %pDG$y) {
  %arg142345 = add i64 0, 0                                                          ; quoted ()
  %cloptr143778 = inttoptr i64 %cont142138 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143778)                                       ; assert function application
  %i0ptr143779 = getelementptr inbounds i64, i64* %cloptr143778, i64 0               ; &cloptr143778[0]
  %f143781 = load i64, i64* %i0ptr143779, align 8                                    ; load; *i0ptr143779
  %fptr143780 = inttoptr i64 %f143781 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143780(i64 %cont142138, i64 %arg142345, i64 %cL9$x) ; tail call
  ret void
}


define void @lam143608(i64 %env143609, i64 %cont142139, i64 %RmT$lst, i64 %P5c$n) {
  %envptr143782 = inttoptr i64 %env143609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143783 = getelementptr inbounds i64, i64* %envptr143782, i64 2              ; &envptr143782[2]
  %smX$_37length = load i64, i64* %envptr143783, align 8                             ; load; *envptr143783
  %envptr143784 = inttoptr i64 %env143609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143785 = getelementptr inbounds i64, i64* %envptr143784, i64 1              ; &envptr143784[1]
  %F7l$_37take = load i64, i64* %envptr143785, align 8                               ; load; *envptr143785
  %cloptr143786 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143788 = getelementptr inbounds i64, i64* %cloptr143786, i64 1                ; &eptr143788[1]
  %eptr143789 = getelementptr inbounds i64, i64* %cloptr143786, i64 2                ; &eptr143789[2]
  %eptr143790 = getelementptr inbounds i64, i64* %cloptr143786, i64 3                ; &eptr143790[3]
  %eptr143791 = getelementptr inbounds i64, i64* %cloptr143786, i64 4                ; &eptr143791[4]
  store i64 %F7l$_37take, i64* %eptr143788                                           ; *eptr143788 = %F7l$_37take
  store i64 %P5c$n, i64* %eptr143789                                                 ; *eptr143789 = %P5c$n
  store i64 %RmT$lst, i64* %eptr143790                                               ; *eptr143790 = %RmT$lst
  store i64 %cont142139, i64* %eptr143791                                            ; *eptr143791 = %cont142139
  %eptr143787 = getelementptr inbounds i64, i64* %cloptr143786, i64 0                ; &cloptr143786[0]
  %f143792 = ptrtoint void(i64,i64,i64)* @lam143606 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143792, i64* %eptr143787                                               ; store fptr
  %arg142348 = ptrtoint i64* %cloptr143786 to i64                                    ; closure cast; i64* -> i64
  %cloptr143793 = inttoptr i64 %smX$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143793)                                       ; assert function application
  %i0ptr143794 = getelementptr inbounds i64, i64* %cloptr143793, i64 0               ; &cloptr143793[0]
  %f143796 = load i64, i64* %i0ptr143794, align 8                                    ; load; *i0ptr143794
  %fptr143795 = inttoptr i64 %f143796 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143795(i64 %smX$_37length, i64 %arg142348, i64 %RmT$lst); tail call
  ret void
}


define void @lam143606(i64 %env143607, i64 %_95142140, i64 %a142034) {
  %envptr143797 = inttoptr i64 %env143607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143798 = getelementptr inbounds i64, i64* %envptr143797, i64 4              ; &envptr143797[4]
  %cont142139 = load i64, i64* %envptr143798, align 8                                ; load; *envptr143798
  %envptr143799 = inttoptr i64 %env143607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143800 = getelementptr inbounds i64, i64* %envptr143799, i64 3              ; &envptr143799[3]
  %RmT$lst = load i64, i64* %envptr143800, align 8                                   ; load; *envptr143800
  %envptr143801 = inttoptr i64 %env143607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143802 = getelementptr inbounds i64, i64* %envptr143801, i64 2              ; &envptr143801[2]
  %P5c$n = load i64, i64* %envptr143802, align 8                                     ; load; *envptr143802
  %envptr143803 = inttoptr i64 %env143607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143804 = getelementptr inbounds i64, i64* %envptr143803, i64 1              ; &envptr143803[1]
  %F7l$_37take = load i64, i64* %envptr143804, align 8                               ; load; *envptr143804
  %a142035 = call i64 @prim__45(i64 %a142034, i64 %P5c$n)                            ; call prim__45
  %cloptr143805 = inttoptr i64 %F7l$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143805)                                       ; assert function application
  %i0ptr143806 = getelementptr inbounds i64, i64* %cloptr143805, i64 0               ; &cloptr143805[0]
  %f143808 = load i64, i64* %i0ptr143806, align 8                                    ; load; *i0ptr143806
  %fptr143807 = inttoptr i64 %f143808 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143807(i64 %F7l$_37take, i64 %cont142139, i64 %RmT$lst, i64 %a142035); tail call
  ret void
}


define void @lam143604(i64 %env143605, i64 %_95142141, i64 %AGZ$_37foldr) {
  %envptr143809 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143810 = getelementptr inbounds i64, i64* %envptr143809, i64 6              ; &envptr143809[6]
  %d8z$_37foldr1 = load i64, i64* %envptr143810, align 8                             ; load; *envptr143810
  %envptr143811 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143812 = getelementptr inbounds i64, i64* %envptr143811, i64 5              ; &envptr143811[5]
  %FMw$Ycmb = load i64, i64* %envptr143812, align 8                                  ; load; *envptr143812
  %envptr143813 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143814 = getelementptr inbounds i64, i64* %envptr143813, i64 4              ; &envptr143813[4]
  %MGp$_37foldl1 = load i64, i64* %envptr143814, align 8                             ; load; *envptr143814
  %envptr143815 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143816 = getelementptr inbounds i64, i64* %envptr143815, i64 3              ; &envptr143815[3]
  %smX$_37length = load i64, i64* %envptr143816, align 8                             ; load; *envptr143816
  %envptr143817 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143818 = getelementptr inbounds i64, i64* %envptr143817, i64 2              ; &envptr143817[2]
  %Ehj$_37drop_45right = load i64, i64* %envptr143818, align 8                       ; load; *envptr143818
  %envptr143819 = inttoptr i64 %env143605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143820 = getelementptr inbounds i64, i64* %envptr143819, i64 1              ; &envptr143819[1]
  %bCM$_37last = load i64, i64* %envptr143820, align 8                               ; load; *envptr143820
  %cloptr143821 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143823 = getelementptr inbounds i64, i64* %cloptr143821, i64 1                ; &eptr143823[1]
  store i64 %d8z$_37foldr1, i64* %eptr143823                                         ; *eptr143823 = %d8z$_37foldr1
  %eptr143822 = getelementptr inbounds i64, i64* %cloptr143821, i64 0                ; &cloptr143821[0]
  %f143824 = ptrtoint void(i64,i64,i64,i64)* @lam143602 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143824, i64* %eptr143822                                               ; store fptr
  %J5O$_37map1 = ptrtoint i64* %cloptr143821 to i64                                  ; closure cast; i64* -> i64
  %cloptr143825 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143827 = getelementptr inbounds i64, i64* %cloptr143825, i64 1                ; &eptr143827[1]
  %eptr143828 = getelementptr inbounds i64, i64* %cloptr143825, i64 2                ; &eptr143828[2]
  %eptr143829 = getelementptr inbounds i64, i64* %cloptr143825, i64 3                ; &eptr143829[3]
  store i64 %AGZ$_37foldr, i64* %eptr143827                                          ; *eptr143827 = %AGZ$_37foldr
  store i64 %bCM$_37last, i64* %eptr143828                                           ; *eptr143828 = %bCM$_37last
  store i64 %Ehj$_37drop_45right, i64* %eptr143829                                   ; *eptr143829 = %Ehj$_37drop_45right
  %eptr143826 = getelementptr inbounds i64, i64* %cloptr143825, i64 0                ; &cloptr143825[0]
  %f143830 = ptrtoint void(i64,i64)* @lam143594 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143830, i64* %eptr143826                                               ; store fptr
  %Xpb$_37map = ptrtoint i64* %cloptr143825 to i64                                   ; closure cast; i64* -> i64
  %cloptr143831 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143833 = getelementptr inbounds i64, i64* %cloptr143831, i64 1                ; &eptr143833[1]
  %eptr143834 = getelementptr inbounds i64, i64* %cloptr143831, i64 2                ; &eptr143834[2]
  store i64 %smX$_37length, i64* %eptr143833                                         ; *eptr143833 = %smX$_37length
  store i64 %MGp$_37foldl1, i64* %eptr143834                                         ; *eptr143834 = %MGp$_37foldl1
  %eptr143832 = getelementptr inbounds i64, i64* %cloptr143831, i64 0                ; &cloptr143831[0]
  %f143835 = ptrtoint void(i64,i64,i64)* @lam143581 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143835, i64* %eptr143832                                               ; store fptr
  %arg142399 = ptrtoint i64* %cloptr143831 to i64                                    ; closure cast; i64* -> i64
  %cloptr143836 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143838 = getelementptr inbounds i64, i64* %cloptr143836, i64 1                ; &eptr143838[1]
  %eptr143839 = getelementptr inbounds i64, i64* %cloptr143836, i64 2                ; &eptr143839[2]
  %eptr143840 = getelementptr inbounds i64, i64* %cloptr143836, i64 3                ; &eptr143840[3]
  store i64 %AGZ$_37foldr, i64* %eptr143838                                          ; *eptr143838 = %AGZ$_37foldr
  store i64 %d8z$_37foldr1, i64* %eptr143839                                         ; *eptr143839 = %d8z$_37foldr1
  store i64 %J5O$_37map1, i64* %eptr143840                                           ; *eptr143840 = %J5O$_37map1
  %eptr143837 = getelementptr inbounds i64, i64* %cloptr143836, i64 0                ; &cloptr143836[0]
  %f143841 = ptrtoint void(i64,i64,i64)* @lam143305 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143841, i64* %eptr143837                                               ; store fptr
  %arg142398 = ptrtoint i64* %cloptr143836 to i64                                    ; closure cast; i64* -> i64
  %cloptr143842 = inttoptr i64 %FMw$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143842)                                       ; assert function application
  %i0ptr143843 = getelementptr inbounds i64, i64* %cloptr143842, i64 0               ; &cloptr143842[0]
  %f143845 = load i64, i64* %i0ptr143843, align 8                                    ; load; *i0ptr143843
  %fptr143844 = inttoptr i64 %f143845 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143844(i64 %FMw$Ycmb, i64 %arg142399, i64 %arg142398); tail call
  ret void
}


define void @lam143602(i64 %env143603, i64 %cont142142, i64 %lqX$f, i64 %nKu$lst) {
  %envptr143846 = inttoptr i64 %env143603 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143847 = getelementptr inbounds i64, i64* %envptr143846, i64 1              ; &envptr143846[1]
  %d8z$_37foldr1 = load i64, i64* %envptr143847, align 8                             ; load; *envptr143847
  %cloptr143848 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143850 = getelementptr inbounds i64, i64* %cloptr143848, i64 1                ; &eptr143850[1]
  store i64 %lqX$f, i64* %eptr143850                                                 ; *eptr143850 = %lqX$f
  %eptr143849 = getelementptr inbounds i64, i64* %cloptr143848, i64 0                ; &cloptr143848[0]
  %f143851 = ptrtoint void(i64,i64,i64,i64)* @lam143600 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143851, i64* %eptr143849                                               ; store fptr
  %arg142361 = ptrtoint i64* %cloptr143848 to i64                                    ; closure cast; i64* -> i64
  %arg142360 = add i64 0, 0                                                          ; quoted ()
  %cloptr143852 = inttoptr i64 %d8z$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143852)                                       ; assert function application
  %i0ptr143853 = getelementptr inbounds i64, i64* %cloptr143852, i64 0               ; &cloptr143852[0]
  %f143855 = load i64, i64* %i0ptr143853, align 8                                    ; load; *i0ptr143853
  %fptr143854 = inttoptr i64 %f143855 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143854(i64 %d8z$_37foldr1, i64 %cont142142, i64 %arg142361, i64 %arg142360, i64 %nKu$lst); tail call
  ret void
}


define void @lam143600(i64 %env143601, i64 %cont142143, i64 %RA7$v, i64 %Jgf$r) {
  %envptr143856 = inttoptr i64 %env143601 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143857 = getelementptr inbounds i64, i64* %envptr143856, i64 1              ; &envptr143856[1]
  %lqX$f = load i64, i64* %envptr143857, align 8                                     ; load; *envptr143857
  %cloptr143858 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143860 = getelementptr inbounds i64, i64* %cloptr143858, i64 1                ; &eptr143860[1]
  %eptr143861 = getelementptr inbounds i64, i64* %cloptr143858, i64 2                ; &eptr143861[2]
  store i64 %Jgf$r, i64* %eptr143860                                                 ; *eptr143860 = %Jgf$r
  store i64 %cont142143, i64* %eptr143861                                            ; *eptr143861 = %cont142143
  %eptr143859 = getelementptr inbounds i64, i64* %cloptr143858, i64 0                ; &cloptr143858[0]
  %f143862 = ptrtoint void(i64,i64,i64)* @lam143598 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143862, i64* %eptr143859                                               ; store fptr
  %arg142365 = ptrtoint i64* %cloptr143858 to i64                                    ; closure cast; i64* -> i64
  %cloptr143863 = inttoptr i64 %lqX$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143863)                                       ; assert function application
  %i0ptr143864 = getelementptr inbounds i64, i64* %cloptr143863, i64 0               ; &cloptr143863[0]
  %f143866 = load i64, i64* %i0ptr143864, align 8                                    ; load; *i0ptr143864
  %fptr143865 = inttoptr i64 %f143866 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143865(i64 %lqX$f, i64 %arg142365, i64 %RA7$v)      ; tail call
  ret void
}


define void @lam143598(i64 %env143599, i64 %_95142144, i64 %a142044) {
  %envptr143867 = inttoptr i64 %env143599 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143868 = getelementptr inbounds i64, i64* %envptr143867, i64 2              ; &envptr143867[2]
  %cont142143 = load i64, i64* %envptr143868, align 8                                ; load; *envptr143868
  %envptr143869 = inttoptr i64 %env143599 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143870 = getelementptr inbounds i64, i64* %envptr143869, i64 1              ; &envptr143869[1]
  %Jgf$r = load i64, i64* %envptr143870, align 8                                     ; load; *envptr143870
  %retprim142145 = call i64 @prim_cons(i64 %a142044, i64 %Jgf$r)                     ; call prim_cons
  %arg142370 = add i64 0, 0                                                          ; quoted ()
  %cloptr143871 = inttoptr i64 %cont142143 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143871)                                       ; assert function application
  %i0ptr143872 = getelementptr inbounds i64, i64* %cloptr143871, i64 0               ; &cloptr143871[0]
  %f143874 = load i64, i64* %i0ptr143872, align 8                                    ; load; *i0ptr143872
  %fptr143873 = inttoptr i64 %f143874 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143873(i64 %cont142143, i64 %arg142370, i64 %retprim142145); tail call
  ret void
}


define void @lam143594(i64 %env143595, i64 %sdm$args142147) {
  %envptr143875 = inttoptr i64 %env143595 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143876 = getelementptr inbounds i64, i64* %envptr143875, i64 3              ; &envptr143875[3]
  %Ehj$_37drop_45right = load i64, i64* %envptr143876, align 8                       ; load; *envptr143876
  %envptr143877 = inttoptr i64 %env143595 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143878 = getelementptr inbounds i64, i64* %envptr143877, i64 2              ; &envptr143877[2]
  %bCM$_37last = load i64, i64* %envptr143878, align 8                               ; load; *envptr143878
  %envptr143879 = inttoptr i64 %env143595 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143880 = getelementptr inbounds i64, i64* %envptr143879, i64 1              ; &envptr143879[1]
  %AGZ$_37foldr = load i64, i64* %envptr143880, align 8                              ; load; *envptr143880
  %cont142146 = call i64 @prim_car(i64 %sdm$args142147)                              ; call prim_car
  %sdm$args = call i64 @prim_cdr(i64 %sdm$args142147)                                ; call prim_cdr
  %oER$f = call i64 @prim_car(i64 %sdm$args)                                         ; call prim_car
  %lSE$lsts = call i64 @prim_cdr(i64 %sdm$args)                                      ; call prim_cdr
  %arg142377 = add i64 0, 0                                                          ; quoted ()
  %a142048 = call i64 @prim_cons(i64 %arg142377, i64 %lSE$lsts)                      ; call prim_cons
  %cloptr143881 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143883 = getelementptr inbounds i64, i64* %cloptr143881, i64 1                ; &eptr143883[1]
  %eptr143884 = getelementptr inbounds i64, i64* %cloptr143881, i64 2                ; &eptr143884[2]
  %eptr143885 = getelementptr inbounds i64, i64* %cloptr143881, i64 3                ; &eptr143885[3]
  store i64 %bCM$_37last, i64* %eptr143883                                           ; *eptr143883 = %bCM$_37last
  store i64 %oER$f, i64* %eptr143884                                                 ; *eptr143884 = %oER$f
  store i64 %Ehj$_37drop_45right, i64* %eptr143885                                   ; *eptr143885 = %Ehj$_37drop_45right
  %eptr143882 = getelementptr inbounds i64, i64* %cloptr143881, i64 0                ; &cloptr143881[0]
  %f143886 = ptrtoint void(i64,i64)* @lam143591 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143886, i64* %eptr143882                                               ; store fptr
  %arg142379 = ptrtoint i64* %cloptr143881 to i64                                    ; closure cast; i64* -> i64
  %a142049 = call i64 @prim_cons(i64 %arg142379, i64 %a142048)                       ; call prim_cons
  %cps_45lst142155 = call i64 @prim_cons(i64 %cont142146, i64 %a142049)              ; call prim_cons
  %cloptr143887 = inttoptr i64 %AGZ$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143887)                                       ; assert function application
  %i0ptr143888 = getelementptr inbounds i64, i64* %cloptr143887, i64 0               ; &cloptr143887[0]
  %f143890 = load i64, i64* %i0ptr143888, align 8                                    ; load; *i0ptr143888
  %fptr143889 = inttoptr i64 %f143890 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143889(i64 %AGZ$_37foldr, i64 %cps_45lst142155)     ; tail call
  ret void
}


define void @lam143591(i64 %env143592, i64 %IdE$fargs142149) {
  %envptr143891 = inttoptr i64 %env143592 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143892 = getelementptr inbounds i64, i64* %envptr143891, i64 3              ; &envptr143891[3]
  %Ehj$_37drop_45right = load i64, i64* %envptr143892, align 8                       ; load; *envptr143892
  %envptr143893 = inttoptr i64 %env143592 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143894 = getelementptr inbounds i64, i64* %envptr143893, i64 2              ; &envptr143893[2]
  %oER$f = load i64, i64* %envptr143894, align 8                                     ; load; *envptr143894
  %envptr143895 = inttoptr i64 %env143592 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143896 = getelementptr inbounds i64, i64* %envptr143895, i64 1              ; &envptr143895[1]
  %bCM$_37last = load i64, i64* %envptr143896, align 8                               ; load; *envptr143896
  %cont142148 = call i64 @prim_car(i64 %IdE$fargs142149)                             ; call prim_car
  %IdE$fargs = call i64 @prim_cdr(i64 %IdE$fargs142149)                              ; call prim_cdr
  %cloptr143897 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143899 = getelementptr inbounds i64, i64* %cloptr143897, i64 1                ; &eptr143899[1]
  %eptr143900 = getelementptr inbounds i64, i64* %cloptr143897, i64 2                ; &eptr143900[2]
  %eptr143901 = getelementptr inbounds i64, i64* %cloptr143897, i64 3                ; &eptr143901[3]
  %eptr143902 = getelementptr inbounds i64, i64* %cloptr143897, i64 4                ; &eptr143902[4]
  store i64 %cont142148, i64* %eptr143899                                            ; *eptr143899 = %cont142148
  store i64 %bCM$_37last, i64* %eptr143900                                           ; *eptr143900 = %bCM$_37last
  store i64 %oER$f, i64* %eptr143901                                                 ; *eptr143901 = %oER$f
  store i64 %IdE$fargs, i64* %eptr143902                                             ; *eptr143902 = %IdE$fargs
  %eptr143898 = getelementptr inbounds i64, i64* %cloptr143897, i64 0                ; &cloptr143897[0]
  %f143903 = ptrtoint void(i64,i64,i64)* @lam143589 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143903, i64* %eptr143898                                               ; store fptr
  %arg142384 = ptrtoint i64* %cloptr143897 to i64                                    ; closure cast; i64* -> i64
  %arg142382 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr143904 = inttoptr i64 %Ehj$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143904)                                       ; assert function application
  %i0ptr143905 = getelementptr inbounds i64, i64* %cloptr143904, i64 0               ; &cloptr143904[0]
  %f143907 = load i64, i64* %i0ptr143905, align 8                                    ; load; *i0ptr143905
  %fptr143906 = inttoptr i64 %f143907 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143906(i64 %Ehj$_37drop_45right, i64 %arg142384, i64 %IdE$fargs, i64 %arg142382); tail call
  ret void
}


define void @lam143589(i64 %env143590, i64 %_95142150, i64 %a142045) {
  %envptr143908 = inttoptr i64 %env143590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143909 = getelementptr inbounds i64, i64* %envptr143908, i64 4              ; &envptr143908[4]
  %IdE$fargs = load i64, i64* %envptr143909, align 8                                 ; load; *envptr143909
  %envptr143910 = inttoptr i64 %env143590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143911 = getelementptr inbounds i64, i64* %envptr143910, i64 3              ; &envptr143910[3]
  %oER$f = load i64, i64* %envptr143911, align 8                                     ; load; *envptr143911
  %envptr143912 = inttoptr i64 %env143590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143913 = getelementptr inbounds i64, i64* %envptr143912, i64 2              ; &envptr143912[2]
  %bCM$_37last = load i64, i64* %envptr143913, align 8                               ; load; *envptr143913
  %envptr143914 = inttoptr i64 %env143590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143915 = getelementptr inbounds i64, i64* %envptr143914, i64 1              ; &envptr143914[1]
  %cont142148 = load i64, i64* %envptr143915, align 8                                ; load; *envptr143915
  %cloptr143916 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143918 = getelementptr inbounds i64, i64* %cloptr143916, i64 1                ; &eptr143918[1]
  %eptr143919 = getelementptr inbounds i64, i64* %cloptr143916, i64 2                ; &eptr143919[2]
  %eptr143920 = getelementptr inbounds i64, i64* %cloptr143916, i64 3                ; &eptr143920[3]
  store i64 %cont142148, i64* %eptr143918                                            ; *eptr143918 = %cont142148
  store i64 %bCM$_37last, i64* %eptr143919                                           ; *eptr143919 = %bCM$_37last
  store i64 %IdE$fargs, i64* %eptr143920                                             ; *eptr143920 = %IdE$fargs
  %eptr143917 = getelementptr inbounds i64, i64* %cloptr143916, i64 0                ; &cloptr143916[0]
  %f143921 = ptrtoint void(i64,i64,i64)* @lam143587 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143921, i64* %eptr143917                                               ; store fptr
  %arg142387 = ptrtoint i64* %cloptr143916 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142154 = call i64 @prim_cons(i64 %arg142387, i64 %a142045)               ; call prim_cons
  %cloptr143922 = inttoptr i64 %oER$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143922)                                       ; assert function application
  %i0ptr143923 = getelementptr inbounds i64, i64* %cloptr143922, i64 0               ; &cloptr143922[0]
  %f143925 = load i64, i64* %i0ptr143923, align 8                                    ; load; *i0ptr143923
  %fptr143924 = inttoptr i64 %f143925 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143924(i64 %oER$f, i64 %cps_45lst142154)            ; tail call
  ret void
}


define void @lam143587(i64 %env143588, i64 %_95142151, i64 %a142046) {
  %envptr143926 = inttoptr i64 %env143588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143927 = getelementptr inbounds i64, i64* %envptr143926, i64 3              ; &envptr143926[3]
  %IdE$fargs = load i64, i64* %envptr143927, align 8                                 ; load; *envptr143927
  %envptr143928 = inttoptr i64 %env143588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143929 = getelementptr inbounds i64, i64* %envptr143928, i64 2              ; &envptr143928[2]
  %bCM$_37last = load i64, i64* %envptr143929, align 8                               ; load; *envptr143929
  %envptr143930 = inttoptr i64 %env143588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143931 = getelementptr inbounds i64, i64* %envptr143930, i64 1              ; &envptr143930[1]
  %cont142148 = load i64, i64* %envptr143931, align 8                                ; load; *envptr143931
  %cloptr143932 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143934 = getelementptr inbounds i64, i64* %cloptr143932, i64 1                ; &eptr143934[1]
  %eptr143935 = getelementptr inbounds i64, i64* %cloptr143932, i64 2                ; &eptr143935[2]
  store i64 %cont142148, i64* %eptr143934                                            ; *eptr143934 = %cont142148
  store i64 %a142046, i64* %eptr143935                                               ; *eptr143935 = %a142046
  %eptr143933 = getelementptr inbounds i64, i64* %cloptr143932, i64 0                ; &cloptr143932[0]
  %f143936 = ptrtoint void(i64,i64,i64)* @lam143585 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143936, i64* %eptr143933                                               ; store fptr
  %arg142389 = ptrtoint i64* %cloptr143932 to i64                                    ; closure cast; i64* -> i64
  %cloptr143937 = inttoptr i64 %bCM$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143937)                                       ; assert function application
  %i0ptr143938 = getelementptr inbounds i64, i64* %cloptr143937, i64 0               ; &cloptr143937[0]
  %f143940 = load i64, i64* %i0ptr143938, align 8                                    ; load; *i0ptr143938
  %fptr143939 = inttoptr i64 %f143940 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143939(i64 %bCM$_37last, i64 %arg142389, i64 %IdE$fargs); tail call
  ret void
}


define void @lam143585(i64 %env143586, i64 %_95142152, i64 %a142047) {
  %envptr143941 = inttoptr i64 %env143586 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143942 = getelementptr inbounds i64, i64* %envptr143941, i64 2              ; &envptr143941[2]
  %a142046 = load i64, i64* %envptr143942, align 8                                   ; load; *envptr143942
  %envptr143943 = inttoptr i64 %env143586 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143944 = getelementptr inbounds i64, i64* %envptr143943, i64 1              ; &envptr143943[1]
  %cont142148 = load i64, i64* %envptr143944, align 8                                ; load; *envptr143944
  %retprim142153 = call i64 @prim_cons(i64 %a142046, i64 %a142047)                   ; call prim_cons
  %arg142394 = add i64 0, 0                                                          ; quoted ()
  %cloptr143945 = inttoptr i64 %cont142148 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143945)                                       ; assert function application
  %i0ptr143946 = getelementptr inbounds i64, i64* %cloptr143945, i64 0               ; &cloptr143945[0]
  %f143948 = load i64, i64* %i0ptr143946, align 8                                    ; load; *i0ptr143946
  %fptr143947 = inttoptr i64 %f143948 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143947(i64 %cont142148, i64 %arg142394, i64 %retprim142153); tail call
  ret void
}


define void @lam143581(i64 %env143582, i64 %_95142156, i64 %ApA$_37foldl) {
  %envptr143949 = inttoptr i64 %env143582 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143950 = getelementptr inbounds i64, i64* %envptr143949, i64 2              ; &envptr143949[2]
  %MGp$_37foldl1 = load i64, i64* %envptr143950, align 8                             ; load; *envptr143950
  %envptr143951 = inttoptr i64 %env143582 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143952 = getelementptr inbounds i64, i64* %envptr143951, i64 1              ; &envptr143951[1]
  %smX$_37length = load i64, i64* %envptr143952, align 8                             ; load; *envptr143952
  %cloptr143953 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143954 = getelementptr inbounds i64, i64* %cloptr143953, i64 0                ; &cloptr143953[0]
  %f143955 = ptrtoint void(i64,i64,i64,i64)* @lam143579 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143955, i64* %eptr143954                                               ; store fptr
  %NHu$_37_62 = ptrtoint i64* %cloptr143953 to i64                                   ; closure cast; i64* -> i64
  %cloptr143956 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143957 = getelementptr inbounds i64, i64* %cloptr143956, i64 0                ; &cloptr143956[0]
  %f143958 = ptrtoint void(i64,i64,i64,i64)* @lam143576 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143958, i64* %eptr143957                                               ; store fptr
  %s19$_37_62_61 = ptrtoint i64* %cloptr143956 to i64                                ; closure cast; i64* -> i64
  %arg142414 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142413 = add i64 0, 0                                                          ; quoted ()
  %FVl$_37append = call i64 @prim_make_45vector(i64 %arg142414, i64 %arg142413)      ; call prim_make_45vector
  %arg142416 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr143959 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143961 = getelementptr inbounds i64, i64* %cloptr143959, i64 1                ; &eptr143961[1]
  store i64 %FVl$_37append, i64* %eptr143961                                         ; *eptr143961 = %FVl$_37append
  %eptr143960 = getelementptr inbounds i64, i64* %cloptr143959, i64 0                ; &cloptr143959[0]
  %f143962 = ptrtoint void(i64,i64,i64,i64)* @lam143570 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143962, i64* %eptr143960                                               ; store fptr
  %arg142415 = ptrtoint i64* %cloptr143959 to i64                                    ; closure cast; i64* -> i64
  %KnJ$_950 = call i64 @prim_vector_45set_33(i64 %FVl$_37append, i64 %arg142416, i64 %arg142415); call prim_vector_45set_33
  %arg142435 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142246 = call i64 @prim_vector_45ref(i64 %FVl$_37append, i64 %arg142435)   ; call prim_vector_45ref
  %cloptr143963 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143965 = getelementptr inbounds i64, i64* %cloptr143963, i64 1                ; &eptr143965[1]
  %eptr143966 = getelementptr inbounds i64, i64* %cloptr143963, i64 2                ; &eptr143966[2]
  %eptr143967 = getelementptr inbounds i64, i64* %cloptr143963, i64 3                ; &eptr143967[3]
  store i64 %smX$_37length, i64* %eptr143965                                         ; *eptr143965 = %smX$_37length
  store i64 %MGp$_37foldl1, i64* %eptr143966                                         ; *eptr143966 = %MGp$_37foldl1
  store i64 %NHu$_37_62, i64* %eptr143967                                            ; *eptr143967 = %NHu$_37_62
  %eptr143964 = getelementptr inbounds i64, i64* %cloptr143963, i64 0                ; &cloptr143963[0]
  %f143968 = ptrtoint void(i64,i64,i64)* @lam143562 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143968, i64* %eptr143964                                               ; store fptr
  %arg142439 = ptrtoint i64* %cloptr143963 to i64                                    ; closure cast; i64* -> i64
  %arg142438 = add i64 0, 0                                                          ; quoted ()
  %cloptr143969 = inttoptr i64 %arg142439 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143969)                                       ; assert function application
  %i0ptr143970 = getelementptr inbounds i64, i64* %cloptr143969, i64 0               ; &cloptr143969[0]
  %f143972 = load i64, i64* %i0ptr143970, align 8                                    ; load; *i0ptr143970
  %fptr143971 = inttoptr i64 %f143972 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143971(i64 %arg142439, i64 %arg142438, i64 %retprim142246); tail call
  ret void
}


define void @lam143579(i64 %env143580, i64 %cont142157, i64 %ECC$a, i64 %dKU$b) {
  %a142057 = call i64 @prim__60_61(i64 %ECC$a, i64 %dKU$b)                           ; call prim__60_61
  %retprim142158 = call i64 @prim_not(i64 %a142057)                                  ; call prim_not
  %arg142405 = add i64 0, 0                                                          ; quoted ()
  %cloptr143973 = inttoptr i64 %cont142157 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143973)                                       ; assert function application
  %i0ptr143974 = getelementptr inbounds i64, i64* %cloptr143973, i64 0               ; &cloptr143973[0]
  %f143976 = load i64, i64* %i0ptr143974, align 8                                    ; load; *i0ptr143974
  %fptr143975 = inttoptr i64 %f143976 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143975(i64 %cont142157, i64 %arg142405, i64 %retprim142158); tail call
  ret void
}


define void @lam143576(i64 %env143577, i64 %cont142159, i64 %p6A$a, i64 %K8P$b) {
  %a142058 = call i64 @prim__60(i64 %p6A$a, i64 %K8P$b)                              ; call prim__60
  %retprim142160 = call i64 @prim_not(i64 %a142058)                                  ; call prim_not
  %arg142411 = add i64 0, 0                                                          ; quoted ()
  %cloptr143977 = inttoptr i64 %cont142159 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143977)                                       ; assert function application
  %i0ptr143978 = getelementptr inbounds i64, i64* %cloptr143977, i64 0               ; &cloptr143977[0]
  %f143980 = load i64, i64* %i0ptr143978, align 8                                    ; load; *i0ptr143978
  %fptr143979 = inttoptr i64 %f143980 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143979(i64 %cont142159, i64 %arg142411, i64 %retprim142160); tail call
  ret void
}


define void @lam143570(i64 %env143571, i64 %cont142243, i64 %wXT$ls0, i64 %sGj$ls1) {
  %envptr143981 = inttoptr i64 %env143571 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143982 = getelementptr inbounds i64, i64* %envptr143981, i64 1              ; &envptr143981[1]
  %FVl$_37append = load i64, i64* %envptr143982, align 8                             ; load; *envptr143982
  %a142059 = call i64 @prim_null_63(i64 %wXT$ls0)                                    ; call prim_null_63
  %cmp143983 = icmp eq i64 %a142059, 15                                              ; false?
  br i1 %cmp143983, label %else143985, label %then143984                             ; if

then143984:
  %arg142420 = add i64 0, 0                                                          ; quoted ()
  %cloptr143986 = inttoptr i64 %cont142243 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143986)                                       ; assert function application
  %i0ptr143987 = getelementptr inbounds i64, i64* %cloptr143986, i64 0               ; &cloptr143986[0]
  %f143989 = load i64, i64* %i0ptr143987, align 8                                    ; load; *i0ptr143987
  %fptr143988 = inttoptr i64 %f143989 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143988(i64 %cont142243, i64 %arg142420, i64 %sGj$ls1); tail call
  ret void

else143985:
  %a142060 = call i64 @prim_car(i64 %wXT$ls0)                                        ; call prim_car
  %arg142423 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142061 = call i64 @prim_vector_45ref(i64 %FVl$_37append, i64 %arg142423)         ; call prim_vector_45ref
  %a142062 = call i64 @prim_cdr(i64 %wXT$ls0)                                        ; call prim_cdr
  %cloptr143990 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143992 = getelementptr inbounds i64, i64* %cloptr143990, i64 1                ; &eptr143992[1]
  %eptr143993 = getelementptr inbounds i64, i64* %cloptr143990, i64 2                ; &eptr143993[2]
  store i64 %cont142243, i64* %eptr143992                                            ; *eptr143992 = %cont142243
  store i64 %a142060, i64* %eptr143993                                               ; *eptr143993 = %a142060
  %eptr143991 = getelementptr inbounds i64, i64* %cloptr143990, i64 0                ; &cloptr143990[0]
  %f143994 = ptrtoint void(i64,i64,i64)* @lam143567 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143994, i64* %eptr143991                                               ; store fptr
  %arg142428 = ptrtoint i64* %cloptr143990 to i64                                    ; closure cast; i64* -> i64
  %cloptr143995 = inttoptr i64 %a142061 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143995)                                       ; assert function application
  %i0ptr143996 = getelementptr inbounds i64, i64* %cloptr143995, i64 0               ; &cloptr143995[0]
  %f143998 = load i64, i64* %i0ptr143996, align 8                                    ; load; *i0ptr143996
  %fptr143997 = inttoptr i64 %f143998 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143997(i64 %a142061, i64 %arg142428, i64 %a142062, i64 %sGj$ls1); tail call
  ret void
}


define void @lam143567(i64 %env143568, i64 %_95142244, i64 %a142063) {
  %envptr143999 = inttoptr i64 %env143568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144000 = getelementptr inbounds i64, i64* %envptr143999, i64 2              ; &envptr143999[2]
  %a142060 = load i64, i64* %envptr144000, align 8                                   ; load; *envptr144000
  %envptr144001 = inttoptr i64 %env143568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144002 = getelementptr inbounds i64, i64* %envptr144001, i64 1              ; &envptr144001[1]
  %cont142243 = load i64, i64* %envptr144002, align 8                                ; load; *envptr144002
  %retprim142245 = call i64 @prim_cons(i64 %a142060, i64 %a142063)                   ; call prim_cons
  %arg142433 = add i64 0, 0                                                          ; quoted ()
  %cloptr144003 = inttoptr i64 %cont142243 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144003)                                       ; assert function application
  %i0ptr144004 = getelementptr inbounds i64, i64* %cloptr144003, i64 0               ; &cloptr144003[0]
  %f144006 = load i64, i64* %i0ptr144004, align 8                                    ; load; *i0ptr144004
  %fptr144005 = inttoptr i64 %f144006 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144005(i64 %cont142243, i64 %arg142433, i64 %retprim142245); tail call
  ret void
}


define void @lam143562(i64 %env143563, i64 %_95142161, i64 %CGo$_37append) {
  %envptr144007 = inttoptr i64 %env143563 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144008 = getelementptr inbounds i64, i64* %envptr144007, i64 3              ; &envptr144007[3]
  %NHu$_37_62 = load i64, i64* %envptr144008, align 8                                ; load; *envptr144008
  %envptr144009 = inttoptr i64 %env143563 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144010 = getelementptr inbounds i64, i64* %envptr144009, i64 2              ; &envptr144009[2]
  %MGp$_37foldl1 = load i64, i64* %envptr144010, align 8                             ; load; *envptr144010
  %envptr144011 = inttoptr i64 %env143563 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144012 = getelementptr inbounds i64, i64* %envptr144011, i64 1              ; &envptr144011[1]
  %smX$_37length = load i64, i64* %envptr144012, align 8                             ; load; *envptr144012
  %cloptr144013 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144014 = getelementptr inbounds i64, i64* %cloptr144013, i64 0                ; &cloptr144013[0]
  %f144015 = ptrtoint void(i64,i64,i64)* @lam143560 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144015, i64* %eptr144014                                               ; store fptr
  %cRD$_37list_63 = ptrtoint i64* %cloptr144013 to i64                               ; closure cast; i64* -> i64
  %cloptr144016 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144017 = getelementptr inbounds i64, i64* %cloptr144016, i64 0                ; &cloptr144016[0]
  %f144018 = ptrtoint void(i64,i64,i64,i64)* @lam143520 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144018, i64* %eptr144017                                               ; store fptr
  %QJ3$_37drop = ptrtoint i64* %cloptr144016 to i64                                  ; closure cast; i64* -> i64
  %cloptr144019 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144020 = getelementptr inbounds i64, i64* %cloptr144019, i64 0                ; &cloptr144019[0]
  %f144021 = ptrtoint void(i64,i64,i64,i64)* @lam143480 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144021, i64* %eptr144020                                               ; store fptr
  %uCD$_37memv = ptrtoint i64* %cloptr144019 to i64                                  ; closure cast; i64* -> i64
  %cloptr144022 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr144024 = getelementptr inbounds i64, i64* %cloptr144022, i64 1                ; &eptr144024[1]
  store i64 %MGp$_37foldl1, i64* %eptr144024                                         ; *eptr144024 = %MGp$_37foldl1
  %eptr144023 = getelementptr inbounds i64, i64* %cloptr144022, i64 0                ; &cloptr144022[0]
  %f144025 = ptrtoint void(i64,i64)* @lam143449 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144025, i64* %eptr144023                                               ; store fptr
  %NMc$_37_47 = ptrtoint i64* %cloptr144022 to i64                                   ; closure cast; i64* -> i64
  %cloptr144026 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144027 = getelementptr inbounds i64, i64* %cloptr144026, i64 0                ; &cloptr144026[0]
  %f144028 = ptrtoint void(i64,i64,i64)* @lam143441 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144028, i64* %eptr144027                                               ; store fptr
  %Snd$_37first = ptrtoint i64* %cloptr144026 to i64                                 ; closure cast; i64* -> i64
  %cloptr144029 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144030 = getelementptr inbounds i64, i64* %cloptr144029, i64 0                ; &cloptr144029[0]
  %f144031 = ptrtoint void(i64,i64,i64)* @lam143438 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144031, i64* %eptr144030                                               ; store fptr
  %Vfz$_37second = ptrtoint i64* %cloptr144029 to i64                                ; closure cast; i64* -> i64
  %cloptr144032 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144033 = getelementptr inbounds i64, i64* %cloptr144032, i64 0                ; &cloptr144032[0]
  %f144034 = ptrtoint void(i64,i64,i64)* @lam143435 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144034, i64* %eptr144033                                               ; store fptr
  %Ck2$_37third = ptrtoint i64* %cloptr144032 to i64                                 ; closure cast; i64* -> i64
  %cloptr144035 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144036 = getelementptr inbounds i64, i64* %cloptr144035, i64 0                ; &cloptr144035[0]
  %f144037 = ptrtoint void(i64,i64,i64)* @lam143432 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144037, i64* %eptr144036                                               ; store fptr
  %YCt$_37fourth = ptrtoint i64* %cloptr144035 to i64                                ; closure cast; i64* -> i64
  %cloptr144038 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144039 = getelementptr inbounds i64, i64* %cloptr144038, i64 0                ; &cloptr144038[0]
  %f144040 = ptrtoint void(i64,i64,i64)* @lam143429 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144040, i64* %eptr144039                                               ; store fptr
  %LfK$promise_63 = ptrtoint i64* %cloptr144038 to i64                               ; closure cast; i64* -> i64
  %cloptr144041 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144042 = getelementptr inbounds i64, i64* %cloptr144041, i64 0                ; &cloptr144041[0]
  %f144043 = ptrtoint void(i64,i64)* @lam143423 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144043, i64* %eptr144042                                               ; store fptr
  %arg142701 = ptrtoint i64* %cloptr144041 to i64                                    ; closure cast; i64* -> i64
  %cloptr144044 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144046 = getelementptr inbounds i64, i64* %cloptr144044, i64 1                ; &eptr144046[1]
  %eptr144047 = getelementptr inbounds i64, i64* %cloptr144044, i64 2                ; &eptr144047[2]
  %eptr144048 = getelementptr inbounds i64, i64* %cloptr144044, i64 3                ; &eptr144048[3]
  store i64 %smX$_37length, i64* %eptr144046                                         ; *eptr144046 = %smX$_37length
  store i64 %NHu$_37_62, i64* %eptr144047                                            ; *eptr144047 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144048                                           ; *eptr144048 = %QJ3$_37drop
  %eptr144045 = getelementptr inbounds i64, i64* %cloptr144044, i64 0                ; &cloptr144044[0]
  %f144049 = ptrtoint void(i64,i64,i64)* @lam143420 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144049, i64* %eptr144045                                               ; store fptr
  %arg142700 = ptrtoint i64* %cloptr144044 to i64                                    ; closure cast; i64* -> i64
  %rva143168 = add i64 0, 0                                                          ; quoted ()
  %rva143167 = call i64 @prim_cons(i64 %arg142700, i64 %rva143168)                   ; call prim_cons
  %cloptr144050 = inttoptr i64 %arg142701 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144050)                                       ; assert function application
  %i0ptr144051 = getelementptr inbounds i64, i64* %cloptr144050, i64 0               ; &cloptr144050[0]
  %f144053 = load i64, i64* %i0ptr144051, align 8                                    ; load; *i0ptr144051
  %fptr144052 = inttoptr i64 %f144053 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144052(i64 %arg142701, i64 %rva143167)              ; tail call
  ret void
}


define void @lam143560(i64 %env143561, i64 %cont142162, i64 %mjM$a) {
  %arg142441 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %PXl$a = call i64 @prim_make_45vector(i64 %arg142441, i64 %mjM$a)                  ; call prim_make_45vector
  %cloptr144054 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144055 = getelementptr inbounds i64, i64* %cloptr144054, i64 0                ; &cloptr144054[0]
  %f144056 = ptrtoint void(i64,i64,i64)* @lam143557 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144056, i64* %eptr144055                                               ; store fptr
  %arg142444 = ptrtoint i64* %cloptr144054 to i64                                    ; closure cast; i64* -> i64
  %cloptr144057 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144059 = getelementptr inbounds i64, i64* %cloptr144057, i64 1                ; &eptr144059[1]
  %eptr144060 = getelementptr inbounds i64, i64* %cloptr144057, i64 2                ; &eptr144060[2]
  store i64 %PXl$a, i64* %eptr144059                                                 ; *eptr144059 = %PXl$a
  store i64 %cont142162, i64* %eptr144060                                            ; *eptr144060 = %cont142162
  %eptr144058 = getelementptr inbounds i64, i64* %cloptr144057, i64 0                ; &cloptr144057[0]
  %f144061 = ptrtoint void(i64,i64,i64)* @lam143554 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144061, i64* %eptr144058                                               ; store fptr
  %arg142443 = ptrtoint i64* %cloptr144057 to i64                                    ; closure cast; i64* -> i64
  %cloptr144062 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144064 = getelementptr inbounds i64, i64* %cloptr144062, i64 1                ; &eptr144064[1]
  %eptr144065 = getelementptr inbounds i64, i64* %cloptr144062, i64 2                ; &eptr144065[2]
  store i64 %PXl$a, i64* %eptr144064                                                 ; *eptr144064 = %PXl$a
  store i64 %cont142162, i64* %eptr144065                                            ; *eptr144065 = %cont142162
  %eptr144063 = getelementptr inbounds i64, i64* %cloptr144062, i64 0                ; &cloptr144062[0]
  %f144066 = ptrtoint void(i64,i64,i64)* @lam143537 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144066, i64* %eptr144063                                               ; store fptr
  %arg142442 = ptrtoint i64* %cloptr144062 to i64                                    ; closure cast; i64* -> i64
  %cloptr144067 = inttoptr i64 %arg142444 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144067)                                       ; assert function application
  %i0ptr144068 = getelementptr inbounds i64, i64* %cloptr144067, i64 0               ; &cloptr144067[0]
  %f144070 = load i64, i64* %i0ptr144068, align 8                                    ; load; *i0ptr144068
  %fptr144069 = inttoptr i64 %f144070 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144069(i64 %arg142444, i64 %arg142443, i64 %arg142442); tail call
  ret void
}


define void @lam143557(i64 %env143558, i64 %cont142168, i64 %aZE$k) {
  %arg142446 = add i64 0, 0                                                          ; quoted ()
  %cloptr144071 = inttoptr i64 %cont142168 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144071)                                       ; assert function application
  %i0ptr144072 = getelementptr inbounds i64, i64* %cloptr144071, i64 0               ; &cloptr144071[0]
  %f144074 = load i64, i64* %i0ptr144072, align 8                                    ; load; *i0ptr144072
  %fptr144073 = inttoptr i64 %f144074 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144073(i64 %cont142168, i64 %arg142446, i64 %aZE$k) ; tail call
  ret void
}


define void @lam143554(i64 %env143555, i64 %_95142163, i64 %tj3$cc) {
  %envptr144075 = inttoptr i64 %env143555 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144076 = getelementptr inbounds i64, i64* %envptr144075, i64 2              ; &envptr144075[2]
  %cont142162 = load i64, i64* %envptr144076, align 8                                ; load; *envptr144076
  %envptr144077 = inttoptr i64 %env143555 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144078 = getelementptr inbounds i64, i64* %envptr144077, i64 1              ; &envptr144077[1]
  %PXl$a = load i64, i64* %envptr144078, align 8                                     ; load; *envptr144078
  %arg142448 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142064 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142448)                 ; call prim_vector_45ref
  %a142065 = call i64 @prim_null_63(i64 %a142064)                                    ; call prim_null_63
  %cmp144079 = icmp eq i64 %a142065, 15                                              ; false?
  br i1 %cmp144079, label %else144081, label %then144080                             ; if

then144080:
  %arg142452 = add i64 0, 0                                                          ; quoted ()
  %arg142451 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144082 = inttoptr i64 %cont142162 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144082)                                       ; assert function application
  %i0ptr144083 = getelementptr inbounds i64, i64* %cloptr144082, i64 0               ; &cloptr144082[0]
  %f144085 = load i64, i64* %i0ptr144083, align 8                                    ; load; *i0ptr144083
  %fptr144084 = inttoptr i64 %f144085 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144084(i64 %cont142162, i64 %arg142452, i64 %arg142451); tail call
  ret void

else144081:
  %arg142454 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142066 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142454)                 ; call prim_vector_45ref
  %a142067 = call i64 @prim_cons_63(i64 %a142066)                                    ; call prim_cons_63
  %cmp144086 = icmp eq i64 %a142067, 15                                              ; false?
  br i1 %cmp144086, label %else144088, label %then144087                             ; if

then144087:
  %arg142457 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142068 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142457)                 ; call prim_vector_45ref
  %retprim142167 = call i64 @prim_cdr(i64 %a142068)                                  ; call prim_cdr
  %cloptr144089 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144091 = getelementptr inbounds i64, i64* %cloptr144089, i64 1                ; &eptr144091[1]
  %eptr144092 = getelementptr inbounds i64, i64* %cloptr144089, i64 2                ; &eptr144092[2]
  %eptr144093 = getelementptr inbounds i64, i64* %cloptr144089, i64 3                ; &eptr144093[3]
  store i64 %tj3$cc, i64* %eptr144091                                                ; *eptr144091 = %tj3$cc
  store i64 %PXl$a, i64* %eptr144092                                                 ; *eptr144092 = %PXl$a
  store i64 %cont142162, i64* %eptr144093                                            ; *eptr144093 = %cont142162
  %eptr144090 = getelementptr inbounds i64, i64* %cloptr144089, i64 0                ; &cloptr144089[0]
  %f144094 = ptrtoint void(i64,i64,i64)* @lam143547 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144094, i64* %eptr144090                                               ; store fptr
  %arg142462 = ptrtoint i64* %cloptr144089 to i64                                    ; closure cast; i64* -> i64
  %arg142461 = add i64 0, 0                                                          ; quoted ()
  %cloptr144095 = inttoptr i64 %arg142462 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144095)                                       ; assert function application
  %i0ptr144096 = getelementptr inbounds i64, i64* %cloptr144095, i64 0               ; &cloptr144095[0]
  %f144098 = load i64, i64* %i0ptr144096, align 8                                    ; load; *i0ptr144096
  %fptr144097 = inttoptr i64 %f144098 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144097(i64 %arg142462, i64 %arg142461, i64 %retprim142167); tail call
  ret void

else144088:
  %arg142476 = add i64 0, 0                                                          ; quoted ()
  %arg142475 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144099 = inttoptr i64 %cont142162 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144099)                                       ; assert function application
  %i0ptr144100 = getelementptr inbounds i64, i64* %cloptr144099, i64 0               ; &cloptr144099[0]
  %f144102 = load i64, i64* %i0ptr144100, align 8                                    ; load; *i0ptr144100
  %fptr144101 = inttoptr i64 %f144102 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144101(i64 %cont142162, i64 %arg142476, i64 %arg142475); tail call
  ret void
}


define void @lam143547(i64 %env143548, i64 %_95142164, i64 %il5$b) {
  %envptr144103 = inttoptr i64 %env143548 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144104 = getelementptr inbounds i64, i64* %envptr144103, i64 3              ; &envptr144103[3]
  %cont142162 = load i64, i64* %envptr144104, align 8                                ; load; *envptr144104
  %envptr144105 = inttoptr i64 %env143548 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144106 = getelementptr inbounds i64, i64* %envptr144105, i64 2              ; &envptr144105[2]
  %PXl$a = load i64, i64* %envptr144106, align 8                                     ; load; *envptr144106
  %envptr144107 = inttoptr i64 %env143548 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144108 = getelementptr inbounds i64, i64* %envptr144107, i64 1              ; &envptr144107[1]
  %tj3$cc = load i64, i64* %envptr144108, align 8                                    ; load; *envptr144108
  %arg142463 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142069 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142463)                 ; call prim_vector_45ref
  %a142070 = call i64 @prim_cdr(i64 %a142069)                                        ; call prim_cdr
  %arg142467 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142166 = call i64 @prim_vector_45set_33(i64 %PXl$a, i64 %arg142467, i64 %a142070); call prim_vector_45set_33
  %cloptr144109 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144111 = getelementptr inbounds i64, i64* %cloptr144109, i64 1                ; &eptr144111[1]
  %eptr144112 = getelementptr inbounds i64, i64* %cloptr144109, i64 2                ; &eptr144112[2]
  store i64 %tj3$cc, i64* %eptr144111                                                ; *eptr144111 = %tj3$cc
  store i64 %cont142162, i64* %eptr144112                                            ; *eptr144112 = %cont142162
  %eptr144110 = getelementptr inbounds i64, i64* %cloptr144109, i64 0                ; &cloptr144109[0]
  %f144113 = ptrtoint void(i64,i64,i64)* @lam143543 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144113, i64* %eptr144110                                               ; store fptr
  %arg142471 = ptrtoint i64* %cloptr144109 to i64                                    ; closure cast; i64* -> i64
  %arg142470 = add i64 0, 0                                                          ; quoted ()
  %cloptr144114 = inttoptr i64 %arg142471 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144114)                                       ; assert function application
  %i0ptr144115 = getelementptr inbounds i64, i64* %cloptr144114, i64 0               ; &cloptr144114[0]
  %f144117 = load i64, i64* %i0ptr144115, align 8                                    ; load; *i0ptr144115
  %fptr144116 = inttoptr i64 %f144117 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144116(i64 %arg142471, i64 %arg142470, i64 %retprim142166); tail call
  ret void
}


define void @lam143543(i64 %env143544, i64 %_95142165, i64 %RcG$_950) {
  %envptr144118 = inttoptr i64 %env143544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144119 = getelementptr inbounds i64, i64* %envptr144118, i64 2              ; &envptr144118[2]
  %cont142162 = load i64, i64* %envptr144119, align 8                                ; load; *envptr144119
  %envptr144120 = inttoptr i64 %env143544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144121 = getelementptr inbounds i64, i64* %envptr144120, i64 1              ; &envptr144120[1]
  %tj3$cc = load i64, i64* %envptr144121, align 8                                    ; load; *envptr144121
  %cloptr144122 = inttoptr i64 %tj3$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144122)                                       ; assert function application
  %i0ptr144123 = getelementptr inbounds i64, i64* %cloptr144122, i64 0               ; &cloptr144122[0]
  %f144125 = load i64, i64* %i0ptr144123, align 8                                    ; load; *i0ptr144123
  %fptr144124 = inttoptr i64 %f144125 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144124(i64 %tj3$cc, i64 %cont142162, i64 %tj3$cc)   ; tail call
  ret void
}


define void @lam143537(i64 %env143538, i64 %_95142163, i64 %tj3$cc) {
  %envptr144126 = inttoptr i64 %env143538 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144127 = getelementptr inbounds i64, i64* %envptr144126, i64 2              ; &envptr144126[2]
  %cont142162 = load i64, i64* %envptr144127, align 8                                ; load; *envptr144127
  %envptr144128 = inttoptr i64 %env143538 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144129 = getelementptr inbounds i64, i64* %envptr144128, i64 1              ; &envptr144128[1]
  %PXl$a = load i64, i64* %envptr144129, align 8                                     ; load; *envptr144129
  %arg142478 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142064 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142478)                 ; call prim_vector_45ref
  %a142065 = call i64 @prim_null_63(i64 %a142064)                                    ; call prim_null_63
  %cmp144130 = icmp eq i64 %a142065, 15                                              ; false?
  br i1 %cmp144130, label %else144132, label %then144131                             ; if

then144131:
  %arg142482 = add i64 0, 0                                                          ; quoted ()
  %arg142481 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144133 = inttoptr i64 %cont142162 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144133)                                       ; assert function application
  %i0ptr144134 = getelementptr inbounds i64, i64* %cloptr144133, i64 0               ; &cloptr144133[0]
  %f144136 = load i64, i64* %i0ptr144134, align 8                                    ; load; *i0ptr144134
  %fptr144135 = inttoptr i64 %f144136 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144135(i64 %cont142162, i64 %arg142482, i64 %arg142481); tail call
  ret void

else144132:
  %arg142484 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142066 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142484)                 ; call prim_vector_45ref
  %a142067 = call i64 @prim_cons_63(i64 %a142066)                                    ; call prim_cons_63
  %cmp144137 = icmp eq i64 %a142067, 15                                              ; false?
  br i1 %cmp144137, label %else144139, label %then144138                             ; if

then144138:
  %arg142487 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142068 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142487)                 ; call prim_vector_45ref
  %retprim142167 = call i64 @prim_cdr(i64 %a142068)                                  ; call prim_cdr
  %cloptr144140 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144142 = getelementptr inbounds i64, i64* %cloptr144140, i64 1                ; &eptr144142[1]
  %eptr144143 = getelementptr inbounds i64, i64* %cloptr144140, i64 2                ; &eptr144143[2]
  %eptr144144 = getelementptr inbounds i64, i64* %cloptr144140, i64 3                ; &eptr144144[3]
  store i64 %tj3$cc, i64* %eptr144142                                                ; *eptr144142 = %tj3$cc
  store i64 %PXl$a, i64* %eptr144143                                                 ; *eptr144143 = %PXl$a
  store i64 %cont142162, i64* %eptr144144                                            ; *eptr144144 = %cont142162
  %eptr144141 = getelementptr inbounds i64, i64* %cloptr144140, i64 0                ; &cloptr144140[0]
  %f144145 = ptrtoint void(i64,i64,i64)* @lam143530 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144145, i64* %eptr144141                                               ; store fptr
  %arg142492 = ptrtoint i64* %cloptr144140 to i64                                    ; closure cast; i64* -> i64
  %arg142491 = add i64 0, 0                                                          ; quoted ()
  %cloptr144146 = inttoptr i64 %arg142492 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144146)                                       ; assert function application
  %i0ptr144147 = getelementptr inbounds i64, i64* %cloptr144146, i64 0               ; &cloptr144146[0]
  %f144149 = load i64, i64* %i0ptr144147, align 8                                    ; load; *i0ptr144147
  %fptr144148 = inttoptr i64 %f144149 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144148(i64 %arg142492, i64 %arg142491, i64 %retprim142167); tail call
  ret void

else144139:
  %arg142506 = add i64 0, 0                                                          ; quoted ()
  %arg142505 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144150 = inttoptr i64 %cont142162 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144150)                                       ; assert function application
  %i0ptr144151 = getelementptr inbounds i64, i64* %cloptr144150, i64 0               ; &cloptr144150[0]
  %f144153 = load i64, i64* %i0ptr144151, align 8                                    ; load; *i0ptr144151
  %fptr144152 = inttoptr i64 %f144153 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144152(i64 %cont142162, i64 %arg142506, i64 %arg142505); tail call
  ret void
}


define void @lam143530(i64 %env143531, i64 %_95142164, i64 %il5$b) {
  %envptr144154 = inttoptr i64 %env143531 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144155 = getelementptr inbounds i64, i64* %envptr144154, i64 3              ; &envptr144154[3]
  %cont142162 = load i64, i64* %envptr144155, align 8                                ; load; *envptr144155
  %envptr144156 = inttoptr i64 %env143531 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144157 = getelementptr inbounds i64, i64* %envptr144156, i64 2              ; &envptr144156[2]
  %PXl$a = load i64, i64* %envptr144157, align 8                                     ; load; *envptr144157
  %envptr144158 = inttoptr i64 %env143531 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144159 = getelementptr inbounds i64, i64* %envptr144158, i64 1              ; &envptr144158[1]
  %tj3$cc = load i64, i64* %envptr144159, align 8                                    ; load; *envptr144159
  %arg142493 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142069 = call i64 @prim_vector_45ref(i64 %PXl$a, i64 %arg142493)                 ; call prim_vector_45ref
  %a142070 = call i64 @prim_cdr(i64 %a142069)                                        ; call prim_cdr
  %arg142497 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142166 = call i64 @prim_vector_45set_33(i64 %PXl$a, i64 %arg142497, i64 %a142070); call prim_vector_45set_33
  %cloptr144160 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144162 = getelementptr inbounds i64, i64* %cloptr144160, i64 1                ; &eptr144162[1]
  %eptr144163 = getelementptr inbounds i64, i64* %cloptr144160, i64 2                ; &eptr144163[2]
  store i64 %tj3$cc, i64* %eptr144162                                                ; *eptr144162 = %tj3$cc
  store i64 %cont142162, i64* %eptr144163                                            ; *eptr144163 = %cont142162
  %eptr144161 = getelementptr inbounds i64, i64* %cloptr144160, i64 0                ; &cloptr144160[0]
  %f144164 = ptrtoint void(i64,i64,i64)* @lam143526 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144164, i64* %eptr144161                                               ; store fptr
  %arg142501 = ptrtoint i64* %cloptr144160 to i64                                    ; closure cast; i64* -> i64
  %arg142500 = add i64 0, 0                                                          ; quoted ()
  %cloptr144165 = inttoptr i64 %arg142501 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144165)                                       ; assert function application
  %i0ptr144166 = getelementptr inbounds i64, i64* %cloptr144165, i64 0               ; &cloptr144165[0]
  %f144168 = load i64, i64* %i0ptr144166, align 8                                    ; load; *i0ptr144166
  %fptr144167 = inttoptr i64 %f144168 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144167(i64 %arg142501, i64 %arg142500, i64 %retprim142166); tail call
  ret void
}


define void @lam143526(i64 %env143527, i64 %_95142165, i64 %RcG$_950) {
  %envptr144169 = inttoptr i64 %env143527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144170 = getelementptr inbounds i64, i64* %envptr144169, i64 2              ; &envptr144169[2]
  %cont142162 = load i64, i64* %envptr144170, align 8                                ; load; *envptr144170
  %envptr144171 = inttoptr i64 %env143527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144172 = getelementptr inbounds i64, i64* %envptr144171, i64 1              ; &envptr144171[1]
  %tj3$cc = load i64, i64* %envptr144172, align 8                                    ; load; *envptr144172
  %cloptr144173 = inttoptr i64 %tj3$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144173)                                       ; assert function application
  %i0ptr144174 = getelementptr inbounds i64, i64* %cloptr144173, i64 0               ; &cloptr144173[0]
  %f144176 = load i64, i64* %i0ptr144174, align 8                                    ; load; *i0ptr144174
  %fptr144175 = inttoptr i64 %f144176 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144175(i64 %tj3$cc, i64 %cont142162, i64 %tj3$cc)   ; tail call
  ret void
}


define void @lam143520(i64 %env143521, i64 %cont142169, i64 %jk0$lst, i64 %BKl$n) {
  %arg142509 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %kK5$lst = call i64 @prim_make_45vector(i64 %arg142509, i64 %jk0$lst)              ; call prim_make_45vector
  %arg142511 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %u9W$n = call i64 @prim_make_45vector(i64 %arg142511, i64 %BKl$n)                  ; call prim_make_45vector
  %cloptr144177 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144178 = getelementptr inbounds i64, i64* %cloptr144177, i64 0                ; &cloptr144177[0]
  %f144179 = ptrtoint void(i64,i64,i64)* @lam143516 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144179, i64* %eptr144178                                               ; store fptr
  %arg142514 = ptrtoint i64* %cloptr144177 to i64                                    ; closure cast; i64* -> i64
  %cloptr144180 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144182 = getelementptr inbounds i64, i64* %cloptr144180, i64 1                ; &eptr144182[1]
  %eptr144183 = getelementptr inbounds i64, i64* %cloptr144180, i64 2                ; &eptr144183[2]
  %eptr144184 = getelementptr inbounds i64, i64* %cloptr144180, i64 3                ; &eptr144184[3]
  store i64 %u9W$n, i64* %eptr144182                                                 ; *eptr144182 = %u9W$n
  store i64 %kK5$lst, i64* %eptr144183                                               ; *eptr144183 = %kK5$lst
  store i64 %cont142169, i64* %eptr144184                                            ; *eptr144184 = %cont142169
  %eptr144181 = getelementptr inbounds i64, i64* %cloptr144180, i64 0                ; &cloptr144180[0]
  %f144185 = ptrtoint void(i64,i64,i64)* @lam143514 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144185, i64* %eptr144181                                               ; store fptr
  %arg142513 = ptrtoint i64* %cloptr144180 to i64                                    ; closure cast; i64* -> i64
  %cloptr144186 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144188 = getelementptr inbounds i64, i64* %cloptr144186, i64 1                ; &eptr144188[1]
  %eptr144189 = getelementptr inbounds i64, i64* %cloptr144186, i64 2                ; &eptr144189[2]
  %eptr144190 = getelementptr inbounds i64, i64* %cloptr144186, i64 3                ; &eptr144190[3]
  store i64 %u9W$n, i64* %eptr144188                                                 ; *eptr144188 = %u9W$n
  store i64 %kK5$lst, i64* %eptr144189                                               ; *eptr144189 = %kK5$lst
  store i64 %cont142169, i64* %eptr144190                                            ; *eptr144190 = %cont142169
  %eptr144187 = getelementptr inbounds i64, i64* %cloptr144186, i64 0                ; &cloptr144186[0]
  %f144191 = ptrtoint void(i64,i64,i64)* @lam143497 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144191, i64* %eptr144187                                               ; store fptr
  %arg142512 = ptrtoint i64* %cloptr144186 to i64                                    ; closure cast; i64* -> i64
  %cloptr144192 = inttoptr i64 %arg142514 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144192)                                       ; assert function application
  %i0ptr144193 = getelementptr inbounds i64, i64* %cloptr144192, i64 0               ; &cloptr144192[0]
  %f144195 = load i64, i64* %i0ptr144193, align 8                                    ; load; *i0ptr144193
  %fptr144194 = inttoptr i64 %f144195 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144194(i64 %arg142514, i64 %arg142513, i64 %arg142512); tail call
  ret void
}


define void @lam143516(i64 %env143517, i64 %cont142176, i64 %Rrc$u) {
  %cloptr144196 = inttoptr i64 %Rrc$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144196)                                       ; assert function application
  %i0ptr144197 = getelementptr inbounds i64, i64* %cloptr144196, i64 0               ; &cloptr144196[0]
  %f144199 = load i64, i64* %i0ptr144197, align 8                                    ; load; *i0ptr144197
  %fptr144198 = inttoptr i64 %f144199 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144198(i64 %Rrc$u, i64 %cont142176, i64 %Rrc$u)     ; tail call
  ret void
}


define void @lam143514(i64 %env143515, i64 %_95142170, i64 %Cl7$cc) {
  %envptr144200 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144201 = getelementptr inbounds i64, i64* %envptr144200, i64 3              ; &envptr144200[3]
  %cont142169 = load i64, i64* %envptr144201, align 8                                ; load; *envptr144201
  %envptr144202 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144203 = getelementptr inbounds i64, i64* %envptr144202, i64 2              ; &envptr144202[2]
  %kK5$lst = load i64, i64* %envptr144203, align 8                                   ; load; *envptr144203
  %envptr144204 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144205 = getelementptr inbounds i64, i64* %envptr144204, i64 1              ; &envptr144204[1]
  %u9W$n = load i64, i64* %envptr144205, align 8                                     ; load; *envptr144205
  %arg142518 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142071 = call i64 @prim_vector_45ref(i64 %u9W$n, i64 %arg142518)                 ; call prim_vector_45ref
  %arg142521 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142072 = call i64 @prim__61(i64 %arg142521, i64 %a142071)                        ; call prim__61
  %cmp144206 = icmp eq i64 %a142072, 15                                              ; false?
  br i1 %cmp144206, label %else144208, label %then144207                             ; if

then144207:
  %arg142522 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142171 = call i64 @prim_vector_45ref(i64 %kK5$lst, i64 %arg142522)         ; call prim_vector_45ref
  %arg142525 = add i64 0, 0                                                          ; quoted ()
  %cloptr144209 = inttoptr i64 %cont142169 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144209)                                       ; assert function application
  %i0ptr144210 = getelementptr inbounds i64, i64* %cloptr144209, i64 0               ; &cloptr144209[0]
  %f144212 = load i64, i64* %i0ptr144210, align 8                                    ; load; *i0ptr144210
  %fptr144211 = inttoptr i64 %f144212 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144211(i64 %cont142169, i64 %arg142525, i64 %retprim142171); tail call
  ret void

else144208:
  %arg142527 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142073 = call i64 @prim_vector_45ref(i64 %kK5$lst, i64 %arg142527)               ; call prim_vector_45ref
  %a142074 = call i64 @prim_cdr(i64 %a142073)                                        ; call prim_cdr
  %arg142531 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142175 = call i64 @prim_vector_45set_33(i64 %kK5$lst, i64 %arg142531, i64 %a142074); call prim_vector_45set_33
  %cloptr144213 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144215 = getelementptr inbounds i64, i64* %cloptr144213, i64 1                ; &eptr144215[1]
  %eptr144216 = getelementptr inbounds i64, i64* %cloptr144213, i64 2                ; &eptr144216[2]
  %eptr144217 = getelementptr inbounds i64, i64* %cloptr144213, i64 3                ; &eptr144217[3]
  store i64 %Cl7$cc, i64* %eptr144215                                                ; *eptr144215 = %Cl7$cc
  store i64 %u9W$n, i64* %eptr144216                                                 ; *eptr144216 = %u9W$n
  store i64 %cont142169, i64* %eptr144217                                            ; *eptr144217 = %cont142169
  %eptr144214 = getelementptr inbounds i64, i64* %cloptr144213, i64 0                ; &cloptr144213[0]
  %f144218 = ptrtoint void(i64,i64,i64)* @lam143508 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144218, i64* %eptr144214                                               ; store fptr
  %arg142535 = ptrtoint i64* %cloptr144213 to i64                                    ; closure cast; i64* -> i64
  %arg142534 = add i64 0, 0                                                          ; quoted ()
  %cloptr144219 = inttoptr i64 %arg142535 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144219)                                       ; assert function application
  %i0ptr144220 = getelementptr inbounds i64, i64* %cloptr144219, i64 0               ; &cloptr144219[0]
  %f144222 = load i64, i64* %i0ptr144220, align 8                                    ; load; *i0ptr144220
  %fptr144221 = inttoptr i64 %f144222 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144221(i64 %arg142535, i64 %arg142534, i64 %retprim142175); tail call
  ret void
}


define void @lam143508(i64 %env143509, i64 %_95142172, i64 %kTh$_950) {
  %envptr144223 = inttoptr i64 %env143509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144224 = getelementptr inbounds i64, i64* %envptr144223, i64 3              ; &envptr144223[3]
  %cont142169 = load i64, i64* %envptr144224, align 8                                ; load; *envptr144224
  %envptr144225 = inttoptr i64 %env143509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144226 = getelementptr inbounds i64, i64* %envptr144225, i64 2              ; &envptr144225[2]
  %u9W$n = load i64, i64* %envptr144226, align 8                                     ; load; *envptr144226
  %envptr144227 = inttoptr i64 %env143509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144228 = getelementptr inbounds i64, i64* %envptr144227, i64 1              ; &envptr144227[1]
  %Cl7$cc = load i64, i64* %envptr144228, align 8                                    ; load; *envptr144228
  %arg142536 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142075 = call i64 @prim_vector_45ref(i64 %u9W$n, i64 %arg142536)                 ; call prim_vector_45ref
  %arg142538 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142076 = call i64 @prim__45(i64 %a142075, i64 %arg142538)                        ; call prim__45
  %arg142541 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142174 = call i64 @prim_vector_45set_33(i64 %u9W$n, i64 %arg142541, i64 %a142076); call prim_vector_45set_33
  %cloptr144229 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144231 = getelementptr inbounds i64, i64* %cloptr144229, i64 1                ; &eptr144231[1]
  %eptr144232 = getelementptr inbounds i64, i64* %cloptr144229, i64 2                ; &eptr144232[2]
  store i64 %Cl7$cc, i64* %eptr144231                                                ; *eptr144231 = %Cl7$cc
  store i64 %cont142169, i64* %eptr144232                                            ; *eptr144232 = %cont142169
  %eptr144230 = getelementptr inbounds i64, i64* %cloptr144229, i64 0                ; &cloptr144229[0]
  %f144233 = ptrtoint void(i64,i64,i64)* @lam143503 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144233, i64* %eptr144230                                               ; store fptr
  %arg142545 = ptrtoint i64* %cloptr144229 to i64                                    ; closure cast; i64* -> i64
  %arg142544 = add i64 0, 0                                                          ; quoted ()
  %cloptr144234 = inttoptr i64 %arg142545 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144234)                                       ; assert function application
  %i0ptr144235 = getelementptr inbounds i64, i64* %cloptr144234, i64 0               ; &cloptr144234[0]
  %f144237 = load i64, i64* %i0ptr144235, align 8                                    ; load; *i0ptr144235
  %fptr144236 = inttoptr i64 %f144237 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144236(i64 %arg142545, i64 %arg142544, i64 %retprim142174); tail call
  ret void
}


define void @lam143503(i64 %env143504, i64 %_95142173, i64 %ND7$_951) {
  %envptr144238 = inttoptr i64 %env143504 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144239 = getelementptr inbounds i64, i64* %envptr144238, i64 2              ; &envptr144238[2]
  %cont142169 = load i64, i64* %envptr144239, align 8                                ; load; *envptr144239
  %envptr144240 = inttoptr i64 %env143504 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144241 = getelementptr inbounds i64, i64* %envptr144240, i64 1              ; &envptr144240[1]
  %Cl7$cc = load i64, i64* %envptr144241, align 8                                    ; load; *envptr144241
  %cloptr144242 = inttoptr i64 %Cl7$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144242)                                       ; assert function application
  %i0ptr144243 = getelementptr inbounds i64, i64* %cloptr144242, i64 0               ; &cloptr144242[0]
  %f144245 = load i64, i64* %i0ptr144243, align 8                                    ; load; *i0ptr144243
  %fptr144244 = inttoptr i64 %f144245 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144244(i64 %Cl7$cc, i64 %cont142169, i64 %Cl7$cc)   ; tail call
  ret void
}


define void @lam143497(i64 %env143498, i64 %_95142170, i64 %Cl7$cc) {
  %envptr144246 = inttoptr i64 %env143498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144247 = getelementptr inbounds i64, i64* %envptr144246, i64 3              ; &envptr144246[3]
  %cont142169 = load i64, i64* %envptr144247, align 8                                ; load; *envptr144247
  %envptr144248 = inttoptr i64 %env143498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144249 = getelementptr inbounds i64, i64* %envptr144248, i64 2              ; &envptr144248[2]
  %kK5$lst = load i64, i64* %envptr144249, align 8                                   ; load; *envptr144249
  %envptr144250 = inttoptr i64 %env143498 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144251 = getelementptr inbounds i64, i64* %envptr144250, i64 1              ; &envptr144250[1]
  %u9W$n = load i64, i64* %envptr144251, align 8                                     ; load; *envptr144251
  %arg142549 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142071 = call i64 @prim_vector_45ref(i64 %u9W$n, i64 %arg142549)                 ; call prim_vector_45ref
  %arg142552 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142072 = call i64 @prim__61(i64 %arg142552, i64 %a142071)                        ; call prim__61
  %cmp144252 = icmp eq i64 %a142072, 15                                              ; false?
  br i1 %cmp144252, label %else144254, label %then144253                             ; if

then144253:
  %arg142553 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142171 = call i64 @prim_vector_45ref(i64 %kK5$lst, i64 %arg142553)         ; call prim_vector_45ref
  %arg142556 = add i64 0, 0                                                          ; quoted ()
  %cloptr144255 = inttoptr i64 %cont142169 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144255)                                       ; assert function application
  %i0ptr144256 = getelementptr inbounds i64, i64* %cloptr144255, i64 0               ; &cloptr144255[0]
  %f144258 = load i64, i64* %i0ptr144256, align 8                                    ; load; *i0ptr144256
  %fptr144257 = inttoptr i64 %f144258 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144257(i64 %cont142169, i64 %arg142556, i64 %retprim142171); tail call
  ret void

else144254:
  %arg142558 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142073 = call i64 @prim_vector_45ref(i64 %kK5$lst, i64 %arg142558)               ; call prim_vector_45ref
  %a142074 = call i64 @prim_cdr(i64 %a142073)                                        ; call prim_cdr
  %arg142562 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142175 = call i64 @prim_vector_45set_33(i64 %kK5$lst, i64 %arg142562, i64 %a142074); call prim_vector_45set_33
  %cloptr144259 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144261 = getelementptr inbounds i64, i64* %cloptr144259, i64 1                ; &eptr144261[1]
  %eptr144262 = getelementptr inbounds i64, i64* %cloptr144259, i64 2                ; &eptr144262[2]
  %eptr144263 = getelementptr inbounds i64, i64* %cloptr144259, i64 3                ; &eptr144263[3]
  store i64 %Cl7$cc, i64* %eptr144261                                                ; *eptr144261 = %Cl7$cc
  store i64 %u9W$n, i64* %eptr144262                                                 ; *eptr144262 = %u9W$n
  store i64 %cont142169, i64* %eptr144263                                            ; *eptr144263 = %cont142169
  %eptr144260 = getelementptr inbounds i64, i64* %cloptr144259, i64 0                ; &cloptr144259[0]
  %f144264 = ptrtoint void(i64,i64,i64)* @lam143491 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144264, i64* %eptr144260                                               ; store fptr
  %arg142566 = ptrtoint i64* %cloptr144259 to i64                                    ; closure cast; i64* -> i64
  %arg142565 = add i64 0, 0                                                          ; quoted ()
  %cloptr144265 = inttoptr i64 %arg142566 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144265)                                       ; assert function application
  %i0ptr144266 = getelementptr inbounds i64, i64* %cloptr144265, i64 0               ; &cloptr144265[0]
  %f144268 = load i64, i64* %i0ptr144266, align 8                                    ; load; *i0ptr144266
  %fptr144267 = inttoptr i64 %f144268 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144267(i64 %arg142566, i64 %arg142565, i64 %retprim142175); tail call
  ret void
}


define void @lam143491(i64 %env143492, i64 %_95142172, i64 %kTh$_950) {
  %envptr144269 = inttoptr i64 %env143492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144270 = getelementptr inbounds i64, i64* %envptr144269, i64 3              ; &envptr144269[3]
  %cont142169 = load i64, i64* %envptr144270, align 8                                ; load; *envptr144270
  %envptr144271 = inttoptr i64 %env143492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144272 = getelementptr inbounds i64, i64* %envptr144271, i64 2              ; &envptr144271[2]
  %u9W$n = load i64, i64* %envptr144272, align 8                                     ; load; *envptr144272
  %envptr144273 = inttoptr i64 %env143492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144274 = getelementptr inbounds i64, i64* %envptr144273, i64 1              ; &envptr144273[1]
  %Cl7$cc = load i64, i64* %envptr144274, align 8                                    ; load; *envptr144274
  %arg142567 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142075 = call i64 @prim_vector_45ref(i64 %u9W$n, i64 %arg142567)                 ; call prim_vector_45ref
  %arg142569 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142076 = call i64 @prim__45(i64 %a142075, i64 %arg142569)                        ; call prim__45
  %arg142572 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142174 = call i64 @prim_vector_45set_33(i64 %u9W$n, i64 %arg142572, i64 %a142076); call prim_vector_45set_33
  %cloptr144275 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144277 = getelementptr inbounds i64, i64* %cloptr144275, i64 1                ; &eptr144277[1]
  %eptr144278 = getelementptr inbounds i64, i64* %cloptr144275, i64 2                ; &eptr144278[2]
  store i64 %Cl7$cc, i64* %eptr144277                                                ; *eptr144277 = %Cl7$cc
  store i64 %cont142169, i64* %eptr144278                                            ; *eptr144278 = %cont142169
  %eptr144276 = getelementptr inbounds i64, i64* %cloptr144275, i64 0                ; &cloptr144275[0]
  %f144279 = ptrtoint void(i64,i64,i64)* @lam143486 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144279, i64* %eptr144276                                               ; store fptr
  %arg142576 = ptrtoint i64* %cloptr144275 to i64                                    ; closure cast; i64* -> i64
  %arg142575 = add i64 0, 0                                                          ; quoted ()
  %cloptr144280 = inttoptr i64 %arg142576 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144280)                                       ; assert function application
  %i0ptr144281 = getelementptr inbounds i64, i64* %cloptr144280, i64 0               ; &cloptr144280[0]
  %f144283 = load i64, i64* %i0ptr144281, align 8                                    ; load; *i0ptr144281
  %fptr144282 = inttoptr i64 %f144283 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144282(i64 %arg142576, i64 %arg142575, i64 %retprim142174); tail call
  ret void
}


define void @lam143486(i64 %env143487, i64 %_95142173, i64 %ND7$_951) {
  %envptr144284 = inttoptr i64 %env143487 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144285 = getelementptr inbounds i64, i64* %envptr144284, i64 2              ; &envptr144284[2]
  %cont142169 = load i64, i64* %envptr144285, align 8                                ; load; *envptr144285
  %envptr144286 = inttoptr i64 %env143487 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144287 = getelementptr inbounds i64, i64* %envptr144286, i64 1              ; &envptr144286[1]
  %Cl7$cc = load i64, i64* %envptr144287, align 8                                    ; load; *envptr144287
  %cloptr144288 = inttoptr i64 %Cl7$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144288)                                       ; assert function application
  %i0ptr144289 = getelementptr inbounds i64, i64* %cloptr144288, i64 0               ; &cloptr144288[0]
  %f144291 = load i64, i64* %i0ptr144289, align 8                                    ; load; *i0ptr144289
  %fptr144290 = inttoptr i64 %f144291 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144290(i64 %Cl7$cc, i64 %cont142169, i64 %Cl7$cc)   ; tail call
  ret void
}


define void @lam143480(i64 %env143481, i64 %cont142177, i64 %fm2$v, i64 %YFJ$lst) {
  %arg142581 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %vNh$lst = call i64 @prim_make_45vector(i64 %arg142581, i64 %YFJ$lst)              ; call prim_make_45vector
  %cloptr144292 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144293 = getelementptr inbounds i64, i64* %cloptr144292, i64 0                ; &cloptr144292[0]
  %f144294 = ptrtoint void(i64,i64,i64)* @lam143477 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144294, i64* %eptr144293                                               ; store fptr
  %arg142584 = ptrtoint i64* %cloptr144292 to i64                                    ; closure cast; i64* -> i64
  %cloptr144295 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144297 = getelementptr inbounds i64, i64* %cloptr144295, i64 1                ; &eptr144297[1]
  %eptr144298 = getelementptr inbounds i64, i64* %cloptr144295, i64 2                ; &eptr144298[2]
  %eptr144299 = getelementptr inbounds i64, i64* %cloptr144295, i64 3                ; &eptr144299[3]
  store i64 %vNh$lst, i64* %eptr144297                                               ; *eptr144297 = %vNh$lst
  store i64 %cont142177, i64* %eptr144298                                            ; *eptr144298 = %cont142177
  store i64 %fm2$v, i64* %eptr144299                                                 ; *eptr144299 = %fm2$v
  %eptr144296 = getelementptr inbounds i64, i64* %cloptr144295, i64 0                ; &cloptr144295[0]
  %f144300 = ptrtoint void(i64,i64,i64)* @lam143475 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144300, i64* %eptr144296                                               ; store fptr
  %arg142583 = ptrtoint i64* %cloptr144295 to i64                                    ; closure cast; i64* -> i64
  %cloptr144301 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144303 = getelementptr inbounds i64, i64* %cloptr144301, i64 1                ; &eptr144303[1]
  %eptr144304 = getelementptr inbounds i64, i64* %cloptr144301, i64 2                ; &eptr144304[2]
  %eptr144305 = getelementptr inbounds i64, i64* %cloptr144301, i64 3                ; &eptr144305[3]
  store i64 %vNh$lst, i64* %eptr144303                                               ; *eptr144303 = %vNh$lst
  store i64 %cont142177, i64* %eptr144304                                            ; *eptr144304 = %cont142177
  store i64 %fm2$v, i64* %eptr144305                                                 ; *eptr144305 = %fm2$v
  %eptr144302 = getelementptr inbounds i64, i64* %cloptr144301, i64 0                ; &cloptr144301[0]
  %f144306 = ptrtoint void(i64,i64,i64)* @lam143462 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144306, i64* %eptr144302                                               ; store fptr
  %arg142582 = ptrtoint i64* %cloptr144301 to i64                                    ; closure cast; i64* -> i64
  %cloptr144307 = inttoptr i64 %arg142584 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144307)                                       ; assert function application
  %i0ptr144308 = getelementptr inbounds i64, i64* %cloptr144307, i64 0               ; &cloptr144307[0]
  %f144310 = load i64, i64* %i0ptr144308, align 8                                    ; load; *i0ptr144308
  %fptr144309 = inttoptr i64 %f144310 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144309(i64 %arg142584, i64 %arg142583, i64 %arg142582); tail call
  ret void
}


define void @lam143477(i64 %env143478, i64 %cont142182, i64 %kpm$u) {
  %cloptr144311 = inttoptr i64 %kpm$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144311)                                       ; assert function application
  %i0ptr144312 = getelementptr inbounds i64, i64* %cloptr144311, i64 0               ; &cloptr144311[0]
  %f144314 = load i64, i64* %i0ptr144312, align 8                                    ; load; *i0ptr144312
  %fptr144313 = inttoptr i64 %f144314 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144313(i64 %kpm$u, i64 %cont142182, i64 %kpm$u)     ; tail call
  ret void
}


define void @lam143475(i64 %env143476, i64 %_95142178, i64 %EZj$cc) {
  %envptr144315 = inttoptr i64 %env143476 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144316 = getelementptr inbounds i64, i64* %envptr144315, i64 3              ; &envptr144315[3]
  %fm2$v = load i64, i64* %envptr144316, align 8                                     ; load; *envptr144316
  %envptr144317 = inttoptr i64 %env143476 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144318 = getelementptr inbounds i64, i64* %envptr144317, i64 2              ; &envptr144317[2]
  %cont142177 = load i64, i64* %envptr144318, align 8                                ; load; *envptr144318
  %envptr144319 = inttoptr i64 %env143476 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144320 = getelementptr inbounds i64, i64* %envptr144319, i64 1              ; &envptr144319[1]
  %vNh$lst = load i64, i64* %envptr144320, align 8                                   ; load; *envptr144320
  %arg142588 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142077 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142588)               ; call prim_vector_45ref
  %a142078 = call i64 @prim_null_63(i64 %a142077)                                    ; call prim_null_63
  %cmp144321 = icmp eq i64 %a142078, 15                                              ; false?
  br i1 %cmp144321, label %else144323, label %then144322                             ; if

then144322:
  %arg142592 = add i64 0, 0                                                          ; quoted ()
  %arg142591 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144324 = inttoptr i64 %cont142177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144324)                                       ; assert function application
  %i0ptr144325 = getelementptr inbounds i64, i64* %cloptr144324, i64 0               ; &cloptr144324[0]
  %f144327 = load i64, i64* %i0ptr144325, align 8                                    ; load; *i0ptr144325
  %fptr144326 = inttoptr i64 %f144327 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144326(i64 %cont142177, i64 %arg142592, i64 %arg142591); tail call
  ret void

else144323:
  %arg142594 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142079 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142594)               ; call prim_vector_45ref
  %a142080 = call i64 @prim_car(i64 %a142079)                                        ; call prim_car
  %a142081 = call i64 @prim_eqv_63(i64 %a142080, i64 %fm2$v)                         ; call prim_eqv_63
  %cmp144328 = icmp eq i64 %a142081, 15                                              ; false?
  br i1 %cmp144328, label %else144330, label %then144329                             ; if

then144329:
  %arg142599 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142179 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142599)         ; call prim_vector_45ref
  %arg142602 = add i64 0, 0                                                          ; quoted ()
  %cloptr144331 = inttoptr i64 %cont142177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144331)                                       ; assert function application
  %i0ptr144332 = getelementptr inbounds i64, i64* %cloptr144331, i64 0               ; &cloptr144331[0]
  %f144334 = load i64, i64* %i0ptr144332, align 8                                    ; load; *i0ptr144332
  %fptr144333 = inttoptr i64 %f144334 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144333(i64 %cont142177, i64 %arg142602, i64 %retprim142179); tail call
  ret void

else144330:
  %arg142604 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142082 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142604)               ; call prim_vector_45ref
  %a142083 = call i64 @prim_cdr(i64 %a142082)                                        ; call prim_cdr
  %arg142608 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142181 = call i64 @prim_vector_45set_33(i64 %vNh$lst, i64 %arg142608, i64 %a142083); call prim_vector_45set_33
  %cloptr144335 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144337 = getelementptr inbounds i64, i64* %cloptr144335, i64 1                ; &eptr144337[1]
  %eptr144338 = getelementptr inbounds i64, i64* %cloptr144335, i64 2                ; &eptr144338[2]
  store i64 %cont142177, i64* %eptr144337                                            ; *eptr144337 = %cont142177
  store i64 %EZj$cc, i64* %eptr144338                                                ; *eptr144338 = %EZj$cc
  %eptr144336 = getelementptr inbounds i64, i64* %cloptr144335, i64 0                ; &cloptr144335[0]
  %f144339 = ptrtoint void(i64,i64,i64)* @lam143469 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144339, i64* %eptr144336                                               ; store fptr
  %arg142612 = ptrtoint i64* %cloptr144335 to i64                                    ; closure cast; i64* -> i64
  %arg142611 = add i64 0, 0                                                          ; quoted ()
  %cloptr144340 = inttoptr i64 %arg142612 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144340)                                       ; assert function application
  %i0ptr144341 = getelementptr inbounds i64, i64* %cloptr144340, i64 0               ; &cloptr144340[0]
  %f144343 = load i64, i64* %i0ptr144341, align 8                                    ; load; *i0ptr144341
  %fptr144342 = inttoptr i64 %f144343 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144342(i64 %arg142612, i64 %arg142611, i64 %retprim142181); tail call
  ret void
}


define void @lam143469(i64 %env143470, i64 %_95142180, i64 %KPz$_950) {
  %envptr144344 = inttoptr i64 %env143470 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144345 = getelementptr inbounds i64, i64* %envptr144344, i64 2              ; &envptr144344[2]
  %EZj$cc = load i64, i64* %envptr144345, align 8                                    ; load; *envptr144345
  %envptr144346 = inttoptr i64 %env143470 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144347 = getelementptr inbounds i64, i64* %envptr144346, i64 1              ; &envptr144346[1]
  %cont142177 = load i64, i64* %envptr144347, align 8                                ; load; *envptr144347
  %cloptr144348 = inttoptr i64 %EZj$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144348)                                       ; assert function application
  %i0ptr144349 = getelementptr inbounds i64, i64* %cloptr144348, i64 0               ; &cloptr144348[0]
  %f144351 = load i64, i64* %i0ptr144349, align 8                                    ; load; *i0ptr144349
  %fptr144350 = inttoptr i64 %f144351 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144350(i64 %EZj$cc, i64 %cont142177, i64 %EZj$cc)   ; tail call
  ret void
}


define void @lam143462(i64 %env143463, i64 %_95142178, i64 %EZj$cc) {
  %envptr144352 = inttoptr i64 %env143463 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144353 = getelementptr inbounds i64, i64* %envptr144352, i64 3              ; &envptr144352[3]
  %fm2$v = load i64, i64* %envptr144353, align 8                                     ; load; *envptr144353
  %envptr144354 = inttoptr i64 %env143463 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144355 = getelementptr inbounds i64, i64* %envptr144354, i64 2              ; &envptr144354[2]
  %cont142177 = load i64, i64* %envptr144355, align 8                                ; load; *envptr144355
  %envptr144356 = inttoptr i64 %env143463 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144357 = getelementptr inbounds i64, i64* %envptr144356, i64 1              ; &envptr144356[1]
  %vNh$lst = load i64, i64* %envptr144357, align 8                                   ; load; *envptr144357
  %arg142616 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142077 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142616)               ; call prim_vector_45ref
  %a142078 = call i64 @prim_null_63(i64 %a142077)                                    ; call prim_null_63
  %cmp144358 = icmp eq i64 %a142078, 15                                              ; false?
  br i1 %cmp144358, label %else144360, label %then144359                             ; if

then144359:
  %arg142620 = add i64 0, 0                                                          ; quoted ()
  %arg142619 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144361 = inttoptr i64 %cont142177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144361)                                       ; assert function application
  %i0ptr144362 = getelementptr inbounds i64, i64* %cloptr144361, i64 0               ; &cloptr144361[0]
  %f144364 = load i64, i64* %i0ptr144362, align 8                                    ; load; *i0ptr144362
  %fptr144363 = inttoptr i64 %f144364 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144363(i64 %cont142177, i64 %arg142620, i64 %arg142619); tail call
  ret void

else144360:
  %arg142622 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142079 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142622)               ; call prim_vector_45ref
  %a142080 = call i64 @prim_car(i64 %a142079)                                        ; call prim_car
  %a142081 = call i64 @prim_eqv_63(i64 %a142080, i64 %fm2$v)                         ; call prim_eqv_63
  %cmp144365 = icmp eq i64 %a142081, 15                                              ; false?
  br i1 %cmp144365, label %else144367, label %then144366                             ; if

then144366:
  %arg142627 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142179 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142627)         ; call prim_vector_45ref
  %arg142630 = add i64 0, 0                                                          ; quoted ()
  %cloptr144368 = inttoptr i64 %cont142177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144368)                                       ; assert function application
  %i0ptr144369 = getelementptr inbounds i64, i64* %cloptr144368, i64 0               ; &cloptr144368[0]
  %f144371 = load i64, i64* %i0ptr144369, align 8                                    ; load; *i0ptr144369
  %fptr144370 = inttoptr i64 %f144371 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144370(i64 %cont142177, i64 %arg142630, i64 %retprim142179); tail call
  ret void

else144367:
  %arg142632 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142082 = call i64 @prim_vector_45ref(i64 %vNh$lst, i64 %arg142632)               ; call prim_vector_45ref
  %a142083 = call i64 @prim_cdr(i64 %a142082)                                        ; call prim_cdr
  %arg142636 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142181 = call i64 @prim_vector_45set_33(i64 %vNh$lst, i64 %arg142636, i64 %a142083); call prim_vector_45set_33
  %cloptr144372 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144374 = getelementptr inbounds i64, i64* %cloptr144372, i64 1                ; &eptr144374[1]
  %eptr144375 = getelementptr inbounds i64, i64* %cloptr144372, i64 2                ; &eptr144375[2]
  store i64 %cont142177, i64* %eptr144374                                            ; *eptr144374 = %cont142177
  store i64 %EZj$cc, i64* %eptr144375                                                ; *eptr144375 = %EZj$cc
  %eptr144373 = getelementptr inbounds i64, i64* %cloptr144372, i64 0                ; &cloptr144372[0]
  %f144376 = ptrtoint void(i64,i64,i64)* @lam143456 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144376, i64* %eptr144373                                               ; store fptr
  %arg142640 = ptrtoint i64* %cloptr144372 to i64                                    ; closure cast; i64* -> i64
  %arg142639 = add i64 0, 0                                                          ; quoted ()
  %cloptr144377 = inttoptr i64 %arg142640 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144377)                                       ; assert function application
  %i0ptr144378 = getelementptr inbounds i64, i64* %cloptr144377, i64 0               ; &cloptr144377[0]
  %f144380 = load i64, i64* %i0ptr144378, align 8                                    ; load; *i0ptr144378
  %fptr144379 = inttoptr i64 %f144380 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144379(i64 %arg142640, i64 %arg142639, i64 %retprim142181); tail call
  ret void
}


define void @lam143456(i64 %env143457, i64 %_95142180, i64 %KPz$_950) {
  %envptr144381 = inttoptr i64 %env143457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144382 = getelementptr inbounds i64, i64* %envptr144381, i64 2              ; &envptr144381[2]
  %EZj$cc = load i64, i64* %envptr144382, align 8                                    ; load; *envptr144382
  %envptr144383 = inttoptr i64 %env143457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144384 = getelementptr inbounds i64, i64* %envptr144383, i64 1              ; &envptr144383[1]
  %cont142177 = load i64, i64* %envptr144384, align 8                                ; load; *envptr144384
  %cloptr144385 = inttoptr i64 %EZj$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144385)                                       ; assert function application
  %i0ptr144386 = getelementptr inbounds i64, i64* %cloptr144385, i64 0               ; &cloptr144385[0]
  %f144388 = load i64, i64* %i0ptr144386, align 8                                    ; load; *i0ptr144386
  %fptr144387 = inttoptr i64 %f144388 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144387(i64 %EZj$cc, i64 %cont142177, i64 %EZj$cc)   ; tail call
  ret void
}


define void @lam143449(i64 %env143450, i64 %RwE$args142184) {
  %envptr144389 = inttoptr i64 %env143450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144390 = getelementptr inbounds i64, i64* %envptr144389, i64 1              ; &envptr144389[1]
  %MGp$_37foldl1 = load i64, i64* %envptr144390, align 8                             ; load; *envptr144390
  %cont142183 = call i64 @prim_car(i64 %RwE$args142184)                              ; call prim_car
  %RwE$args = call i64 @prim_cdr(i64 %RwE$args142184)                                ; call prim_cdr
  %a142084 = call i64 @prim_null_63(i64 %RwE$args)                                   ; call prim_null_63
  %cmp144391 = icmp eq i64 %a142084, 15                                              ; false?
  br i1 %cmp144391, label %else144393, label %then144392                             ; if

then144392:
  %arg142648 = add i64 0, 0                                                          ; quoted ()
  %arg142647 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr144394 = inttoptr i64 %cont142183 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144394)                                       ; assert function application
  %i0ptr144395 = getelementptr inbounds i64, i64* %cloptr144394, i64 0               ; &cloptr144394[0]
  %f144397 = load i64, i64* %i0ptr144395, align 8                                    ; load; *i0ptr144395
  %fptr144396 = inttoptr i64 %f144397 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144396(i64 %cont142183, i64 %arg142648, i64 %arg142647); tail call
  ret void

else144393:
  %a142085 = call i64 @prim_cdr(i64 %RwE$args)                                       ; call prim_cdr
  %a142086 = call i64 @prim_null_63(i64 %a142085)                                    ; call prim_null_63
  %cmp144398 = icmp eq i64 %a142086, 15                                              ; false?
  br i1 %cmp144398, label %else144400, label %then144399                             ; if

then144399:
  %retprim142185 = call i64 @prim_car(i64 %RwE$args)                                 ; call prim_car
  %arg142654 = add i64 0, 0                                                          ; quoted ()
  %cloptr144401 = inttoptr i64 %cont142183 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144401)                                       ; assert function application
  %i0ptr144402 = getelementptr inbounds i64, i64* %cloptr144401, i64 0               ; &cloptr144401[0]
  %f144404 = load i64, i64* %i0ptr144402, align 8                                    ; load; *i0ptr144402
  %fptr144403 = inttoptr i64 %f144404 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144403(i64 %cont142183, i64 %arg142654, i64 %retprim142185); tail call
  ret void

else144400:
  %a142087 = call i64 @prim_car(i64 %RwE$args)                                       ; call prim_car
  %a142088 = call i64 @prim_cdr(i64 %RwE$args)                                       ; call prim_cdr
  %cloptr144405 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144406 = getelementptr inbounds i64, i64* %cloptr144405, i64 0                ; &cloptr144405[0]
  %f144407 = ptrtoint void(i64,i64,i64,i64)* @lam143447 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144407, i64* %eptr144406                                               ; store fptr
  %arg142660 = ptrtoint i64* %cloptr144405 to i64                                    ; closure cast; i64* -> i64
  %cloptr144408 = inttoptr i64 %MGp$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144408)                                       ; assert function application
  %i0ptr144409 = getelementptr inbounds i64, i64* %cloptr144408, i64 0               ; &cloptr144408[0]
  %f144411 = load i64, i64* %i0ptr144409, align 8                                    ; load; *i0ptr144409
  %fptr144410 = inttoptr i64 %f144411 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144410(i64 %MGp$_37foldl1, i64 %cont142183, i64 %arg142660, i64 %a142087, i64 %a142088); tail call
  ret void
}


define void @lam143447(i64 %env143448, i64 %cont142186, i64 %aCF$n, i64 %xon$v) {
  %retprim142187 = call i64 @prim__47(i64 %xon$v, i64 %aCF$n)                        ; call prim__47
  %arg142666 = add i64 0, 0                                                          ; quoted ()
  %cloptr144412 = inttoptr i64 %cont142186 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144412)                                       ; assert function application
  %i0ptr144413 = getelementptr inbounds i64, i64* %cloptr144412, i64 0               ; &cloptr144412[0]
  %f144415 = load i64, i64* %i0ptr144413, align 8                                    ; load; *i0ptr144413
  %fptr144414 = inttoptr i64 %f144415 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144414(i64 %cont142186, i64 %arg142666, i64 %retprim142187); tail call
  ret void
}


define void @lam143441(i64 %env143442, i64 %cont142188, i64 %Ge8$x) {
  %retprim142189 = call i64 @prim_car(i64 %Ge8$x)                                    ; call prim_car
  %arg142670 = add i64 0, 0                                                          ; quoted ()
  %cloptr144416 = inttoptr i64 %cont142188 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144416)                                       ; assert function application
  %i0ptr144417 = getelementptr inbounds i64, i64* %cloptr144416, i64 0               ; &cloptr144416[0]
  %f144419 = load i64, i64* %i0ptr144417, align 8                                    ; load; *i0ptr144417
  %fptr144418 = inttoptr i64 %f144419 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144418(i64 %cont142188, i64 %arg142670, i64 %retprim142189); tail call
  ret void
}


define void @lam143438(i64 %env143439, i64 %cont142190, i64 %m2d$x) {
  %a142089 = call i64 @prim_cdr(i64 %m2d$x)                                          ; call prim_cdr
  %retprim142191 = call i64 @prim_car(i64 %a142089)                                  ; call prim_car
  %arg142675 = add i64 0, 0                                                          ; quoted ()
  %cloptr144420 = inttoptr i64 %cont142190 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144420)                                       ; assert function application
  %i0ptr144421 = getelementptr inbounds i64, i64* %cloptr144420, i64 0               ; &cloptr144420[0]
  %f144423 = load i64, i64* %i0ptr144421, align 8                                    ; load; *i0ptr144421
  %fptr144422 = inttoptr i64 %f144423 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144422(i64 %cont142190, i64 %arg142675, i64 %retprim142191); tail call
  ret void
}


define void @lam143435(i64 %env143436, i64 %cont142192, i64 %lb8$x) {
  %a142090 = call i64 @prim_cdr(i64 %lb8$x)                                          ; call prim_cdr
  %a142091 = call i64 @prim_cdr(i64 %a142090)                                        ; call prim_cdr
  %retprim142193 = call i64 @prim_car(i64 %a142091)                                  ; call prim_car
  %arg142681 = add i64 0, 0                                                          ; quoted ()
  %cloptr144424 = inttoptr i64 %cont142192 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144424)                                       ; assert function application
  %i0ptr144425 = getelementptr inbounds i64, i64* %cloptr144424, i64 0               ; &cloptr144424[0]
  %f144427 = load i64, i64* %i0ptr144425, align 8                                    ; load; *i0ptr144425
  %fptr144426 = inttoptr i64 %f144427 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144426(i64 %cont142192, i64 %arg142681, i64 %retprim142193); tail call
  ret void
}


define void @lam143432(i64 %env143433, i64 %cont142194, i64 %Dsy$x) {
  %a142092 = call i64 @prim_cdr(i64 %Dsy$x)                                          ; call prim_cdr
  %a142093 = call i64 @prim_cdr(i64 %a142092)                                        ; call prim_cdr
  %a142094 = call i64 @prim_cdr(i64 %a142093)                                        ; call prim_cdr
  %retprim142195 = call i64 @prim_car(i64 %a142094)                                  ; call prim_car
  %arg142688 = add i64 0, 0                                                          ; quoted ()
  %cloptr144428 = inttoptr i64 %cont142194 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144428)                                       ; assert function application
  %i0ptr144429 = getelementptr inbounds i64, i64* %cloptr144428, i64 0               ; &cloptr144428[0]
  %f144431 = load i64, i64* %i0ptr144429, align 8                                    ; load; *i0ptr144429
  %fptr144430 = inttoptr i64 %f144431 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144430(i64 %cont142194, i64 %arg142688, i64 %retprim142195); tail call
  ret void
}


define void @lam143429(i64 %env143430, i64 %cont142196, i64 %hga$p) {
  %a142095 = call i64 @prim_cons_63(i64 %hga$p)                                      ; call prim_cons_63
  %cmp144432 = icmp eq i64 %a142095, 15                                              ; false?
  br i1 %cmp144432, label %else144434, label %then144433                             ; if

then144433:
  %a142096 = call i64 @prim_car(i64 %hga$p)                                          ; call prim_car
  %arg142692 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym144435, i32 0, i32 0)); quoted string
  %retprim142197 = call i64 @prim_eq_63(i64 %a142096, i64 %arg142692)                ; call prim_eq_63
  %arg142695 = add i64 0, 0                                                          ; quoted ()
  %cloptr144436 = inttoptr i64 %cont142196 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144436)                                       ; assert function application
  %i0ptr144437 = getelementptr inbounds i64, i64* %cloptr144436, i64 0               ; &cloptr144436[0]
  %f144439 = load i64, i64* %i0ptr144437, align 8                                    ; load; *i0ptr144437
  %fptr144438 = inttoptr i64 %f144439 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144438(i64 %cont142196, i64 %arg142695, i64 %retprim142197); tail call
  ret void

else144434:
  %arg142698 = add i64 0, 0                                                          ; quoted ()
  %arg142697 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144440 = inttoptr i64 %cont142196 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144440)                                       ; assert function application
  %i0ptr144441 = getelementptr inbounds i64, i64* %cloptr144440, i64 0               ; &cloptr144440[0]
  %f144443 = load i64, i64* %i0ptr144441, align 8                                    ; load; *i0ptr144441
  %fptr144442 = inttoptr i64 %f144443 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144442(i64 %cont142196, i64 %arg142698, i64 %arg142697); tail call
  ret void
}


define void @lam143423(i64 %env143424, i64 %DNX$lst142242) {
  %cont142241 = call i64 @prim_car(i64 %DNX$lst142242)                               ; call prim_car
  %DNX$lst = call i64 @prim_cdr(i64 %DNX$lst142242)                                  ; call prim_cdr
  %arg142705 = add i64 0, 0                                                          ; quoted ()
  %cloptr144444 = inttoptr i64 %cont142241 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144444)                                       ; assert function application
  %i0ptr144445 = getelementptr inbounds i64, i64* %cloptr144444, i64 0               ; &cloptr144444[0]
  %f144447 = load i64, i64* %i0ptr144445, align 8                                    ; load; *i0ptr144445
  %fptr144446 = inttoptr i64 %f144447 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144446(i64 %cont142241, i64 %arg142705, i64 %DNX$lst); tail call
  ret void
}


define void @lam143420(i64 %env143421, i64 %_95142198, i64 %I7f$_37raise_45handler) {
  %envptr144448 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144449 = getelementptr inbounds i64, i64* %envptr144448, i64 3              ; &envptr144448[3]
  %QJ3$_37drop = load i64, i64* %envptr144449, align 8                               ; load; *envptr144449
  %envptr144450 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144451 = getelementptr inbounds i64, i64* %envptr144450, i64 2              ; &envptr144450[2]
  %NHu$_37_62 = load i64, i64* %envptr144451, align 8                                ; load; *envptr144451
  %envptr144452 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144453 = getelementptr inbounds i64, i64* %envptr144452, i64 1              ; &envptr144452[1]
  %smX$_37length = load i64, i64* %envptr144453, align 8                             ; load; *envptr144453
  %cloptr144454 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144455 = getelementptr inbounds i64, i64* %cloptr144454, i64 0                ; &cloptr144454[0]
  %f144456 = ptrtoint void(i64,i64)* @lam143418 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144456, i64* %eptr144455                                               ; store fptr
  %arg142708 = ptrtoint i64* %cloptr144454 to i64                                    ; closure cast; i64* -> i64
  %cloptr144457 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144459 = getelementptr inbounds i64, i64* %cloptr144457, i64 1                ; &eptr144459[1]
  %eptr144460 = getelementptr inbounds i64, i64* %cloptr144457, i64 2                ; &eptr144460[2]
  %eptr144461 = getelementptr inbounds i64, i64* %cloptr144457, i64 3                ; &eptr144461[3]
  store i64 %smX$_37length, i64* %eptr144459                                         ; *eptr144459 = %smX$_37length
  store i64 %NHu$_37_62, i64* %eptr144460                                            ; *eptr144460 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144461                                           ; *eptr144461 = %QJ3$_37drop
  %eptr144458 = getelementptr inbounds i64, i64* %cloptr144457, i64 0                ; &cloptr144457[0]
  %f144462 = ptrtoint void(i64,i64,i64)* @lam143415 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144462, i64* %eptr144458                                               ; store fptr
  %arg142707 = ptrtoint i64* %cloptr144457 to i64                                    ; closure cast; i64* -> i64
  %rva143166 = add i64 0, 0                                                          ; quoted ()
  %rva143165 = call i64 @prim_cons(i64 %arg142707, i64 %rva143166)                   ; call prim_cons
  %cloptr144463 = inttoptr i64 %arg142708 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144463)                                       ; assert function application
  %i0ptr144464 = getelementptr inbounds i64, i64* %cloptr144463, i64 0               ; &cloptr144463[0]
  %f144466 = load i64, i64* %i0ptr144464, align 8                                    ; load; *i0ptr144464
  %fptr144465 = inttoptr i64 %f144466 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144465(i64 %arg142708, i64 %rva143165)              ; tail call
  ret void
}


define void @lam143418(i64 %env143419, i64 %rmf$lst142240) {
  %cont142239 = call i64 @prim_car(i64 %rmf$lst142240)                               ; call prim_car
  %rmf$lst = call i64 @prim_cdr(i64 %rmf$lst142240)                                  ; call prim_cdr
  %arg142712 = add i64 0, 0                                                          ; quoted ()
  %cloptr144467 = inttoptr i64 %cont142239 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144467)                                       ; assert function application
  %i0ptr144468 = getelementptr inbounds i64, i64* %cloptr144467, i64 0               ; &cloptr144467[0]
  %f144470 = load i64, i64* %i0ptr144468, align 8                                    ; load; *i0ptr144468
  %fptr144469 = inttoptr i64 %f144470 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144469(i64 %cont142239, i64 %arg142712, i64 %rmf$lst); tail call
  ret void
}


define void @lam143415(i64 %env143416, i64 %_95142237, i64 %a142097) {
  %envptr144471 = inttoptr i64 %env143416 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144472 = getelementptr inbounds i64, i64* %envptr144471, i64 3              ; &envptr144471[3]
  %QJ3$_37drop = load i64, i64* %envptr144472, align 8                               ; load; *envptr144472
  %envptr144473 = inttoptr i64 %env143416 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144474 = getelementptr inbounds i64, i64* %envptr144473, i64 2              ; &envptr144473[2]
  %NHu$_37_62 = load i64, i64* %envptr144474, align 8                                ; load; *envptr144474
  %envptr144475 = inttoptr i64 %env143416 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144476 = getelementptr inbounds i64, i64* %envptr144475, i64 1              ; &envptr144475[1]
  %smX$_37length = load i64, i64* %envptr144476, align 8                             ; load; *envptr144476
  %arg142715 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142238 = call i64 @prim_make_45vector(i64 %arg142715, i64 %a142097)        ; call prim_make_45vector
  %cloptr144477 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144479 = getelementptr inbounds i64, i64* %cloptr144477, i64 1                ; &eptr144479[1]
  %eptr144480 = getelementptr inbounds i64, i64* %cloptr144477, i64 2                ; &eptr144480[2]
  %eptr144481 = getelementptr inbounds i64, i64* %cloptr144477, i64 3                ; &eptr144481[3]
  store i64 %smX$_37length, i64* %eptr144479                                         ; *eptr144479 = %smX$_37length
  store i64 %NHu$_37_62, i64* %eptr144480                                            ; *eptr144480 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144481                                           ; *eptr144481 = %QJ3$_37drop
  %eptr144478 = getelementptr inbounds i64, i64* %cloptr144477, i64 0                ; &cloptr144477[0]
  %f144482 = ptrtoint void(i64,i64,i64)* @lam143412 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144482, i64* %eptr144478                                               ; store fptr
  %arg142718 = ptrtoint i64* %cloptr144477 to i64                                    ; closure cast; i64* -> i64
  %arg142717 = add i64 0, 0                                                          ; quoted ()
  %cloptr144483 = inttoptr i64 %arg142718 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144483)                                       ; assert function application
  %i0ptr144484 = getelementptr inbounds i64, i64* %cloptr144483, i64 0               ; &cloptr144483[0]
  %f144486 = load i64, i64* %i0ptr144484, align 8                                    ; load; *i0ptr144484
  %fptr144485 = inttoptr i64 %f144486 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144485(i64 %arg142718, i64 %arg142717, i64 %retprim142238); tail call
  ret void
}


define void @lam143412(i64 %env143413, i64 %_95142199, i64 %jwH$_37wind_45stack) {
  %envptr144487 = inttoptr i64 %env143413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144488 = getelementptr inbounds i64, i64* %envptr144487, i64 3              ; &envptr144487[3]
  %QJ3$_37drop = load i64, i64* %envptr144488, align 8                               ; load; *envptr144488
  %envptr144489 = inttoptr i64 %env143413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144490 = getelementptr inbounds i64, i64* %envptr144489, i64 2              ; &envptr144489[2]
  %NHu$_37_62 = load i64, i64* %envptr144490, align 8                                ; load; *envptr144490
  %envptr144491 = inttoptr i64 %env143413 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144492 = getelementptr inbounds i64, i64* %envptr144491, i64 1              ; &envptr144491[1]
  %smX$_37length = load i64, i64* %envptr144492, align 8                             ; load; *envptr144492
  %cloptr144493 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144495 = getelementptr inbounds i64, i64* %cloptr144493, i64 1                ; &eptr144495[1]
  %eptr144496 = getelementptr inbounds i64, i64* %cloptr144493, i64 2                ; &eptr144496[2]
  %eptr144497 = getelementptr inbounds i64, i64* %cloptr144493, i64 3                ; &eptr144497[3]
  store i64 %smX$_37length, i64* %eptr144495                                         ; *eptr144495 = %smX$_37length
  store i64 %NHu$_37_62, i64* %eptr144496                                            ; *eptr144496 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144497                                           ; *eptr144497 = %QJ3$_37drop
  %eptr144494 = getelementptr inbounds i64, i64* %cloptr144493, i64 0                ; &cloptr144493[0]
  %f144498 = ptrtoint void(i64,i64,i64,i64)* @lam143410 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144498, i64* %eptr144494                                               ; store fptr
  %Y0I$_37common_45tail = ptrtoint i64* %cloptr144493 to i64                         ; closure cast; i64* -> i64
  %cloptr144499 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144501 = getelementptr inbounds i64, i64* %cloptr144499, i64 1                ; &eptr144501[1]
  %eptr144502 = getelementptr inbounds i64, i64* %cloptr144499, i64 2                ; &eptr144502[2]
  store i64 %Y0I$_37common_45tail, i64* %eptr144501                                  ; *eptr144501 = %Y0I$_37common_45tail
  store i64 %jwH$_37wind_45stack, i64* %eptr144502                                   ; *eptr144502 = %jwH$_37wind_45stack
  %eptr144500 = getelementptr inbounds i64, i64* %cloptr144499, i64 0                ; &cloptr144499[0]
  %f144503 = ptrtoint void(i64,i64,i64)* @lam143368 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144503, i64* %eptr144500                                               ; store fptr
  %gNl$_37do_45wind = ptrtoint i64* %cloptr144499 to i64                             ; closure cast; i64* -> i64
  %arg142905 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142904 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg142903 = call i64 @const_init_int(i64 3)                                       ; quoted int
  call i64 @too_many_args()                                                          ; arity mismatch cdr
  ret void                                                                           ; 
}


define void @lam143410(i64 %env143411, i64 %cont142200, i64 %bul$x, i64 %nug$y) {
  %envptr144504 = inttoptr i64 %env143411 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144505 = getelementptr inbounds i64, i64* %envptr144504, i64 3              ; &envptr144504[3]
  %QJ3$_37drop = load i64, i64* %envptr144505, align 8                               ; load; *envptr144505
  %envptr144506 = inttoptr i64 %env143411 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144507 = getelementptr inbounds i64, i64* %envptr144506, i64 2              ; &envptr144506[2]
  %NHu$_37_62 = load i64, i64* %envptr144507, align 8                                ; load; *envptr144507
  %envptr144508 = inttoptr i64 %env143411 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144509 = getelementptr inbounds i64, i64* %envptr144508, i64 1              ; &envptr144508[1]
  %smX$_37length = load i64, i64* %envptr144509, align 8                             ; load; *envptr144509
  %cloptr144510 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144512 = getelementptr inbounds i64, i64* %cloptr144510, i64 1                ; &eptr144512[1]
  %eptr144513 = getelementptr inbounds i64, i64* %cloptr144510, i64 2                ; &eptr144513[2]
  %eptr144514 = getelementptr inbounds i64, i64* %cloptr144510, i64 3                ; &eptr144514[3]
  %eptr144515 = getelementptr inbounds i64, i64* %cloptr144510, i64 4                ; &eptr144515[4]
  %eptr144516 = getelementptr inbounds i64, i64* %cloptr144510, i64 5                ; &eptr144516[5]
  %eptr144517 = getelementptr inbounds i64, i64* %cloptr144510, i64 6                ; &eptr144517[6]
  store i64 %smX$_37length, i64* %eptr144512                                         ; *eptr144512 = %smX$_37length
  store i64 %NHu$_37_62, i64* %eptr144513                                            ; *eptr144513 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144514                                           ; *eptr144514 = %QJ3$_37drop
  store i64 %cont142200, i64* %eptr144515                                            ; *eptr144515 = %cont142200
  store i64 %nug$y, i64* %eptr144516                                                 ; *eptr144516 = %nug$y
  store i64 %bul$x, i64* %eptr144517                                                 ; *eptr144517 = %bul$x
  %eptr144511 = getelementptr inbounds i64, i64* %cloptr144510, i64 0                ; &cloptr144510[0]
  %f144518 = ptrtoint void(i64,i64,i64)* @lam143408 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144518, i64* %eptr144511                                               ; store fptr
  %arg142720 = ptrtoint i64* %cloptr144510 to i64                                    ; closure cast; i64* -> i64
  %cloptr144519 = inttoptr i64 %smX$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144519)                                       ; assert function application
  %i0ptr144520 = getelementptr inbounds i64, i64* %cloptr144519, i64 0               ; &cloptr144519[0]
  %f144522 = load i64, i64* %i0ptr144520, align 8                                    ; load; *i0ptr144520
  %fptr144521 = inttoptr i64 %f144522 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144521(i64 %smX$_37length, i64 %arg142720, i64 %bul$x); tail call
  ret void
}


define void @lam143408(i64 %env143409, i64 %_95142201, i64 %Fjc$lx) {
  %envptr144523 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144524 = getelementptr inbounds i64, i64* %envptr144523, i64 6              ; &envptr144523[6]
  %bul$x = load i64, i64* %envptr144524, align 8                                     ; load; *envptr144524
  %envptr144525 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144526 = getelementptr inbounds i64, i64* %envptr144525, i64 5              ; &envptr144525[5]
  %nug$y = load i64, i64* %envptr144526, align 8                                     ; load; *envptr144526
  %envptr144527 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144528 = getelementptr inbounds i64, i64* %envptr144527, i64 4              ; &envptr144527[4]
  %cont142200 = load i64, i64* %envptr144528, align 8                                ; load; *envptr144528
  %envptr144529 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144530 = getelementptr inbounds i64, i64* %envptr144529, i64 3              ; &envptr144529[3]
  %QJ3$_37drop = load i64, i64* %envptr144530, align 8                               ; load; *envptr144530
  %envptr144531 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144532 = getelementptr inbounds i64, i64* %envptr144531, i64 2              ; &envptr144531[2]
  %NHu$_37_62 = load i64, i64* %envptr144532, align 8                                ; load; *envptr144532
  %envptr144533 = inttoptr i64 %env143409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144534 = getelementptr inbounds i64, i64* %envptr144533, i64 1              ; &envptr144533[1]
  %smX$_37length = load i64, i64* %envptr144534, align 8                             ; load; *envptr144534
  %cloptr144535 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144537 = getelementptr inbounds i64, i64* %cloptr144535, i64 1                ; &eptr144537[1]
  %eptr144538 = getelementptr inbounds i64, i64* %cloptr144535, i64 2                ; &eptr144538[2]
  %eptr144539 = getelementptr inbounds i64, i64* %cloptr144535, i64 3                ; &eptr144539[3]
  %eptr144540 = getelementptr inbounds i64, i64* %cloptr144535, i64 4                ; &eptr144540[4]
  %eptr144541 = getelementptr inbounds i64, i64* %cloptr144535, i64 5                ; &eptr144541[5]
  %eptr144542 = getelementptr inbounds i64, i64* %cloptr144535, i64 6                ; &eptr144542[6]
  store i64 %NHu$_37_62, i64* %eptr144537                                            ; *eptr144537 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144538                                           ; *eptr144538 = %QJ3$_37drop
  store i64 %Fjc$lx, i64* %eptr144539                                                ; *eptr144539 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144540                                            ; *eptr144540 = %cont142200
  store i64 %nug$y, i64* %eptr144541                                                 ; *eptr144541 = %nug$y
  store i64 %bul$x, i64* %eptr144542                                                 ; *eptr144542 = %bul$x
  %eptr144536 = getelementptr inbounds i64, i64* %cloptr144535, i64 0                ; &cloptr144535[0]
  %f144543 = ptrtoint void(i64,i64,i64)* @lam143406 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144543, i64* %eptr144536                                               ; store fptr
  %arg142723 = ptrtoint i64* %cloptr144535 to i64                                    ; closure cast; i64* -> i64
  %cloptr144544 = inttoptr i64 %smX$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144544)                                       ; assert function application
  %i0ptr144545 = getelementptr inbounds i64, i64* %cloptr144544, i64 0               ; &cloptr144544[0]
  %f144547 = load i64, i64* %i0ptr144545, align 8                                    ; load; *i0ptr144545
  %fptr144546 = inttoptr i64 %f144547 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144546(i64 %smX$_37length, i64 %arg142723, i64 %nug$y); tail call
  ret void
}


define void @lam143406(i64 %env143407, i64 %_95142202, i64 %UHo$ly) {
  %envptr144548 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144549 = getelementptr inbounds i64, i64* %envptr144548, i64 6              ; &envptr144548[6]
  %bul$x = load i64, i64* %envptr144549, align 8                                     ; load; *envptr144549
  %envptr144550 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144551 = getelementptr inbounds i64, i64* %envptr144550, i64 5              ; &envptr144550[5]
  %nug$y = load i64, i64* %envptr144551, align 8                                     ; load; *envptr144551
  %envptr144552 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144553 = getelementptr inbounds i64, i64* %envptr144552, i64 4              ; &envptr144552[4]
  %cont142200 = load i64, i64* %envptr144553, align 8                                ; load; *envptr144553
  %envptr144554 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144555 = getelementptr inbounds i64, i64* %envptr144554, i64 3              ; &envptr144554[3]
  %Fjc$lx = load i64, i64* %envptr144555, align 8                                    ; load; *envptr144555
  %envptr144556 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144557 = getelementptr inbounds i64, i64* %envptr144556, i64 2              ; &envptr144556[2]
  %QJ3$_37drop = load i64, i64* %envptr144557, align 8                               ; load; *envptr144557
  %envptr144558 = inttoptr i64 %env143407 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144559 = getelementptr inbounds i64, i64* %envptr144558, i64 1              ; &envptr144558[1]
  %NHu$_37_62 = load i64, i64* %envptr144559, align 8                                ; load; *envptr144559
  %cloptr144560 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144561 = getelementptr inbounds i64, i64* %cloptr144560, i64 0                ; &cloptr144560[0]
  %f144562 = ptrtoint void(i64,i64)* @lam143404 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144562, i64* %eptr144561                                               ; store fptr
  %arg142726 = ptrtoint i64* %cloptr144560 to i64                                    ; closure cast; i64* -> i64
  %cloptr144563 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144565 = getelementptr inbounds i64, i64* %cloptr144563, i64 1                ; &eptr144565[1]
  %eptr144566 = getelementptr inbounds i64, i64* %cloptr144563, i64 2                ; &eptr144566[2]
  %eptr144567 = getelementptr inbounds i64, i64* %cloptr144563, i64 3                ; &eptr144567[3]
  %eptr144568 = getelementptr inbounds i64, i64* %cloptr144563, i64 4                ; &eptr144568[4]
  %eptr144569 = getelementptr inbounds i64, i64* %cloptr144563, i64 5                ; &eptr144569[5]
  %eptr144570 = getelementptr inbounds i64, i64* %cloptr144563, i64 6                ; &eptr144570[6]
  %eptr144571 = getelementptr inbounds i64, i64* %cloptr144563, i64 7                ; &eptr144571[7]
  store i64 %NHu$_37_62, i64* %eptr144565                                            ; *eptr144565 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144566                                           ; *eptr144566 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144567                                                ; *eptr144567 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144568                                                ; *eptr144568 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144569                                            ; *eptr144569 = %cont142200
  store i64 %nug$y, i64* %eptr144570                                                 ; *eptr144570 = %nug$y
  store i64 %bul$x, i64* %eptr144571                                                 ; *eptr144571 = %bul$x
  %eptr144564 = getelementptr inbounds i64, i64* %cloptr144563, i64 0                ; &cloptr144563[0]
  %f144572 = ptrtoint void(i64,i64,i64)* @lam143401 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144572, i64* %eptr144564                                               ; store fptr
  %arg142725 = ptrtoint i64* %cloptr144563 to i64                                    ; closure cast; i64* -> i64
  %cloptr144573 = inttoptr i64 %arg142726 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144573)                                       ; assert function application
  %i0ptr144574 = getelementptr inbounds i64, i64* %cloptr144573, i64 0               ; &cloptr144573[0]
  %f144576 = load i64, i64* %i0ptr144574, align 8                                    ; load; *i0ptr144574
  %fptr144575 = inttoptr i64 %f144576 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144575(i64 %arg142726, i64 %arg142725)              ; tail call
  ret void
}


define void @lam143404(i64 %env143405, i64 %T31$lst142212) {
  %cont142211 = call i64 @prim_car(i64 %T31$lst142212)                               ; call prim_car
  %T31$lst = call i64 @prim_cdr(i64 %T31$lst142212)                                  ; call prim_cdr
  %arg142730 = add i64 0, 0                                                          ; quoted ()
  %cloptr144577 = inttoptr i64 %cont142211 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144577)                                       ; assert function application
  %i0ptr144578 = getelementptr inbounds i64, i64* %cloptr144577, i64 0               ; &cloptr144577[0]
  %f144580 = load i64, i64* %i0ptr144578, align 8                                    ; load; *i0ptr144578
  %fptr144579 = inttoptr i64 %f144580 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144579(i64 %cont142211, i64 %arg142730, i64 %T31$lst); tail call
  ret void
}


define void @lam143401(i64 %env143402, i64 %_95142209, i64 %a142098) {
  %envptr144581 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144582 = getelementptr inbounds i64, i64* %envptr144581, i64 7              ; &envptr144581[7]
  %bul$x = load i64, i64* %envptr144582, align 8                                     ; load; *envptr144582
  %envptr144583 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144584 = getelementptr inbounds i64, i64* %envptr144583, i64 6              ; &envptr144583[6]
  %nug$y = load i64, i64* %envptr144584, align 8                                     ; load; *envptr144584
  %envptr144585 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144586 = getelementptr inbounds i64, i64* %envptr144585, i64 5              ; &envptr144585[5]
  %cont142200 = load i64, i64* %envptr144586, align 8                                ; load; *envptr144586
  %envptr144587 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144588 = getelementptr inbounds i64, i64* %envptr144587, i64 4              ; &envptr144587[4]
  %Fjc$lx = load i64, i64* %envptr144588, align 8                                    ; load; *envptr144588
  %envptr144589 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144590 = getelementptr inbounds i64, i64* %envptr144589, i64 3              ; &envptr144589[3]
  %UHo$ly = load i64, i64* %envptr144590, align 8                                    ; load; *envptr144590
  %envptr144591 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144592 = getelementptr inbounds i64, i64* %envptr144591, i64 2              ; &envptr144591[2]
  %QJ3$_37drop = load i64, i64* %envptr144592, align 8                               ; load; *envptr144592
  %envptr144593 = inttoptr i64 %env143402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144594 = getelementptr inbounds i64, i64* %envptr144593, i64 1              ; &envptr144593[1]
  %NHu$_37_62 = load i64, i64* %envptr144594, align 8                                ; load; *envptr144594
  %arg142733 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142210 = call i64 @prim_make_45vector(i64 %arg142733, i64 %a142098)        ; call prim_make_45vector
  %cloptr144595 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144597 = getelementptr inbounds i64, i64* %cloptr144595, i64 1                ; &eptr144597[1]
  %eptr144598 = getelementptr inbounds i64, i64* %cloptr144595, i64 2                ; &eptr144598[2]
  %eptr144599 = getelementptr inbounds i64, i64* %cloptr144595, i64 3                ; &eptr144599[3]
  %eptr144600 = getelementptr inbounds i64, i64* %cloptr144595, i64 4                ; &eptr144600[4]
  %eptr144601 = getelementptr inbounds i64, i64* %cloptr144595, i64 5                ; &eptr144601[5]
  %eptr144602 = getelementptr inbounds i64, i64* %cloptr144595, i64 6                ; &eptr144602[6]
  %eptr144603 = getelementptr inbounds i64, i64* %cloptr144595, i64 7                ; &eptr144603[7]
  store i64 %NHu$_37_62, i64* %eptr144597                                            ; *eptr144597 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144598                                           ; *eptr144598 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144599                                                ; *eptr144599 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144600                                                ; *eptr144600 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144601                                            ; *eptr144601 = %cont142200
  store i64 %nug$y, i64* %eptr144602                                                 ; *eptr144602 = %nug$y
  store i64 %bul$x, i64* %eptr144603                                                 ; *eptr144603 = %bul$x
  %eptr144596 = getelementptr inbounds i64, i64* %cloptr144595, i64 0                ; &cloptr144595[0]
  %f144604 = ptrtoint void(i64,i64,i64)* @lam143398 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144604, i64* %eptr144596                                               ; store fptr
  %arg142736 = ptrtoint i64* %cloptr144595 to i64                                    ; closure cast; i64* -> i64
  %arg142735 = add i64 0, 0                                                          ; quoted ()
  %cloptr144605 = inttoptr i64 %arg142736 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144605)                                       ; assert function application
  %i0ptr144606 = getelementptr inbounds i64, i64* %cloptr144605, i64 0               ; &cloptr144605[0]
  %f144608 = load i64, i64* %i0ptr144606, align 8                                    ; load; *i0ptr144606
  %fptr144607 = inttoptr i64 %f144608 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144607(i64 %arg142736, i64 %arg142735, i64 %retprim142210); tail call
  ret void
}


define void @lam143398(i64 %env143399, i64 %_95142203, i64 %NNQ$loop) {
  %envptr144609 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144610 = getelementptr inbounds i64, i64* %envptr144609, i64 7              ; &envptr144609[7]
  %bul$x = load i64, i64* %envptr144610, align 8                                     ; load; *envptr144610
  %envptr144611 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144612 = getelementptr inbounds i64, i64* %envptr144611, i64 6              ; &envptr144611[6]
  %nug$y = load i64, i64* %envptr144612, align 8                                     ; load; *envptr144612
  %envptr144613 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144614 = getelementptr inbounds i64, i64* %envptr144613, i64 5              ; &envptr144613[5]
  %cont142200 = load i64, i64* %envptr144614, align 8                                ; load; *envptr144614
  %envptr144615 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144616 = getelementptr inbounds i64, i64* %envptr144615, i64 4              ; &envptr144615[4]
  %Fjc$lx = load i64, i64* %envptr144616, align 8                                    ; load; *envptr144616
  %envptr144617 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144618 = getelementptr inbounds i64, i64* %envptr144617, i64 3              ; &envptr144617[3]
  %UHo$ly = load i64, i64* %envptr144618, align 8                                    ; load; *envptr144618
  %envptr144619 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144620 = getelementptr inbounds i64, i64* %envptr144619, i64 2              ; &envptr144619[2]
  %QJ3$_37drop = load i64, i64* %envptr144620, align 8                               ; load; *envptr144620
  %envptr144621 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144622 = getelementptr inbounds i64, i64* %envptr144621, i64 1              ; &envptr144621[1]
  %NHu$_37_62 = load i64, i64* %envptr144622, align 8                                ; load; *envptr144622
  %arg142738 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144623 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr144625 = getelementptr inbounds i64, i64* %cloptr144623, i64 1                ; &eptr144625[1]
  store i64 %NNQ$loop, i64* %eptr144625                                              ; *eptr144625 = %NNQ$loop
  %eptr144624 = getelementptr inbounds i64, i64* %cloptr144623, i64 0                ; &cloptr144623[0]
  %f144626 = ptrtoint void(i64,i64,i64,i64)* @lam143395 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144626, i64* %eptr144624                                               ; store fptr
  %arg142737 = ptrtoint i64* %cloptr144623 to i64                                    ; closure cast; i64* -> i64
  %kn9$_95142002 = call i64 @prim_vector_45set_33(i64 %NNQ$loop, i64 %arg142738, i64 %arg142737); call prim_vector_45set_33
  %arg142753 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142103 = call i64 @prim_vector_45ref(i64 %NNQ$loop, i64 %arg142753)              ; call prim_vector_45ref
  %cloptr144627 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr144629 = getelementptr inbounds i64, i64* %cloptr144627, i64 1                ; &eptr144629[1]
  %eptr144630 = getelementptr inbounds i64, i64* %cloptr144627, i64 2                ; &eptr144630[2]
  %eptr144631 = getelementptr inbounds i64, i64* %cloptr144627, i64 3                ; &eptr144631[3]
  %eptr144632 = getelementptr inbounds i64, i64* %cloptr144627, i64 4                ; &eptr144632[4]
  %eptr144633 = getelementptr inbounds i64, i64* %cloptr144627, i64 5                ; &eptr144633[5]
  %eptr144634 = getelementptr inbounds i64, i64* %cloptr144627, i64 6                ; &eptr144634[6]
  %eptr144635 = getelementptr inbounds i64, i64* %cloptr144627, i64 7                ; &eptr144635[7]
  %eptr144636 = getelementptr inbounds i64, i64* %cloptr144627, i64 8                ; &eptr144636[8]
  store i64 %a142103, i64* %eptr144629                                               ; *eptr144629 = %a142103
  store i64 %NHu$_37_62, i64* %eptr144630                                            ; *eptr144630 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144631                                           ; *eptr144631 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144632                                                ; *eptr144632 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144633                                                ; *eptr144633 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144634                                            ; *eptr144634 = %cont142200
  store i64 %nug$y, i64* %eptr144635                                                 ; *eptr144635 = %nug$y
  store i64 %bul$x, i64* %eptr144636                                                 ; *eptr144636 = %bul$x
  %eptr144628 = getelementptr inbounds i64, i64* %cloptr144627, i64 0                ; &cloptr144627[0]
  %f144637 = ptrtoint void(i64,i64,i64)* @lam143390 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144637, i64* %eptr144628                                               ; store fptr
  %arg142757 = ptrtoint i64* %cloptr144627 to i64                                    ; closure cast; i64* -> i64
  %cloptr144638 = inttoptr i64 %NHu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144638)                                       ; assert function application
  %i0ptr144639 = getelementptr inbounds i64, i64* %cloptr144638, i64 0               ; &cloptr144638[0]
  %f144641 = load i64, i64* %i0ptr144639, align 8                                    ; load; *i0ptr144639
  %fptr144640 = inttoptr i64 %f144641 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144640(i64 %NHu$_37_62, i64 %arg142757, i64 %Fjc$lx, i64 %UHo$ly); tail call
  ret void
}


define void @lam143395(i64 %env143396, i64 %cont142204, i64 %fVT$x, i64 %JXY$y) {
  %envptr144642 = inttoptr i64 %env143396 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144643 = getelementptr inbounds i64, i64* %envptr144642, i64 1              ; &envptr144642[1]
  %NNQ$loop = load i64, i64* %envptr144643, align 8                                  ; load; *envptr144643
  %a142099 = call i64 @prim_eq_63(i64 %fVT$x, i64 %JXY$y)                            ; call prim_eq_63
  %cmp144644 = icmp eq i64 %a142099, 15                                              ; false?
  br i1 %cmp144644, label %else144646, label %then144645                             ; if

then144645:
  %arg142743 = add i64 0, 0                                                          ; quoted ()
  %cloptr144647 = inttoptr i64 %cont142204 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144647)                                       ; assert function application
  %i0ptr144648 = getelementptr inbounds i64, i64* %cloptr144647, i64 0               ; &cloptr144647[0]
  %f144650 = load i64, i64* %i0ptr144648, align 8                                    ; load; *i0ptr144648
  %fptr144649 = inttoptr i64 %f144650 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144649(i64 %cont142204, i64 %arg142743, i64 %fVT$x) ; tail call
  ret void

else144646:
  %arg142745 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142100 = call i64 @prim_vector_45ref(i64 %NNQ$loop, i64 %arg142745)              ; call prim_vector_45ref
  %a142101 = call i64 @prim_cdr(i64 %fVT$x)                                          ; call prim_cdr
  %a142102 = call i64 @prim_cdr(i64 %JXY$y)                                          ; call prim_cdr
  %cloptr144651 = inttoptr i64 %a142100 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144651)                                       ; assert function application
  %i0ptr144652 = getelementptr inbounds i64, i64* %cloptr144651, i64 0               ; &cloptr144651[0]
  %f144654 = load i64, i64* %i0ptr144652, align 8                                    ; load; *i0ptr144652
  %fptr144653 = inttoptr i64 %f144654 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144653(i64 %a142100, i64 %cont142204, i64 %a142101, i64 %a142102); tail call
  ret void
}


define void @lam143390(i64 %env143391, i64 %_95142205, i64 %a142104) {
  %envptr144655 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144656 = getelementptr inbounds i64, i64* %envptr144655, i64 8              ; &envptr144655[8]
  %bul$x = load i64, i64* %envptr144656, align 8                                     ; load; *envptr144656
  %envptr144657 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144658 = getelementptr inbounds i64, i64* %envptr144657, i64 7              ; &envptr144657[7]
  %nug$y = load i64, i64* %envptr144658, align 8                                     ; load; *envptr144658
  %envptr144659 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144660 = getelementptr inbounds i64, i64* %envptr144659, i64 6              ; &envptr144659[6]
  %cont142200 = load i64, i64* %envptr144660, align 8                                ; load; *envptr144660
  %envptr144661 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144662 = getelementptr inbounds i64, i64* %envptr144661, i64 5              ; &envptr144661[5]
  %Fjc$lx = load i64, i64* %envptr144662, align 8                                    ; load; *envptr144662
  %envptr144663 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144664 = getelementptr inbounds i64, i64* %envptr144663, i64 4              ; &envptr144663[4]
  %UHo$ly = load i64, i64* %envptr144664, align 8                                    ; load; *envptr144664
  %envptr144665 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144666 = getelementptr inbounds i64, i64* %envptr144665, i64 3              ; &envptr144665[3]
  %QJ3$_37drop = load i64, i64* %envptr144666, align 8                               ; load; *envptr144666
  %envptr144667 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144668 = getelementptr inbounds i64, i64* %envptr144667, i64 2              ; &envptr144667[2]
  %NHu$_37_62 = load i64, i64* %envptr144668, align 8                                ; load; *envptr144668
  %envptr144669 = inttoptr i64 %env143391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144670 = getelementptr inbounds i64, i64* %envptr144669, i64 1              ; &envptr144669[1]
  %a142103 = load i64, i64* %envptr144670, align 8                                   ; load; *envptr144670
  %cmp144671 = icmp eq i64 %a142104, 15                                              ; false?
  br i1 %cmp144671, label %else144673, label %then144672                             ; if

then144672:
  %a142105 = call i64 @prim__45(i64 %Fjc$lx, i64 %UHo$ly)                            ; call prim__45
  %cloptr144674 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144676 = getelementptr inbounds i64, i64* %cloptr144674, i64 1                ; &eptr144676[1]
  %eptr144677 = getelementptr inbounds i64, i64* %cloptr144674, i64 2                ; &eptr144677[2]
  %eptr144678 = getelementptr inbounds i64, i64* %cloptr144674, i64 3                ; &eptr144678[3]
  %eptr144679 = getelementptr inbounds i64, i64* %cloptr144674, i64 4                ; &eptr144679[4]
  %eptr144680 = getelementptr inbounds i64, i64* %cloptr144674, i64 5                ; &eptr144680[5]
  %eptr144681 = getelementptr inbounds i64, i64* %cloptr144674, i64 6                ; &eptr144681[6]
  %eptr144682 = getelementptr inbounds i64, i64* %cloptr144674, i64 7                ; &eptr144682[7]
  store i64 %a142103, i64* %eptr144676                                               ; *eptr144676 = %a142103
  store i64 %NHu$_37_62, i64* %eptr144677                                            ; *eptr144677 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144678                                           ; *eptr144678 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144679                                                ; *eptr144679 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144680                                                ; *eptr144680 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144681                                            ; *eptr144681 = %cont142200
  store i64 %nug$y, i64* %eptr144682                                                 ; *eptr144682 = %nug$y
  %eptr144675 = getelementptr inbounds i64, i64* %cloptr144674, i64 0                ; &cloptr144674[0]
  %f144683 = ptrtoint void(i64,i64,i64)* @lam143378 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144683, i64* %eptr144675                                               ; store fptr
  %arg142763 = ptrtoint i64* %cloptr144674 to i64                                    ; closure cast; i64* -> i64
  %cloptr144684 = inttoptr i64 %QJ3$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144684)                                       ; assert function application
  %i0ptr144685 = getelementptr inbounds i64, i64* %cloptr144684, i64 0               ; &cloptr144684[0]
  %f144687 = load i64, i64* %i0ptr144685, align 8                                    ; load; *i0ptr144685
  %fptr144686 = inttoptr i64 %f144687 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144686(i64 %QJ3$_37drop, i64 %arg142763, i64 %bul$x, i64 %a142105); tail call
  ret void

else144673:
  %cloptr144688 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144690 = getelementptr inbounds i64, i64* %cloptr144688, i64 1                ; &eptr144690[1]
  %eptr144691 = getelementptr inbounds i64, i64* %cloptr144688, i64 2                ; &eptr144691[2]
  %eptr144692 = getelementptr inbounds i64, i64* %cloptr144688, i64 3                ; &eptr144692[3]
  %eptr144693 = getelementptr inbounds i64, i64* %cloptr144688, i64 4                ; &eptr144693[4]
  %eptr144694 = getelementptr inbounds i64, i64* %cloptr144688, i64 5                ; &eptr144694[5]
  %eptr144695 = getelementptr inbounds i64, i64* %cloptr144688, i64 6                ; &eptr144695[6]
  %eptr144696 = getelementptr inbounds i64, i64* %cloptr144688, i64 7                ; &eptr144696[7]
  store i64 %a142103, i64* %eptr144690                                               ; *eptr144690 = %a142103
  store i64 %NHu$_37_62, i64* %eptr144691                                            ; *eptr144691 = %NHu$_37_62
  store i64 %QJ3$_37drop, i64* %eptr144692                                           ; *eptr144692 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144693                                                ; *eptr144693 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144694                                                ; *eptr144694 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144695                                            ; *eptr144695 = %cont142200
  store i64 %nug$y, i64* %eptr144696                                                 ; *eptr144696 = %nug$y
  %eptr144689 = getelementptr inbounds i64, i64* %cloptr144688, i64 0                ; &cloptr144688[0]
  %f144697 = ptrtoint void(i64,i64,i64)* @lam143388 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144697, i64* %eptr144689                                               ; store fptr
  %arg142788 = ptrtoint i64* %cloptr144688 to i64                                    ; closure cast; i64* -> i64
  %arg142787 = add i64 0, 0                                                          ; quoted ()
  %cloptr144698 = inttoptr i64 %arg142788 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144698)                                       ; assert function application
  %i0ptr144699 = getelementptr inbounds i64, i64* %cloptr144698, i64 0               ; &cloptr144698[0]
  %f144701 = load i64, i64* %i0ptr144699, align 8                                    ; load; *i0ptr144699
  %fptr144700 = inttoptr i64 %f144701 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144700(i64 %arg142788, i64 %arg142787, i64 %bul$x)  ; tail call
  ret void
}


define void @lam143388(i64 %env143389, i64 %_95142206, i64 %a142106) {
  %envptr144702 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144703 = getelementptr inbounds i64, i64* %envptr144702, i64 7              ; &envptr144702[7]
  %nug$y = load i64, i64* %envptr144703, align 8                                     ; load; *envptr144703
  %envptr144704 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144705 = getelementptr inbounds i64, i64* %envptr144704, i64 6              ; &envptr144704[6]
  %cont142200 = load i64, i64* %envptr144705, align 8                                ; load; *envptr144705
  %envptr144706 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144707 = getelementptr inbounds i64, i64* %envptr144706, i64 5              ; &envptr144706[5]
  %Fjc$lx = load i64, i64* %envptr144707, align 8                                    ; load; *envptr144707
  %envptr144708 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144709 = getelementptr inbounds i64, i64* %envptr144708, i64 4              ; &envptr144708[4]
  %UHo$ly = load i64, i64* %envptr144709, align 8                                    ; load; *envptr144709
  %envptr144710 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144711 = getelementptr inbounds i64, i64* %envptr144710, i64 3              ; &envptr144710[3]
  %QJ3$_37drop = load i64, i64* %envptr144711, align 8                               ; load; *envptr144711
  %envptr144712 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144713 = getelementptr inbounds i64, i64* %envptr144712, i64 2              ; &envptr144712[2]
  %NHu$_37_62 = load i64, i64* %envptr144713, align 8                                ; load; *envptr144713
  %envptr144714 = inttoptr i64 %env143389 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144715 = getelementptr inbounds i64, i64* %envptr144714, i64 1              ; &envptr144714[1]
  %a142103 = load i64, i64* %envptr144715, align 8                                   ; load; *envptr144715
  %cloptr144716 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144718 = getelementptr inbounds i64, i64* %cloptr144716, i64 1                ; &eptr144718[1]
  %eptr144719 = getelementptr inbounds i64, i64* %cloptr144716, i64 2                ; &eptr144719[2]
  %eptr144720 = getelementptr inbounds i64, i64* %cloptr144716, i64 3                ; &eptr144720[3]
  %eptr144721 = getelementptr inbounds i64, i64* %cloptr144716, i64 4                ; &eptr144721[4]
  %eptr144722 = getelementptr inbounds i64, i64* %cloptr144716, i64 5                ; &eptr144722[5]
  %eptr144723 = getelementptr inbounds i64, i64* %cloptr144716, i64 6                ; &eptr144723[6]
  %eptr144724 = getelementptr inbounds i64, i64* %cloptr144716, i64 7                ; &eptr144724[7]
  store i64 %a142106, i64* %eptr144718                                               ; *eptr144718 = %a142106
  store i64 %a142103, i64* %eptr144719                                               ; *eptr144719 = %a142103
  store i64 %QJ3$_37drop, i64* %eptr144720                                           ; *eptr144720 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144721                                                ; *eptr144721 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144722                                                ; *eptr144722 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144723                                            ; *eptr144723 = %cont142200
  store i64 %nug$y, i64* %eptr144724                                                 ; *eptr144724 = %nug$y
  %eptr144717 = getelementptr inbounds i64, i64* %cloptr144716, i64 0                ; &cloptr144716[0]
  %f144725 = ptrtoint void(i64,i64,i64)* @lam143386 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144725, i64* %eptr144717                                               ; store fptr
  %arg142791 = ptrtoint i64* %cloptr144716 to i64                                    ; closure cast; i64* -> i64
  %cloptr144726 = inttoptr i64 %NHu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144726)                                       ; assert function application
  %i0ptr144727 = getelementptr inbounds i64, i64* %cloptr144726, i64 0               ; &cloptr144726[0]
  %f144729 = load i64, i64* %i0ptr144727, align 8                                    ; load; *i0ptr144727
  %fptr144728 = inttoptr i64 %f144729 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144728(i64 %NHu$_37_62, i64 %arg142791, i64 %UHo$ly, i64 %Fjc$lx); tail call
  ret void
}


define void @lam143386(i64 %env143387, i64 %_95142207, i64 %a142107) {
  %envptr144730 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144731 = getelementptr inbounds i64, i64* %envptr144730, i64 7              ; &envptr144730[7]
  %nug$y = load i64, i64* %envptr144731, align 8                                     ; load; *envptr144731
  %envptr144732 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144733 = getelementptr inbounds i64, i64* %envptr144732, i64 6              ; &envptr144732[6]
  %cont142200 = load i64, i64* %envptr144733, align 8                                ; load; *envptr144733
  %envptr144734 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144735 = getelementptr inbounds i64, i64* %envptr144734, i64 5              ; &envptr144734[5]
  %Fjc$lx = load i64, i64* %envptr144735, align 8                                    ; load; *envptr144735
  %envptr144736 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144737 = getelementptr inbounds i64, i64* %envptr144736, i64 4              ; &envptr144736[4]
  %UHo$ly = load i64, i64* %envptr144737, align 8                                    ; load; *envptr144737
  %envptr144738 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144739 = getelementptr inbounds i64, i64* %envptr144738, i64 3              ; &envptr144738[3]
  %QJ3$_37drop = load i64, i64* %envptr144739, align 8                               ; load; *envptr144739
  %envptr144740 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144741 = getelementptr inbounds i64, i64* %envptr144740, i64 2              ; &envptr144740[2]
  %a142103 = load i64, i64* %envptr144741, align 8                                   ; load; *envptr144741
  %envptr144742 = inttoptr i64 %env143387 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144743 = getelementptr inbounds i64, i64* %envptr144742, i64 1              ; &envptr144742[1]
  %a142106 = load i64, i64* %envptr144743, align 8                                   ; load; *envptr144743
  %cmp144744 = icmp eq i64 %a142107, 15                                              ; false?
  br i1 %cmp144744, label %else144746, label %then144745                             ; if

then144745:
  %a142108 = call i64 @prim__45(i64 %UHo$ly, i64 %Fjc$lx)                            ; call prim__45
  %cloptr144747 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144749 = getelementptr inbounds i64, i64* %cloptr144747, i64 1                ; &eptr144749[1]
  %eptr144750 = getelementptr inbounds i64, i64* %cloptr144747, i64 2                ; &eptr144750[2]
  %eptr144751 = getelementptr inbounds i64, i64* %cloptr144747, i64 3                ; &eptr144751[3]
  store i64 %a142106, i64* %eptr144749                                               ; *eptr144749 = %a142106
  store i64 %a142103, i64* %eptr144750                                               ; *eptr144750 = %a142103
  store i64 %cont142200, i64* %eptr144751                                            ; *eptr144751 = %cont142200
  %eptr144748 = getelementptr inbounds i64, i64* %cloptr144747, i64 0                ; &cloptr144747[0]
  %f144752 = ptrtoint void(i64,i64,i64)* @lam143381 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144752, i64* %eptr144748                                               ; store fptr
  %arg142797 = ptrtoint i64* %cloptr144747 to i64                                    ; closure cast; i64* -> i64
  %cloptr144753 = inttoptr i64 %QJ3$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144753)                                       ; assert function application
  %i0ptr144754 = getelementptr inbounds i64, i64* %cloptr144753, i64 0               ; &cloptr144753[0]
  %f144756 = load i64, i64* %i0ptr144754, align 8                                    ; load; *i0ptr144754
  %fptr144755 = inttoptr i64 %f144756 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144755(i64 %QJ3$_37drop, i64 %arg142797, i64 %nug$y, i64 %a142108); tail call
  ret void

else144746:
  %cloptr144757 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144759 = getelementptr inbounds i64, i64* %cloptr144757, i64 1                ; &eptr144759[1]
  %eptr144760 = getelementptr inbounds i64, i64* %cloptr144757, i64 2                ; &eptr144760[2]
  %eptr144761 = getelementptr inbounds i64, i64* %cloptr144757, i64 3                ; &eptr144761[3]
  store i64 %a142106, i64* %eptr144759                                               ; *eptr144759 = %a142106
  store i64 %a142103, i64* %eptr144760                                               ; *eptr144760 = %a142103
  store i64 %cont142200, i64* %eptr144761                                            ; *eptr144761 = %cont142200
  %eptr144758 = getelementptr inbounds i64, i64* %cloptr144757, i64 0                ; &cloptr144757[0]
  %f144762 = ptrtoint void(i64,i64,i64)* @lam143384 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144762, i64* %eptr144758                                               ; store fptr
  %arg142805 = ptrtoint i64* %cloptr144757 to i64                                    ; closure cast; i64* -> i64
  %arg142804 = add i64 0, 0                                                          ; quoted ()
  %cloptr144763 = inttoptr i64 %arg142805 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144763)                                       ; assert function application
  %i0ptr144764 = getelementptr inbounds i64, i64* %cloptr144763, i64 0               ; &cloptr144763[0]
  %f144766 = load i64, i64* %i0ptr144764, align 8                                    ; load; *i0ptr144764
  %fptr144765 = inttoptr i64 %f144766 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144765(i64 %arg142805, i64 %arg142804, i64 %nug$y)  ; tail call
  ret void
}


define void @lam143384(i64 %env143385, i64 %_95142208, i64 %a142109) {
  %envptr144767 = inttoptr i64 %env143385 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144768 = getelementptr inbounds i64, i64* %envptr144767, i64 3              ; &envptr144767[3]
  %cont142200 = load i64, i64* %envptr144768, align 8                                ; load; *envptr144768
  %envptr144769 = inttoptr i64 %env143385 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144770 = getelementptr inbounds i64, i64* %envptr144769, i64 2              ; &envptr144769[2]
  %a142103 = load i64, i64* %envptr144770, align 8                                   ; load; *envptr144770
  %envptr144771 = inttoptr i64 %env143385 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144772 = getelementptr inbounds i64, i64* %envptr144771, i64 1              ; &envptr144771[1]
  %a142106 = load i64, i64* %envptr144772, align 8                                   ; load; *envptr144772
  %cloptr144773 = inttoptr i64 %a142103 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144773)                                       ; assert function application
  %i0ptr144774 = getelementptr inbounds i64, i64* %cloptr144773, i64 0               ; &cloptr144773[0]
  %f144776 = load i64, i64* %i0ptr144774, align 8                                    ; load; *i0ptr144774
  %fptr144775 = inttoptr i64 %f144776 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144775(i64 %a142103, i64 %cont142200, i64 %a142106, i64 %a142109); tail call
  ret void
}


define void @lam143381(i64 %env143382, i64 %_95142208, i64 %a142109) {
  %envptr144777 = inttoptr i64 %env143382 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144778 = getelementptr inbounds i64, i64* %envptr144777, i64 3              ; &envptr144777[3]
  %cont142200 = load i64, i64* %envptr144778, align 8                                ; load; *envptr144778
  %envptr144779 = inttoptr i64 %env143382 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144780 = getelementptr inbounds i64, i64* %envptr144779, i64 2              ; &envptr144779[2]
  %a142103 = load i64, i64* %envptr144780, align 8                                   ; load; *envptr144780
  %envptr144781 = inttoptr i64 %env143382 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144782 = getelementptr inbounds i64, i64* %envptr144781, i64 1              ; &envptr144781[1]
  %a142106 = load i64, i64* %envptr144782, align 8                                   ; load; *envptr144782
  %cloptr144783 = inttoptr i64 %a142103 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144783)                                       ; assert function application
  %i0ptr144784 = getelementptr inbounds i64, i64* %cloptr144783, i64 0               ; &cloptr144783[0]
  %f144786 = load i64, i64* %i0ptr144784, align 8                                    ; load; *i0ptr144784
  %fptr144785 = inttoptr i64 %f144786 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144785(i64 %a142103, i64 %cont142200, i64 %a142106, i64 %a142109); tail call
  ret void
}


define void @lam143378(i64 %env143379, i64 %_95142206, i64 %a142106) {
  %envptr144787 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144788 = getelementptr inbounds i64, i64* %envptr144787, i64 7              ; &envptr144787[7]
  %nug$y = load i64, i64* %envptr144788, align 8                                     ; load; *envptr144788
  %envptr144789 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144790 = getelementptr inbounds i64, i64* %envptr144789, i64 6              ; &envptr144789[6]
  %cont142200 = load i64, i64* %envptr144790, align 8                                ; load; *envptr144790
  %envptr144791 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144792 = getelementptr inbounds i64, i64* %envptr144791, i64 5              ; &envptr144791[5]
  %Fjc$lx = load i64, i64* %envptr144792, align 8                                    ; load; *envptr144792
  %envptr144793 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144794 = getelementptr inbounds i64, i64* %envptr144793, i64 4              ; &envptr144793[4]
  %UHo$ly = load i64, i64* %envptr144794, align 8                                    ; load; *envptr144794
  %envptr144795 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144796 = getelementptr inbounds i64, i64* %envptr144795, i64 3              ; &envptr144795[3]
  %QJ3$_37drop = load i64, i64* %envptr144796, align 8                               ; load; *envptr144796
  %envptr144797 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144798 = getelementptr inbounds i64, i64* %envptr144797, i64 2              ; &envptr144797[2]
  %NHu$_37_62 = load i64, i64* %envptr144798, align 8                                ; load; *envptr144798
  %envptr144799 = inttoptr i64 %env143379 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144800 = getelementptr inbounds i64, i64* %envptr144799, i64 1              ; &envptr144799[1]
  %a142103 = load i64, i64* %envptr144800, align 8                                   ; load; *envptr144800
  %cloptr144801 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144803 = getelementptr inbounds i64, i64* %cloptr144801, i64 1                ; &eptr144803[1]
  %eptr144804 = getelementptr inbounds i64, i64* %cloptr144801, i64 2                ; &eptr144804[2]
  %eptr144805 = getelementptr inbounds i64, i64* %cloptr144801, i64 3                ; &eptr144805[3]
  %eptr144806 = getelementptr inbounds i64, i64* %cloptr144801, i64 4                ; &eptr144806[4]
  %eptr144807 = getelementptr inbounds i64, i64* %cloptr144801, i64 5                ; &eptr144807[5]
  %eptr144808 = getelementptr inbounds i64, i64* %cloptr144801, i64 6                ; &eptr144808[6]
  %eptr144809 = getelementptr inbounds i64, i64* %cloptr144801, i64 7                ; &eptr144809[7]
  store i64 %a142106, i64* %eptr144803                                               ; *eptr144803 = %a142106
  store i64 %a142103, i64* %eptr144804                                               ; *eptr144804 = %a142103
  store i64 %QJ3$_37drop, i64* %eptr144805                                           ; *eptr144805 = %QJ3$_37drop
  store i64 %UHo$ly, i64* %eptr144806                                                ; *eptr144806 = %UHo$ly
  store i64 %Fjc$lx, i64* %eptr144807                                                ; *eptr144807 = %Fjc$lx
  store i64 %cont142200, i64* %eptr144808                                            ; *eptr144808 = %cont142200
  store i64 %nug$y, i64* %eptr144809                                                 ; *eptr144809 = %nug$y
  %eptr144802 = getelementptr inbounds i64, i64* %cloptr144801, i64 0                ; &cloptr144801[0]
  %f144810 = ptrtoint void(i64,i64,i64)* @lam143376 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144810, i64* %eptr144802                                               ; store fptr
  %arg142767 = ptrtoint i64* %cloptr144801 to i64                                    ; closure cast; i64* -> i64
  %cloptr144811 = inttoptr i64 %NHu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144811)                                       ; assert function application
  %i0ptr144812 = getelementptr inbounds i64, i64* %cloptr144811, i64 0               ; &cloptr144811[0]
  %f144814 = load i64, i64* %i0ptr144812, align 8                                    ; load; *i0ptr144812
  %fptr144813 = inttoptr i64 %f144814 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144813(i64 %NHu$_37_62, i64 %arg142767, i64 %UHo$ly, i64 %Fjc$lx); tail call
  ret void
}


define void @lam143376(i64 %env143377, i64 %_95142207, i64 %a142107) {
  %envptr144815 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144816 = getelementptr inbounds i64, i64* %envptr144815, i64 7              ; &envptr144815[7]
  %nug$y = load i64, i64* %envptr144816, align 8                                     ; load; *envptr144816
  %envptr144817 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144818 = getelementptr inbounds i64, i64* %envptr144817, i64 6              ; &envptr144817[6]
  %cont142200 = load i64, i64* %envptr144818, align 8                                ; load; *envptr144818
  %envptr144819 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144820 = getelementptr inbounds i64, i64* %envptr144819, i64 5              ; &envptr144819[5]
  %Fjc$lx = load i64, i64* %envptr144820, align 8                                    ; load; *envptr144820
  %envptr144821 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144822 = getelementptr inbounds i64, i64* %envptr144821, i64 4              ; &envptr144821[4]
  %UHo$ly = load i64, i64* %envptr144822, align 8                                    ; load; *envptr144822
  %envptr144823 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144824 = getelementptr inbounds i64, i64* %envptr144823, i64 3              ; &envptr144823[3]
  %QJ3$_37drop = load i64, i64* %envptr144824, align 8                               ; load; *envptr144824
  %envptr144825 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144826 = getelementptr inbounds i64, i64* %envptr144825, i64 2              ; &envptr144825[2]
  %a142103 = load i64, i64* %envptr144826, align 8                                   ; load; *envptr144826
  %envptr144827 = inttoptr i64 %env143377 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144828 = getelementptr inbounds i64, i64* %envptr144827, i64 1              ; &envptr144827[1]
  %a142106 = load i64, i64* %envptr144828, align 8                                   ; load; *envptr144828
  %cmp144829 = icmp eq i64 %a142107, 15                                              ; false?
  br i1 %cmp144829, label %else144831, label %then144830                             ; if

then144830:
  %a142108 = call i64 @prim__45(i64 %UHo$ly, i64 %Fjc$lx)                            ; call prim__45
  %cloptr144832 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144834 = getelementptr inbounds i64, i64* %cloptr144832, i64 1                ; &eptr144834[1]
  %eptr144835 = getelementptr inbounds i64, i64* %cloptr144832, i64 2                ; &eptr144835[2]
  %eptr144836 = getelementptr inbounds i64, i64* %cloptr144832, i64 3                ; &eptr144836[3]
  store i64 %a142106, i64* %eptr144834                                               ; *eptr144834 = %a142106
  store i64 %a142103, i64* %eptr144835                                               ; *eptr144835 = %a142103
  store i64 %cont142200, i64* %eptr144836                                            ; *eptr144836 = %cont142200
  %eptr144833 = getelementptr inbounds i64, i64* %cloptr144832, i64 0                ; &cloptr144832[0]
  %f144837 = ptrtoint void(i64,i64,i64)* @lam143371 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144837, i64* %eptr144833                                               ; store fptr
  %arg142773 = ptrtoint i64* %cloptr144832 to i64                                    ; closure cast; i64* -> i64
  %cloptr144838 = inttoptr i64 %QJ3$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144838)                                       ; assert function application
  %i0ptr144839 = getelementptr inbounds i64, i64* %cloptr144838, i64 0               ; &cloptr144838[0]
  %f144841 = load i64, i64* %i0ptr144839, align 8                                    ; load; *i0ptr144839
  %fptr144840 = inttoptr i64 %f144841 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144840(i64 %QJ3$_37drop, i64 %arg142773, i64 %nug$y, i64 %a142108); tail call
  ret void

else144831:
  %cloptr144842 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144844 = getelementptr inbounds i64, i64* %cloptr144842, i64 1                ; &eptr144844[1]
  %eptr144845 = getelementptr inbounds i64, i64* %cloptr144842, i64 2                ; &eptr144845[2]
  %eptr144846 = getelementptr inbounds i64, i64* %cloptr144842, i64 3                ; &eptr144846[3]
  store i64 %a142106, i64* %eptr144844                                               ; *eptr144844 = %a142106
  store i64 %a142103, i64* %eptr144845                                               ; *eptr144845 = %a142103
  store i64 %cont142200, i64* %eptr144846                                            ; *eptr144846 = %cont142200
  %eptr144843 = getelementptr inbounds i64, i64* %cloptr144842, i64 0                ; &cloptr144842[0]
  %f144847 = ptrtoint void(i64,i64,i64)* @lam143374 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144847, i64* %eptr144843                                               ; store fptr
  %arg142781 = ptrtoint i64* %cloptr144842 to i64                                    ; closure cast; i64* -> i64
  %arg142780 = add i64 0, 0                                                          ; quoted ()
  %cloptr144848 = inttoptr i64 %arg142781 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144848)                                       ; assert function application
  %i0ptr144849 = getelementptr inbounds i64, i64* %cloptr144848, i64 0               ; &cloptr144848[0]
  %f144851 = load i64, i64* %i0ptr144849, align 8                                    ; load; *i0ptr144849
  %fptr144850 = inttoptr i64 %f144851 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144850(i64 %arg142781, i64 %arg142780, i64 %nug$y)  ; tail call
  ret void
}


define void @lam143374(i64 %env143375, i64 %_95142208, i64 %a142109) {
  %envptr144852 = inttoptr i64 %env143375 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144853 = getelementptr inbounds i64, i64* %envptr144852, i64 3              ; &envptr144852[3]
  %cont142200 = load i64, i64* %envptr144853, align 8                                ; load; *envptr144853
  %envptr144854 = inttoptr i64 %env143375 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144855 = getelementptr inbounds i64, i64* %envptr144854, i64 2              ; &envptr144854[2]
  %a142103 = load i64, i64* %envptr144855, align 8                                   ; load; *envptr144855
  %envptr144856 = inttoptr i64 %env143375 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144857 = getelementptr inbounds i64, i64* %envptr144856, i64 1              ; &envptr144856[1]
  %a142106 = load i64, i64* %envptr144857, align 8                                   ; load; *envptr144857
  %cloptr144858 = inttoptr i64 %a142103 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144858)                                       ; assert function application
  %i0ptr144859 = getelementptr inbounds i64, i64* %cloptr144858, i64 0               ; &cloptr144858[0]
  %f144861 = load i64, i64* %i0ptr144859, align 8                                    ; load; *i0ptr144859
  %fptr144860 = inttoptr i64 %f144861 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144860(i64 %a142103, i64 %cont142200, i64 %a142106, i64 %a142109); tail call
  ret void
}


define void @lam143371(i64 %env143372, i64 %_95142208, i64 %a142109) {
  %envptr144862 = inttoptr i64 %env143372 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144863 = getelementptr inbounds i64, i64* %envptr144862, i64 3              ; &envptr144862[3]
  %cont142200 = load i64, i64* %envptr144863, align 8                                ; load; *envptr144863
  %envptr144864 = inttoptr i64 %env143372 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144865 = getelementptr inbounds i64, i64* %envptr144864, i64 2              ; &envptr144864[2]
  %a142103 = load i64, i64* %envptr144865, align 8                                   ; load; *envptr144865
  %envptr144866 = inttoptr i64 %env143372 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144867 = getelementptr inbounds i64, i64* %envptr144866, i64 1              ; &envptr144866[1]
  %a142106 = load i64, i64* %envptr144867, align 8                                   ; load; *envptr144867
  %cloptr144868 = inttoptr i64 %a142103 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144868)                                       ; assert function application
  %i0ptr144869 = getelementptr inbounds i64, i64* %cloptr144868, i64 0               ; &cloptr144868[0]
  %f144871 = load i64, i64* %i0ptr144869, align 8                                    ; load; *i0ptr144869
  %fptr144870 = inttoptr i64 %f144871 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144870(i64 %a142103, i64 %cont142200, i64 %a142106, i64 %a142109); tail call
  ret void
}


define void @lam143368(i64 %env143369, i64 %cont142213, i64 %LW6$new) {
  %envptr144872 = inttoptr i64 %env143369 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144873 = getelementptr inbounds i64, i64* %envptr144872, i64 2              ; &envptr144872[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr144873, align 8                       ; load; *envptr144873
  %envptr144874 = inttoptr i64 %env143369 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144875 = getelementptr inbounds i64, i64* %envptr144874, i64 1              ; &envptr144874[1]
  %Y0I$_37common_45tail = load i64, i64* %envptr144875, align 8                      ; load; *envptr144875
  %arg142810 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142110 = call i64 @prim_vector_45ref(i64 %jwH$_37wind_45stack, i64 %arg142810)   ; call prim_vector_45ref
  %cloptr144876 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144878 = getelementptr inbounds i64, i64* %cloptr144876, i64 1                ; &eptr144878[1]
  %eptr144879 = getelementptr inbounds i64, i64* %cloptr144876, i64 2                ; &eptr144879[2]
  %eptr144880 = getelementptr inbounds i64, i64* %cloptr144876, i64 3                ; &eptr144880[3]
  store i64 %LW6$new, i64* %eptr144878                                               ; *eptr144878 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr144879                                   ; *eptr144879 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr144880                                            ; *eptr144880 = %cont142213
  %eptr144877 = getelementptr inbounds i64, i64* %cloptr144876, i64 0                ; &cloptr144876[0]
  %f144881 = ptrtoint void(i64,i64,i64)* @lam143365 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144881, i64* %eptr144877                                               ; store fptr
  %arg142814 = ptrtoint i64* %cloptr144876 to i64                                    ; closure cast; i64* -> i64
  %cloptr144882 = inttoptr i64 %Y0I$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144882)                                       ; assert function application
  %i0ptr144883 = getelementptr inbounds i64, i64* %cloptr144882, i64 0               ; &cloptr144882[0]
  %f144885 = load i64, i64* %i0ptr144883, align 8                                    ; load; *i0ptr144883
  %fptr144884 = inttoptr i64 %f144885 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144884(i64 %Y0I$_37common_45tail, i64 %arg142814, i64 %LW6$new, i64 %a142110); tail call
  ret void
}


define void @lam143365(i64 %env143366, i64 %_95142214, i64 %xxI$tail) {
  %envptr144886 = inttoptr i64 %env143366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144887 = getelementptr inbounds i64, i64* %envptr144886, i64 3              ; &envptr144886[3]
  %cont142213 = load i64, i64* %envptr144887, align 8                                ; load; *envptr144887
  %envptr144888 = inttoptr i64 %env143366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144889 = getelementptr inbounds i64, i64* %envptr144888, i64 2              ; &envptr144888[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr144889, align 8                       ; load; *envptr144889
  %envptr144890 = inttoptr i64 %env143366 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144891 = getelementptr inbounds i64, i64* %envptr144890, i64 1              ; &envptr144890[1]
  %LW6$new = load i64, i64* %envptr144891, align 8                                   ; load; *envptr144891
  %cloptr144892 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144893 = getelementptr inbounds i64, i64* %cloptr144892, i64 0                ; &cloptr144892[0]
  %f144894 = ptrtoint void(i64,i64)* @lam143363 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144894, i64* %eptr144893                                               ; store fptr
  %arg142817 = ptrtoint i64* %cloptr144892 to i64                                    ; closure cast; i64* -> i64
  %cloptr144895 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144897 = getelementptr inbounds i64, i64* %cloptr144895, i64 1                ; &eptr144897[1]
  %eptr144898 = getelementptr inbounds i64, i64* %cloptr144895, i64 2                ; &eptr144898[2]
  %eptr144899 = getelementptr inbounds i64, i64* %cloptr144895, i64 3                ; &eptr144899[3]
  %eptr144900 = getelementptr inbounds i64, i64* %cloptr144895, i64 4                ; &eptr144900[4]
  store i64 %LW6$new, i64* %eptr144897                                               ; *eptr144897 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr144898                                   ; *eptr144898 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr144899                                            ; *eptr144899 = %cont142213
  store i64 %xxI$tail, i64* %eptr144900                                              ; *eptr144900 = %xxI$tail
  %eptr144896 = getelementptr inbounds i64, i64* %cloptr144895, i64 0                ; &cloptr144895[0]
  %f144901 = ptrtoint void(i64,i64,i64)* @lam143360 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144901, i64* %eptr144896                                               ; store fptr
  %arg142816 = ptrtoint i64* %cloptr144895 to i64                                    ; closure cast; i64* -> i64
  %cloptr144902 = inttoptr i64 %arg142817 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144902)                                       ; assert function application
  %i0ptr144903 = getelementptr inbounds i64, i64* %cloptr144902, i64 0               ; &cloptr144902[0]
  %f144905 = load i64, i64* %i0ptr144903, align 8                                    ; load; *i0ptr144903
  %fptr144904 = inttoptr i64 %f144905 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144904(i64 %arg142817, i64 %arg142816)              ; tail call
  ret void
}


define void @lam143363(i64 %env143364, i64 %tRr$lst142235) {
  %cont142234 = call i64 @prim_car(i64 %tRr$lst142235)                               ; call prim_car
  %tRr$lst = call i64 @prim_cdr(i64 %tRr$lst142235)                                  ; call prim_cdr
  %arg142821 = add i64 0, 0                                                          ; quoted ()
  %cloptr144906 = inttoptr i64 %cont142234 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144906)                                       ; assert function application
  %i0ptr144907 = getelementptr inbounds i64, i64* %cloptr144906, i64 0               ; &cloptr144906[0]
  %f144909 = load i64, i64* %i0ptr144907, align 8                                    ; load; *i0ptr144907
  %fptr144908 = inttoptr i64 %f144909 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144908(i64 %cont142234, i64 %arg142821, i64 %tRr$lst); tail call
  ret void
}


define void @lam143360(i64 %env143361, i64 %_95142232, i64 %a142111) {
  %envptr144910 = inttoptr i64 %env143361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144911 = getelementptr inbounds i64, i64* %envptr144910, i64 4              ; &envptr144910[4]
  %xxI$tail = load i64, i64* %envptr144911, align 8                                  ; load; *envptr144911
  %envptr144912 = inttoptr i64 %env143361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144913 = getelementptr inbounds i64, i64* %envptr144912, i64 3              ; &envptr144912[3]
  %cont142213 = load i64, i64* %envptr144913, align 8                                ; load; *envptr144913
  %envptr144914 = inttoptr i64 %env143361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144915 = getelementptr inbounds i64, i64* %envptr144914, i64 2              ; &envptr144914[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr144915, align 8                       ; load; *envptr144915
  %envptr144916 = inttoptr i64 %env143361 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144917 = getelementptr inbounds i64, i64* %envptr144916, i64 1              ; &envptr144916[1]
  %LW6$new = load i64, i64* %envptr144917, align 8                                   ; load; *envptr144917
  %arg142824 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142233 = call i64 @prim_make_45vector(i64 %arg142824, i64 %a142111)        ; call prim_make_45vector
  %cloptr144918 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144920 = getelementptr inbounds i64, i64* %cloptr144918, i64 1                ; &eptr144920[1]
  %eptr144921 = getelementptr inbounds i64, i64* %cloptr144918, i64 2                ; &eptr144921[2]
  %eptr144922 = getelementptr inbounds i64, i64* %cloptr144918, i64 3                ; &eptr144922[3]
  %eptr144923 = getelementptr inbounds i64, i64* %cloptr144918, i64 4                ; &eptr144923[4]
  store i64 %LW6$new, i64* %eptr144920                                               ; *eptr144920 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr144921                                   ; *eptr144921 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr144922                                            ; *eptr144922 = %cont142213
  store i64 %xxI$tail, i64* %eptr144923                                              ; *eptr144923 = %xxI$tail
  %eptr144919 = getelementptr inbounds i64, i64* %cloptr144918, i64 0                ; &cloptr144918[0]
  %f144924 = ptrtoint void(i64,i64,i64)* @lam143357 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144924, i64* %eptr144919                                               ; store fptr
  %arg142827 = ptrtoint i64* %cloptr144918 to i64                                    ; closure cast; i64* -> i64
  %arg142826 = add i64 0, 0                                                          ; quoted ()
  %cloptr144925 = inttoptr i64 %arg142827 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144925)                                       ; assert function application
  %i0ptr144926 = getelementptr inbounds i64, i64* %cloptr144925, i64 0               ; &cloptr144925[0]
  %f144928 = load i64, i64* %i0ptr144926, align 8                                    ; load; *i0ptr144926
  %fptr144927 = inttoptr i64 %f144928 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144927(i64 %arg142827, i64 %arg142826, i64 %retprim142233); tail call
  ret void
}


define void @lam143357(i64 %env143358, i64 %_95142226, i64 %qVg$f) {
  %envptr144929 = inttoptr i64 %env143358 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144930 = getelementptr inbounds i64, i64* %envptr144929, i64 4              ; &envptr144929[4]
  %xxI$tail = load i64, i64* %envptr144930, align 8                                  ; load; *envptr144930
  %envptr144931 = inttoptr i64 %env143358 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144932 = getelementptr inbounds i64, i64* %envptr144931, i64 3              ; &envptr144931[3]
  %cont142213 = load i64, i64* %envptr144932, align 8                                ; load; *envptr144932
  %envptr144933 = inttoptr i64 %env143358 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144934 = getelementptr inbounds i64, i64* %envptr144933, i64 2              ; &envptr144933[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr144934, align 8                       ; load; *envptr144934
  %envptr144935 = inttoptr i64 %env143358 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144936 = getelementptr inbounds i64, i64* %envptr144935, i64 1              ; &envptr144935[1]
  %LW6$new = load i64, i64* %envptr144936, align 8                                   ; load; *envptr144936
  %arg142829 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144937 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144939 = getelementptr inbounds i64, i64* %cloptr144937, i64 1                ; &eptr144939[1]
  %eptr144940 = getelementptr inbounds i64, i64* %cloptr144937, i64 2                ; &eptr144940[2]
  %eptr144941 = getelementptr inbounds i64, i64* %cloptr144937, i64 3                ; &eptr144941[3]
  store i64 %jwH$_37wind_45stack, i64* %eptr144939                                   ; *eptr144939 = %jwH$_37wind_45stack
  store i64 %xxI$tail, i64* %eptr144940                                              ; *eptr144940 = %xxI$tail
  store i64 %qVg$f, i64* %eptr144941                                                 ; *eptr144941 = %qVg$f
  %eptr144938 = getelementptr inbounds i64, i64* %cloptr144937, i64 0                ; &cloptr144937[0]
  %f144942 = ptrtoint void(i64,i64,i64)* @lam143354 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144942, i64* %eptr144938                                               ; store fptr
  %arg142828 = ptrtoint i64* %cloptr144937 to i64                                    ; closure cast; i64* -> i64
  %Bug$_95142004 = call i64 @prim_vector_45set_33(i64 %qVg$f, i64 %arg142829, i64 %arg142828); call prim_vector_45set_33
  %arg142854 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142119 = call i64 @prim_vector_45ref(i64 %qVg$f, i64 %arg142854)                 ; call prim_vector_45ref
  %arg142856 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142120 = call i64 @prim_vector_45ref(i64 %jwH$_37wind_45stack, i64 %arg142856)   ; call prim_vector_45ref
  %cloptr144943 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144945 = getelementptr inbounds i64, i64* %cloptr144943, i64 1                ; &eptr144945[1]
  %eptr144946 = getelementptr inbounds i64, i64* %cloptr144943, i64 2                ; &eptr144946[2]
  %eptr144947 = getelementptr inbounds i64, i64* %cloptr144943, i64 3                ; &eptr144947[3]
  %eptr144948 = getelementptr inbounds i64, i64* %cloptr144943, i64 4                ; &eptr144948[4]
  store i64 %LW6$new, i64* %eptr144945                                               ; *eptr144945 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr144946                                   ; *eptr144946 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr144947                                            ; *eptr144947 = %cont142213
  store i64 %xxI$tail, i64* %eptr144948                                              ; *eptr144948 = %xxI$tail
  %eptr144944 = getelementptr inbounds i64, i64* %cloptr144943, i64 0                ; &cloptr144943[0]
  %f144949 = ptrtoint void(i64,i64,i64)* @lam143342 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144949, i64* %eptr144944                                               ; store fptr
  %arg142859 = ptrtoint i64* %cloptr144943 to i64                                    ; closure cast; i64* -> i64
  %cloptr144950 = inttoptr i64 %a142119 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144950)                                       ; assert function application
  %i0ptr144951 = getelementptr inbounds i64, i64* %cloptr144950, i64 0               ; &cloptr144950[0]
  %f144953 = load i64, i64* %i0ptr144951, align 8                                    ; load; *i0ptr144951
  %fptr144952 = inttoptr i64 %f144953 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144952(i64 %a142119, i64 %arg142859, i64 %a142120)  ; tail call
  ret void
}


define void @lam143354(i64 %env143355, i64 %cont142227, i64 %u7F$l) {
  %envptr144954 = inttoptr i64 %env143355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144955 = getelementptr inbounds i64, i64* %envptr144954, i64 3              ; &envptr144954[3]
  %qVg$f = load i64, i64* %envptr144955, align 8                                     ; load; *envptr144955
  %envptr144956 = inttoptr i64 %env143355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144957 = getelementptr inbounds i64, i64* %envptr144956, i64 2              ; &envptr144956[2]
  %xxI$tail = load i64, i64* %envptr144957, align 8                                  ; load; *envptr144957
  %envptr144958 = inttoptr i64 %env143355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144959 = getelementptr inbounds i64, i64* %envptr144958, i64 1              ; &envptr144958[1]
  %jwH$_37wind_45stack = load i64, i64* %envptr144959, align 8                       ; load; *envptr144959
  %a142112 = call i64 @prim_eq_63(i64 %u7F$l, i64 %xxI$tail)                         ; call prim_eq_63
  %a142113 = call i64 @prim_not(i64 %a142112)                                        ; call prim_not
  %cmp144960 = icmp eq i64 %a142113, 15                                              ; false?
  br i1 %cmp144960, label %else144962, label %then144961                             ; if

then144961:
  %a142114 = call i64 @prim_cdr(i64 %u7F$l)                                          ; call prim_cdr
  %arg142836 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142230 = call i64 @prim_vector_45set_33(i64 %jwH$_37wind_45stack, i64 %arg142836, i64 %a142114); call prim_vector_45set_33
  %cloptr144963 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144965 = getelementptr inbounds i64, i64* %cloptr144963, i64 1                ; &eptr144965[1]
  %eptr144966 = getelementptr inbounds i64, i64* %cloptr144963, i64 2                ; &eptr144966[2]
  %eptr144967 = getelementptr inbounds i64, i64* %cloptr144963, i64 3                ; &eptr144967[3]
  store i64 %u7F$l, i64* %eptr144965                                                 ; *eptr144965 = %u7F$l
  store i64 %cont142227, i64* %eptr144966                                            ; *eptr144966 = %cont142227
  store i64 %qVg$f, i64* %eptr144967                                                 ; *eptr144967 = %qVg$f
  %eptr144964 = getelementptr inbounds i64, i64* %cloptr144963, i64 0                ; &cloptr144963[0]
  %f144968 = ptrtoint void(i64,i64,i64)* @lam143350 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144968, i64* %eptr144964                                               ; store fptr
  %arg142840 = ptrtoint i64* %cloptr144963 to i64                                    ; closure cast; i64* -> i64
  %arg142839 = add i64 0, 0                                                          ; quoted ()
  %cloptr144969 = inttoptr i64 %arg142840 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144969)                                       ; assert function application
  %i0ptr144970 = getelementptr inbounds i64, i64* %cloptr144969, i64 0               ; &cloptr144969[0]
  %f144972 = load i64, i64* %i0ptr144970, align 8                                    ; load; *i0ptr144970
  %fptr144971 = inttoptr i64 %f144972 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144971(i64 %arg142840, i64 %arg142839, i64 %retprim142230); tail call
  ret void

else144962:
  %retprim142231 = call i64 @prim_void()                                             ; call prim_void
  %arg142852 = add i64 0, 0                                                          ; quoted ()
  %cloptr144973 = inttoptr i64 %cont142227 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144973)                                       ; assert function application
  %i0ptr144974 = getelementptr inbounds i64, i64* %cloptr144973, i64 0               ; &cloptr144973[0]
  %f144976 = load i64, i64* %i0ptr144974, align 8                                    ; load; *i0ptr144974
  %fptr144975 = inttoptr i64 %f144976 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144975(i64 %cont142227, i64 %arg142852, i64 %retprim142231); tail call
  ret void
}


define void @lam143350(i64 %env143351, i64 %_95142228, i64 %KUh$_95142005) {
  %envptr144977 = inttoptr i64 %env143351 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144978 = getelementptr inbounds i64, i64* %envptr144977, i64 3              ; &envptr144977[3]
  %qVg$f = load i64, i64* %envptr144978, align 8                                     ; load; *envptr144978
  %envptr144979 = inttoptr i64 %env143351 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144980 = getelementptr inbounds i64, i64* %envptr144979, i64 2              ; &envptr144979[2]
  %cont142227 = load i64, i64* %envptr144980, align 8                                ; load; *envptr144980
  %envptr144981 = inttoptr i64 %env143351 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144982 = getelementptr inbounds i64, i64* %envptr144981, i64 1              ; &envptr144981[1]
  %u7F$l = load i64, i64* %envptr144982, align 8                                     ; load; *envptr144982
  %a142115 = call i64 @prim_car(i64 %u7F$l)                                          ; call prim_car
  %a142116 = call i64 @prim_cdr(i64 %a142115)                                        ; call prim_cdr
  %cloptr144983 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144985 = getelementptr inbounds i64, i64* %cloptr144983, i64 1                ; &eptr144985[1]
  %eptr144986 = getelementptr inbounds i64, i64* %cloptr144983, i64 2                ; &eptr144986[2]
  %eptr144987 = getelementptr inbounds i64, i64* %cloptr144983, i64 3                ; &eptr144987[3]
  store i64 %u7F$l, i64* %eptr144985                                                 ; *eptr144985 = %u7F$l
  store i64 %cont142227, i64* %eptr144986                                            ; *eptr144986 = %cont142227
  store i64 %qVg$f, i64* %eptr144987                                                 ; *eptr144987 = %qVg$f
  %eptr144984 = getelementptr inbounds i64, i64* %cloptr144983, i64 0                ; &cloptr144983[0]
  %f144988 = ptrtoint void(i64,i64,i64)* @lam143348 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144988, i64* %eptr144984                                               ; store fptr
  %arg142843 = ptrtoint i64* %cloptr144983 to i64                                    ; closure cast; i64* -> i64
  %cloptr144989 = inttoptr i64 %a142116 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144989)                                       ; assert function application
  %i0ptr144990 = getelementptr inbounds i64, i64* %cloptr144989, i64 0               ; &cloptr144989[0]
  %f144992 = load i64, i64* %i0ptr144990, align 8                                    ; load; *i0ptr144990
  %fptr144991 = inttoptr i64 %f144992 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144991(i64 %a142116, i64 %arg142843)                ; tail call
  ret void
}


define void @lam143348(i64 %env143349, i64 %_95142229, i64 %FEj$_95142006) {
  %envptr144993 = inttoptr i64 %env143349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144994 = getelementptr inbounds i64, i64* %envptr144993, i64 3              ; &envptr144993[3]
  %qVg$f = load i64, i64* %envptr144994, align 8                                     ; load; *envptr144994
  %envptr144995 = inttoptr i64 %env143349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144996 = getelementptr inbounds i64, i64* %envptr144995, i64 2              ; &envptr144995[2]
  %cont142227 = load i64, i64* %envptr144996, align 8                                ; load; *envptr144996
  %envptr144997 = inttoptr i64 %env143349 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144998 = getelementptr inbounds i64, i64* %envptr144997, i64 1              ; &envptr144997[1]
  %u7F$l = load i64, i64* %envptr144998, align 8                                     ; load; *envptr144998
  %arg142845 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142117 = call i64 @prim_vector_45ref(i64 %qVg$f, i64 %arg142845)                 ; call prim_vector_45ref
  %a142118 = call i64 @prim_cdr(i64 %u7F$l)                                          ; call prim_cdr
  %cloptr144999 = inttoptr i64 %a142117 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144999)                                       ; assert function application
  %i0ptr145000 = getelementptr inbounds i64, i64* %cloptr144999, i64 0               ; &cloptr144999[0]
  %f145002 = load i64, i64* %i0ptr145000, align 8                                    ; load; *i0ptr145000
  %fptr145001 = inttoptr i64 %f145002 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145001(i64 %a142117, i64 %cont142227, i64 %a142118) ; tail call
  ret void
}


define void @lam143342(i64 %env143343, i64 %_95142215, i64 %VJA$_95142003) {
  %envptr145003 = inttoptr i64 %env143343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145004 = getelementptr inbounds i64, i64* %envptr145003, i64 4              ; &envptr145003[4]
  %xxI$tail = load i64, i64* %envptr145004, align 8                                  ; load; *envptr145004
  %envptr145005 = inttoptr i64 %env143343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145006 = getelementptr inbounds i64, i64* %envptr145005, i64 3              ; &envptr145005[3]
  %cont142213 = load i64, i64* %envptr145006, align 8                                ; load; *envptr145006
  %envptr145007 = inttoptr i64 %env143343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145008 = getelementptr inbounds i64, i64* %envptr145007, i64 2              ; &envptr145007[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr145008, align 8                       ; load; *envptr145008
  %envptr145009 = inttoptr i64 %env143343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145010 = getelementptr inbounds i64, i64* %envptr145009, i64 1              ; &envptr145009[1]
  %LW6$new = load i64, i64* %envptr145010, align 8                                   ; load; *envptr145010
  %cloptr145011 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145012 = getelementptr inbounds i64, i64* %cloptr145011, i64 0                ; &cloptr145011[0]
  %f145013 = ptrtoint void(i64,i64)* @lam143340 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145013, i64* %eptr145012                                               ; store fptr
  %arg142862 = ptrtoint i64* %cloptr145011 to i64                                    ; closure cast; i64* -> i64
  %cloptr145014 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145016 = getelementptr inbounds i64, i64* %cloptr145014, i64 1                ; &eptr145016[1]
  %eptr145017 = getelementptr inbounds i64, i64* %cloptr145014, i64 2                ; &eptr145017[2]
  %eptr145018 = getelementptr inbounds i64, i64* %cloptr145014, i64 3                ; &eptr145018[3]
  %eptr145019 = getelementptr inbounds i64, i64* %cloptr145014, i64 4                ; &eptr145019[4]
  store i64 %LW6$new, i64* %eptr145016                                               ; *eptr145016 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr145017                                   ; *eptr145017 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr145018                                            ; *eptr145018 = %cont142213
  store i64 %xxI$tail, i64* %eptr145019                                              ; *eptr145019 = %xxI$tail
  %eptr145015 = getelementptr inbounds i64, i64* %cloptr145014, i64 0                ; &cloptr145014[0]
  %f145020 = ptrtoint void(i64,i64,i64)* @lam143337 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145020, i64* %eptr145015                                               ; store fptr
  %arg142861 = ptrtoint i64* %cloptr145014 to i64                                    ; closure cast; i64* -> i64
  %cloptr145021 = inttoptr i64 %arg142862 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145021)                                       ; assert function application
  %i0ptr145022 = getelementptr inbounds i64, i64* %cloptr145021, i64 0               ; &cloptr145021[0]
  %f145024 = load i64, i64* %i0ptr145022, align 8                                    ; load; *i0ptr145022
  %fptr145023 = inttoptr i64 %f145024 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145023(i64 %arg142862, i64 %arg142861)              ; tail call
  ret void
}


define void @lam143340(i64 %env143341, i64 %AdW$lst142225) {
  %cont142224 = call i64 @prim_car(i64 %AdW$lst142225)                               ; call prim_car
  %AdW$lst = call i64 @prim_cdr(i64 %AdW$lst142225)                                  ; call prim_cdr
  %arg142866 = add i64 0, 0                                                          ; quoted ()
  %cloptr145025 = inttoptr i64 %cont142224 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145025)                                       ; assert function application
  %i0ptr145026 = getelementptr inbounds i64, i64* %cloptr145025, i64 0               ; &cloptr145025[0]
  %f145028 = load i64, i64* %i0ptr145026, align 8                                    ; load; *i0ptr145026
  %fptr145027 = inttoptr i64 %f145028 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145027(i64 %cont142224, i64 %arg142866, i64 %AdW$lst); tail call
  ret void
}


define void @lam143337(i64 %env143338, i64 %_95142222, i64 %a142121) {
  %envptr145029 = inttoptr i64 %env143338 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145030 = getelementptr inbounds i64, i64* %envptr145029, i64 4              ; &envptr145029[4]
  %xxI$tail = load i64, i64* %envptr145030, align 8                                  ; load; *envptr145030
  %envptr145031 = inttoptr i64 %env143338 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145032 = getelementptr inbounds i64, i64* %envptr145031, i64 3              ; &envptr145031[3]
  %cont142213 = load i64, i64* %envptr145032, align 8                                ; load; *envptr145032
  %envptr145033 = inttoptr i64 %env143338 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145034 = getelementptr inbounds i64, i64* %envptr145033, i64 2              ; &envptr145033[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr145034, align 8                       ; load; *envptr145034
  %envptr145035 = inttoptr i64 %env143338 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145036 = getelementptr inbounds i64, i64* %envptr145035, i64 1              ; &envptr145035[1]
  %LW6$new = load i64, i64* %envptr145036, align 8                                   ; load; *envptr145036
  %arg142869 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142223 = call i64 @prim_make_45vector(i64 %arg142869, i64 %a142121)        ; call prim_make_45vector
  %cloptr145037 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145039 = getelementptr inbounds i64, i64* %cloptr145037, i64 1                ; &eptr145039[1]
  %eptr145040 = getelementptr inbounds i64, i64* %cloptr145037, i64 2                ; &eptr145040[2]
  %eptr145041 = getelementptr inbounds i64, i64* %cloptr145037, i64 3                ; &eptr145041[3]
  %eptr145042 = getelementptr inbounds i64, i64* %cloptr145037, i64 4                ; &eptr145042[4]
  store i64 %LW6$new, i64* %eptr145039                                               ; *eptr145039 = %LW6$new
  store i64 %jwH$_37wind_45stack, i64* %eptr145040                                   ; *eptr145040 = %jwH$_37wind_45stack
  store i64 %cont142213, i64* %eptr145041                                            ; *eptr145041 = %cont142213
  store i64 %xxI$tail, i64* %eptr145042                                              ; *eptr145042 = %xxI$tail
  %eptr145038 = getelementptr inbounds i64, i64* %cloptr145037, i64 0                ; &cloptr145037[0]
  %f145043 = ptrtoint void(i64,i64,i64)* @lam143334 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145043, i64* %eptr145038                                               ; store fptr
  %arg142872 = ptrtoint i64* %cloptr145037 to i64                                    ; closure cast; i64* -> i64
  %arg142871 = add i64 0, 0                                                          ; quoted ()
  %cloptr145044 = inttoptr i64 %arg142872 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145044)                                       ; assert function application
  %i0ptr145045 = getelementptr inbounds i64, i64* %cloptr145044, i64 0               ; &cloptr145044[0]
  %f145047 = load i64, i64* %i0ptr145045, align 8                                    ; load; *i0ptr145045
  %fptr145046 = inttoptr i64 %f145047 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145046(i64 %arg142872, i64 %arg142871, i64 %retprim142223); tail call
  ret void
}


define void @lam143334(i64 %env143335, i64 %_95142216, i64 %atB$f) {
  %envptr145048 = inttoptr i64 %env143335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145049 = getelementptr inbounds i64, i64* %envptr145048, i64 4              ; &envptr145048[4]
  %xxI$tail = load i64, i64* %envptr145049, align 8                                  ; load; *envptr145049
  %envptr145050 = inttoptr i64 %env143335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145051 = getelementptr inbounds i64, i64* %envptr145050, i64 3              ; &envptr145050[3]
  %cont142213 = load i64, i64* %envptr145051, align 8                                ; load; *envptr145051
  %envptr145052 = inttoptr i64 %env143335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145053 = getelementptr inbounds i64, i64* %envptr145052, i64 2              ; &envptr145052[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr145053, align 8                       ; load; *envptr145053
  %envptr145054 = inttoptr i64 %env143335 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145055 = getelementptr inbounds i64, i64* %envptr145054, i64 1              ; &envptr145054[1]
  %LW6$new = load i64, i64* %envptr145055, align 8                                   ; load; *envptr145055
  %arg142874 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr145056 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145058 = getelementptr inbounds i64, i64* %cloptr145056, i64 1                ; &eptr145058[1]
  %eptr145059 = getelementptr inbounds i64, i64* %cloptr145056, i64 2                ; &eptr145059[2]
  %eptr145060 = getelementptr inbounds i64, i64* %cloptr145056, i64 3                ; &eptr145060[3]
  store i64 %jwH$_37wind_45stack, i64* %eptr145058                                   ; *eptr145058 = %jwH$_37wind_45stack
  store i64 %atB$f, i64* %eptr145059                                                 ; *eptr145059 = %atB$f
  store i64 %xxI$tail, i64* %eptr145060                                              ; *eptr145060 = %xxI$tail
  %eptr145057 = getelementptr inbounds i64, i64* %cloptr145056, i64 0                ; &cloptr145056[0]
  %f145061 = ptrtoint void(i64,i64,i64)* @lam143331 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145061, i64* %eptr145057                                               ; store fptr
  %arg142873 = ptrtoint i64* %cloptr145056 to i64                                    ; closure cast; i64* -> i64
  %Wtx$_95142007 = call i64 @prim_vector_45set_33(i64 %atB$f, i64 %arg142874, i64 %arg142873); call prim_vector_45set_33
  %arg142898 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142128 = call i64 @prim_vector_45ref(i64 %atB$f, i64 %arg142898)                 ; call prim_vector_45ref
  %cloptr145062 = inttoptr i64 %a142128 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145062)                                       ; assert function application
  %i0ptr145063 = getelementptr inbounds i64, i64* %cloptr145062, i64 0               ; &cloptr145062[0]
  %f145065 = load i64, i64* %i0ptr145063, align 8                                    ; load; *i0ptr145063
  %fptr145064 = inttoptr i64 %f145065 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145064(i64 %a142128, i64 %cont142213, i64 %LW6$new) ; tail call
  ret void
}


define void @lam143331(i64 %env143332, i64 %cont142217, i64 %W7Y$l) {
  %envptr145066 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145067 = getelementptr inbounds i64, i64* %envptr145066, i64 3              ; &envptr145066[3]
  %xxI$tail = load i64, i64* %envptr145067, align 8                                  ; load; *envptr145067
  %envptr145068 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145069 = getelementptr inbounds i64, i64* %envptr145068, i64 2              ; &envptr145068[2]
  %atB$f = load i64, i64* %envptr145069, align 8                                     ; load; *envptr145069
  %envptr145070 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145071 = getelementptr inbounds i64, i64* %envptr145070, i64 1              ; &envptr145070[1]
  %jwH$_37wind_45stack = load i64, i64* %envptr145071, align 8                       ; load; *envptr145071
  %a142122 = call i64 @prim_eq_63(i64 %W7Y$l, i64 %xxI$tail)                         ; call prim_eq_63
  %a142123 = call i64 @prim_not(i64 %a142122)                                        ; call prim_not
  %cmp145072 = icmp eq i64 %a142123, 15                                              ; false?
  br i1 %cmp145072, label %else145074, label %then145073                             ; if

then145073:
  %arg142879 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142124 = call i64 @prim_vector_45ref(i64 %atB$f, i64 %arg142879)                 ; call prim_vector_45ref
  %a142125 = call i64 @prim_cdr(i64 %W7Y$l)                                          ; call prim_cdr
  %cloptr145075 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145077 = getelementptr inbounds i64, i64* %cloptr145075, i64 1                ; &eptr145077[1]
  %eptr145078 = getelementptr inbounds i64, i64* %cloptr145075, i64 2                ; &eptr145078[2]
  %eptr145079 = getelementptr inbounds i64, i64* %cloptr145075, i64 3                ; &eptr145079[3]
  store i64 %cont142217, i64* %eptr145077                                            ; *eptr145077 = %cont142217
  store i64 %jwH$_37wind_45stack, i64* %eptr145078                                   ; *eptr145078 = %jwH$_37wind_45stack
  store i64 %W7Y$l, i64* %eptr145079                                                 ; *eptr145079 = %W7Y$l
  %eptr145076 = getelementptr inbounds i64, i64* %cloptr145075, i64 0                ; &cloptr145075[0]
  %f145080 = ptrtoint void(i64,i64,i64)* @lam143327 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145080, i64* %eptr145076                                               ; store fptr
  %arg142883 = ptrtoint i64* %cloptr145075 to i64                                    ; closure cast; i64* -> i64
  %cloptr145081 = inttoptr i64 %a142124 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145081)                                       ; assert function application
  %i0ptr145082 = getelementptr inbounds i64, i64* %cloptr145081, i64 0               ; &cloptr145081[0]
  %f145084 = load i64, i64* %i0ptr145082, align 8                                    ; load; *i0ptr145082
  %fptr145083 = inttoptr i64 %f145084 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145083(i64 %a142124, i64 %arg142883, i64 %a142125)  ; tail call
  ret void

else145074:
  %retprim142221 = call i64 @prim_void()                                             ; call prim_void
  %arg142896 = add i64 0, 0                                                          ; quoted ()
  %cloptr145085 = inttoptr i64 %cont142217 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145085)                                       ; assert function application
  %i0ptr145086 = getelementptr inbounds i64, i64* %cloptr145085, i64 0               ; &cloptr145085[0]
  %f145088 = load i64, i64* %i0ptr145086, align 8                                    ; load; *i0ptr145086
  %fptr145087 = inttoptr i64 %f145088 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145087(i64 %cont142217, i64 %arg142896, i64 %retprim142221); tail call
  ret void
}


define void @lam143327(i64 %env143328, i64 %_95142218, i64 %FKA$_95142008) {
  %envptr145089 = inttoptr i64 %env143328 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145090 = getelementptr inbounds i64, i64* %envptr145089, i64 3              ; &envptr145089[3]
  %W7Y$l = load i64, i64* %envptr145090, align 8                                     ; load; *envptr145090
  %envptr145091 = inttoptr i64 %env143328 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145092 = getelementptr inbounds i64, i64* %envptr145091, i64 2              ; &envptr145091[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr145092, align 8                       ; load; *envptr145092
  %envptr145093 = inttoptr i64 %env143328 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145094 = getelementptr inbounds i64, i64* %envptr145093, i64 1              ; &envptr145093[1]
  %cont142217 = load i64, i64* %envptr145094, align 8                                ; load; *envptr145094
  %a142126 = call i64 @prim_car(i64 %W7Y$l)                                          ; call prim_car
  %a142127 = call i64 @prim_car(i64 %a142126)                                        ; call prim_car
  %cloptr145095 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145097 = getelementptr inbounds i64, i64* %cloptr145095, i64 1                ; &eptr145097[1]
  %eptr145098 = getelementptr inbounds i64, i64* %cloptr145095, i64 2                ; &eptr145098[2]
  %eptr145099 = getelementptr inbounds i64, i64* %cloptr145095, i64 3                ; &eptr145099[3]
  store i64 %cont142217, i64* %eptr145097                                            ; *eptr145097 = %cont142217
  store i64 %jwH$_37wind_45stack, i64* %eptr145098                                   ; *eptr145098 = %jwH$_37wind_45stack
  store i64 %W7Y$l, i64* %eptr145099                                                 ; *eptr145099 = %W7Y$l
  %eptr145096 = getelementptr inbounds i64, i64* %cloptr145095, i64 0                ; &cloptr145095[0]
  %f145100 = ptrtoint void(i64,i64,i64)* @lam143325 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145100, i64* %eptr145096                                               ; store fptr
  %arg142887 = ptrtoint i64* %cloptr145095 to i64                                    ; closure cast; i64* -> i64
  %cloptr145101 = inttoptr i64 %a142127 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145101)                                       ; assert function application
  %i0ptr145102 = getelementptr inbounds i64, i64* %cloptr145101, i64 0               ; &cloptr145101[0]
  %f145104 = load i64, i64* %i0ptr145102, align 8                                    ; load; *i0ptr145102
  %fptr145103 = inttoptr i64 %f145104 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145103(i64 %a142127, i64 %arg142887)                ; tail call
  ret void
}


define void @lam143325(i64 %env143326, i64 %_95142219, i64 %oMm$_95142009) {
  %envptr145105 = inttoptr i64 %env143326 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145106 = getelementptr inbounds i64, i64* %envptr145105, i64 3              ; &envptr145105[3]
  %W7Y$l = load i64, i64* %envptr145106, align 8                                     ; load; *envptr145106
  %envptr145107 = inttoptr i64 %env143326 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145108 = getelementptr inbounds i64, i64* %envptr145107, i64 2              ; &envptr145107[2]
  %jwH$_37wind_45stack = load i64, i64* %envptr145108, align 8                       ; load; *envptr145108
  %envptr145109 = inttoptr i64 %env143326 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145110 = getelementptr inbounds i64, i64* %envptr145109, i64 1              ; &envptr145109[1]
  %cont142217 = load i64, i64* %envptr145110, align 8                                ; load; *envptr145110
  %arg142890 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142220 = call i64 @prim_vector_45set_33(i64 %jwH$_37wind_45stack, i64 %arg142890, i64 %W7Y$l); call prim_vector_45set_33
  %arg142893 = add i64 0, 0                                                          ; quoted ()
  %cloptr145111 = inttoptr i64 %cont142217 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145111)                                       ; assert function application
  %i0ptr145112 = getelementptr inbounds i64, i64* %cloptr145111, i64 0               ; &cloptr145111[0]
  %f145114 = load i64, i64* %i0ptr145112, align 8                                    ; load; *i0ptr145112
  %fptr145113 = inttoptr i64 %f145114 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145113(i64 %cont142217, i64 %arg142893, i64 %retprim142220); tail call
  ret void
}


define void @lam143312(i64 %env143313, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr145115 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145115)                                       ; assert function application
  %i0ptr145116 = getelementptr inbounds i64, i64* %cloptr145115, i64 0               ; &cloptr145115[0]
  %f145118 = load i64, i64* %i0ptr145116, align 8                                    ; load; *i0ptr145116
  %fptr145117 = inttoptr i64 %f145118 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145117(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam143305(i64 %env143306, i64 %cont142247, i64 %N3x$_37foldl) {
  %envptr145119 = inttoptr i64 %env143306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145120 = getelementptr inbounds i64, i64* %envptr145119, i64 3              ; &envptr145119[3]
  %J5O$_37map1 = load i64, i64* %envptr145120, align 8                               ; load; *envptr145120
  %envptr145121 = inttoptr i64 %env143306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145122 = getelementptr inbounds i64, i64* %envptr145121, i64 2              ; &envptr145121[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145122, align 8                             ; load; *envptr145122
  %envptr145123 = inttoptr i64 %env143306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145124 = getelementptr inbounds i64, i64* %envptr145123, i64 1              ; &envptr145123[1]
  %AGZ$_37foldr = load i64, i64* %envptr145124, align 8                              ; load; *envptr145124
  %arg142918 = add i64 0, 0                                                          ; quoted ()
  %cloptr145125 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145127 = getelementptr inbounds i64, i64* %cloptr145125, i64 1                ; &eptr145127[1]
  %eptr145128 = getelementptr inbounds i64, i64* %cloptr145125, i64 2                ; &eptr145128[2]
  %eptr145129 = getelementptr inbounds i64, i64* %cloptr145125, i64 3                ; &eptr145129[3]
  %eptr145130 = getelementptr inbounds i64, i64* %cloptr145125, i64 4                ; &eptr145130[4]
  store i64 %AGZ$_37foldr, i64* %eptr145127                                          ; *eptr145127 = %AGZ$_37foldr
  store i64 %N3x$_37foldl, i64* %eptr145128                                          ; *eptr145128 = %N3x$_37foldl
  store i64 %d8z$_37foldr1, i64* %eptr145129                                         ; *eptr145129 = %d8z$_37foldr1
  store i64 %J5O$_37map1, i64* %eptr145130                                           ; *eptr145130 = %J5O$_37map1
  %eptr145126 = getelementptr inbounds i64, i64* %cloptr145125, i64 0                ; &cloptr145125[0]
  %f145131 = ptrtoint void(i64,i64)* @lam143302 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145131, i64* %eptr145126                                               ; store fptr
  %arg142917 = ptrtoint i64* %cloptr145125 to i64                                    ; closure cast; i64* -> i64
  %cloptr145132 = inttoptr i64 %cont142247 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145132)                                       ; assert function application
  %i0ptr145133 = getelementptr inbounds i64, i64* %cloptr145132, i64 0               ; &cloptr145132[0]
  %f145135 = load i64, i64* %i0ptr145133, align 8                                    ; load; *i0ptr145133
  %fptr145134 = inttoptr i64 %f145135 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145134(i64 %cont142247, i64 %arg142918, i64 %arg142917); tail call
  ret void
}


define void @lam143302(i64 %env143303, i64 %Ufi$args142249) {
  %envptr145136 = inttoptr i64 %env143303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145137 = getelementptr inbounds i64, i64* %envptr145136, i64 4              ; &envptr145136[4]
  %J5O$_37map1 = load i64, i64* %envptr145137, align 8                               ; load; *envptr145137
  %envptr145138 = inttoptr i64 %env143303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145139 = getelementptr inbounds i64, i64* %envptr145138, i64 3              ; &envptr145138[3]
  %d8z$_37foldr1 = load i64, i64* %envptr145139, align 8                             ; load; *envptr145139
  %envptr145140 = inttoptr i64 %env143303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145141 = getelementptr inbounds i64, i64* %envptr145140, i64 2              ; &envptr145140[2]
  %N3x$_37foldl = load i64, i64* %envptr145141, align 8                              ; load; *envptr145141
  %envptr145142 = inttoptr i64 %env143303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145143 = getelementptr inbounds i64, i64* %envptr145142, i64 1              ; &envptr145142[1]
  %AGZ$_37foldr = load i64, i64* %envptr145143, align 8                              ; load; *envptr145143
  %cont142248 = call i64 @prim_car(i64 %Ufi$args142249)                              ; call prim_car
  %Ufi$args = call i64 @prim_cdr(i64 %Ufi$args142249)                                ; call prim_cdr
  %kCM$f = call i64 @prim_car(i64 %Ufi$args)                                         ; call prim_car
  %a142050 = call i64 @prim_cdr(i64 %Ufi$args)                                       ; call prim_cdr
  %retprim142268 = call i64 @prim_car(i64 %a142050)                                  ; call prim_car
  %cloptr145144 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145146 = getelementptr inbounds i64, i64* %cloptr145144, i64 1                ; &eptr145146[1]
  %eptr145147 = getelementptr inbounds i64, i64* %cloptr145144, i64 2                ; &eptr145147[2]
  %eptr145148 = getelementptr inbounds i64, i64* %cloptr145144, i64 3                ; &eptr145148[3]
  %eptr145149 = getelementptr inbounds i64, i64* %cloptr145144, i64 4                ; &eptr145149[4]
  %eptr145150 = getelementptr inbounds i64, i64* %cloptr145144, i64 5                ; &eptr145150[5]
  %eptr145151 = getelementptr inbounds i64, i64* %cloptr145144, i64 6                ; &eptr145151[6]
  %eptr145152 = getelementptr inbounds i64, i64* %cloptr145144, i64 7                ; &eptr145152[7]
  store i64 %AGZ$_37foldr, i64* %eptr145146                                          ; *eptr145146 = %AGZ$_37foldr
  store i64 %cont142248, i64* %eptr145147                                            ; *eptr145147 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145148                                          ; *eptr145148 = %N3x$_37foldl
  store i64 %kCM$f, i64* %eptr145149                                                 ; *eptr145149 = %kCM$f
  store i64 %d8z$_37foldr1, i64* %eptr145150                                         ; *eptr145150 = %d8z$_37foldr1
  store i64 %J5O$_37map1, i64* %eptr145151                                           ; *eptr145151 = %J5O$_37map1
  store i64 %Ufi$args, i64* %eptr145152                                              ; *eptr145152 = %Ufi$args
  %eptr145145 = getelementptr inbounds i64, i64* %cloptr145144, i64 0                ; &cloptr145144[0]
  %f145153 = ptrtoint void(i64,i64,i64)* @lam143300 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145153, i64* %eptr145145                                               ; store fptr
  %arg142927 = ptrtoint i64* %cloptr145144 to i64                                    ; closure cast; i64* -> i64
  %arg142926 = add i64 0, 0                                                          ; quoted ()
  %cloptr145154 = inttoptr i64 %arg142927 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145154)                                       ; assert function application
  %i0ptr145155 = getelementptr inbounds i64, i64* %cloptr145154, i64 0               ; &cloptr145154[0]
  %f145157 = load i64, i64* %i0ptr145155, align 8                                    ; load; *i0ptr145155
  %fptr145156 = inttoptr i64 %f145157 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145156(i64 %arg142927, i64 %arg142926, i64 %retprim142268); tail call
  ret void
}


define void @lam143300(i64 %env143301, i64 %_95142250, i64 %t8n$acc) {
  %envptr145158 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145159 = getelementptr inbounds i64, i64* %envptr145158, i64 7              ; &envptr145158[7]
  %Ufi$args = load i64, i64* %envptr145159, align 8                                  ; load; *envptr145159
  %envptr145160 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145161 = getelementptr inbounds i64, i64* %envptr145160, i64 6              ; &envptr145160[6]
  %J5O$_37map1 = load i64, i64* %envptr145161, align 8                               ; load; *envptr145161
  %envptr145162 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145163 = getelementptr inbounds i64, i64* %envptr145162, i64 5              ; &envptr145162[5]
  %d8z$_37foldr1 = load i64, i64* %envptr145163, align 8                             ; load; *envptr145163
  %envptr145164 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145165 = getelementptr inbounds i64, i64* %envptr145164, i64 4              ; &envptr145164[4]
  %kCM$f = load i64, i64* %envptr145165, align 8                                     ; load; *envptr145165
  %envptr145166 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145167 = getelementptr inbounds i64, i64* %envptr145166, i64 3              ; &envptr145166[3]
  %N3x$_37foldl = load i64, i64* %envptr145167, align 8                              ; load; *envptr145167
  %envptr145168 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145169 = getelementptr inbounds i64, i64* %envptr145168, i64 2              ; &envptr145168[2]
  %cont142248 = load i64, i64* %envptr145169, align 8                                ; load; *envptr145169
  %envptr145170 = inttoptr i64 %env143301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145171 = getelementptr inbounds i64, i64* %envptr145170, i64 1              ; &envptr145170[1]
  %AGZ$_37foldr = load i64, i64* %envptr145171, align 8                              ; load; *envptr145171
  %a142051 = call i64 @prim_cdr(i64 %Ufi$args)                                       ; call prim_cdr
  %retprim142267 = call i64 @prim_cdr(i64 %a142051)                                  ; call prim_cdr
  %cloptr145172 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145174 = getelementptr inbounds i64, i64* %cloptr145172, i64 1                ; &eptr145174[1]
  %eptr145175 = getelementptr inbounds i64, i64* %cloptr145172, i64 2                ; &eptr145175[2]
  %eptr145176 = getelementptr inbounds i64, i64* %cloptr145172, i64 3                ; &eptr145176[3]
  %eptr145177 = getelementptr inbounds i64, i64* %cloptr145172, i64 4                ; &eptr145177[4]
  %eptr145178 = getelementptr inbounds i64, i64* %cloptr145172, i64 5                ; &eptr145178[5]
  %eptr145179 = getelementptr inbounds i64, i64* %cloptr145172, i64 6                ; &eptr145179[6]
  %eptr145180 = getelementptr inbounds i64, i64* %cloptr145172, i64 7                ; &eptr145180[7]
  store i64 %AGZ$_37foldr, i64* %eptr145174                                          ; *eptr145174 = %AGZ$_37foldr
  store i64 %cont142248, i64* %eptr145175                                            ; *eptr145175 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145176                                          ; *eptr145176 = %N3x$_37foldl
  store i64 %kCM$f, i64* %eptr145177                                                 ; *eptr145177 = %kCM$f
  store i64 %d8z$_37foldr1, i64* %eptr145178                                         ; *eptr145178 = %d8z$_37foldr1
  store i64 %J5O$_37map1, i64* %eptr145179                                           ; *eptr145179 = %J5O$_37map1
  store i64 %t8n$acc, i64* %eptr145180                                               ; *eptr145180 = %t8n$acc
  %eptr145173 = getelementptr inbounds i64, i64* %cloptr145172, i64 0                ; &cloptr145172[0]
  %f145181 = ptrtoint void(i64,i64,i64)* @lam143298 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145181, i64* %eptr145173                                               ; store fptr
  %arg142932 = ptrtoint i64* %cloptr145172 to i64                                    ; closure cast; i64* -> i64
  %arg142931 = add i64 0, 0                                                          ; quoted ()
  %cloptr145182 = inttoptr i64 %arg142932 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145182)                                       ; assert function application
  %i0ptr145183 = getelementptr inbounds i64, i64* %cloptr145182, i64 0               ; &cloptr145182[0]
  %f145185 = load i64, i64* %i0ptr145183, align 8                                    ; load; *i0ptr145183
  %fptr145184 = inttoptr i64 %f145185 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145184(i64 %arg142932, i64 %arg142931, i64 %retprim142267); tail call
  ret void
}


define void @lam143298(i64 %env143299, i64 %_95142251, i64 %WIz$lsts) {
  %envptr145186 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145187 = getelementptr inbounds i64, i64* %envptr145186, i64 7              ; &envptr145186[7]
  %t8n$acc = load i64, i64* %envptr145187, align 8                                   ; load; *envptr145187
  %envptr145188 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145189 = getelementptr inbounds i64, i64* %envptr145188, i64 6              ; &envptr145188[6]
  %J5O$_37map1 = load i64, i64* %envptr145189, align 8                               ; load; *envptr145189
  %envptr145190 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145191 = getelementptr inbounds i64, i64* %envptr145190, i64 5              ; &envptr145190[5]
  %d8z$_37foldr1 = load i64, i64* %envptr145191, align 8                             ; load; *envptr145191
  %envptr145192 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145193 = getelementptr inbounds i64, i64* %envptr145192, i64 4              ; &envptr145192[4]
  %kCM$f = load i64, i64* %envptr145193, align 8                                     ; load; *envptr145193
  %envptr145194 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145195 = getelementptr inbounds i64, i64* %envptr145194, i64 3              ; &envptr145194[3]
  %N3x$_37foldl = load i64, i64* %envptr145195, align 8                              ; load; *envptr145195
  %envptr145196 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145197 = getelementptr inbounds i64, i64* %envptr145196, i64 2              ; &envptr145196[2]
  %cont142248 = load i64, i64* %envptr145197, align 8                                ; load; *envptr145197
  %envptr145198 = inttoptr i64 %env143299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145199 = getelementptr inbounds i64, i64* %envptr145198, i64 1              ; &envptr145198[1]
  %AGZ$_37foldr = load i64, i64* %envptr145199, align 8                              ; load; *envptr145199
  %cloptr145200 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145202 = getelementptr inbounds i64, i64* %cloptr145200, i64 1                ; &eptr145202[1]
  %eptr145203 = getelementptr inbounds i64, i64* %cloptr145200, i64 2                ; &eptr145203[2]
  %eptr145204 = getelementptr inbounds i64, i64* %cloptr145200, i64 3                ; &eptr145204[3]
  %eptr145205 = getelementptr inbounds i64, i64* %cloptr145200, i64 4                ; &eptr145205[4]
  %eptr145206 = getelementptr inbounds i64, i64* %cloptr145200, i64 5                ; &eptr145206[5]
  %eptr145207 = getelementptr inbounds i64, i64* %cloptr145200, i64 6                ; &eptr145207[6]
  %eptr145208 = getelementptr inbounds i64, i64* %cloptr145200, i64 7                ; &eptr145208[7]
  store i64 %AGZ$_37foldr, i64* %eptr145202                                          ; *eptr145202 = %AGZ$_37foldr
  store i64 %cont142248, i64* %eptr145203                                            ; *eptr145203 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145204                                          ; *eptr145204 = %N3x$_37foldl
  store i64 %kCM$f, i64* %eptr145205                                                 ; *eptr145205 = %kCM$f
  store i64 %WIz$lsts, i64* %eptr145206                                              ; *eptr145206 = %WIz$lsts
  store i64 %J5O$_37map1, i64* %eptr145207                                           ; *eptr145207 = %J5O$_37map1
  store i64 %t8n$acc, i64* %eptr145208                                               ; *eptr145208 = %t8n$acc
  %eptr145201 = getelementptr inbounds i64, i64* %cloptr145200, i64 0                ; &cloptr145200[0]
  %f145209 = ptrtoint void(i64,i64,i64)* @lam143296 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145209, i64* %eptr145201                                               ; store fptr
  %arg142936 = ptrtoint i64* %cloptr145200 to i64                                    ; closure cast; i64* -> i64
  %cloptr145210 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145211 = getelementptr inbounds i64, i64* %cloptr145210, i64 0                ; &cloptr145210[0]
  %f145212 = ptrtoint void(i64,i64,i64,i64)* @lam143275 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145212, i64* %eptr145211                                               ; store fptr
  %arg142935 = ptrtoint i64* %cloptr145210 to i64                                    ; closure cast; i64* -> i64
  %arg142934 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145213 = inttoptr i64 %d8z$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145213)                                       ; assert function application
  %i0ptr145214 = getelementptr inbounds i64, i64* %cloptr145213, i64 0               ; &cloptr145213[0]
  %f145216 = load i64, i64* %i0ptr145214, align 8                                    ; load; *i0ptr145214
  %fptr145215 = inttoptr i64 %f145216 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145215(i64 %d8z$_37foldr1, i64 %arg142936, i64 %arg142935, i64 %arg142934, i64 %WIz$lsts); tail call
  ret void
}


define void @lam143296(i64 %env143297, i64 %_95142252, i64 %a142052) {
  %envptr145217 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145218 = getelementptr inbounds i64, i64* %envptr145217, i64 7              ; &envptr145217[7]
  %t8n$acc = load i64, i64* %envptr145218, align 8                                   ; load; *envptr145218
  %envptr145219 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145220 = getelementptr inbounds i64, i64* %envptr145219, i64 6              ; &envptr145219[6]
  %J5O$_37map1 = load i64, i64* %envptr145220, align 8                               ; load; *envptr145220
  %envptr145221 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145222 = getelementptr inbounds i64, i64* %envptr145221, i64 5              ; &envptr145221[5]
  %WIz$lsts = load i64, i64* %envptr145222, align 8                                  ; load; *envptr145222
  %envptr145223 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145224 = getelementptr inbounds i64, i64* %envptr145223, i64 4              ; &envptr145223[4]
  %kCM$f = load i64, i64* %envptr145224, align 8                                     ; load; *envptr145224
  %envptr145225 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145226 = getelementptr inbounds i64, i64* %envptr145225, i64 3              ; &envptr145225[3]
  %N3x$_37foldl = load i64, i64* %envptr145226, align 8                              ; load; *envptr145226
  %envptr145227 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145228 = getelementptr inbounds i64, i64* %envptr145227, i64 2              ; &envptr145227[2]
  %cont142248 = load i64, i64* %envptr145228, align 8                                ; load; *envptr145228
  %envptr145229 = inttoptr i64 %env143297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145230 = getelementptr inbounds i64, i64* %envptr145229, i64 1              ; &envptr145229[1]
  %AGZ$_37foldr = load i64, i64* %envptr145230, align 8                              ; load; *envptr145230
  %cmp145231 = icmp eq i64 %a142052, 15                                              ; false?
  br i1 %cmp145231, label %else145233, label %then145232                             ; if

then145232:
  %arg142939 = add i64 0, 0                                                          ; quoted ()
  %cloptr145234 = inttoptr i64 %cont142248 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145234)                                       ; assert function application
  %i0ptr145235 = getelementptr inbounds i64, i64* %cloptr145234, i64 0               ; &cloptr145234[0]
  %f145237 = load i64, i64* %i0ptr145235, align 8                                    ; load; *i0ptr145235
  %fptr145236 = inttoptr i64 %f145237 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145236(i64 %cont142248, i64 %arg142939, i64 %t8n$acc); tail call
  ret void

else145233:
  %cloptr145238 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145240 = getelementptr inbounds i64, i64* %cloptr145238, i64 1                ; &eptr145240[1]
  %eptr145241 = getelementptr inbounds i64, i64* %cloptr145238, i64 2                ; &eptr145241[2]
  %eptr145242 = getelementptr inbounds i64, i64* %cloptr145238, i64 3                ; &eptr145242[3]
  %eptr145243 = getelementptr inbounds i64, i64* %cloptr145238, i64 4                ; &eptr145243[4]
  %eptr145244 = getelementptr inbounds i64, i64* %cloptr145238, i64 5                ; &eptr145244[5]
  %eptr145245 = getelementptr inbounds i64, i64* %cloptr145238, i64 6                ; &eptr145245[6]
  %eptr145246 = getelementptr inbounds i64, i64* %cloptr145238, i64 7                ; &eptr145246[7]
  store i64 %AGZ$_37foldr, i64* %eptr145240                                          ; *eptr145240 = %AGZ$_37foldr
  store i64 %cont142248, i64* %eptr145241                                            ; *eptr145241 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145242                                          ; *eptr145242 = %N3x$_37foldl
  store i64 %kCM$f, i64* %eptr145243                                                 ; *eptr145243 = %kCM$f
  store i64 %WIz$lsts, i64* %eptr145244                                              ; *eptr145244 = %WIz$lsts
  store i64 %J5O$_37map1, i64* %eptr145245                                           ; *eptr145245 = %J5O$_37map1
  store i64 %t8n$acc, i64* %eptr145246                                               ; *eptr145246 = %t8n$acc
  %eptr145239 = getelementptr inbounds i64, i64* %cloptr145238, i64 0                ; &cloptr145238[0]
  %f145247 = ptrtoint void(i64,i64,i64)* @lam143294 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145247, i64* %eptr145239                                               ; store fptr
  %arg142943 = ptrtoint i64* %cloptr145238 to i64                                    ; closure cast; i64* -> i64
  %cloptr145248 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145249 = getelementptr inbounds i64, i64* %cloptr145248, i64 0                ; &cloptr145248[0]
  %f145250 = ptrtoint void(i64,i64,i64)* @lam143279 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145250, i64* %eptr145249                                               ; store fptr
  %arg142942 = ptrtoint i64* %cloptr145248 to i64                                    ; closure cast; i64* -> i64
  %cloptr145251 = inttoptr i64 %J5O$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145251)                                       ; assert function application
  %i0ptr145252 = getelementptr inbounds i64, i64* %cloptr145251, i64 0               ; &cloptr145251[0]
  %f145254 = load i64, i64* %i0ptr145252, align 8                                    ; load; *i0ptr145252
  %fptr145253 = inttoptr i64 %f145254 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145253(i64 %J5O$_37map1, i64 %arg142943, i64 %arg142942, i64 %WIz$lsts); tail call
  ret void
}


define void @lam143294(i64 %env143295, i64 %_95142253, i64 %Kqi$lsts_43) {
  %envptr145255 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145256 = getelementptr inbounds i64, i64* %envptr145255, i64 7              ; &envptr145255[7]
  %t8n$acc = load i64, i64* %envptr145256, align 8                                   ; load; *envptr145256
  %envptr145257 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145258 = getelementptr inbounds i64, i64* %envptr145257, i64 6              ; &envptr145257[6]
  %J5O$_37map1 = load i64, i64* %envptr145258, align 8                               ; load; *envptr145258
  %envptr145259 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145260 = getelementptr inbounds i64, i64* %envptr145259, i64 5              ; &envptr145259[5]
  %WIz$lsts = load i64, i64* %envptr145260, align 8                                  ; load; *envptr145260
  %envptr145261 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145262 = getelementptr inbounds i64, i64* %envptr145261, i64 4              ; &envptr145261[4]
  %kCM$f = load i64, i64* %envptr145262, align 8                                     ; load; *envptr145262
  %envptr145263 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145264 = getelementptr inbounds i64, i64* %envptr145263, i64 3              ; &envptr145263[3]
  %N3x$_37foldl = load i64, i64* %envptr145264, align 8                              ; load; *envptr145264
  %envptr145265 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145266 = getelementptr inbounds i64, i64* %envptr145265, i64 2              ; &envptr145265[2]
  %cont142248 = load i64, i64* %envptr145266, align 8                                ; load; *envptr145266
  %envptr145267 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145268 = getelementptr inbounds i64, i64* %envptr145267, i64 1              ; &envptr145267[1]
  %AGZ$_37foldr = load i64, i64* %envptr145268, align 8                              ; load; *envptr145268
  %cloptr145269 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145271 = getelementptr inbounds i64, i64* %cloptr145269, i64 1                ; &eptr145271[1]
  %eptr145272 = getelementptr inbounds i64, i64* %cloptr145269, i64 2                ; &eptr145272[2]
  %eptr145273 = getelementptr inbounds i64, i64* %cloptr145269, i64 3                ; &eptr145273[3]
  %eptr145274 = getelementptr inbounds i64, i64* %cloptr145269, i64 4                ; &eptr145274[4]
  %eptr145275 = getelementptr inbounds i64, i64* %cloptr145269, i64 5                ; &eptr145275[5]
  %eptr145276 = getelementptr inbounds i64, i64* %cloptr145269, i64 6                ; &eptr145276[6]
  store i64 %AGZ$_37foldr, i64* %eptr145271                                          ; *eptr145271 = %AGZ$_37foldr
  store i64 %cont142248, i64* %eptr145272                                            ; *eptr145272 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145273                                          ; *eptr145273 = %N3x$_37foldl
  store i64 %Kqi$lsts_43, i64* %eptr145274                                           ; *eptr145274 = %Kqi$lsts_43
  store i64 %kCM$f, i64* %eptr145275                                                 ; *eptr145275 = %kCM$f
  store i64 %t8n$acc, i64* %eptr145276                                               ; *eptr145276 = %t8n$acc
  %eptr145270 = getelementptr inbounds i64, i64* %cloptr145269, i64 0                ; &cloptr145269[0]
  %f145277 = ptrtoint void(i64,i64,i64)* @lam143292 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145277, i64* %eptr145270                                               ; store fptr
  %arg142947 = ptrtoint i64* %cloptr145269 to i64                                    ; closure cast; i64* -> i64
  %cloptr145278 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145279 = getelementptr inbounds i64, i64* %cloptr145278, i64 0                ; &cloptr145278[0]
  %f145280 = ptrtoint void(i64,i64,i64)* @lam143282 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145280, i64* %eptr145279                                               ; store fptr
  %arg142946 = ptrtoint i64* %cloptr145278 to i64                                    ; closure cast; i64* -> i64
  %cloptr145281 = inttoptr i64 %J5O$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145281)                                       ; assert function application
  %i0ptr145282 = getelementptr inbounds i64, i64* %cloptr145281, i64 0               ; &cloptr145281[0]
  %f145284 = load i64, i64* %i0ptr145282, align 8                                    ; load; *i0ptr145282
  %fptr145283 = inttoptr i64 %f145284 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145283(i64 %J5O$_37map1, i64 %arg142947, i64 %arg142946, i64 %WIz$lsts); tail call
  ret void
}


define void @lam143292(i64 %env143293, i64 %_95142254, i64 %Dqk$vs) {
  %envptr145285 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145286 = getelementptr inbounds i64, i64* %envptr145285, i64 6              ; &envptr145285[6]
  %t8n$acc = load i64, i64* %envptr145286, align 8                                   ; load; *envptr145286
  %envptr145287 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145288 = getelementptr inbounds i64, i64* %envptr145287, i64 5              ; &envptr145287[5]
  %kCM$f = load i64, i64* %envptr145288, align 8                                     ; load; *envptr145288
  %envptr145289 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145290 = getelementptr inbounds i64, i64* %envptr145289, i64 4              ; &envptr145289[4]
  %Kqi$lsts_43 = load i64, i64* %envptr145290, align 8                               ; load; *envptr145290
  %envptr145291 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145292 = getelementptr inbounds i64, i64* %envptr145291, i64 3              ; &envptr145291[3]
  %N3x$_37foldl = load i64, i64* %envptr145292, align 8                              ; load; *envptr145292
  %envptr145293 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145294 = getelementptr inbounds i64, i64* %envptr145293, i64 2              ; &envptr145293[2]
  %cont142248 = load i64, i64* %envptr145294, align 8                                ; load; *envptr145294
  %envptr145295 = inttoptr i64 %env143293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145296 = getelementptr inbounds i64, i64* %envptr145295, i64 1              ; &envptr145295[1]
  %AGZ$_37foldr = load i64, i64* %envptr145296, align 8                              ; load; *envptr145296
  %arg142949 = add i64 0, 0                                                          ; quoted ()
  %a142053 = call i64 @prim_cons(i64 %t8n$acc, i64 %arg142949)                       ; call prim_cons
  %cloptr145297 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145299 = getelementptr inbounds i64, i64* %cloptr145297, i64 1                ; &eptr145299[1]
  %eptr145300 = getelementptr inbounds i64, i64* %cloptr145297, i64 2                ; &eptr145300[2]
  %eptr145301 = getelementptr inbounds i64, i64* %cloptr145297, i64 3                ; &eptr145301[3]
  %eptr145302 = getelementptr inbounds i64, i64* %cloptr145297, i64 4                ; &eptr145302[4]
  store i64 %cont142248, i64* %eptr145299                                            ; *eptr145299 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145300                                          ; *eptr145300 = %N3x$_37foldl
  store i64 %Kqi$lsts_43, i64* %eptr145301                                           ; *eptr145301 = %Kqi$lsts_43
  store i64 %kCM$f, i64* %eptr145302                                                 ; *eptr145302 = %kCM$f
  %eptr145298 = getelementptr inbounds i64, i64* %cloptr145297, i64 0                ; &cloptr145297[0]
  %f145303 = ptrtoint void(i64,i64,i64)* @lam143289 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145303, i64* %eptr145298                                               ; store fptr
  %arg142954 = ptrtoint i64* %cloptr145297 to i64                                    ; closure cast; i64* -> i64
  %cloptr145304 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145305 = getelementptr inbounds i64, i64* %cloptr145304, i64 0                ; &cloptr145304[0]
  %f145306 = ptrtoint void(i64,i64,i64,i64)* @lam143285 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145306, i64* %eptr145305                                               ; store fptr
  %arg142953 = ptrtoint i64* %cloptr145304 to i64                                    ; closure cast; i64* -> i64
  %cloptr145307 = inttoptr i64 %AGZ$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145307)                                       ; assert function application
  %i0ptr145308 = getelementptr inbounds i64, i64* %cloptr145307, i64 0               ; &cloptr145307[0]
  %f145310 = load i64, i64* %i0ptr145308, align 8                                    ; load; *i0ptr145308
  %fptr145309 = inttoptr i64 %f145310 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145309(i64 %AGZ$_37foldr, i64 %arg142954, i64 %arg142953, i64 %a142053, i64 %Dqk$vs); tail call
  ret void
}


define void @lam143289(i64 %env143290, i64 %_95142257, i64 %a142054) {
  %envptr145311 = inttoptr i64 %env143290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145312 = getelementptr inbounds i64, i64* %envptr145311, i64 4              ; &envptr145311[4]
  %kCM$f = load i64, i64* %envptr145312, align 8                                     ; load; *envptr145312
  %envptr145313 = inttoptr i64 %env143290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145314 = getelementptr inbounds i64, i64* %envptr145313, i64 3              ; &envptr145313[3]
  %Kqi$lsts_43 = load i64, i64* %envptr145314, align 8                               ; load; *envptr145314
  %envptr145315 = inttoptr i64 %env143290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145316 = getelementptr inbounds i64, i64* %envptr145315, i64 2              ; &envptr145315[2]
  %N3x$_37foldl = load i64, i64* %envptr145316, align 8                              ; load; *envptr145316
  %envptr145317 = inttoptr i64 %env143290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145318 = getelementptr inbounds i64, i64* %envptr145317, i64 1              ; &envptr145317[1]
  %cont142248 = load i64, i64* %envptr145318, align 8                                ; load; *envptr145318
  %cloptr145319 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145321 = getelementptr inbounds i64, i64* %cloptr145319, i64 1                ; &eptr145321[1]
  %eptr145322 = getelementptr inbounds i64, i64* %cloptr145319, i64 2                ; &eptr145322[2]
  %eptr145323 = getelementptr inbounds i64, i64* %cloptr145319, i64 3                ; &eptr145323[3]
  %eptr145324 = getelementptr inbounds i64, i64* %cloptr145319, i64 4                ; &eptr145324[4]
  store i64 %cont142248, i64* %eptr145321                                            ; *eptr145321 = %cont142248
  store i64 %N3x$_37foldl, i64* %eptr145322                                          ; *eptr145322 = %N3x$_37foldl
  store i64 %Kqi$lsts_43, i64* %eptr145323                                           ; *eptr145323 = %Kqi$lsts_43
  store i64 %kCM$f, i64* %eptr145324                                                 ; *eptr145324 = %kCM$f
  %eptr145320 = getelementptr inbounds i64, i64* %cloptr145319, i64 0                ; &cloptr145319[0]
  %f145325 = ptrtoint void(i64,i64,i64)* @lam143287 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145325, i64* %eptr145320                                               ; store fptr
  %arg142957 = ptrtoint i64* %cloptr145319 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142258 = call i64 @prim_cons(i64 %arg142957, i64 %a142054)               ; call prim_cons
  %cloptr145326 = inttoptr i64 %kCM$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145326)                                       ; assert function application
  %i0ptr145327 = getelementptr inbounds i64, i64* %cloptr145326, i64 0               ; &cloptr145326[0]
  %f145329 = load i64, i64* %i0ptr145327, align 8                                    ; load; *i0ptr145327
  %fptr145328 = inttoptr i64 %f145329 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145328(i64 %kCM$f, i64 %cps_45lst142258)            ; tail call
  ret void
}


define void @lam143287(i64 %env143288, i64 %_95142255, i64 %mg0$acc_43) {
  %envptr145330 = inttoptr i64 %env143288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145331 = getelementptr inbounds i64, i64* %envptr145330, i64 4              ; &envptr145330[4]
  %kCM$f = load i64, i64* %envptr145331, align 8                                     ; load; *envptr145331
  %envptr145332 = inttoptr i64 %env143288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145333 = getelementptr inbounds i64, i64* %envptr145332, i64 3              ; &envptr145332[3]
  %Kqi$lsts_43 = load i64, i64* %envptr145333, align 8                               ; load; *envptr145333
  %envptr145334 = inttoptr i64 %env143288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145335 = getelementptr inbounds i64, i64* %envptr145334, i64 2              ; &envptr145334[2]
  %N3x$_37foldl = load i64, i64* %envptr145335, align 8                              ; load; *envptr145335
  %envptr145336 = inttoptr i64 %env143288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145337 = getelementptr inbounds i64, i64* %envptr145336, i64 1              ; &envptr145336[1]
  %cont142248 = load i64, i64* %envptr145337, align 8                                ; load; *envptr145337
  %a142055 = call i64 @prim_cons(i64 %mg0$acc_43, i64 %Kqi$lsts_43)                  ; call prim_cons
  %a142056 = call i64 @prim_cons(i64 %kCM$f, i64 %a142055)                           ; call prim_cons
  %cps_45lst142256 = call i64 @prim_cons(i64 %cont142248, i64 %a142056)              ; call prim_cons
  %cloptr145338 = inttoptr i64 %N3x$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145338)                                       ; assert function application
  %i0ptr145339 = getelementptr inbounds i64, i64* %cloptr145338, i64 0               ; &cloptr145338[0]
  %f145341 = load i64, i64* %i0ptr145339, align 8                                    ; load; *i0ptr145339
  %fptr145340 = inttoptr i64 %f145341 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145340(i64 %N3x$_37foldl, i64 %cps_45lst142256)     ; tail call
  ret void
}


define void @lam143285(i64 %env143286, i64 %cont142259, i64 %TGT$a, i64 %UTy$b) {
  %retprim142260 = call i64 @prim_cons(i64 %TGT$a, i64 %UTy$b)                       ; call prim_cons
  %arg142967 = add i64 0, 0                                                          ; quoted ()
  %cloptr145342 = inttoptr i64 %cont142259 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145342)                                       ; assert function application
  %i0ptr145343 = getelementptr inbounds i64, i64* %cloptr145342, i64 0               ; &cloptr145342[0]
  %f145345 = load i64, i64* %i0ptr145343, align 8                                    ; load; *i0ptr145343
  %fptr145344 = inttoptr i64 %f145345 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145344(i64 %cont142259, i64 %arg142967, i64 %retprim142260); tail call
  ret void
}


define void @lam143282(i64 %env143283, i64 %cont142261, i64 %NVb$x) {
  %retprim142262 = call i64 @prim_car(i64 %NVb$x)                                    ; call prim_car
  %arg142971 = add i64 0, 0                                                          ; quoted ()
  %cloptr145346 = inttoptr i64 %cont142261 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145346)                                       ; assert function application
  %i0ptr145347 = getelementptr inbounds i64, i64* %cloptr145346, i64 0               ; &cloptr145346[0]
  %f145349 = load i64, i64* %i0ptr145347, align 8                                    ; load; *i0ptr145347
  %fptr145348 = inttoptr i64 %f145349 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145348(i64 %cont142261, i64 %arg142971, i64 %retprim142262); tail call
  ret void
}


define void @lam143279(i64 %env143280, i64 %cont142263, i64 %E9k$x) {
  %retprim142264 = call i64 @prim_cdr(i64 %E9k$x)                                    ; call prim_cdr
  %arg142975 = add i64 0, 0                                                          ; quoted ()
  %cloptr145350 = inttoptr i64 %cont142263 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145350)                                       ; assert function application
  %i0ptr145351 = getelementptr inbounds i64, i64* %cloptr145350, i64 0               ; &cloptr145350[0]
  %f145353 = load i64, i64* %i0ptr145351, align 8                                    ; load; *i0ptr145351
  %fptr145352 = inttoptr i64 %f145353 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145352(i64 %cont142263, i64 %arg142975, i64 %retprim142264); tail call
  ret void
}


define void @lam143275(i64 %env143276, i64 %cont142265, i64 %nZV$lst, i64 %GD9$b) {
  %cmp145354 = icmp eq i64 %GD9$b, 15                                                ; false?
  br i1 %cmp145354, label %else145356, label %then145355                             ; if

then145355:
  %arg142978 = add i64 0, 0                                                          ; quoted ()
  %cloptr145357 = inttoptr i64 %cont142265 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145357)                                       ; assert function application
  %i0ptr145358 = getelementptr inbounds i64, i64* %cloptr145357, i64 0               ; &cloptr145357[0]
  %f145360 = load i64, i64* %i0ptr145358, align 8                                    ; load; *i0ptr145358
  %fptr145359 = inttoptr i64 %f145360 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145359(i64 %cont142265, i64 %arg142978, i64 %GD9$b) ; tail call
  ret void

else145356:
  %retprim142266 = call i64 @prim_null_63(i64 %nZV$lst)                              ; call prim_null_63
  %arg142982 = add i64 0, 0                                                          ; quoted ()
  %cloptr145361 = inttoptr i64 %cont142265 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145361)                                       ; assert function application
  %i0ptr145362 = getelementptr inbounds i64, i64* %cloptr145361, i64 0               ; &cloptr145361[0]
  %f145364 = load i64, i64* %i0ptr145362, align 8                                    ; load; *i0ptr145362
  %fptr145363 = inttoptr i64 %f145364 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145363(i64 %cont142265, i64 %arg142982, i64 %retprim142266); tail call
  ret void
}


define void @lam143268(i64 %env143269, i64 %cont142269, i64 %OYa$_37foldr) {
  %envptr145365 = inttoptr i64 %env143269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145366 = getelementptr inbounds i64, i64* %envptr145365, i64 2              ; &envptr145365[2]
  %DRi$_37map1 = load i64, i64* %envptr145366, align 8                               ; load; *envptr145366
  %envptr145367 = inttoptr i64 %env143269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145368 = getelementptr inbounds i64, i64* %envptr145367, i64 1              ; &envptr145367[1]
  %d8z$_37foldr1 = load i64, i64* %envptr145368, align 8                             ; load; *envptr145368
  %arg142985 = add i64 0, 0                                                          ; quoted ()
  %cloptr145369 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145371 = getelementptr inbounds i64, i64* %cloptr145369, i64 1                ; &eptr145371[1]
  %eptr145372 = getelementptr inbounds i64, i64* %cloptr145369, i64 2                ; &eptr145372[2]
  %eptr145373 = getelementptr inbounds i64, i64* %cloptr145369, i64 3                ; &eptr145373[3]
  store i64 %d8z$_37foldr1, i64* %eptr145371                                         ; *eptr145371 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145372                                          ; *eptr145372 = %OYa$_37foldr
  store i64 %DRi$_37map1, i64* %eptr145373                                           ; *eptr145373 = %DRi$_37map1
  %eptr145370 = getelementptr inbounds i64, i64* %cloptr145369, i64 0                ; &cloptr145369[0]
  %f145374 = ptrtoint void(i64,i64)* @lam143265 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145374, i64* %eptr145370                                               ; store fptr
  %arg142984 = ptrtoint i64* %cloptr145369 to i64                                    ; closure cast; i64* -> i64
  %cloptr145375 = inttoptr i64 %cont142269 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145375)                                       ; assert function application
  %i0ptr145376 = getelementptr inbounds i64, i64* %cloptr145375, i64 0               ; &cloptr145375[0]
  %f145378 = load i64, i64* %i0ptr145376, align 8                                    ; load; *i0ptr145376
  %fptr145377 = inttoptr i64 %f145378 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145377(i64 %cont142269, i64 %arg142985, i64 %arg142984); tail call
  ret void
}


define void @lam143265(i64 %env143266, i64 %YVw$args142271) {
  %envptr145379 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145380 = getelementptr inbounds i64, i64* %envptr145379, i64 3              ; &envptr145379[3]
  %DRi$_37map1 = load i64, i64* %envptr145380, align 8                               ; load; *envptr145380
  %envptr145381 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145382 = getelementptr inbounds i64, i64* %envptr145381, i64 2              ; &envptr145381[2]
  %OYa$_37foldr = load i64, i64* %envptr145382, align 8                              ; load; *envptr145382
  %envptr145383 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145384 = getelementptr inbounds i64, i64* %envptr145383, i64 1              ; &envptr145383[1]
  %d8z$_37foldr1 = load i64, i64* %envptr145384, align 8                             ; load; *envptr145384
  %cont142270 = call i64 @prim_car(i64 %YVw$args142271)                              ; call prim_car
  %YVw$args = call i64 @prim_cdr(i64 %YVw$args142271)                                ; call prim_cdr
  %Dqy$f = call i64 @prim_car(i64 %YVw$args)                                         ; call prim_car
  %a142036 = call i64 @prim_cdr(i64 %YVw$args)                                       ; call prim_cdr
  %retprim142290 = call i64 @prim_car(i64 %a142036)                                  ; call prim_car
  %cloptr145385 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145387 = getelementptr inbounds i64, i64* %cloptr145385, i64 1                ; &eptr145387[1]
  %eptr145388 = getelementptr inbounds i64, i64* %cloptr145385, i64 2                ; &eptr145388[2]
  %eptr145389 = getelementptr inbounds i64, i64* %cloptr145385, i64 3                ; &eptr145389[3]
  %eptr145390 = getelementptr inbounds i64, i64* %cloptr145385, i64 4                ; &eptr145390[4]
  %eptr145391 = getelementptr inbounds i64, i64* %cloptr145385, i64 5                ; &eptr145391[5]
  %eptr145392 = getelementptr inbounds i64, i64* %cloptr145385, i64 6                ; &eptr145392[6]
  store i64 %YVw$args, i64* %eptr145387                                              ; *eptr145387 = %YVw$args
  store i64 %d8z$_37foldr1, i64* %eptr145388                                         ; *eptr145388 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145389                                          ; *eptr145389 = %OYa$_37foldr
  store i64 %Dqy$f, i64* %eptr145390                                                 ; *eptr145390 = %Dqy$f
  store i64 %cont142270, i64* %eptr145391                                            ; *eptr145391 = %cont142270
  store i64 %DRi$_37map1, i64* %eptr145392                                           ; *eptr145392 = %DRi$_37map1
  %eptr145386 = getelementptr inbounds i64, i64* %cloptr145385, i64 0                ; &cloptr145385[0]
  %f145393 = ptrtoint void(i64,i64,i64)* @lam143263 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145393, i64* %eptr145386                                               ; store fptr
  %arg142994 = ptrtoint i64* %cloptr145385 to i64                                    ; closure cast; i64* -> i64
  %arg142993 = add i64 0, 0                                                          ; quoted ()
  %cloptr145394 = inttoptr i64 %arg142994 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145394)                                       ; assert function application
  %i0ptr145395 = getelementptr inbounds i64, i64* %cloptr145394, i64 0               ; &cloptr145394[0]
  %f145397 = load i64, i64* %i0ptr145395, align 8                                    ; load; *i0ptr145395
  %fptr145396 = inttoptr i64 %f145397 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145396(i64 %arg142994, i64 %arg142993, i64 %retprim142290); tail call
  ret void
}


define void @lam143263(i64 %env143264, i64 %_95142272, i64 %MIj$acc) {
  %envptr145398 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145399 = getelementptr inbounds i64, i64* %envptr145398, i64 6              ; &envptr145398[6]
  %DRi$_37map1 = load i64, i64* %envptr145399, align 8                               ; load; *envptr145399
  %envptr145400 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145401 = getelementptr inbounds i64, i64* %envptr145400, i64 5              ; &envptr145400[5]
  %cont142270 = load i64, i64* %envptr145401, align 8                                ; load; *envptr145401
  %envptr145402 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145403 = getelementptr inbounds i64, i64* %envptr145402, i64 4              ; &envptr145402[4]
  %Dqy$f = load i64, i64* %envptr145403, align 8                                     ; load; *envptr145403
  %envptr145404 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145405 = getelementptr inbounds i64, i64* %envptr145404, i64 3              ; &envptr145404[3]
  %OYa$_37foldr = load i64, i64* %envptr145405, align 8                              ; load; *envptr145405
  %envptr145406 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145407 = getelementptr inbounds i64, i64* %envptr145406, i64 2              ; &envptr145406[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145407, align 8                             ; load; *envptr145407
  %envptr145408 = inttoptr i64 %env143264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145409 = getelementptr inbounds i64, i64* %envptr145408, i64 1              ; &envptr145408[1]
  %YVw$args = load i64, i64* %envptr145409, align 8                                  ; load; *envptr145409
  %a142037 = call i64 @prim_cdr(i64 %YVw$args)                                       ; call prim_cdr
  %retprim142289 = call i64 @prim_cdr(i64 %a142037)                                  ; call prim_cdr
  %cloptr145410 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145412 = getelementptr inbounds i64, i64* %cloptr145410, i64 1                ; &eptr145412[1]
  %eptr145413 = getelementptr inbounds i64, i64* %cloptr145410, i64 2                ; &eptr145413[2]
  %eptr145414 = getelementptr inbounds i64, i64* %cloptr145410, i64 3                ; &eptr145414[3]
  %eptr145415 = getelementptr inbounds i64, i64* %cloptr145410, i64 4                ; &eptr145415[4]
  %eptr145416 = getelementptr inbounds i64, i64* %cloptr145410, i64 5                ; &eptr145416[5]
  %eptr145417 = getelementptr inbounds i64, i64* %cloptr145410, i64 6                ; &eptr145417[6]
  store i64 %MIj$acc, i64* %eptr145412                                               ; *eptr145412 = %MIj$acc
  store i64 %d8z$_37foldr1, i64* %eptr145413                                         ; *eptr145413 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145414                                          ; *eptr145414 = %OYa$_37foldr
  store i64 %Dqy$f, i64* %eptr145415                                                 ; *eptr145415 = %Dqy$f
  store i64 %cont142270, i64* %eptr145416                                            ; *eptr145416 = %cont142270
  store i64 %DRi$_37map1, i64* %eptr145417                                           ; *eptr145417 = %DRi$_37map1
  %eptr145411 = getelementptr inbounds i64, i64* %cloptr145410, i64 0                ; &cloptr145410[0]
  %f145418 = ptrtoint void(i64,i64,i64)* @lam143261 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145418, i64* %eptr145411                                               ; store fptr
  %arg142999 = ptrtoint i64* %cloptr145410 to i64                                    ; closure cast; i64* -> i64
  %arg142998 = add i64 0, 0                                                          ; quoted ()
  %cloptr145419 = inttoptr i64 %arg142999 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145419)                                       ; assert function application
  %i0ptr145420 = getelementptr inbounds i64, i64* %cloptr145419, i64 0               ; &cloptr145419[0]
  %f145422 = load i64, i64* %i0ptr145420, align 8                                    ; load; *i0ptr145420
  %fptr145421 = inttoptr i64 %f145422 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145421(i64 %arg142999, i64 %arg142998, i64 %retprim142289); tail call
  ret void
}


define void @lam143261(i64 %env143262, i64 %_95142273, i64 %fFM$lsts) {
  %envptr145423 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145424 = getelementptr inbounds i64, i64* %envptr145423, i64 6              ; &envptr145423[6]
  %DRi$_37map1 = load i64, i64* %envptr145424, align 8                               ; load; *envptr145424
  %envptr145425 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145426 = getelementptr inbounds i64, i64* %envptr145425, i64 5              ; &envptr145425[5]
  %cont142270 = load i64, i64* %envptr145426, align 8                                ; load; *envptr145426
  %envptr145427 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145428 = getelementptr inbounds i64, i64* %envptr145427, i64 4              ; &envptr145427[4]
  %Dqy$f = load i64, i64* %envptr145428, align 8                                     ; load; *envptr145428
  %envptr145429 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145430 = getelementptr inbounds i64, i64* %envptr145429, i64 3              ; &envptr145429[3]
  %OYa$_37foldr = load i64, i64* %envptr145430, align 8                              ; load; *envptr145430
  %envptr145431 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145432 = getelementptr inbounds i64, i64* %envptr145431, i64 2              ; &envptr145431[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145432, align 8                             ; load; *envptr145432
  %envptr145433 = inttoptr i64 %env143262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145434 = getelementptr inbounds i64, i64* %envptr145433, i64 1              ; &envptr145433[1]
  %MIj$acc = load i64, i64* %envptr145434, align 8                                   ; load; *envptr145434
  %cloptr145435 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145437 = getelementptr inbounds i64, i64* %cloptr145435, i64 1                ; &eptr145437[1]
  %eptr145438 = getelementptr inbounds i64, i64* %cloptr145435, i64 2                ; &eptr145438[2]
  %eptr145439 = getelementptr inbounds i64, i64* %cloptr145435, i64 3                ; &eptr145439[3]
  %eptr145440 = getelementptr inbounds i64, i64* %cloptr145435, i64 4                ; &eptr145440[4]
  %eptr145441 = getelementptr inbounds i64, i64* %cloptr145435, i64 5                ; &eptr145441[5]
  %eptr145442 = getelementptr inbounds i64, i64* %cloptr145435, i64 6                ; &eptr145442[6]
  %eptr145443 = getelementptr inbounds i64, i64* %cloptr145435, i64 7                ; &eptr145443[7]
  store i64 %MIj$acc, i64* %eptr145437                                               ; *eptr145437 = %MIj$acc
  store i64 %d8z$_37foldr1, i64* %eptr145438                                         ; *eptr145438 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145439                                          ; *eptr145439 = %OYa$_37foldr
  store i64 %Dqy$f, i64* %eptr145440                                                 ; *eptr145440 = %Dqy$f
  store i64 %cont142270, i64* %eptr145441                                            ; *eptr145441 = %cont142270
  store i64 %fFM$lsts, i64* %eptr145442                                              ; *eptr145442 = %fFM$lsts
  store i64 %DRi$_37map1, i64* %eptr145443                                           ; *eptr145443 = %DRi$_37map1
  %eptr145436 = getelementptr inbounds i64, i64* %cloptr145435, i64 0                ; &cloptr145435[0]
  %f145444 = ptrtoint void(i64,i64,i64)* @lam143259 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145444, i64* %eptr145436                                               ; store fptr
  %arg143003 = ptrtoint i64* %cloptr145435 to i64                                    ; closure cast; i64* -> i64
  %cloptr145445 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145446 = getelementptr inbounds i64, i64* %cloptr145445, i64 0                ; &cloptr145445[0]
  %f145447 = ptrtoint void(i64,i64,i64,i64)* @lam143238 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145447, i64* %eptr145446                                               ; store fptr
  %arg143002 = ptrtoint i64* %cloptr145445 to i64                                    ; closure cast; i64* -> i64
  %arg143001 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145448 = inttoptr i64 %d8z$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145448)                                       ; assert function application
  %i0ptr145449 = getelementptr inbounds i64, i64* %cloptr145448, i64 0               ; &cloptr145448[0]
  %f145451 = load i64, i64* %i0ptr145449, align 8                                    ; load; *i0ptr145449
  %fptr145450 = inttoptr i64 %f145451 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145450(i64 %d8z$_37foldr1, i64 %arg143003, i64 %arg143002, i64 %arg143001, i64 %fFM$lsts); tail call
  ret void
}


define void @lam143259(i64 %env143260, i64 %_95142274, i64 %a142038) {
  %envptr145452 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145453 = getelementptr inbounds i64, i64* %envptr145452, i64 7              ; &envptr145452[7]
  %DRi$_37map1 = load i64, i64* %envptr145453, align 8                               ; load; *envptr145453
  %envptr145454 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145455 = getelementptr inbounds i64, i64* %envptr145454, i64 6              ; &envptr145454[6]
  %fFM$lsts = load i64, i64* %envptr145455, align 8                                  ; load; *envptr145455
  %envptr145456 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145457 = getelementptr inbounds i64, i64* %envptr145456, i64 5              ; &envptr145456[5]
  %cont142270 = load i64, i64* %envptr145457, align 8                                ; load; *envptr145457
  %envptr145458 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145459 = getelementptr inbounds i64, i64* %envptr145458, i64 4              ; &envptr145458[4]
  %Dqy$f = load i64, i64* %envptr145459, align 8                                     ; load; *envptr145459
  %envptr145460 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145461 = getelementptr inbounds i64, i64* %envptr145460, i64 3              ; &envptr145460[3]
  %OYa$_37foldr = load i64, i64* %envptr145461, align 8                              ; load; *envptr145461
  %envptr145462 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145463 = getelementptr inbounds i64, i64* %envptr145462, i64 2              ; &envptr145462[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145463, align 8                             ; load; *envptr145463
  %envptr145464 = inttoptr i64 %env143260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145465 = getelementptr inbounds i64, i64* %envptr145464, i64 1              ; &envptr145464[1]
  %MIj$acc = load i64, i64* %envptr145465, align 8                                   ; load; *envptr145465
  %cmp145466 = icmp eq i64 %a142038, 15                                              ; false?
  br i1 %cmp145466, label %else145468, label %then145467                             ; if

then145467:
  %arg143006 = add i64 0, 0                                                          ; quoted ()
  %cloptr145469 = inttoptr i64 %cont142270 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145469)                                       ; assert function application
  %i0ptr145470 = getelementptr inbounds i64, i64* %cloptr145469, i64 0               ; &cloptr145469[0]
  %f145472 = load i64, i64* %i0ptr145470, align 8                                    ; load; *i0ptr145470
  %fptr145471 = inttoptr i64 %f145472 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145471(i64 %cont142270, i64 %arg143006, i64 %MIj$acc); tail call
  ret void

else145468:
  %cloptr145473 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145475 = getelementptr inbounds i64, i64* %cloptr145473, i64 1                ; &eptr145475[1]
  %eptr145476 = getelementptr inbounds i64, i64* %cloptr145473, i64 2                ; &eptr145476[2]
  %eptr145477 = getelementptr inbounds i64, i64* %cloptr145473, i64 3                ; &eptr145477[3]
  %eptr145478 = getelementptr inbounds i64, i64* %cloptr145473, i64 4                ; &eptr145478[4]
  %eptr145479 = getelementptr inbounds i64, i64* %cloptr145473, i64 5                ; &eptr145479[5]
  %eptr145480 = getelementptr inbounds i64, i64* %cloptr145473, i64 6                ; &eptr145480[6]
  %eptr145481 = getelementptr inbounds i64, i64* %cloptr145473, i64 7                ; &eptr145481[7]
  store i64 %MIj$acc, i64* %eptr145475                                               ; *eptr145475 = %MIj$acc
  store i64 %d8z$_37foldr1, i64* %eptr145476                                         ; *eptr145476 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145477                                          ; *eptr145477 = %OYa$_37foldr
  store i64 %Dqy$f, i64* %eptr145478                                                 ; *eptr145478 = %Dqy$f
  store i64 %cont142270, i64* %eptr145479                                            ; *eptr145479 = %cont142270
  store i64 %fFM$lsts, i64* %eptr145480                                              ; *eptr145480 = %fFM$lsts
  store i64 %DRi$_37map1, i64* %eptr145481                                           ; *eptr145481 = %DRi$_37map1
  %eptr145474 = getelementptr inbounds i64, i64* %cloptr145473, i64 0                ; &cloptr145473[0]
  %f145482 = ptrtoint void(i64,i64,i64)* @lam143257 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145482, i64* %eptr145474                                               ; store fptr
  %arg143010 = ptrtoint i64* %cloptr145473 to i64                                    ; closure cast; i64* -> i64
  %cloptr145483 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145484 = getelementptr inbounds i64, i64* %cloptr145483, i64 0                ; &cloptr145483[0]
  %f145485 = ptrtoint void(i64,i64,i64)* @lam143242 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145485, i64* %eptr145484                                               ; store fptr
  %arg143009 = ptrtoint i64* %cloptr145483 to i64                                    ; closure cast; i64* -> i64
  %cloptr145486 = inttoptr i64 %DRi$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145486)                                       ; assert function application
  %i0ptr145487 = getelementptr inbounds i64, i64* %cloptr145486, i64 0               ; &cloptr145486[0]
  %f145489 = load i64, i64* %i0ptr145487, align 8                                    ; load; *i0ptr145487
  %fptr145488 = inttoptr i64 %f145489 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145488(i64 %DRi$_37map1, i64 %arg143010, i64 %arg143009, i64 %fFM$lsts); tail call
  ret void
}


define void @lam143257(i64 %env143258, i64 %_95142275, i64 %YXm$lsts_43) {
  %envptr145490 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145491 = getelementptr inbounds i64, i64* %envptr145490, i64 7              ; &envptr145490[7]
  %DRi$_37map1 = load i64, i64* %envptr145491, align 8                               ; load; *envptr145491
  %envptr145492 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145493 = getelementptr inbounds i64, i64* %envptr145492, i64 6              ; &envptr145492[6]
  %fFM$lsts = load i64, i64* %envptr145493, align 8                                  ; load; *envptr145493
  %envptr145494 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145495 = getelementptr inbounds i64, i64* %envptr145494, i64 5              ; &envptr145494[5]
  %cont142270 = load i64, i64* %envptr145495, align 8                                ; load; *envptr145495
  %envptr145496 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145497 = getelementptr inbounds i64, i64* %envptr145496, i64 4              ; &envptr145496[4]
  %Dqy$f = load i64, i64* %envptr145497, align 8                                     ; load; *envptr145497
  %envptr145498 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145499 = getelementptr inbounds i64, i64* %envptr145498, i64 3              ; &envptr145498[3]
  %OYa$_37foldr = load i64, i64* %envptr145499, align 8                              ; load; *envptr145499
  %envptr145500 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145501 = getelementptr inbounds i64, i64* %envptr145500, i64 2              ; &envptr145500[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145501, align 8                             ; load; *envptr145501
  %envptr145502 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145503 = getelementptr inbounds i64, i64* %envptr145502, i64 1              ; &envptr145502[1]
  %MIj$acc = load i64, i64* %envptr145503, align 8                                   ; load; *envptr145503
  %cloptr145504 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145506 = getelementptr inbounds i64, i64* %cloptr145504, i64 1                ; &eptr145506[1]
  %eptr145507 = getelementptr inbounds i64, i64* %cloptr145504, i64 2                ; &eptr145507[2]
  %eptr145508 = getelementptr inbounds i64, i64* %cloptr145504, i64 3                ; &eptr145508[3]
  %eptr145509 = getelementptr inbounds i64, i64* %cloptr145504, i64 4                ; &eptr145509[4]
  %eptr145510 = getelementptr inbounds i64, i64* %cloptr145504, i64 5                ; &eptr145510[5]
  %eptr145511 = getelementptr inbounds i64, i64* %cloptr145504, i64 6                ; &eptr145511[6]
  store i64 %MIj$acc, i64* %eptr145506                                               ; *eptr145506 = %MIj$acc
  store i64 %d8z$_37foldr1, i64* %eptr145507                                         ; *eptr145507 = %d8z$_37foldr1
  store i64 %OYa$_37foldr, i64* %eptr145508                                          ; *eptr145508 = %OYa$_37foldr
  store i64 %Dqy$f, i64* %eptr145509                                                 ; *eptr145509 = %Dqy$f
  store i64 %YXm$lsts_43, i64* %eptr145510                                           ; *eptr145510 = %YXm$lsts_43
  store i64 %cont142270, i64* %eptr145511                                            ; *eptr145511 = %cont142270
  %eptr145505 = getelementptr inbounds i64, i64* %cloptr145504, i64 0                ; &cloptr145504[0]
  %f145512 = ptrtoint void(i64,i64,i64)* @lam143255 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145512, i64* %eptr145505                                               ; store fptr
  %arg143014 = ptrtoint i64* %cloptr145504 to i64                                    ; closure cast; i64* -> i64
  %cloptr145513 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145514 = getelementptr inbounds i64, i64* %cloptr145513, i64 0                ; &cloptr145513[0]
  %f145515 = ptrtoint void(i64,i64,i64)* @lam143245 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145515, i64* %eptr145514                                               ; store fptr
  %arg143013 = ptrtoint i64* %cloptr145513 to i64                                    ; closure cast; i64* -> i64
  %cloptr145516 = inttoptr i64 %DRi$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145516)                                       ; assert function application
  %i0ptr145517 = getelementptr inbounds i64, i64* %cloptr145516, i64 0               ; &cloptr145516[0]
  %f145519 = load i64, i64* %i0ptr145517, align 8                                    ; load; *i0ptr145517
  %fptr145518 = inttoptr i64 %f145519 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145518(i64 %DRi$_37map1, i64 %arg143014, i64 %arg143013, i64 %fFM$lsts); tail call
  ret void
}


define void @lam143255(i64 %env143256, i64 %_95142276, i64 %BPk$vs) {
  %envptr145520 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145521 = getelementptr inbounds i64, i64* %envptr145520, i64 6              ; &envptr145520[6]
  %cont142270 = load i64, i64* %envptr145521, align 8                                ; load; *envptr145521
  %envptr145522 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145523 = getelementptr inbounds i64, i64* %envptr145522, i64 5              ; &envptr145522[5]
  %YXm$lsts_43 = load i64, i64* %envptr145523, align 8                               ; load; *envptr145523
  %envptr145524 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145525 = getelementptr inbounds i64, i64* %envptr145524, i64 4              ; &envptr145524[4]
  %Dqy$f = load i64, i64* %envptr145525, align 8                                     ; load; *envptr145525
  %envptr145526 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145527 = getelementptr inbounds i64, i64* %envptr145526, i64 3              ; &envptr145526[3]
  %OYa$_37foldr = load i64, i64* %envptr145527, align 8                              ; load; *envptr145527
  %envptr145528 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145529 = getelementptr inbounds i64, i64* %envptr145528, i64 2              ; &envptr145528[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145529, align 8                             ; load; *envptr145529
  %envptr145530 = inttoptr i64 %env143256 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145531 = getelementptr inbounds i64, i64* %envptr145530, i64 1              ; &envptr145530[1]
  %MIj$acc = load i64, i64* %envptr145531, align 8                                   ; load; *envptr145531
  %a142039 = call i64 @prim_cons(i64 %MIj$acc, i64 %YXm$lsts_43)                     ; call prim_cons
  %a142040 = call i64 @prim_cons(i64 %Dqy$f, i64 %a142039)                           ; call prim_cons
  %cloptr145532 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145534 = getelementptr inbounds i64, i64* %cloptr145532, i64 1                ; &eptr145534[1]
  %eptr145535 = getelementptr inbounds i64, i64* %cloptr145532, i64 2                ; &eptr145535[2]
  %eptr145536 = getelementptr inbounds i64, i64* %cloptr145532, i64 3                ; &eptr145536[3]
  %eptr145537 = getelementptr inbounds i64, i64* %cloptr145532, i64 4                ; &eptr145537[4]
  store i64 %BPk$vs, i64* %eptr145534                                                ; *eptr145534 = %BPk$vs
  store i64 %d8z$_37foldr1, i64* %eptr145535                                         ; *eptr145535 = %d8z$_37foldr1
  store i64 %Dqy$f, i64* %eptr145536                                                 ; *eptr145536 = %Dqy$f
  store i64 %cont142270, i64* %eptr145537                                            ; *eptr145537 = %cont142270
  %eptr145533 = getelementptr inbounds i64, i64* %cloptr145532, i64 0                ; &cloptr145532[0]
  %f145538 = ptrtoint void(i64,i64,i64)* @lam143253 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145538, i64* %eptr145533                                               ; store fptr
  %arg143021 = ptrtoint i64* %cloptr145532 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142282 = call i64 @prim_cons(i64 %arg143021, i64 %a142040)               ; call prim_cons
  %cloptr145539 = inttoptr i64 %OYa$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145539)                                       ; assert function application
  %i0ptr145540 = getelementptr inbounds i64, i64* %cloptr145539, i64 0               ; &cloptr145539[0]
  %f145542 = load i64, i64* %i0ptr145540, align 8                                    ; load; *i0ptr145540
  %fptr145541 = inttoptr i64 %f145542 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145541(i64 %OYa$_37foldr, i64 %cps_45lst142282)     ; tail call
  ret void
}


define void @lam143253(i64 %env143254, i64 %_95142277, i64 %a142041) {
  %envptr145543 = inttoptr i64 %env143254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145544 = getelementptr inbounds i64, i64* %envptr145543, i64 4              ; &envptr145543[4]
  %cont142270 = load i64, i64* %envptr145544, align 8                                ; load; *envptr145544
  %envptr145545 = inttoptr i64 %env143254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145546 = getelementptr inbounds i64, i64* %envptr145545, i64 3              ; &envptr145545[3]
  %Dqy$f = load i64, i64* %envptr145546, align 8                                     ; load; *envptr145546
  %envptr145547 = inttoptr i64 %env143254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145548 = getelementptr inbounds i64, i64* %envptr145547, i64 2              ; &envptr145547[2]
  %d8z$_37foldr1 = load i64, i64* %envptr145548, align 8                             ; load; *envptr145548
  %envptr145549 = inttoptr i64 %env143254 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145550 = getelementptr inbounds i64, i64* %envptr145549, i64 1              ; &envptr145549[1]
  %BPk$vs = load i64, i64* %envptr145550, align 8                                    ; load; *envptr145550
  %arg143022 = add i64 0, 0                                                          ; quoted ()
  %a142042 = call i64 @prim_cons(i64 %a142041, i64 %arg143022)                       ; call prim_cons
  %cloptr145551 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145553 = getelementptr inbounds i64, i64* %cloptr145551, i64 1                ; &eptr145553[1]
  %eptr145554 = getelementptr inbounds i64, i64* %cloptr145551, i64 2                ; &eptr145554[2]
  store i64 %Dqy$f, i64* %eptr145553                                                 ; *eptr145553 = %Dqy$f
  store i64 %cont142270, i64* %eptr145554                                            ; *eptr145554 = %cont142270
  %eptr145552 = getelementptr inbounds i64, i64* %cloptr145551, i64 0                ; &cloptr145551[0]
  %f145555 = ptrtoint void(i64,i64,i64)* @lam143250 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145555, i64* %eptr145552                                               ; store fptr
  %arg143027 = ptrtoint i64* %cloptr145551 to i64                                    ; closure cast; i64* -> i64
  %cloptr145556 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145557 = getelementptr inbounds i64, i64* %cloptr145556, i64 0                ; &cloptr145556[0]
  %f145558 = ptrtoint void(i64,i64,i64,i64)* @lam143248 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145558, i64* %eptr145557                                               ; store fptr
  %arg143026 = ptrtoint i64* %cloptr145556 to i64                                    ; closure cast; i64* -> i64
  %cloptr145559 = inttoptr i64 %d8z$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145559)                                       ; assert function application
  %i0ptr145560 = getelementptr inbounds i64, i64* %cloptr145559, i64 0               ; &cloptr145559[0]
  %f145562 = load i64, i64* %i0ptr145560, align 8                                    ; load; *i0ptr145560
  %fptr145561 = inttoptr i64 %f145562 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145561(i64 %d8z$_37foldr1, i64 %arg143027, i64 %arg143026, i64 %a142042, i64 %BPk$vs); tail call
  ret void
}


define void @lam143250(i64 %env143251, i64 %_95142278, i64 %a142043) {
  %envptr145563 = inttoptr i64 %env143251 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145564 = getelementptr inbounds i64, i64* %envptr145563, i64 2              ; &envptr145563[2]
  %cont142270 = load i64, i64* %envptr145564, align 8                                ; load; *envptr145564
  %envptr145565 = inttoptr i64 %env143251 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145566 = getelementptr inbounds i64, i64* %envptr145565, i64 1              ; &envptr145565[1]
  %Dqy$f = load i64, i64* %envptr145566, align 8                                     ; load; *envptr145566
  %cps_45lst142279 = call i64 @prim_cons(i64 %cont142270, i64 %a142043)              ; call prim_cons
  %cloptr145567 = inttoptr i64 %Dqy$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145567)                                       ; assert function application
  %i0ptr145568 = getelementptr inbounds i64, i64* %cloptr145567, i64 0               ; &cloptr145567[0]
  %f145570 = load i64, i64* %i0ptr145568, align 8                                    ; load; *i0ptr145568
  %fptr145569 = inttoptr i64 %f145570 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145569(i64 %Dqy$f, i64 %cps_45lst142279)            ; tail call
  ret void
}


define void @lam143248(i64 %env143249, i64 %cont142280, i64 %vMx$a, i64 %INE$b) {
  %retprim142281 = call i64 @prim_cons(i64 %vMx$a, i64 %INE$b)                       ; call prim_cons
  %arg143034 = add i64 0, 0                                                          ; quoted ()
  %cloptr145571 = inttoptr i64 %cont142280 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145571)                                       ; assert function application
  %i0ptr145572 = getelementptr inbounds i64, i64* %cloptr145571, i64 0               ; &cloptr145571[0]
  %f145574 = load i64, i64* %i0ptr145572, align 8                                    ; load; *i0ptr145572
  %fptr145573 = inttoptr i64 %f145574 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145573(i64 %cont142280, i64 %arg143034, i64 %retprim142281); tail call
  ret void
}


define void @lam143245(i64 %env143246, i64 %cont142283, i64 %ZpS$x) {
  %retprim142284 = call i64 @prim_car(i64 %ZpS$x)                                    ; call prim_car
  %arg143038 = add i64 0, 0                                                          ; quoted ()
  %cloptr145575 = inttoptr i64 %cont142283 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145575)                                       ; assert function application
  %i0ptr145576 = getelementptr inbounds i64, i64* %cloptr145575, i64 0               ; &cloptr145575[0]
  %f145578 = load i64, i64* %i0ptr145576, align 8                                    ; load; *i0ptr145576
  %fptr145577 = inttoptr i64 %f145578 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145577(i64 %cont142283, i64 %arg143038, i64 %retprim142284); tail call
  ret void
}


define void @lam143242(i64 %env143243, i64 %cont142285, i64 %AYt$x) {
  %retprim142286 = call i64 @prim_cdr(i64 %AYt$x)                                    ; call prim_cdr
  %arg143042 = add i64 0, 0                                                          ; quoted ()
  %cloptr145579 = inttoptr i64 %cont142285 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145579)                                       ; assert function application
  %i0ptr145580 = getelementptr inbounds i64, i64* %cloptr145579, i64 0               ; &cloptr145579[0]
  %f145582 = load i64, i64* %i0ptr145580, align 8                                    ; load; *i0ptr145580
  %fptr145581 = inttoptr i64 %f145582 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145581(i64 %cont142285, i64 %arg143042, i64 %retprim142286); tail call
  ret void
}


define void @lam143238(i64 %env143239, i64 %cont142287, i64 %LcE$lst, i64 %YLx$b) {
  %cmp145583 = icmp eq i64 %YLx$b, 15                                                ; false?
  br i1 %cmp145583, label %else145585, label %then145584                             ; if

then145584:
  %arg143045 = add i64 0, 0                                                          ; quoted ()
  %cloptr145586 = inttoptr i64 %cont142287 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145586)                                       ; assert function application
  %i0ptr145587 = getelementptr inbounds i64, i64* %cloptr145586, i64 0               ; &cloptr145586[0]
  %f145589 = load i64, i64* %i0ptr145587, align 8                                    ; load; *i0ptr145587
  %fptr145588 = inttoptr i64 %f145589 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145588(i64 %cont142287, i64 %arg143045, i64 %YLx$b) ; tail call
  ret void

else145585:
  %retprim142288 = call i64 @prim_null_63(i64 %LcE$lst)                              ; call prim_null_63
  %arg143049 = add i64 0, 0                                                          ; quoted ()
  %cloptr145590 = inttoptr i64 %cont142287 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145590)                                       ; assert function application
  %i0ptr145591 = getelementptr inbounds i64, i64* %cloptr145590, i64 0               ; &cloptr145590[0]
  %f145593 = load i64, i64* %i0ptr145591, align 8                                    ; load; *i0ptr145591
  %fptr145592 = inttoptr i64 %f145593 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145592(i64 %cont142287, i64 %arg143049, i64 %retprim142288); tail call
  ret void
}


define void @lam143231(i64 %env143232, i64 %cont142291, i64 %NXd$_37foldl1) {
  %arg143052 = add i64 0, 0                                                          ; quoted ()
  %cloptr145594 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145596 = getelementptr inbounds i64, i64* %cloptr145594, i64 1                ; &eptr145596[1]
  store i64 %NXd$_37foldl1, i64* %eptr145596                                         ; *eptr145596 = %NXd$_37foldl1
  %eptr145595 = getelementptr inbounds i64, i64* %cloptr145594, i64 0                ; &cloptr145594[0]
  %f145597 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143228 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145597, i64* %eptr145595                                               ; store fptr
  %arg143051 = ptrtoint i64* %cloptr145594 to i64                                    ; closure cast; i64* -> i64
  %cloptr145598 = inttoptr i64 %cont142291 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145598)                                       ; assert function application
  %i0ptr145599 = getelementptr inbounds i64, i64* %cloptr145598, i64 0               ; &cloptr145598[0]
  %f145601 = load i64, i64* %i0ptr145599, align 8                                    ; load; *i0ptr145599
  %fptr145600 = inttoptr i64 %f145601 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145600(i64 %cont142291, i64 %arg143052, i64 %arg143051); tail call
  ret void
}


define void @lam143228(i64 %env143229, i64 %cont142292, i64 %EsK$f, i64 %Kb5$acc, i64 %bmp$lst) {
  %envptr145602 = inttoptr i64 %env143229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145603 = getelementptr inbounds i64, i64* %envptr145602, i64 1              ; &envptr145602[1]
  %NXd$_37foldl1 = load i64, i64* %envptr145603, align 8                             ; load; *envptr145603
  %a142030 = call i64 @prim_null_63(i64 %bmp$lst)                                    ; call prim_null_63
  %cmp145604 = icmp eq i64 %a142030, 15                                              ; false?
  br i1 %cmp145604, label %else145606, label %then145605                             ; if

then145605:
  %arg143056 = add i64 0, 0                                                          ; quoted ()
  %cloptr145607 = inttoptr i64 %cont142292 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145607)                                       ; assert function application
  %i0ptr145608 = getelementptr inbounds i64, i64* %cloptr145607, i64 0               ; &cloptr145607[0]
  %f145610 = load i64, i64* %i0ptr145608, align 8                                    ; load; *i0ptr145608
  %fptr145609 = inttoptr i64 %f145610 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145609(i64 %cont142292, i64 %arg143056, i64 %Kb5$acc); tail call
  ret void

else145606:
  %a142031 = call i64 @prim_car(i64 %bmp$lst)                                        ; call prim_car
  %cloptr145611 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145613 = getelementptr inbounds i64, i64* %cloptr145611, i64 1                ; &eptr145613[1]
  %eptr145614 = getelementptr inbounds i64, i64* %cloptr145611, i64 2                ; &eptr145614[2]
  %eptr145615 = getelementptr inbounds i64, i64* %cloptr145611, i64 3                ; &eptr145615[3]
  %eptr145616 = getelementptr inbounds i64, i64* %cloptr145611, i64 4                ; &eptr145616[4]
  store i64 %cont142292, i64* %eptr145613                                            ; *eptr145613 = %cont142292
  store i64 %NXd$_37foldl1, i64* %eptr145614                                         ; *eptr145614 = %NXd$_37foldl1
  store i64 %EsK$f, i64* %eptr145615                                                 ; *eptr145615 = %EsK$f
  store i64 %bmp$lst, i64* %eptr145616                                               ; *eptr145616 = %bmp$lst
  %eptr145612 = getelementptr inbounds i64, i64* %cloptr145611, i64 0                ; &cloptr145611[0]
  %f145617 = ptrtoint void(i64,i64,i64)* @lam143226 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145617, i64* %eptr145612                                               ; store fptr
  %arg143061 = ptrtoint i64* %cloptr145611 to i64                                    ; closure cast; i64* -> i64
  %cloptr145618 = inttoptr i64 %EsK$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145618)                                       ; assert function application
  %i0ptr145619 = getelementptr inbounds i64, i64* %cloptr145618, i64 0               ; &cloptr145618[0]
  %f145621 = load i64, i64* %i0ptr145619, align 8                                    ; load; *i0ptr145619
  %fptr145620 = inttoptr i64 %f145621 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145620(i64 %EsK$f, i64 %arg143061, i64 %a142031, i64 %Kb5$acc); tail call
  ret void
}


define void @lam143226(i64 %env143227, i64 %_95142293, i64 %a142032) {
  %envptr145622 = inttoptr i64 %env143227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145623 = getelementptr inbounds i64, i64* %envptr145622, i64 4              ; &envptr145622[4]
  %bmp$lst = load i64, i64* %envptr145623, align 8                                   ; load; *envptr145623
  %envptr145624 = inttoptr i64 %env143227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145625 = getelementptr inbounds i64, i64* %envptr145624, i64 3              ; &envptr145624[3]
  %EsK$f = load i64, i64* %envptr145625, align 8                                     ; load; *envptr145625
  %envptr145626 = inttoptr i64 %env143227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145627 = getelementptr inbounds i64, i64* %envptr145626, i64 2              ; &envptr145626[2]
  %NXd$_37foldl1 = load i64, i64* %envptr145627, align 8                             ; load; *envptr145627
  %envptr145628 = inttoptr i64 %env143227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145629 = getelementptr inbounds i64, i64* %envptr145628, i64 1              ; &envptr145628[1]
  %cont142292 = load i64, i64* %envptr145629, align 8                                ; load; *envptr145629
  %a142033 = call i64 @prim_cdr(i64 %bmp$lst)                                        ; call prim_cdr
  %cloptr145630 = inttoptr i64 %NXd$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145630)                                       ; assert function application
  %i0ptr145631 = getelementptr inbounds i64, i64* %cloptr145630, i64 0               ; &cloptr145630[0]
  %f145633 = load i64, i64* %i0ptr145631, align 8                                    ; load; *i0ptr145631
  %fptr145632 = inttoptr i64 %f145633 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145632(i64 %NXd$_37foldl1, i64 %cont142292, i64 %EsK$f, i64 %a142032, i64 %a142033); tail call
  ret void
}


define void @lam143223(i64 %env143224, i64 %cont142294, i64 %i2p$_37length) {
  %arg143070 = add i64 0, 0                                                          ; quoted ()
  %cloptr145634 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145636 = getelementptr inbounds i64, i64* %cloptr145634, i64 1                ; &eptr145636[1]
  store i64 %i2p$_37length, i64* %eptr145636                                         ; *eptr145636 = %i2p$_37length
  %eptr145635 = getelementptr inbounds i64, i64* %cloptr145634, i64 0                ; &cloptr145634[0]
  %f145637 = ptrtoint void(i64,i64,i64)* @lam143220 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145637, i64* %eptr145635                                               ; store fptr
  %arg143069 = ptrtoint i64* %cloptr145634 to i64                                    ; closure cast; i64* -> i64
  %cloptr145638 = inttoptr i64 %cont142294 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145638)                                       ; assert function application
  %i0ptr145639 = getelementptr inbounds i64, i64* %cloptr145638, i64 0               ; &cloptr145638[0]
  %f145641 = load i64, i64* %i0ptr145639, align 8                                    ; load; *i0ptr145639
  %fptr145640 = inttoptr i64 %f145641 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145640(i64 %cont142294, i64 %arg143070, i64 %arg143069); tail call
  ret void
}


define void @lam143220(i64 %env143221, i64 %cont142295, i64 %Awx$lst) {
  %envptr145642 = inttoptr i64 %env143221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145643 = getelementptr inbounds i64, i64* %envptr145642, i64 1              ; &envptr145642[1]
  %i2p$_37length = load i64, i64* %envptr145643, align 8                             ; load; *envptr145643
  %a142027 = call i64 @prim_null_63(i64 %Awx$lst)                                    ; call prim_null_63
  %cmp145644 = icmp eq i64 %a142027, 15                                              ; false?
  br i1 %cmp145644, label %else145646, label %then145645                             ; if

then145645:
  %arg143074 = add i64 0, 0                                                          ; quoted ()
  %arg143073 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr145647 = inttoptr i64 %cont142295 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145647)                                       ; assert function application
  %i0ptr145648 = getelementptr inbounds i64, i64* %cloptr145647, i64 0               ; &cloptr145647[0]
  %f145650 = load i64, i64* %i0ptr145648, align 8                                    ; load; *i0ptr145648
  %fptr145649 = inttoptr i64 %f145650 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145649(i64 %cont142295, i64 %arg143074, i64 %arg143073); tail call
  ret void

else145646:
  %a142028 = call i64 @prim_cdr(i64 %Awx$lst)                                        ; call prim_cdr
  %cloptr145651 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145653 = getelementptr inbounds i64, i64* %cloptr145651, i64 1                ; &eptr145653[1]
  store i64 %cont142295, i64* %eptr145653                                            ; *eptr145653 = %cont142295
  %eptr145652 = getelementptr inbounds i64, i64* %cloptr145651, i64 0                ; &cloptr145651[0]
  %f145654 = ptrtoint void(i64,i64,i64)* @lam143218 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145654, i64* %eptr145652                                               ; store fptr
  %arg143078 = ptrtoint i64* %cloptr145651 to i64                                    ; closure cast; i64* -> i64
  %cloptr145655 = inttoptr i64 %i2p$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145655)                                       ; assert function application
  %i0ptr145656 = getelementptr inbounds i64, i64* %cloptr145655, i64 0               ; &cloptr145655[0]
  %f145658 = load i64, i64* %i0ptr145656, align 8                                    ; load; *i0ptr145656
  %fptr145657 = inttoptr i64 %f145658 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145657(i64 %i2p$_37length, i64 %arg143078, i64 %a142028); tail call
  ret void
}


define void @lam143218(i64 %env143219, i64 %_95142296, i64 %a142029) {
  %envptr145659 = inttoptr i64 %env143219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145660 = getelementptr inbounds i64, i64* %envptr145659, i64 1              ; &envptr145659[1]
  %cont142295 = load i64, i64* %envptr145660, align 8                                ; load; *envptr145660
  %arg143081 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142297 = call i64 @prim__43(i64 %arg143081, i64 %a142029)                  ; call prim__43
  %arg143083 = add i64 0, 0                                                          ; quoted ()
  %cloptr145661 = inttoptr i64 %cont142295 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145661)                                       ; assert function application
  %i0ptr145662 = getelementptr inbounds i64, i64* %cloptr145661, i64 0               ; &cloptr145661[0]
  %f145664 = load i64, i64* %i0ptr145662, align 8                                    ; load; *i0ptr145662
  %fptr145663 = inttoptr i64 %f145664 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145663(i64 %cont142295, i64 %arg143083, i64 %retprim142297); tail call
  ret void
}


define void @lam143212(i64 %env143213, i64 %cont142298, i64 %ykD$_37take) {
  %arg143086 = add i64 0, 0                                                          ; quoted ()
  %cloptr145665 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145667 = getelementptr inbounds i64, i64* %cloptr145665, i64 1                ; &eptr145667[1]
  store i64 %ykD$_37take, i64* %eptr145667                                           ; *eptr145667 = %ykD$_37take
  %eptr145666 = getelementptr inbounds i64, i64* %cloptr145665, i64 0                ; &cloptr145665[0]
  %f145668 = ptrtoint void(i64,i64,i64,i64)* @lam143209 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145668, i64* %eptr145666                                               ; store fptr
  %arg143085 = ptrtoint i64* %cloptr145665 to i64                                    ; closure cast; i64* -> i64
  %cloptr145669 = inttoptr i64 %cont142298 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145669)                                       ; assert function application
  %i0ptr145670 = getelementptr inbounds i64, i64* %cloptr145669, i64 0               ; &cloptr145669[0]
  %f145672 = load i64, i64* %i0ptr145670, align 8                                    ; load; *i0ptr145670
  %fptr145671 = inttoptr i64 %f145672 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145671(i64 %cont142298, i64 %arg143086, i64 %arg143085); tail call
  ret void
}


define void @lam143209(i64 %env143210, i64 %cont142299, i64 %UYp$lst, i64 %w2G$n) {
  %envptr145673 = inttoptr i64 %env143210 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145674 = getelementptr inbounds i64, i64* %envptr145673, i64 1              ; &envptr145673[1]
  %ykD$_37take = load i64, i64* %envptr145674, align 8                               ; load; *envptr145674
  %arg143088 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142021 = call i64 @prim__61(i64 %w2G$n, i64 %arg143088)                          ; call prim__61
  %cmp145675 = icmp eq i64 %a142021, 15                                              ; false?
  br i1 %cmp145675, label %else145677, label %then145676                             ; if

then145676:
  %arg143091 = add i64 0, 0                                                          ; quoted ()
  %arg143090 = add i64 0, 0                                                          ; quoted ()
  %cloptr145678 = inttoptr i64 %cont142299 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145678)                                       ; assert function application
  %i0ptr145679 = getelementptr inbounds i64, i64* %cloptr145678, i64 0               ; &cloptr145678[0]
  %f145681 = load i64, i64* %i0ptr145679, align 8                                    ; load; *i0ptr145679
  %fptr145680 = inttoptr i64 %f145681 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145680(i64 %cont142299, i64 %arg143091, i64 %arg143090); tail call
  ret void

else145677:
  %a142022 = call i64 @prim_null_63(i64 %UYp$lst)                                    ; call prim_null_63
  %cmp145682 = icmp eq i64 %a142022, 15                                              ; false?
  br i1 %cmp145682, label %else145684, label %then145683                             ; if

then145683:
  %arg143095 = add i64 0, 0                                                          ; quoted ()
  %arg143094 = add i64 0, 0                                                          ; quoted ()
  %cloptr145685 = inttoptr i64 %cont142299 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145685)                                       ; assert function application
  %i0ptr145686 = getelementptr inbounds i64, i64* %cloptr145685, i64 0               ; &cloptr145685[0]
  %f145688 = load i64, i64* %i0ptr145686, align 8                                    ; load; *i0ptr145686
  %fptr145687 = inttoptr i64 %f145688 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145687(i64 %cont142299, i64 %arg143095, i64 %arg143094); tail call
  ret void

else145684:
  %a142023 = call i64 @prim_car(i64 %UYp$lst)                                        ; call prim_car
  %a142024 = call i64 @prim_cdr(i64 %UYp$lst)                                        ; call prim_cdr
  %arg143099 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142025 = call i64 @prim__45(i64 %w2G$n, i64 %arg143099)                          ; call prim__45
  %cloptr145689 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145691 = getelementptr inbounds i64, i64* %cloptr145689, i64 1                ; &eptr145691[1]
  %eptr145692 = getelementptr inbounds i64, i64* %cloptr145689, i64 2                ; &eptr145692[2]
  store i64 %a142023, i64* %eptr145691                                               ; *eptr145691 = %a142023
  store i64 %cont142299, i64* %eptr145692                                            ; *eptr145692 = %cont142299
  %eptr145690 = getelementptr inbounds i64, i64* %cloptr145689, i64 0                ; &cloptr145689[0]
  %f145693 = ptrtoint void(i64,i64,i64)* @lam143205 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145693, i64* %eptr145690                                               ; store fptr
  %arg143103 = ptrtoint i64* %cloptr145689 to i64                                    ; closure cast; i64* -> i64
  %cloptr145694 = inttoptr i64 %ykD$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145694)                                       ; assert function application
  %i0ptr145695 = getelementptr inbounds i64, i64* %cloptr145694, i64 0               ; &cloptr145694[0]
  %f145697 = load i64, i64* %i0ptr145695, align 8                                    ; load; *i0ptr145695
  %fptr145696 = inttoptr i64 %f145697 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145696(i64 %ykD$_37take, i64 %arg143103, i64 %a142024, i64 %a142025); tail call
  ret void
}


define void @lam143205(i64 %env143206, i64 %_95142300, i64 %a142026) {
  %envptr145698 = inttoptr i64 %env143206 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145699 = getelementptr inbounds i64, i64* %envptr145698, i64 2              ; &envptr145698[2]
  %cont142299 = load i64, i64* %envptr145699, align 8                                ; load; *envptr145699
  %envptr145700 = inttoptr i64 %env143206 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145701 = getelementptr inbounds i64, i64* %envptr145700, i64 1              ; &envptr145700[1]
  %a142023 = load i64, i64* %envptr145701, align 8                                   ; load; *envptr145701
  %retprim142301 = call i64 @prim_cons(i64 %a142023, i64 %a142026)                   ; call prim_cons
  %arg143108 = add i64 0, 0                                                          ; quoted ()
  %cloptr145702 = inttoptr i64 %cont142299 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145702)                                       ; assert function application
  %i0ptr145703 = getelementptr inbounds i64, i64* %cloptr145702, i64 0               ; &cloptr145702[0]
  %f145705 = load i64, i64* %i0ptr145703, align 8                                    ; load; *i0ptr145703
  %fptr145704 = inttoptr i64 %f145705 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145704(i64 %cont142299, i64 %arg143108, i64 %retprim142301); tail call
  ret void
}


define void @lam143198(i64 %env143199, i64 %cont142302, i64 %n9k$_37map) {
  %arg143111 = add i64 0, 0                                                          ; quoted ()
  %cloptr145706 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145708 = getelementptr inbounds i64, i64* %cloptr145706, i64 1                ; &eptr145708[1]
  store i64 %n9k$_37map, i64* %eptr145708                                            ; *eptr145708 = %n9k$_37map
  %eptr145707 = getelementptr inbounds i64, i64* %cloptr145706, i64 0                ; &cloptr145706[0]
  %f145709 = ptrtoint void(i64,i64,i64,i64)* @lam143195 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145709, i64* %eptr145707                                               ; store fptr
  %arg143110 = ptrtoint i64* %cloptr145706 to i64                                    ; closure cast; i64* -> i64
  %cloptr145710 = inttoptr i64 %cont142302 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145710)                                       ; assert function application
  %i0ptr145711 = getelementptr inbounds i64, i64* %cloptr145710, i64 0               ; &cloptr145710[0]
  %f145713 = load i64, i64* %i0ptr145711, align 8                                    ; load; *i0ptr145711
  %fptr145712 = inttoptr i64 %f145713 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145712(i64 %cont142302, i64 %arg143111, i64 %arg143110); tail call
  ret void
}


define void @lam143195(i64 %env143196, i64 %cont142303, i64 %AJp$f, i64 %EtM$lst) {
  %envptr145714 = inttoptr i64 %env143196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145715 = getelementptr inbounds i64, i64* %envptr145714, i64 1              ; &envptr145714[1]
  %n9k$_37map = load i64, i64* %envptr145715, align 8                                ; load; *envptr145715
  %a142016 = call i64 @prim_null_63(i64 %EtM$lst)                                    ; call prim_null_63
  %cmp145716 = icmp eq i64 %a142016, 15                                              ; false?
  br i1 %cmp145716, label %else145718, label %then145717                             ; if

then145717:
  %arg143115 = add i64 0, 0                                                          ; quoted ()
  %arg143114 = add i64 0, 0                                                          ; quoted ()
  %cloptr145719 = inttoptr i64 %cont142303 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145719)                                       ; assert function application
  %i0ptr145720 = getelementptr inbounds i64, i64* %cloptr145719, i64 0               ; &cloptr145719[0]
  %f145722 = load i64, i64* %i0ptr145720, align 8                                    ; load; *i0ptr145720
  %fptr145721 = inttoptr i64 %f145722 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145721(i64 %cont142303, i64 %arg143115, i64 %arg143114); tail call
  ret void

else145718:
  %a142017 = call i64 @prim_car(i64 %EtM$lst)                                        ; call prim_car
  %cloptr145723 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145725 = getelementptr inbounds i64, i64* %cloptr145723, i64 1                ; &eptr145725[1]
  %eptr145726 = getelementptr inbounds i64, i64* %cloptr145723, i64 2                ; &eptr145726[2]
  %eptr145727 = getelementptr inbounds i64, i64* %cloptr145723, i64 3                ; &eptr145727[3]
  %eptr145728 = getelementptr inbounds i64, i64* %cloptr145723, i64 4                ; &eptr145728[4]
  store i64 %n9k$_37map, i64* %eptr145725                                            ; *eptr145725 = %n9k$_37map
  store i64 %AJp$f, i64* %eptr145726                                                 ; *eptr145726 = %AJp$f
  store i64 %cont142303, i64* %eptr145727                                            ; *eptr145727 = %cont142303
  store i64 %EtM$lst, i64* %eptr145728                                               ; *eptr145728 = %EtM$lst
  %eptr145724 = getelementptr inbounds i64, i64* %cloptr145723, i64 0                ; &cloptr145723[0]
  %f145729 = ptrtoint void(i64,i64,i64)* @lam143193 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145729, i64* %eptr145724                                               ; store fptr
  %arg143119 = ptrtoint i64* %cloptr145723 to i64                                    ; closure cast; i64* -> i64
  %cloptr145730 = inttoptr i64 %AJp$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145730)                                       ; assert function application
  %i0ptr145731 = getelementptr inbounds i64, i64* %cloptr145730, i64 0               ; &cloptr145730[0]
  %f145733 = load i64, i64* %i0ptr145731, align 8                                    ; load; *i0ptr145731
  %fptr145732 = inttoptr i64 %f145733 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145732(i64 %AJp$f, i64 %arg143119, i64 %a142017)    ; tail call
  ret void
}


define void @lam143193(i64 %env143194, i64 %_95142304, i64 %a142018) {
  %envptr145734 = inttoptr i64 %env143194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145735 = getelementptr inbounds i64, i64* %envptr145734, i64 4              ; &envptr145734[4]
  %EtM$lst = load i64, i64* %envptr145735, align 8                                   ; load; *envptr145735
  %envptr145736 = inttoptr i64 %env143194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145737 = getelementptr inbounds i64, i64* %envptr145736, i64 3              ; &envptr145736[3]
  %cont142303 = load i64, i64* %envptr145737, align 8                                ; load; *envptr145737
  %envptr145738 = inttoptr i64 %env143194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145739 = getelementptr inbounds i64, i64* %envptr145738, i64 2              ; &envptr145738[2]
  %AJp$f = load i64, i64* %envptr145739, align 8                                     ; load; *envptr145739
  %envptr145740 = inttoptr i64 %env143194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145741 = getelementptr inbounds i64, i64* %envptr145740, i64 1              ; &envptr145740[1]
  %n9k$_37map = load i64, i64* %envptr145741, align 8                                ; load; *envptr145741
  %a142019 = call i64 @prim_cdr(i64 %EtM$lst)                                        ; call prim_cdr
  %cloptr145742 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145744 = getelementptr inbounds i64, i64* %cloptr145742, i64 1                ; &eptr145744[1]
  %eptr145745 = getelementptr inbounds i64, i64* %cloptr145742, i64 2                ; &eptr145745[2]
  store i64 %a142018, i64* %eptr145744                                               ; *eptr145744 = %a142018
  store i64 %cont142303, i64* %eptr145745                                            ; *eptr145745 = %cont142303
  %eptr145743 = getelementptr inbounds i64, i64* %cloptr145742, i64 0                ; &cloptr145742[0]
  %f145746 = ptrtoint void(i64,i64,i64)* @lam143191 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145746, i64* %eptr145743                                               ; store fptr
  %arg143124 = ptrtoint i64* %cloptr145742 to i64                                    ; closure cast; i64* -> i64
  %cloptr145747 = inttoptr i64 %n9k$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145747)                                       ; assert function application
  %i0ptr145748 = getelementptr inbounds i64, i64* %cloptr145747, i64 0               ; &cloptr145747[0]
  %f145750 = load i64, i64* %i0ptr145748, align 8                                    ; load; *i0ptr145748
  %fptr145749 = inttoptr i64 %f145750 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145749(i64 %n9k$_37map, i64 %arg143124, i64 %AJp$f, i64 %a142019); tail call
  ret void
}


define void @lam143191(i64 %env143192, i64 %_95142305, i64 %a142020) {
  %envptr145751 = inttoptr i64 %env143192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145752 = getelementptr inbounds i64, i64* %envptr145751, i64 2              ; &envptr145751[2]
  %cont142303 = load i64, i64* %envptr145752, align 8                                ; load; *envptr145752
  %envptr145753 = inttoptr i64 %env143192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145754 = getelementptr inbounds i64, i64* %envptr145753, i64 1              ; &envptr145753[1]
  %a142018 = load i64, i64* %envptr145754, align 8                                   ; load; *envptr145754
  %retprim142306 = call i64 @prim_cons(i64 %a142018, i64 %a142020)                   ; call prim_cons
  %arg143129 = add i64 0, 0                                                          ; quoted ()
  %cloptr145755 = inttoptr i64 %cont142303 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145755)                                       ; assert function application
  %i0ptr145756 = getelementptr inbounds i64, i64* %cloptr145755, i64 0               ; &cloptr145755[0]
  %f145758 = load i64, i64* %i0ptr145756, align 8                                    ; load; *i0ptr145756
  %fptr145757 = inttoptr i64 %f145758 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145757(i64 %cont142303, i64 %arg143129, i64 %retprim142306); tail call
  ret void
}


define void @lam143186(i64 %env143187, i64 %cont142307, i64 %RJb$_37foldr1) {
  %arg143132 = add i64 0, 0                                                          ; quoted ()
  %cloptr145759 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145761 = getelementptr inbounds i64, i64* %cloptr145759, i64 1                ; &eptr145761[1]
  store i64 %RJb$_37foldr1, i64* %eptr145761                                         ; *eptr145761 = %RJb$_37foldr1
  %eptr145760 = getelementptr inbounds i64, i64* %cloptr145759, i64 0                ; &cloptr145759[0]
  %f145762 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143183 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145762, i64* %eptr145760                                               ; store fptr
  %arg143131 = ptrtoint i64* %cloptr145759 to i64                                    ; closure cast; i64* -> i64
  %cloptr145763 = inttoptr i64 %cont142307 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145763)                                       ; assert function application
  %i0ptr145764 = getelementptr inbounds i64, i64* %cloptr145763, i64 0               ; &cloptr145763[0]
  %f145766 = load i64, i64* %i0ptr145764, align 8                                    ; load; *i0ptr145764
  %fptr145765 = inttoptr i64 %f145766 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145765(i64 %cont142307, i64 %arg143132, i64 %arg143131); tail call
  ret void
}


define void @lam143183(i64 %env143184, i64 %cont142308, i64 %yT3$f, i64 %BIO$acc, i64 %xXm$lst) {
  %envptr145767 = inttoptr i64 %env143184 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145768 = getelementptr inbounds i64, i64* %envptr145767, i64 1              ; &envptr145767[1]
  %RJb$_37foldr1 = load i64, i64* %envptr145768, align 8                             ; load; *envptr145768
  %a142012 = call i64 @prim_null_63(i64 %xXm$lst)                                    ; call prim_null_63
  %cmp145769 = icmp eq i64 %a142012, 15                                              ; false?
  br i1 %cmp145769, label %else145771, label %then145770                             ; if

then145770:
  %arg143136 = add i64 0, 0                                                          ; quoted ()
  %cloptr145772 = inttoptr i64 %cont142308 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145772)                                       ; assert function application
  %i0ptr145773 = getelementptr inbounds i64, i64* %cloptr145772, i64 0               ; &cloptr145772[0]
  %f145775 = load i64, i64* %i0ptr145773, align 8                                    ; load; *i0ptr145773
  %fptr145774 = inttoptr i64 %f145775 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145774(i64 %cont142308, i64 %arg143136, i64 %BIO$acc); tail call
  ret void

else145771:
  %a142013 = call i64 @prim_car(i64 %xXm$lst)                                        ; call prim_car
  %a142014 = call i64 @prim_cdr(i64 %xXm$lst)                                        ; call prim_cdr
  %cloptr145776 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145778 = getelementptr inbounds i64, i64* %cloptr145776, i64 1                ; &eptr145778[1]
  %eptr145779 = getelementptr inbounds i64, i64* %cloptr145776, i64 2                ; &eptr145779[2]
  %eptr145780 = getelementptr inbounds i64, i64* %cloptr145776, i64 3                ; &eptr145780[3]
  store i64 %cont142308, i64* %eptr145778                                            ; *eptr145778 = %cont142308
  store i64 %a142013, i64* %eptr145779                                               ; *eptr145779 = %a142013
  store i64 %yT3$f, i64* %eptr145780                                                 ; *eptr145780 = %yT3$f
  %eptr145777 = getelementptr inbounds i64, i64* %cloptr145776, i64 0                ; &cloptr145776[0]
  %f145781 = ptrtoint void(i64,i64,i64)* @lam143181 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145781, i64* %eptr145777                                               ; store fptr
  %arg143143 = ptrtoint i64* %cloptr145776 to i64                                    ; closure cast; i64* -> i64
  %cloptr145782 = inttoptr i64 %RJb$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145782)                                       ; assert function application
  %i0ptr145783 = getelementptr inbounds i64, i64* %cloptr145782, i64 0               ; &cloptr145782[0]
  %f145785 = load i64, i64* %i0ptr145783, align 8                                    ; load; *i0ptr145783
  %fptr145784 = inttoptr i64 %f145785 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145784(i64 %RJb$_37foldr1, i64 %arg143143, i64 %yT3$f, i64 %BIO$acc, i64 %a142014); tail call
  ret void
}


define void @lam143181(i64 %env143182, i64 %_95142309, i64 %a142015) {
  %envptr145786 = inttoptr i64 %env143182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145787 = getelementptr inbounds i64, i64* %envptr145786, i64 3              ; &envptr145786[3]
  %yT3$f = load i64, i64* %envptr145787, align 8                                     ; load; *envptr145787
  %envptr145788 = inttoptr i64 %env143182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145789 = getelementptr inbounds i64, i64* %envptr145788, i64 2              ; &envptr145788[2]
  %a142013 = load i64, i64* %envptr145789, align 8                                   ; load; *envptr145789
  %envptr145790 = inttoptr i64 %env143182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145791 = getelementptr inbounds i64, i64* %envptr145790, i64 1              ; &envptr145790[1]
  %cont142308 = load i64, i64* %envptr145791, align 8                                ; load; *envptr145791
  %cloptr145792 = inttoptr i64 %yT3$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145792)                                       ; assert function application
  %i0ptr145793 = getelementptr inbounds i64, i64* %cloptr145792, i64 0               ; &cloptr145792[0]
  %f145795 = load i64, i64* %i0ptr145793, align 8                                    ; load; *i0ptr145793
  %fptr145794 = inttoptr i64 %f145795 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145794(i64 %yT3$f, i64 %cont142308, i64 %a142013, i64 %a142015); tail call
  ret void
}


define void @lam143178(i64 %env143179, i64 %cont142311, i64 %GlC$y) {
  %arg143150 = add i64 0, 0                                                          ; quoted ()
  %cloptr145796 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145798 = getelementptr inbounds i64, i64* %cloptr145796, i64 1                ; &eptr145798[1]
  store i64 %GlC$y, i64* %eptr145798                                                 ; *eptr145798 = %GlC$y
  %eptr145797 = getelementptr inbounds i64, i64* %cloptr145796, i64 0                ; &cloptr145796[0]
  %f145799 = ptrtoint void(i64,i64,i64)* @lam143175 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145799, i64* %eptr145797                                               ; store fptr
  %arg143149 = ptrtoint i64* %cloptr145796 to i64                                    ; closure cast; i64* -> i64
  %cloptr145800 = inttoptr i64 %cont142311 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145800)                                       ; assert function application
  %i0ptr145801 = getelementptr inbounds i64, i64* %cloptr145800, i64 0               ; &cloptr145800[0]
  %f145803 = load i64, i64* %i0ptr145801, align 8                                    ; load; *i0ptr145801
  %fptr145802 = inttoptr i64 %f145803 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145802(i64 %cont142311, i64 %arg143150, i64 %arg143149); tail call
  ret void
}


define void @lam143175(i64 %env143176, i64 %cont142312, i64 %MHO$f) {
  %envptr145804 = inttoptr i64 %env143176 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145805 = getelementptr inbounds i64, i64* %envptr145804, i64 1              ; &envptr145804[1]
  %GlC$y = load i64, i64* %envptr145805, align 8                                     ; load; *envptr145805
  %cloptr145806 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145808 = getelementptr inbounds i64, i64* %cloptr145806, i64 1                ; &eptr145808[1]
  %eptr145809 = getelementptr inbounds i64, i64* %cloptr145806, i64 2                ; &eptr145809[2]
  store i64 %MHO$f, i64* %eptr145808                                                 ; *eptr145808 = %MHO$f
  store i64 %GlC$y, i64* %eptr145809                                                 ; *eptr145809 = %GlC$y
  %eptr145807 = getelementptr inbounds i64, i64* %cloptr145806, i64 0                ; &cloptr145806[0]
  %f145810 = ptrtoint void(i64,i64)* @lam143173 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145810, i64* %eptr145807                                               ; store fptr
  %arg143152 = ptrtoint i64* %cloptr145806 to i64                                    ; closure cast; i64* -> i64
  %cloptr145811 = inttoptr i64 %MHO$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145811)                                       ; assert function application
  %i0ptr145812 = getelementptr inbounds i64, i64* %cloptr145811, i64 0               ; &cloptr145811[0]
  %f145814 = load i64, i64* %i0ptr145812, align 8                                    ; load; *i0ptr145812
  %fptr145813 = inttoptr i64 %f145814 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145813(i64 %MHO$f, i64 %cont142312, i64 %arg143152) ; tail call
  ret void
}


define void @lam143173(i64 %env143174, i64 %S13$args142314) {
  %envptr145815 = inttoptr i64 %env143174 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145816 = getelementptr inbounds i64, i64* %envptr145815, i64 2              ; &envptr145815[2]
  %GlC$y = load i64, i64* %envptr145816, align 8                                     ; load; *envptr145816
  %envptr145817 = inttoptr i64 %env143174 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145818 = getelementptr inbounds i64, i64* %envptr145817, i64 1              ; &envptr145817[1]
  %MHO$f = load i64, i64* %envptr145818, align 8                                     ; load; *envptr145818
  %cont142313 = call i64 @prim_car(i64 %S13$args142314)                              ; call prim_car
  %S13$args = call i64 @prim_cdr(i64 %S13$args142314)                                ; call prim_cdr
  %cloptr145819 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145821 = getelementptr inbounds i64, i64* %cloptr145819, i64 1                ; &eptr145821[1]
  %eptr145822 = getelementptr inbounds i64, i64* %cloptr145819, i64 2                ; &eptr145822[2]
  %eptr145823 = getelementptr inbounds i64, i64* %cloptr145819, i64 3                ; &eptr145823[3]
  store i64 %cont142313, i64* %eptr145821                                            ; *eptr145821 = %cont142313
  store i64 %S13$args, i64* %eptr145822                                              ; *eptr145822 = %S13$args
  store i64 %MHO$f, i64* %eptr145823                                                 ; *eptr145823 = %MHO$f
  %eptr145820 = getelementptr inbounds i64, i64* %cloptr145819, i64 0                ; &cloptr145819[0]
  %f145824 = ptrtoint void(i64,i64,i64)* @lam143171 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145824, i64* %eptr145820                                               ; store fptr
  %arg143158 = ptrtoint i64* %cloptr145819 to i64                                    ; closure cast; i64* -> i64
  %cloptr145825 = inttoptr i64 %GlC$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145825)                                       ; assert function application
  %i0ptr145826 = getelementptr inbounds i64, i64* %cloptr145825, i64 0               ; &cloptr145825[0]
  %f145828 = load i64, i64* %i0ptr145826, align 8                                    ; load; *i0ptr145826
  %fptr145827 = inttoptr i64 %f145828 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145827(i64 %GlC$y, i64 %arg143158, i64 %GlC$y)      ; tail call
  ret void
}


define void @lam143171(i64 %env143172, i64 %_95142315, i64 %a142010) {
  %envptr145829 = inttoptr i64 %env143172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145830 = getelementptr inbounds i64, i64* %envptr145829, i64 3              ; &envptr145829[3]
  %MHO$f = load i64, i64* %envptr145830, align 8                                     ; load; *envptr145830
  %envptr145831 = inttoptr i64 %env143172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145832 = getelementptr inbounds i64, i64* %envptr145831, i64 2              ; &envptr145831[2]
  %S13$args = load i64, i64* %envptr145832, align 8                                  ; load; *envptr145832
  %envptr145833 = inttoptr i64 %env143172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145834 = getelementptr inbounds i64, i64* %envptr145833, i64 1              ; &envptr145833[1]
  %cont142313 = load i64, i64* %envptr145834, align 8                                ; load; *envptr145834
  %cloptr145835 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145837 = getelementptr inbounds i64, i64* %cloptr145835, i64 1                ; &eptr145837[1]
  %eptr145838 = getelementptr inbounds i64, i64* %cloptr145835, i64 2                ; &eptr145838[2]
  store i64 %cont142313, i64* %eptr145837                                            ; *eptr145837 = %cont142313
  store i64 %S13$args, i64* %eptr145838                                              ; *eptr145838 = %S13$args
  %eptr145836 = getelementptr inbounds i64, i64* %cloptr145835, i64 0                ; &cloptr145835[0]
  %f145839 = ptrtoint void(i64,i64,i64)* @lam143169 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145839, i64* %eptr145836                                               ; store fptr
  %arg143161 = ptrtoint i64* %cloptr145835 to i64                                    ; closure cast; i64* -> i64
  %cloptr145840 = inttoptr i64 %a142010 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145840)                                       ; assert function application
  %i0ptr145841 = getelementptr inbounds i64, i64* %cloptr145840, i64 0               ; &cloptr145840[0]
  %f145843 = load i64, i64* %i0ptr145841, align 8                                    ; load; *i0ptr145841
  %fptr145842 = inttoptr i64 %f145843 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145842(i64 %a142010, i64 %arg143161, i64 %MHO$f)    ; tail call
  ret void
}


define void @lam143169(i64 %env143170, i64 %_95142316, i64 %a142011) {
  %envptr145844 = inttoptr i64 %env143170 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145845 = getelementptr inbounds i64, i64* %envptr145844, i64 2              ; &envptr145844[2]
  %S13$args = load i64, i64* %envptr145845, align 8                                  ; load; *envptr145845
  %envptr145846 = inttoptr i64 %env143170 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145847 = getelementptr inbounds i64, i64* %envptr145846, i64 1              ; &envptr145846[1]
  %cont142313 = load i64, i64* %envptr145847, align 8                                ; load; *envptr145847
  %cps_45lst142317 = call i64 @prim_cons(i64 %cont142313, i64 %S13$args)             ; call prim_cons
  %cloptr145848 = inttoptr i64 %a142011 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145848)                                       ; assert function application
  %i0ptr145849 = getelementptr inbounds i64, i64* %cloptr145848, i64 0               ; &cloptr145848[0]
  %f145851 = load i64, i64* %i0ptr145849, align 8                                    ; load; *i0ptr145849
  %fptr145850 = inttoptr i64 %f145851 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145850(i64 %a142011, i64 %cps_45lst142317)          ; tail call
  ret void
}





@sym144435 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
