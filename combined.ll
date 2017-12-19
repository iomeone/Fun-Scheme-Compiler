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
  %cloptr9897 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9898 = getelementptr inbounds i64, i64* %cloptr9897, i64 0                    ; &cloptr9897[0]
  %f9899 = ptrtoint void(i64,i64,i64)* @lam9895 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9899, i64* %eptr9898                                                   ; store fptr
  %arg8599 = ptrtoint i64* %cloptr9897 to i64                                        ; closure cast; i64* -> i64
  %cloptr9900 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9901 = getelementptr inbounds i64, i64* %cloptr9900, i64 0                    ; &cloptr9900[0]
  %f9902 = ptrtoint void(i64,i64,i64)* @lam9893 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9902, i64* %eptr9901                                                   ; store fptr
  %arg8598 = ptrtoint i64* %cloptr9900 to i64                                        ; closure cast; i64* -> i64
  %cloptr9903 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9904 = getelementptr inbounds i64, i64* %cloptr9903, i64 0                    ; &cloptr9903[0]
  %f9905 = ptrtoint void(i64,i64,i64)* @lam9452 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9905, i64* %eptr9904                                                   ; store fptr
  %arg8597 = ptrtoint i64* %cloptr9903 to i64                                        ; closure cast; i64* -> i64
  %cloptr9906 = inttoptr i64 %arg8599 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9906)                                         ; assert function application
  %i0ptr9907 = getelementptr inbounds i64, i64* %cloptr9906, i64 0                   ; &cloptr9906[0]
  %f9909 = load i64, i64* %i0ptr9907, align 8                                        ; load; *i0ptr9907
  %fptr9908 = inttoptr i64 %f9909 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9908(i64 %arg8599, i64 %arg8598, i64 %arg8597)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam9895(i64 %env9896, i64 %cont8589, i64 %uEJ$yu) {
  %cloptr9910 = inttoptr i64 %uEJ$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9910)                                         ; assert function application
  %i0ptr9911 = getelementptr inbounds i64, i64* %cloptr9910, i64 0                   ; &cloptr9910[0]
  %f9913 = load i64, i64* %i0ptr9911, align 8                                        ; load; *i0ptr9911
  %fptr9912 = inttoptr i64 %f9913 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9912(i64 %uEJ$yu, i64 %cont8589, i64 %uEJ$yu)       ; tail call
  ret void
}


define void @lam9893(i64 %env9894, i64 %_958411, i64 %TsT$Ycmb) {
  %cloptr9914 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9916 = getelementptr inbounds i64, i64* %cloptr9914, i64 1                    ; &eptr9916[1]
  store i64 %TsT$Ycmb, i64* %eptr9916                                                ; *eptr9916 = %TsT$Ycmb
  %eptr9915 = getelementptr inbounds i64, i64* %cloptr9914, i64 0                    ; &cloptr9914[0]
  %f9917 = ptrtoint void(i64,i64,i64)* @lam9891 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9917, i64* %eptr9915                                                   ; store fptr
  %arg8604 = ptrtoint i64* %cloptr9914 to i64                                        ; closure cast; i64* -> i64
  %cloptr9918 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9918, i64 0                    ; &cloptr9918[0]
  %f9920 = ptrtoint void(i64,i64,i64)* @lam9460 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9920, i64* %eptr9919                                                   ; store fptr
  %arg8603 = ptrtoint i64* %cloptr9918 to i64                                        ; closure cast; i64* -> i64
  %cloptr9921 = inttoptr i64 %TsT$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9921)                                         ; assert function application
  %i0ptr9922 = getelementptr inbounds i64, i64* %cloptr9921, i64 0                   ; &cloptr9921[0]
  %f9924 = load i64, i64* %i0ptr9922, align 8                                        ; load; *i0ptr9922
  %fptr9923 = inttoptr i64 %f9924 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9923(i64 %TsT$Ycmb, i64 %arg8604, i64 %arg8603)     ; tail call
  ret void
}


define void @lam9891(i64 %env9892, i64 %_958412, i64 %kc9$_37foldr1) {
  %envptr9925 = inttoptr i64 %env9892 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9926 = getelementptr inbounds i64, i64* %envptr9925, i64 1                  ; &envptr9925[1]
  %TsT$Ycmb = load i64, i64* %envptr9926, align 8                                    ; load; *envptr9926
  %cloptr9927 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9929 = getelementptr inbounds i64, i64* %cloptr9927, i64 1                    ; &eptr9929[1]
  %eptr9930 = getelementptr inbounds i64, i64* %cloptr9927, i64 2                    ; &eptr9930[2]
  store i64 %TsT$Ycmb, i64* %eptr9929                                                ; *eptr9929 = %TsT$Ycmb
  store i64 %kc9$_37foldr1, i64* %eptr9930                                           ; *eptr9930 = %kc9$_37foldr1
  %eptr9928 = getelementptr inbounds i64, i64* %cloptr9927, i64 0                    ; &cloptr9927[0]
  %f9931 = ptrtoint void(i64,i64,i64)* @lam9889 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9931, i64* %eptr9928                                                   ; store fptr
  %arg8607 = ptrtoint i64* %cloptr9927 to i64                                        ; closure cast; i64* -> i64
  %cloptr9932 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9933 = getelementptr inbounds i64, i64* %cloptr9932, i64 0                    ; &cloptr9932[0]
  %f9934 = ptrtoint void(i64,i64,i64)* @lam9472 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9934, i64* %eptr9933                                                   ; store fptr
  %arg8606 = ptrtoint i64* %cloptr9932 to i64                                        ; closure cast; i64* -> i64
  %cloptr9935 = inttoptr i64 %TsT$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9935)                                         ; assert function application
  %i0ptr9936 = getelementptr inbounds i64, i64* %cloptr9935, i64 0                   ; &cloptr9935[0]
  %f9938 = load i64, i64* %i0ptr9936, align 8                                        ; load; *i0ptr9936
  %fptr9937 = inttoptr i64 %f9938 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9937(i64 %TsT$Ycmb, i64 %arg8607, i64 %arg8606)     ; tail call
  ret void
}


define void @lam9889(i64 %env9890, i64 %_958413, i64 %AhL$_37map1) {
  %envptr9939 = inttoptr i64 %env9890 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9940 = getelementptr inbounds i64, i64* %envptr9939, i64 2                  ; &envptr9939[2]
  %kc9$_37foldr1 = load i64, i64* %envptr9940, align 8                               ; load; *envptr9940
  %envptr9941 = inttoptr i64 %env9890 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9942 = getelementptr inbounds i64, i64* %envptr9941, i64 1                  ; &envptr9941[1]
  %TsT$Ycmb = load i64, i64* %envptr9942, align 8                                    ; load; *envptr9942
  %cloptr9943 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9945 = getelementptr inbounds i64, i64* %cloptr9943, i64 1                    ; &eptr9945[1]
  %eptr9946 = getelementptr inbounds i64, i64* %cloptr9943, i64 2                    ; &eptr9946[2]
  %eptr9947 = getelementptr inbounds i64, i64* %cloptr9943, i64 3                    ; &eptr9947[3]
  store i64 %AhL$_37map1, i64* %eptr9945                                             ; *eptr9945 = %AhL$_37map1
  store i64 %TsT$Ycmb, i64* %eptr9946                                                ; *eptr9946 = %TsT$Ycmb
  store i64 %kc9$_37foldr1, i64* %eptr9947                                           ; *eptr9947 = %kc9$_37foldr1
  %eptr9944 = getelementptr inbounds i64, i64* %cloptr9943, i64 0                    ; &cloptr9943[0]
  %f9948 = ptrtoint void(i64,i64,i64)* @lam9887 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9948, i64* %eptr9944                                                   ; store fptr
  %arg8610 = ptrtoint i64* %cloptr9943 to i64                                        ; closure cast; i64* -> i64
  %cloptr9949 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9950 = getelementptr inbounds i64, i64* %cloptr9949, i64 0                    ; &cloptr9949[0]
  %f9951 = ptrtoint void(i64,i64,i64)* @lam9486 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9951, i64* %eptr9950                                                   ; store fptr
  %arg8609 = ptrtoint i64* %cloptr9949 to i64                                        ; closure cast; i64* -> i64
  %cloptr9952 = inttoptr i64 %TsT$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9952)                                         ; assert function application
  %i0ptr9953 = getelementptr inbounds i64, i64* %cloptr9952, i64 0                   ; &cloptr9952[0]
  %f9955 = load i64, i64* %i0ptr9953, align 8                                        ; load; *i0ptr9953
  %fptr9954 = inttoptr i64 %f9955 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9954(i64 %TsT$Ycmb, i64 %arg8610, i64 %arg8609)     ; tail call
  ret void
}


define void @lam9887(i64 %env9888, i64 %_958414, i64 %aX6$_37take) {
  %envptr9956 = inttoptr i64 %env9888 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9957 = getelementptr inbounds i64, i64* %envptr9956, i64 3                  ; &envptr9956[3]
  %kc9$_37foldr1 = load i64, i64* %envptr9957, align 8                               ; load; *envptr9957
  %envptr9958 = inttoptr i64 %env9888 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9959 = getelementptr inbounds i64, i64* %envptr9958, i64 2                  ; &envptr9958[2]
  %TsT$Ycmb = load i64, i64* %envptr9959, align 8                                    ; load; *envptr9959
  %envptr9960 = inttoptr i64 %env9888 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9961 = getelementptr inbounds i64, i64* %envptr9960, i64 1                  ; &envptr9960[1]
  %AhL$_37map1 = load i64, i64* %envptr9961, align 8                                 ; load; *envptr9961
  %cloptr9962 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9964 = getelementptr inbounds i64, i64* %cloptr9962, i64 1                    ; &eptr9964[1]
  %eptr9965 = getelementptr inbounds i64, i64* %cloptr9962, i64 2                    ; &eptr9965[2]
  %eptr9966 = getelementptr inbounds i64, i64* %cloptr9962, i64 3                    ; &eptr9966[3]
  %eptr9967 = getelementptr inbounds i64, i64* %cloptr9962, i64 4                    ; &eptr9967[4]
  store i64 %AhL$_37map1, i64* %eptr9964                                             ; *eptr9964 = %AhL$_37map1
  store i64 %aX6$_37take, i64* %eptr9965                                             ; *eptr9965 = %aX6$_37take
  store i64 %TsT$Ycmb, i64* %eptr9966                                                ; *eptr9966 = %TsT$Ycmb
  store i64 %kc9$_37foldr1, i64* %eptr9967                                           ; *eptr9967 = %kc9$_37foldr1
  %eptr9963 = getelementptr inbounds i64, i64* %cloptr9962, i64 0                    ; &cloptr9962[0]
  %f9968 = ptrtoint void(i64,i64,i64)* @lam9885 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9968, i64* %eptr9963                                                   ; store fptr
  %arg8613 = ptrtoint i64* %cloptr9962 to i64                                        ; closure cast; i64* -> i64
  %cloptr9969 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9970 = getelementptr inbounds i64, i64* %cloptr9969, i64 0                    ; &cloptr9969[0]
  %f9971 = ptrtoint void(i64,i64,i64)* @lam9497 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9971, i64* %eptr9970                                                   ; store fptr
  %arg8612 = ptrtoint i64* %cloptr9969 to i64                                        ; closure cast; i64* -> i64
  %cloptr9972 = inttoptr i64 %TsT$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9972)                                         ; assert function application
  %i0ptr9973 = getelementptr inbounds i64, i64* %cloptr9972, i64 0                   ; &cloptr9972[0]
  %f9975 = load i64, i64* %i0ptr9973, align 8                                        ; load; *i0ptr9973
  %fptr9974 = inttoptr i64 %f9975 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9974(i64 %TsT$Ycmb, i64 %arg8613, i64 %arg8612)     ; tail call
  ret void
}


define void @lam9885(i64 %env9886, i64 %_958415, i64 %omT$_37length) {
  %envptr9976 = inttoptr i64 %env9886 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9977 = getelementptr inbounds i64, i64* %envptr9976, i64 4                  ; &envptr9976[4]
  %kc9$_37foldr1 = load i64, i64* %envptr9977, align 8                               ; load; *envptr9977
  %envptr9978 = inttoptr i64 %env9886 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9979 = getelementptr inbounds i64, i64* %envptr9978, i64 3                  ; &envptr9978[3]
  %TsT$Ycmb = load i64, i64* %envptr9979, align 8                                    ; load; *envptr9979
  %envptr9980 = inttoptr i64 %env9886 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9981 = getelementptr inbounds i64, i64* %envptr9980, i64 2                  ; &envptr9980[2]
  %aX6$_37take = load i64, i64* %envptr9981, align 8                                 ; load; *envptr9981
  %envptr9982 = inttoptr i64 %env9886 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9983 = getelementptr inbounds i64, i64* %envptr9982, i64 1                  ; &envptr9982[1]
  %AhL$_37map1 = load i64, i64* %envptr9983, align 8                                 ; load; *envptr9983
  %cloptr9984 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr9986 = getelementptr inbounds i64, i64* %cloptr9984, i64 1                    ; &eptr9986[1]
  %eptr9987 = getelementptr inbounds i64, i64* %cloptr9984, i64 2                    ; &eptr9987[2]
  %eptr9988 = getelementptr inbounds i64, i64* %cloptr9984, i64 3                    ; &eptr9988[3]
  %eptr9989 = getelementptr inbounds i64, i64* %cloptr9984, i64 4                    ; &eptr9989[4]
  %eptr9990 = getelementptr inbounds i64, i64* %cloptr9984, i64 5                    ; &eptr9990[5]
  store i64 %AhL$_37map1, i64* %eptr9986                                             ; *eptr9986 = %AhL$_37map1
  store i64 %aX6$_37take, i64* %eptr9987                                             ; *eptr9987 = %aX6$_37take
  store i64 %omT$_37length, i64* %eptr9988                                           ; *eptr9988 = %omT$_37length
  store i64 %TsT$Ycmb, i64* %eptr9989                                                ; *eptr9989 = %TsT$Ycmb
  store i64 %kc9$_37foldr1, i64* %eptr9990                                           ; *eptr9990 = %kc9$_37foldr1
  %eptr9985 = getelementptr inbounds i64, i64* %cloptr9984, i64 0                    ; &cloptr9984[0]
  %f9991 = ptrtoint void(i64,i64,i64)* @lam9883 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9991, i64* %eptr9985                                                   ; store fptr
  %arg8616 = ptrtoint i64* %cloptr9984 to i64                                        ; closure cast; i64* -> i64
  %cloptr9992 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9993 = getelementptr inbounds i64, i64* %cloptr9992, i64 0                    ; &cloptr9992[0]
  %f9994 = ptrtoint void(i64,i64,i64)* @lam9505 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9994, i64* %eptr9993                                                   ; store fptr
  %arg8615 = ptrtoint i64* %cloptr9992 to i64                                        ; closure cast; i64* -> i64
  %cloptr9995 = inttoptr i64 %TsT$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9995)                                         ; assert function application
  %i0ptr9996 = getelementptr inbounds i64, i64* %cloptr9995, i64 0                   ; &cloptr9995[0]
  %f9998 = load i64, i64* %i0ptr9996, align 8                                        ; load; *i0ptr9996
  %fptr9997 = inttoptr i64 %f9998 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9997(i64 %TsT$Ycmb, i64 %arg8616, i64 %arg8615)     ; tail call
  ret void
}


define void @lam9883(i64 %env9884, i64 %_958416, i64 %l3f$_37foldl1) {
  %envptr9999 = inttoptr i64 %env9884 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr10000 = getelementptr inbounds i64, i64* %envptr9999, i64 5                 ; &envptr9999[5]
  %kc9$_37foldr1 = load i64, i64* %envptr10000, align 8                              ; load; *envptr10000
  %envptr10001 = inttoptr i64 %env9884 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 4                ; &envptr10001[4]
  %TsT$Ycmb = load i64, i64* %envptr10002, align 8                                   ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env9884 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 3                ; &envptr10003[3]
  %omT$_37length = load i64, i64* %envptr10004, align 8                              ; load; *envptr10004
  %envptr10005 = inttoptr i64 %env9884 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10006 = getelementptr inbounds i64, i64* %envptr10005, i64 2                ; &envptr10005[2]
  %aX6$_37take = load i64, i64* %envptr10006, align 8                                ; load; *envptr10006
  %envptr10007 = inttoptr i64 %env9884 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10008 = getelementptr inbounds i64, i64* %envptr10007, i64 1                ; &envptr10007[1]
  %AhL$_37map1 = load i64, i64* %envptr10008, align 8                                ; load; *envptr10008
  %cloptr10009 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10009, i64 1                  ; &eptr10011[1]
  store i64 %l3f$_37foldl1, i64* %eptr10011                                          ; *eptr10011 = %l3f$_37foldl1
  %eptr10010 = getelementptr inbounds i64, i64* %cloptr10009, i64 0                  ; &cloptr10009[0]
  %f10012 = ptrtoint void(i64,i64,i64)* @lam9881 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10012, i64* %eptr10010                                                 ; store fptr
  %FAh$_37last = ptrtoint i64* %cloptr10009 to i64                                   ; closure cast; i64* -> i64
  %cloptr10013 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10015 = getelementptr inbounds i64, i64* %cloptr10013, i64 1                  ; &eptr10015[1]
  %eptr10016 = getelementptr inbounds i64, i64* %cloptr10013, i64 2                  ; &eptr10016[2]
  store i64 %aX6$_37take, i64* %eptr10015                                            ; *eptr10015 = %aX6$_37take
  store i64 %omT$_37length, i64* %eptr10016                                          ; *eptr10016 = %omT$_37length
  %eptr10014 = getelementptr inbounds i64, i64* %cloptr10013, i64 0                  ; &cloptr10013[0]
  %f10017 = ptrtoint void(i64,i64,i64,i64)* @lam9875 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10017, i64* %eptr10014                                                 ; store fptr
  %aWH$_37drop_45right = ptrtoint i64* %cloptr10013 to i64                           ; closure cast; i64* -> i64
  %cloptr10018 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10020 = getelementptr inbounds i64, i64* %cloptr10018, i64 1                  ; &eptr10020[1]
  %eptr10021 = getelementptr inbounds i64, i64* %cloptr10018, i64 2                  ; &eptr10021[2]
  %eptr10022 = getelementptr inbounds i64, i64* %cloptr10018, i64 3                  ; &eptr10022[3]
  %eptr10023 = getelementptr inbounds i64, i64* %cloptr10018, i64 4                  ; &eptr10023[4]
  %eptr10024 = getelementptr inbounds i64, i64* %cloptr10018, i64 5                  ; &eptr10024[5]
  %eptr10025 = getelementptr inbounds i64, i64* %cloptr10018, i64 6                  ; &eptr10025[6]
  store i64 %FAh$_37last, i64* %eptr10020                                            ; *eptr10020 = %FAh$_37last
  store i64 %aWH$_37drop_45right, i64* %eptr10021                                    ; *eptr10021 = %aWH$_37drop_45right
  store i64 %omT$_37length, i64* %eptr10022                                          ; *eptr10022 = %omT$_37length
  store i64 %l3f$_37foldl1, i64* %eptr10023                                          ; *eptr10023 = %l3f$_37foldl1
  store i64 %TsT$Ycmb, i64* %eptr10024                                               ; *eptr10024 = %TsT$Ycmb
  store i64 %kc9$_37foldr1, i64* %eptr10025                                          ; *eptr10025 = %kc9$_37foldr1
  %eptr10019 = getelementptr inbounds i64, i64* %cloptr10018, i64 0                  ; &cloptr10018[0]
  %f10026 = ptrtoint void(i64,i64,i64)* @lam9871 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10026, i64* %eptr10019                                                 ; store fptr
  %arg8636 = ptrtoint i64* %cloptr10018 to i64                                       ; closure cast; i64* -> i64
  %cloptr10027 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10029 = getelementptr inbounds i64, i64* %cloptr10027, i64 1                  ; &eptr10029[1]
  %eptr10030 = getelementptr inbounds i64, i64* %cloptr10027, i64 2                  ; &eptr10030[2]
  store i64 %AhL$_37map1, i64* %eptr10029                                            ; *eptr10029 = %AhL$_37map1
  store i64 %kc9$_37foldr1, i64* %eptr10030                                          ; *eptr10030 = %kc9$_37foldr1
  %eptr10028 = getelementptr inbounds i64, i64* %cloptr10027, i64 0                  ; &cloptr10027[0]
  %f10031 = ptrtoint void(i64,i64,i64)* @lam9542 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10031, i64* %eptr10028                                                 ; store fptr
  %arg8635 = ptrtoint i64* %cloptr10027 to i64                                       ; closure cast; i64* -> i64
  %cloptr10032 = inttoptr i64 %TsT$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10032)                                        ; assert function application
  %i0ptr10033 = getelementptr inbounds i64, i64* %cloptr10032, i64 0                 ; &cloptr10032[0]
  %f10035 = load i64, i64* %i0ptr10033, align 8                                      ; load; *i0ptr10033
  %fptr10034 = inttoptr i64 %f10035 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10034(i64 %TsT$Ycmb, i64 %arg8636, i64 %arg8635)    ; tail call
  ret void
}


define void @lam9881(i64 %env9882, i64 %cont8417, i64 %i6u$lst) {
  %envptr10036 = inttoptr i64 %env9882 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10037 = getelementptr inbounds i64, i64* %envptr10036, i64 1                ; &envptr10036[1]
  %l3f$_37foldl1 = load i64, i64* %envptr10037, align 8                              ; load; *envptr10037
  %cloptr10038 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10039 = getelementptr inbounds i64, i64* %cloptr10038, i64 0                  ; &cloptr10038[0]
  %f10040 = ptrtoint void(i64,i64,i64,i64)* @lam9879 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10040, i64* %eptr10039                                                 ; store fptr
  %arg8620 = ptrtoint i64* %cloptr10038 to i64                                       ; closure cast; i64* -> i64
  %arg8619 = add i64 0, 0                                                            ; quoted ()
  %cloptr10041 = inttoptr i64 %l3f$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10041)                                        ; assert function application
  %i0ptr10042 = getelementptr inbounds i64, i64* %cloptr10041, i64 0                 ; &cloptr10041[0]
  %f10044 = load i64, i64* %i0ptr10042, align 8                                      ; load; *i0ptr10042
  %fptr10043 = inttoptr i64 %f10044 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10043(i64 %l3f$_37foldl1, i64 %cont8417, i64 %arg8620, i64 %arg8619, i64 %i6u$lst); tail call
  ret void
}


define void @lam9879(i64 %env9880, i64 %cont8418, i64 %x52$x, i64 %neH$y) {
  %arg8624 = add i64 0, 0                                                            ; quoted ()
  %cloptr10045 = inttoptr i64 %cont8418 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10045)                                        ; assert function application
  %i0ptr10046 = getelementptr inbounds i64, i64* %cloptr10045, i64 0                 ; &cloptr10045[0]
  %f10048 = load i64, i64* %i0ptr10046, align 8                                      ; load; *i0ptr10046
  %fptr10047 = inttoptr i64 %f10048 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10047(i64 %cont8418, i64 %arg8624, i64 %x52$x)      ; tail call
  ret void
}


define void @lam9875(i64 %env9876, i64 %cont8419, i64 %c4w$lst, i64 %QAE$n) {
  %envptr10049 = inttoptr i64 %env9876 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10050 = getelementptr inbounds i64, i64* %envptr10049, i64 2                ; &envptr10049[2]
  %omT$_37length = load i64, i64* %envptr10050, align 8                              ; load; *envptr10050
  %envptr10051 = inttoptr i64 %env9876 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10052 = getelementptr inbounds i64, i64* %envptr10051, i64 1                ; &envptr10051[1]
  %aX6$_37take = load i64, i64* %envptr10052, align 8                                ; load; *envptr10052
  %cloptr10053 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10055 = getelementptr inbounds i64, i64* %cloptr10053, i64 1                  ; &eptr10055[1]
  %eptr10056 = getelementptr inbounds i64, i64* %cloptr10053, i64 2                  ; &eptr10056[2]
  %eptr10057 = getelementptr inbounds i64, i64* %cloptr10053, i64 3                  ; &eptr10057[3]
  %eptr10058 = getelementptr inbounds i64, i64* %cloptr10053, i64 4                  ; &eptr10058[4]
  store i64 %aX6$_37take, i64* %eptr10055                                            ; *eptr10055 = %aX6$_37take
  store i64 %QAE$n, i64* %eptr10056                                                  ; *eptr10056 = %QAE$n
  store i64 %c4w$lst, i64* %eptr10057                                                ; *eptr10057 = %c4w$lst
  store i64 %cont8419, i64* %eptr10058                                               ; *eptr10058 = %cont8419
  %eptr10054 = getelementptr inbounds i64, i64* %cloptr10053, i64 0                  ; &cloptr10053[0]
  %f10059 = ptrtoint void(i64,i64,i64)* @lam9873 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10059, i64* %eptr10054                                                 ; store fptr
  %arg8627 = ptrtoint i64* %cloptr10053 to i64                                       ; closure cast; i64* -> i64
  %cloptr10060 = inttoptr i64 %omT$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10060)                                        ; assert function application
  %i0ptr10061 = getelementptr inbounds i64, i64* %cloptr10060, i64 0                 ; &cloptr10060[0]
  %f10063 = load i64, i64* %i0ptr10061, align 8                                      ; load; *i0ptr10061
  %fptr10062 = inttoptr i64 %f10063 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10062(i64 %omT$_37length, i64 %arg8627, i64 %c4w$lst); tail call
  ret void
}


define void @lam9873(i64 %env9874, i64 %_958420, i64 %a8315) {
  %envptr10064 = inttoptr i64 %env9874 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10065 = getelementptr inbounds i64, i64* %envptr10064, i64 4                ; &envptr10064[4]
  %cont8419 = load i64, i64* %envptr10065, align 8                                   ; load; *envptr10065
  %envptr10066 = inttoptr i64 %env9874 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10067 = getelementptr inbounds i64, i64* %envptr10066, i64 3                ; &envptr10066[3]
  %c4w$lst = load i64, i64* %envptr10067, align 8                                    ; load; *envptr10067
  %envptr10068 = inttoptr i64 %env9874 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10069 = getelementptr inbounds i64, i64* %envptr10068, i64 2                ; &envptr10068[2]
  %QAE$n = load i64, i64* %envptr10069, align 8                                      ; load; *envptr10069
  %envptr10070 = inttoptr i64 %env9874 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10071 = getelementptr inbounds i64, i64* %envptr10070, i64 1                ; &envptr10070[1]
  %aX6$_37take = load i64, i64* %envptr10071, align 8                                ; load; *envptr10071
  %a8316 = call i64 @prim__45(i64 %a8315, i64 %QAE$n)                                ; call prim__45
  %cloptr10072 = inttoptr i64 %aX6$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10072)                                        ; assert function application
  %i0ptr10073 = getelementptr inbounds i64, i64* %cloptr10072, i64 0                 ; &cloptr10072[0]
  %f10075 = load i64, i64* %i0ptr10073, align 8                                      ; load; *i0ptr10073
  %fptr10074 = inttoptr i64 %f10075 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10074(i64 %aX6$_37take, i64 %cont8419, i64 %c4w$lst, i64 %a8316); tail call
  ret void
}


define void @lam9871(i64 %env9872, i64 %_958421, i64 %Be4$_37foldr) {
  %envptr10076 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10077 = getelementptr inbounds i64, i64* %envptr10076, i64 6                ; &envptr10076[6]
  %kc9$_37foldr1 = load i64, i64* %envptr10077, align 8                              ; load; *envptr10077
  %envptr10078 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10079 = getelementptr inbounds i64, i64* %envptr10078, i64 5                ; &envptr10078[5]
  %TsT$Ycmb = load i64, i64* %envptr10079, align 8                                   ; load; *envptr10079
  %envptr10080 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10081 = getelementptr inbounds i64, i64* %envptr10080, i64 4                ; &envptr10080[4]
  %l3f$_37foldl1 = load i64, i64* %envptr10081, align 8                              ; load; *envptr10081
  %envptr10082 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10083 = getelementptr inbounds i64, i64* %envptr10082, i64 3                ; &envptr10082[3]
  %omT$_37length = load i64, i64* %envptr10083, align 8                              ; load; *envptr10083
  %envptr10084 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10085 = getelementptr inbounds i64, i64* %envptr10084, i64 2                ; &envptr10084[2]
  %aWH$_37drop_45right = load i64, i64* %envptr10085, align 8                        ; load; *envptr10085
  %envptr10086 = inttoptr i64 %env9872 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10087 = getelementptr inbounds i64, i64* %envptr10086, i64 1                ; &envptr10086[1]
  %FAh$_37last = load i64, i64* %envptr10087, align 8                                ; load; *envptr10087
  %cloptr10088 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10090 = getelementptr inbounds i64, i64* %cloptr10088, i64 1                  ; &eptr10090[1]
  store i64 %kc9$_37foldr1, i64* %eptr10090                                          ; *eptr10090 = %kc9$_37foldr1
  %eptr10089 = getelementptr inbounds i64, i64* %cloptr10088, i64 0                  ; &cloptr10088[0]
  %f10091 = ptrtoint void(i64,i64,i64,i64)* @lam9869 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10091, i64* %eptr10089                                                 ; store fptr
  %FCK$_37map1 = ptrtoint i64* %cloptr10088 to i64                                   ; closure cast; i64* -> i64
  %cloptr10092 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10094 = getelementptr inbounds i64, i64* %cloptr10092, i64 1                  ; &eptr10094[1]
  %eptr10095 = getelementptr inbounds i64, i64* %cloptr10092, i64 2                  ; &eptr10095[2]
  %eptr10096 = getelementptr inbounds i64, i64* %cloptr10092, i64 3                  ; &eptr10096[3]
  store i64 %Be4$_37foldr, i64* %eptr10094                                           ; *eptr10094 = %Be4$_37foldr
  store i64 %FAh$_37last, i64* %eptr10095                                            ; *eptr10095 = %FAh$_37last
  store i64 %aWH$_37drop_45right, i64* %eptr10096                                    ; *eptr10096 = %aWH$_37drop_45right
  %eptr10093 = getelementptr inbounds i64, i64* %cloptr10092, i64 0                  ; &cloptr10092[0]
  %f10097 = ptrtoint void(i64,i64)* @lam9861 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10097, i64* %eptr10093                                                 ; store fptr
  %tF5$_37map = ptrtoint i64* %cloptr10092 to i64                                    ; closure cast; i64* -> i64
  %cloptr10098 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10098, i64 1                  ; &eptr10100[1]
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10098, i64 2                  ; &eptr10101[2]
  store i64 %omT$_37length, i64* %eptr10100                                          ; *eptr10100 = %omT$_37length
  store i64 %l3f$_37foldl1, i64* %eptr10101                                          ; *eptr10101 = %l3f$_37foldl1
  %eptr10099 = getelementptr inbounds i64, i64* %cloptr10098, i64 0                  ; &cloptr10098[0]
  %f10102 = ptrtoint void(i64,i64,i64)* @lam9848 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10102, i64* %eptr10099                                                 ; store fptr
  %arg8678 = ptrtoint i64* %cloptr10098 to i64                                       ; closure cast; i64* -> i64
  %cloptr10103 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10105 = getelementptr inbounds i64, i64* %cloptr10103, i64 1                  ; &eptr10105[1]
  %eptr10106 = getelementptr inbounds i64, i64* %cloptr10103, i64 2                  ; &eptr10106[2]
  %eptr10107 = getelementptr inbounds i64, i64* %cloptr10103, i64 3                  ; &eptr10107[3]
  store i64 %Be4$_37foldr, i64* %eptr10105                                           ; *eptr10105 = %Be4$_37foldr
  store i64 %kc9$_37foldr1, i64* %eptr10106                                          ; *eptr10106 = %kc9$_37foldr1
  store i64 %FCK$_37map1, i64* %eptr10107                                            ; *eptr10107 = %FCK$_37map1
  %eptr10104 = getelementptr inbounds i64, i64* %cloptr10103, i64 0                  ; &cloptr10103[0]
  %f10108 = ptrtoint void(i64,i64,i64)* @lam9579 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10108, i64* %eptr10104                                                 ; store fptr
  %arg8677 = ptrtoint i64* %cloptr10103 to i64                                       ; closure cast; i64* -> i64
  %cloptr10109 = inttoptr i64 %TsT$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10109)                                        ; assert function application
  %i0ptr10110 = getelementptr inbounds i64, i64* %cloptr10109, i64 0                 ; &cloptr10109[0]
  %f10112 = load i64, i64* %i0ptr10110, align 8                                      ; load; *i0ptr10110
  %fptr10111 = inttoptr i64 %f10112 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10111(i64 %TsT$Ycmb, i64 %arg8678, i64 %arg8677)    ; tail call
  ret void
}


define void @lam9869(i64 %env9870, i64 %cont8422, i64 %zPQ$f, i64 %uOE$lst) {
  %envptr10113 = inttoptr i64 %env9870 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10114 = getelementptr inbounds i64, i64* %envptr10113, i64 1                ; &envptr10113[1]
  %kc9$_37foldr1 = load i64, i64* %envptr10114, align 8                              ; load; *envptr10114
  %cloptr10115 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10117 = getelementptr inbounds i64, i64* %cloptr10115, i64 1                  ; &eptr10117[1]
  store i64 %zPQ$f, i64* %eptr10117                                                  ; *eptr10117 = %zPQ$f
  %eptr10116 = getelementptr inbounds i64, i64* %cloptr10115, i64 0                  ; &cloptr10115[0]
  %f10118 = ptrtoint void(i64,i64,i64,i64)* @lam9867 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10118, i64* %eptr10116                                                 ; store fptr
  %arg8640 = ptrtoint i64* %cloptr10115 to i64                                       ; closure cast; i64* -> i64
  %arg8639 = add i64 0, 0                                                            ; quoted ()
  %cloptr10119 = inttoptr i64 %kc9$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10119)                                        ; assert function application
  %i0ptr10120 = getelementptr inbounds i64, i64* %cloptr10119, i64 0                 ; &cloptr10119[0]
  %f10122 = load i64, i64* %i0ptr10120, align 8                                      ; load; *i0ptr10120
  %fptr10121 = inttoptr i64 %f10122 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10121(i64 %kc9$_37foldr1, i64 %cont8422, i64 %arg8640, i64 %arg8639, i64 %uOE$lst); tail call
  ret void
}


define void @lam9867(i64 %env9868, i64 %cont8423, i64 %buQ$v, i64 %cuW$r) {
  %envptr10123 = inttoptr i64 %env9868 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10124 = getelementptr inbounds i64, i64* %envptr10123, i64 1                ; &envptr10123[1]
  %zPQ$f = load i64, i64* %envptr10124, align 8                                      ; load; *envptr10124
  %cloptr10125 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10127 = getelementptr inbounds i64, i64* %cloptr10125, i64 1                  ; &eptr10127[1]
  %eptr10128 = getelementptr inbounds i64, i64* %cloptr10125, i64 2                  ; &eptr10128[2]
  store i64 %cuW$r, i64* %eptr10127                                                  ; *eptr10127 = %cuW$r
  store i64 %cont8423, i64* %eptr10128                                               ; *eptr10128 = %cont8423
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10125, i64 0                  ; &cloptr10125[0]
  %f10129 = ptrtoint void(i64,i64,i64)* @lam9865 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10129, i64* %eptr10126                                                 ; store fptr
  %arg8644 = ptrtoint i64* %cloptr10125 to i64                                       ; closure cast; i64* -> i64
  %cloptr10130 = inttoptr i64 %zPQ$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10130)                                        ; assert function application
  %i0ptr10131 = getelementptr inbounds i64, i64* %cloptr10130, i64 0                 ; &cloptr10130[0]
  %f10133 = load i64, i64* %i0ptr10131, align 8                                      ; load; *i0ptr10131
  %fptr10132 = inttoptr i64 %f10133 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10132(i64 %zPQ$f, i64 %arg8644, i64 %buQ$v)         ; tail call
  ret void
}


define void @lam9865(i64 %env9866, i64 %_958424, i64 %a8325) {
  %envptr10134 = inttoptr i64 %env9866 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10135 = getelementptr inbounds i64, i64* %envptr10134, i64 2                ; &envptr10134[2]
  %cont8423 = load i64, i64* %envptr10135, align 8                                   ; load; *envptr10135
  %envptr10136 = inttoptr i64 %env9866 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10137 = getelementptr inbounds i64, i64* %envptr10136, i64 1                ; &envptr10136[1]
  %cuW$r = load i64, i64* %envptr10137, align 8                                      ; load; *envptr10137
  %retprim8425 = call i64 @prim_cons(i64 %a8325, i64 %cuW$r)                         ; call prim_cons
  %arg8649 = add i64 0, 0                                                            ; quoted ()
  %cloptr10138 = inttoptr i64 %cont8423 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10138)                                        ; assert function application
  %i0ptr10139 = getelementptr inbounds i64, i64* %cloptr10138, i64 0                 ; &cloptr10138[0]
  %f10141 = load i64, i64* %i0ptr10139, align 8                                      ; load; *i0ptr10139
  %fptr10140 = inttoptr i64 %f10141 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10140(i64 %cont8423, i64 %arg8649, i64 %retprim8425); tail call
  ret void
}


define void @lam9861(i64 %env9862, i64 %mbf$args8427) {
  %envptr10142 = inttoptr i64 %env9862 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10143 = getelementptr inbounds i64, i64* %envptr10142, i64 3                ; &envptr10142[3]
  %aWH$_37drop_45right = load i64, i64* %envptr10143, align 8                        ; load; *envptr10143
  %envptr10144 = inttoptr i64 %env9862 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10145 = getelementptr inbounds i64, i64* %envptr10144, i64 2                ; &envptr10144[2]
  %FAh$_37last = load i64, i64* %envptr10145, align 8                                ; load; *envptr10145
  %envptr10146 = inttoptr i64 %env9862 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10147 = getelementptr inbounds i64, i64* %envptr10146, i64 1                ; &envptr10146[1]
  %Be4$_37foldr = load i64, i64* %envptr10147, align 8                               ; load; *envptr10147
  %cont8426 = call i64 @prim_car(i64 %mbf$args8427)                                  ; call prim_car
  %mbf$args = call i64 @prim_cdr(i64 %mbf$args8427)                                  ; call prim_cdr
  %lwL$f = call i64 @prim_car(i64 %mbf$args)                                         ; call prim_car
  %Q6w$lsts = call i64 @prim_cdr(i64 %mbf$args)                                      ; call prim_cdr
  %arg8656 = add i64 0, 0                                                            ; quoted ()
  %a8329 = call i64 @prim_cons(i64 %arg8656, i64 %Q6w$lsts)                          ; call prim_cons
  %cloptr10148 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10150 = getelementptr inbounds i64, i64* %cloptr10148, i64 1                  ; &eptr10150[1]
  %eptr10151 = getelementptr inbounds i64, i64* %cloptr10148, i64 2                  ; &eptr10151[2]
  %eptr10152 = getelementptr inbounds i64, i64* %cloptr10148, i64 3                  ; &eptr10152[3]
  store i64 %FAh$_37last, i64* %eptr10150                                            ; *eptr10150 = %FAh$_37last
  store i64 %lwL$f, i64* %eptr10151                                                  ; *eptr10151 = %lwL$f
  store i64 %aWH$_37drop_45right, i64* %eptr10152                                    ; *eptr10152 = %aWH$_37drop_45right
  %eptr10149 = getelementptr inbounds i64, i64* %cloptr10148, i64 0                  ; &cloptr10148[0]
  %f10153 = ptrtoint void(i64,i64)* @lam9858 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10153, i64* %eptr10149                                                 ; store fptr
  %arg8658 = ptrtoint i64* %cloptr10148 to i64                                       ; closure cast; i64* -> i64
  %a8330 = call i64 @prim_cons(i64 %arg8658, i64 %a8329)                             ; call prim_cons
  %cps_45lst8435 = call i64 @prim_cons(i64 %cont8426, i64 %a8330)                    ; call prim_cons
  %cloptr10154 = inttoptr i64 %Be4$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10154)                                        ; assert function application
  %i0ptr10155 = getelementptr inbounds i64, i64* %cloptr10154, i64 0                 ; &cloptr10154[0]
  %f10157 = load i64, i64* %i0ptr10155, align 8                                      ; load; *i0ptr10155
  %fptr10156 = inttoptr i64 %f10157 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10156(i64 %Be4$_37foldr, i64 %cps_45lst8435)        ; tail call
  ret void
}


define void @lam9858(i64 %env9859, i64 %HaS$fargs8429) {
  %envptr10158 = inttoptr i64 %env9859 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10159 = getelementptr inbounds i64, i64* %envptr10158, i64 3                ; &envptr10158[3]
  %aWH$_37drop_45right = load i64, i64* %envptr10159, align 8                        ; load; *envptr10159
  %envptr10160 = inttoptr i64 %env9859 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10161 = getelementptr inbounds i64, i64* %envptr10160, i64 2                ; &envptr10160[2]
  %lwL$f = load i64, i64* %envptr10161, align 8                                      ; load; *envptr10161
  %envptr10162 = inttoptr i64 %env9859 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10163 = getelementptr inbounds i64, i64* %envptr10162, i64 1                ; &envptr10162[1]
  %FAh$_37last = load i64, i64* %envptr10163, align 8                                ; load; *envptr10163
  %cont8428 = call i64 @prim_car(i64 %HaS$fargs8429)                                 ; call prim_car
  %HaS$fargs = call i64 @prim_cdr(i64 %HaS$fargs8429)                                ; call prim_cdr
  %cloptr10164 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10166 = getelementptr inbounds i64, i64* %cloptr10164, i64 1                  ; &eptr10166[1]
  %eptr10167 = getelementptr inbounds i64, i64* %cloptr10164, i64 2                  ; &eptr10167[2]
  %eptr10168 = getelementptr inbounds i64, i64* %cloptr10164, i64 3                  ; &eptr10168[3]
  %eptr10169 = getelementptr inbounds i64, i64* %cloptr10164, i64 4                  ; &eptr10169[4]
  store i64 %cont8428, i64* %eptr10166                                               ; *eptr10166 = %cont8428
  store i64 %FAh$_37last, i64* %eptr10167                                            ; *eptr10167 = %FAh$_37last
  store i64 %lwL$f, i64* %eptr10168                                                  ; *eptr10168 = %lwL$f
  store i64 %HaS$fargs, i64* %eptr10169                                              ; *eptr10169 = %HaS$fargs
  %eptr10165 = getelementptr inbounds i64, i64* %cloptr10164, i64 0                  ; &cloptr10164[0]
  %f10170 = ptrtoint void(i64,i64,i64)* @lam9856 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10170, i64* %eptr10165                                                 ; store fptr
  %arg8663 = ptrtoint i64* %cloptr10164 to i64                                       ; closure cast; i64* -> i64
  %arg8661 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr10171 = inttoptr i64 %aWH$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10171)                                        ; assert function application
  %i0ptr10172 = getelementptr inbounds i64, i64* %cloptr10171, i64 0                 ; &cloptr10171[0]
  %f10174 = load i64, i64* %i0ptr10172, align 8                                      ; load; *i0ptr10172
  %fptr10173 = inttoptr i64 %f10174 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10173(i64 %aWH$_37drop_45right, i64 %arg8663, i64 %HaS$fargs, i64 %arg8661); tail call
  ret void
}


define void @lam9856(i64 %env9857, i64 %_958430, i64 %a8326) {
  %envptr10175 = inttoptr i64 %env9857 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10176 = getelementptr inbounds i64, i64* %envptr10175, i64 4                ; &envptr10175[4]
  %HaS$fargs = load i64, i64* %envptr10176, align 8                                  ; load; *envptr10176
  %envptr10177 = inttoptr i64 %env9857 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10178 = getelementptr inbounds i64, i64* %envptr10177, i64 3                ; &envptr10177[3]
  %lwL$f = load i64, i64* %envptr10178, align 8                                      ; load; *envptr10178
  %envptr10179 = inttoptr i64 %env9857 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10180 = getelementptr inbounds i64, i64* %envptr10179, i64 2                ; &envptr10179[2]
  %FAh$_37last = load i64, i64* %envptr10180, align 8                                ; load; *envptr10180
  %envptr10181 = inttoptr i64 %env9857 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10182 = getelementptr inbounds i64, i64* %envptr10181, i64 1                ; &envptr10181[1]
  %cont8428 = load i64, i64* %envptr10182, align 8                                   ; load; *envptr10182
  %cloptr10183 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10185 = getelementptr inbounds i64, i64* %cloptr10183, i64 1                  ; &eptr10185[1]
  %eptr10186 = getelementptr inbounds i64, i64* %cloptr10183, i64 2                  ; &eptr10186[2]
  %eptr10187 = getelementptr inbounds i64, i64* %cloptr10183, i64 3                  ; &eptr10187[3]
  store i64 %cont8428, i64* %eptr10185                                               ; *eptr10185 = %cont8428
  store i64 %FAh$_37last, i64* %eptr10186                                            ; *eptr10186 = %FAh$_37last
  store i64 %HaS$fargs, i64* %eptr10187                                              ; *eptr10187 = %HaS$fargs
  %eptr10184 = getelementptr inbounds i64, i64* %cloptr10183, i64 0                  ; &cloptr10183[0]
  %f10188 = ptrtoint void(i64,i64,i64)* @lam9854 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10188, i64* %eptr10184                                                 ; store fptr
  %arg8666 = ptrtoint i64* %cloptr10183 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst8434 = call i64 @prim_cons(i64 %arg8666, i64 %a8326)                     ; call prim_cons
  %cloptr10189 = inttoptr i64 %lwL$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10189)                                        ; assert function application
  %i0ptr10190 = getelementptr inbounds i64, i64* %cloptr10189, i64 0                 ; &cloptr10189[0]
  %f10192 = load i64, i64* %i0ptr10190, align 8                                      ; load; *i0ptr10190
  %fptr10191 = inttoptr i64 %f10192 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10191(i64 %lwL$f, i64 %cps_45lst8434)               ; tail call
  ret void
}


define void @lam9854(i64 %env9855, i64 %_958431, i64 %a8327) {
  %envptr10193 = inttoptr i64 %env9855 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10194 = getelementptr inbounds i64, i64* %envptr10193, i64 3                ; &envptr10193[3]
  %HaS$fargs = load i64, i64* %envptr10194, align 8                                  ; load; *envptr10194
  %envptr10195 = inttoptr i64 %env9855 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10196 = getelementptr inbounds i64, i64* %envptr10195, i64 2                ; &envptr10195[2]
  %FAh$_37last = load i64, i64* %envptr10196, align 8                                ; load; *envptr10196
  %envptr10197 = inttoptr i64 %env9855 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10198 = getelementptr inbounds i64, i64* %envptr10197, i64 1                ; &envptr10197[1]
  %cont8428 = load i64, i64* %envptr10198, align 8                                   ; load; *envptr10198
  %cloptr10199 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10201 = getelementptr inbounds i64, i64* %cloptr10199, i64 1                  ; &eptr10201[1]
  %eptr10202 = getelementptr inbounds i64, i64* %cloptr10199, i64 2                  ; &eptr10202[2]
  store i64 %cont8428, i64* %eptr10201                                               ; *eptr10201 = %cont8428
  store i64 %a8327, i64* %eptr10202                                                  ; *eptr10202 = %a8327
  %eptr10200 = getelementptr inbounds i64, i64* %cloptr10199, i64 0                  ; &cloptr10199[0]
  %f10203 = ptrtoint void(i64,i64,i64)* @lam9852 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10203, i64* %eptr10200                                                 ; store fptr
  %arg8668 = ptrtoint i64* %cloptr10199 to i64                                       ; closure cast; i64* -> i64
  %cloptr10204 = inttoptr i64 %FAh$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10204)                                        ; assert function application
  %i0ptr10205 = getelementptr inbounds i64, i64* %cloptr10204, i64 0                 ; &cloptr10204[0]
  %f10207 = load i64, i64* %i0ptr10205, align 8                                      ; load; *i0ptr10205
  %fptr10206 = inttoptr i64 %f10207 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10206(i64 %FAh$_37last, i64 %arg8668, i64 %HaS$fargs); tail call
  ret void
}


define void @lam9852(i64 %env9853, i64 %_958432, i64 %a8328) {
  %envptr10208 = inttoptr i64 %env9853 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10209 = getelementptr inbounds i64, i64* %envptr10208, i64 2                ; &envptr10208[2]
  %a8327 = load i64, i64* %envptr10209, align 8                                      ; load; *envptr10209
  %envptr10210 = inttoptr i64 %env9853 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10211 = getelementptr inbounds i64, i64* %envptr10210, i64 1                ; &envptr10210[1]
  %cont8428 = load i64, i64* %envptr10211, align 8                                   ; load; *envptr10211
  %retprim8433 = call i64 @prim_cons(i64 %a8327, i64 %a8328)                         ; call prim_cons
  %arg8673 = add i64 0, 0                                                            ; quoted ()
  %cloptr10212 = inttoptr i64 %cont8428 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10212)                                        ; assert function application
  %i0ptr10213 = getelementptr inbounds i64, i64* %cloptr10212, i64 0                 ; &cloptr10212[0]
  %f10215 = load i64, i64* %i0ptr10213, align 8                                      ; load; *i0ptr10213
  %fptr10214 = inttoptr i64 %f10215 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10214(i64 %cont8428, i64 %arg8673, i64 %retprim8433); tail call
  ret void
}


define void @lam9848(i64 %env9849, i64 %_958436, i64 %BaQ$_37foldl) {
  %envptr10216 = inttoptr i64 %env9849 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10217 = getelementptr inbounds i64, i64* %envptr10216, i64 2                ; &envptr10216[2]
  %l3f$_37foldl1 = load i64, i64* %envptr10217, align 8                              ; load; *envptr10217
  %envptr10218 = inttoptr i64 %env9849 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10219 = getelementptr inbounds i64, i64* %envptr10218, i64 1                ; &envptr10218[1]
  %omT$_37length = load i64, i64* %envptr10219, align 8                              ; load; *envptr10219
  %cloptr10220 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10221 = getelementptr inbounds i64, i64* %cloptr10220, i64 0                  ; &cloptr10220[0]
  %f10222 = ptrtoint void(i64,i64,i64,i64)* @lam9846 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10222, i64* %eptr10221                                                 ; store fptr
  %Szf$_37_62 = ptrtoint i64* %cloptr10220 to i64                                    ; closure cast; i64* -> i64
  %cloptr10223 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10223, i64 0                  ; &cloptr10223[0]
  %f10225 = ptrtoint void(i64,i64,i64,i64)* @lam9843 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10225, i64* %eptr10224                                                 ; store fptr
  %m7O$_37_62_61 = ptrtoint i64* %cloptr10223 to i64                                 ; closure cast; i64* -> i64
  %arg8693 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg8692 = add i64 0, 0                                                            ; quoted ()
  %kPI$_37append = call i64 @prim_make_45vector(i64 %arg8693, i64 %arg8692)          ; call prim_make_45vector
  %arg8695 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10226 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10228 = getelementptr inbounds i64, i64* %cloptr10226, i64 1                  ; &eptr10228[1]
  store i64 %kPI$_37append, i64* %eptr10228                                          ; *eptr10228 = %kPI$_37append
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10226, i64 0                  ; &cloptr10226[0]
  %f10229 = ptrtoint void(i64,i64,i64,i64)* @lam9837 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10229, i64* %eptr10227                                                 ; store fptr
  %arg8694 = ptrtoint i64* %cloptr10226 to i64                                       ; closure cast; i64* -> i64
  %CK4$_950 = call i64 @prim_vector_45set_33(i64 %kPI$_37append, i64 %arg8695, i64 %arg8694); call prim_vector_45set_33
  %arg8714 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8525 = call i64 @prim_vector_45ref(i64 %kPI$_37append, i64 %arg8714)       ; call prim_vector_45ref
  %cloptr10230 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10232 = getelementptr inbounds i64, i64* %cloptr10230, i64 1                  ; &eptr10232[1]
  %eptr10233 = getelementptr inbounds i64, i64* %cloptr10230, i64 2                  ; &eptr10233[2]
  %eptr10234 = getelementptr inbounds i64, i64* %cloptr10230, i64 3                  ; &eptr10234[3]
  store i64 %omT$_37length, i64* %eptr10232                                          ; *eptr10232 = %omT$_37length
  store i64 %l3f$_37foldl1, i64* %eptr10233                                          ; *eptr10233 = %l3f$_37foldl1
  store i64 %Szf$_37_62, i64* %eptr10234                                             ; *eptr10234 = %Szf$_37_62
  %eptr10231 = getelementptr inbounds i64, i64* %cloptr10230, i64 0                  ; &cloptr10230[0]
  %f10235 = ptrtoint void(i64,i64,i64)* @lam9829 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10235, i64* %eptr10231                                                 ; store fptr
  %arg8718 = ptrtoint i64* %cloptr10230 to i64                                       ; closure cast; i64* -> i64
  %arg8717 = add i64 0, 0                                                            ; quoted ()
  %cloptr10236 = inttoptr i64 %arg8718 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10236)                                        ; assert function application
  %i0ptr10237 = getelementptr inbounds i64, i64* %cloptr10236, i64 0                 ; &cloptr10236[0]
  %f10239 = load i64, i64* %i0ptr10237, align 8                                      ; load; *i0ptr10237
  %fptr10238 = inttoptr i64 %f10239 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10238(i64 %arg8718, i64 %arg8717, i64 %retprim8525) ; tail call
  ret void
}


define void @lam9846(i64 %env9847, i64 %cont8437, i64 %UCC$a, i64 %moZ$b) {
  %a8338 = call i64 @prim__60_61(i64 %UCC$a, i64 %moZ$b)                             ; call prim__60_61
  %retprim8438 = call i64 @prim_not(i64 %a8338)                                      ; call prim_not
  %arg8684 = add i64 0, 0                                                            ; quoted ()
  %cloptr10240 = inttoptr i64 %cont8437 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10240)                                        ; assert function application
  %i0ptr10241 = getelementptr inbounds i64, i64* %cloptr10240, i64 0                 ; &cloptr10240[0]
  %f10243 = load i64, i64* %i0ptr10241, align 8                                      ; load; *i0ptr10241
  %fptr10242 = inttoptr i64 %f10243 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10242(i64 %cont8437, i64 %arg8684, i64 %retprim8438); tail call
  ret void
}


define void @lam9843(i64 %env9844, i64 %cont8439, i64 %Sf1$a, i64 %PkV$b) {
  %a8339 = call i64 @prim__60(i64 %Sf1$a, i64 %PkV$b)                                ; call prim__60
  %retprim8440 = call i64 @prim_not(i64 %a8339)                                      ; call prim_not
  %arg8690 = add i64 0, 0                                                            ; quoted ()
  %cloptr10244 = inttoptr i64 %cont8439 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10244)                                        ; assert function application
  %i0ptr10245 = getelementptr inbounds i64, i64* %cloptr10244, i64 0                 ; &cloptr10244[0]
  %f10247 = load i64, i64* %i0ptr10245, align 8                                      ; load; *i0ptr10245
  %fptr10246 = inttoptr i64 %f10247 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10246(i64 %cont8439, i64 %arg8690, i64 %retprim8440); tail call
  ret void
}


define void @lam9837(i64 %env9838, i64 %cont8522, i64 %OGT$ls0, i64 %sSt$ls1) {
  %envptr10248 = inttoptr i64 %env9838 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10249 = getelementptr inbounds i64, i64* %envptr10248, i64 1                ; &envptr10248[1]
  %kPI$_37append = load i64, i64* %envptr10249, align 8                              ; load; *envptr10249
  %a8340 = call i64 @prim_null_63(i64 %OGT$ls0)                                      ; call prim_null_63
  %cmp10250 = icmp eq i64 %a8340, 15                                                 ; false?
  br i1 %cmp10250, label %else10252, label %then10251                                ; if

then10251:
  %arg8699 = add i64 0, 0                                                            ; quoted ()
  %cloptr10253 = inttoptr i64 %cont8522 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10253)                                        ; assert function application
  %i0ptr10254 = getelementptr inbounds i64, i64* %cloptr10253, i64 0                 ; &cloptr10253[0]
  %f10256 = load i64, i64* %i0ptr10254, align 8                                      ; load; *i0ptr10254
  %fptr10255 = inttoptr i64 %f10256 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10255(i64 %cont8522, i64 %arg8699, i64 %sSt$ls1)    ; tail call
  ret void

else10252:
  %a8341 = call i64 @prim_car(i64 %OGT$ls0)                                          ; call prim_car
  %arg8702 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8342 = call i64 @prim_vector_45ref(i64 %kPI$_37append, i64 %arg8702)             ; call prim_vector_45ref
  %a8343 = call i64 @prim_cdr(i64 %OGT$ls0)                                          ; call prim_cdr
  %cloptr10257 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10259 = getelementptr inbounds i64, i64* %cloptr10257, i64 1                  ; &eptr10259[1]
  %eptr10260 = getelementptr inbounds i64, i64* %cloptr10257, i64 2                  ; &eptr10260[2]
  store i64 %cont8522, i64* %eptr10259                                               ; *eptr10259 = %cont8522
  store i64 %a8341, i64* %eptr10260                                                  ; *eptr10260 = %a8341
  %eptr10258 = getelementptr inbounds i64, i64* %cloptr10257, i64 0                  ; &cloptr10257[0]
  %f10261 = ptrtoint void(i64,i64,i64)* @lam9834 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10261, i64* %eptr10258                                                 ; store fptr
  %arg8707 = ptrtoint i64* %cloptr10257 to i64                                       ; closure cast; i64* -> i64
  %cloptr10262 = inttoptr i64 %a8342 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10262)                                        ; assert function application
  %i0ptr10263 = getelementptr inbounds i64, i64* %cloptr10262, i64 0                 ; &cloptr10262[0]
  %f10265 = load i64, i64* %i0ptr10263, align 8                                      ; load; *i0ptr10263
  %fptr10264 = inttoptr i64 %f10265 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10264(i64 %a8342, i64 %arg8707, i64 %a8343, i64 %sSt$ls1); tail call
  ret void
}


define void @lam9834(i64 %env9835, i64 %_958523, i64 %a8344) {
  %envptr10266 = inttoptr i64 %env9835 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10267 = getelementptr inbounds i64, i64* %envptr10266, i64 2                ; &envptr10266[2]
  %a8341 = load i64, i64* %envptr10267, align 8                                      ; load; *envptr10267
  %envptr10268 = inttoptr i64 %env9835 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10269 = getelementptr inbounds i64, i64* %envptr10268, i64 1                ; &envptr10268[1]
  %cont8522 = load i64, i64* %envptr10269, align 8                                   ; load; *envptr10269
  %retprim8524 = call i64 @prim_cons(i64 %a8341, i64 %a8344)                         ; call prim_cons
  %arg8712 = add i64 0, 0                                                            ; quoted ()
  %cloptr10270 = inttoptr i64 %cont8522 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10270)                                        ; assert function application
  %i0ptr10271 = getelementptr inbounds i64, i64* %cloptr10270, i64 0                 ; &cloptr10270[0]
  %f10273 = load i64, i64* %i0ptr10271, align 8                                      ; load; *i0ptr10271
  %fptr10272 = inttoptr i64 %f10273 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10272(i64 %cont8522, i64 %arg8712, i64 %retprim8524); tail call
  ret void
}


define void @lam9829(i64 %env9830, i64 %_958441, i64 %sSf$_37append) {
  %envptr10274 = inttoptr i64 %env9830 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10275 = getelementptr inbounds i64, i64* %envptr10274, i64 3                ; &envptr10274[3]
  %Szf$_37_62 = load i64, i64* %envptr10275, align 8                                 ; load; *envptr10275
  %envptr10276 = inttoptr i64 %env9830 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10277 = getelementptr inbounds i64, i64* %envptr10276, i64 2                ; &envptr10276[2]
  %l3f$_37foldl1 = load i64, i64* %envptr10277, align 8                              ; load; *envptr10277
  %envptr10278 = inttoptr i64 %env9830 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10279 = getelementptr inbounds i64, i64* %envptr10278, i64 1                ; &envptr10278[1]
  %omT$_37length = load i64, i64* %envptr10279, align 8                              ; load; *envptr10279
  %cloptr10280 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10281 = getelementptr inbounds i64, i64* %cloptr10280, i64 0                  ; &cloptr10280[0]
  %f10282 = ptrtoint void(i64,i64,i64)* @lam9827 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10282, i64* %eptr10281                                                 ; store fptr
  %MYH$_37list_63 = ptrtoint i64* %cloptr10280 to i64                                ; closure cast; i64* -> i64
  %cloptr10283 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10284 = getelementptr inbounds i64, i64* %cloptr10283, i64 0                  ; &cloptr10283[0]
  %f10285 = ptrtoint void(i64,i64,i64,i64)* @lam9787 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10285, i64* %eptr10284                                                 ; store fptr
  %wdt$_37drop = ptrtoint i64* %cloptr10283 to i64                                   ; closure cast; i64* -> i64
  %cloptr10286 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10287 = getelementptr inbounds i64, i64* %cloptr10286, i64 0                  ; &cloptr10286[0]
  %f10288 = ptrtoint void(i64,i64,i64,i64)* @lam9747 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10288, i64* %eptr10287                                                 ; store fptr
  %XPL$_37memv = ptrtoint i64* %cloptr10286 to i64                                   ; closure cast; i64* -> i64
  %cloptr10289 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10291 = getelementptr inbounds i64, i64* %cloptr10289, i64 1                  ; &eptr10291[1]
  store i64 %l3f$_37foldl1, i64* %eptr10291                                          ; *eptr10291 = %l3f$_37foldl1
  %eptr10290 = getelementptr inbounds i64, i64* %cloptr10289, i64 0                  ; &cloptr10289[0]
  %f10292 = ptrtoint void(i64,i64)* @lam9716 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10292, i64* %eptr10290                                                 ; store fptr
  %qjQ$_37_47 = ptrtoint i64* %cloptr10289 to i64                                    ; closure cast; i64* -> i64
  %cloptr10293 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10294 = getelementptr inbounds i64, i64* %cloptr10293, i64 0                  ; &cloptr10293[0]
  %f10295 = ptrtoint void(i64,i64,i64)* @lam9708 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10295, i64* %eptr10294                                                 ; store fptr
  %SpF$_37first = ptrtoint i64* %cloptr10293 to i64                                  ; closure cast; i64* -> i64
  %cloptr10296 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10297 = getelementptr inbounds i64, i64* %cloptr10296, i64 0                  ; &cloptr10296[0]
  %f10298 = ptrtoint void(i64,i64,i64)* @lam9705 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10298, i64* %eptr10297                                                 ; store fptr
  %p7f$_37second = ptrtoint i64* %cloptr10296 to i64                                 ; closure cast; i64* -> i64
  %cloptr10299 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10300 = getelementptr inbounds i64, i64* %cloptr10299, i64 0                  ; &cloptr10299[0]
  %f10301 = ptrtoint void(i64,i64,i64)* @lam9702 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10301, i64* %eptr10300                                                 ; store fptr
  %Jx3$_37third = ptrtoint i64* %cloptr10299 to i64                                  ; closure cast; i64* -> i64
  %cloptr10302 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10303 = getelementptr inbounds i64, i64* %cloptr10302, i64 0                  ; &cloptr10302[0]
  %f10304 = ptrtoint void(i64,i64,i64)* @lam9699 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10304, i64* %eptr10303                                                 ; store fptr
  %E88$_37fourth = ptrtoint i64* %cloptr10302 to i64                                 ; closure cast; i64* -> i64
  %cloptr10305 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10306 = getelementptr inbounds i64, i64* %cloptr10305, i64 0                  ; &cloptr10305[0]
  %f10307 = ptrtoint void(i64,i64,i64)* @lam9696 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10307, i64* %eptr10306                                                 ; store fptr
  %c1O$promise_63 = ptrtoint i64* %cloptr10305 to i64                                ; closure cast; i64* -> i64
  %cloptr10308 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10309 = getelementptr inbounds i64, i64* %cloptr10308, i64 0                  ; &cloptr10308[0]
  %f10310 = ptrtoint void(i64,i64)* @lam9690 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10310, i64* %eptr10309                                                 ; store fptr
  %arg8980 = ptrtoint i64* %cloptr10308 to i64                                       ; closure cast; i64* -> i64
  %cloptr10311 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10313 = getelementptr inbounds i64, i64* %cloptr10311, i64 1                  ; &eptr10313[1]
  %eptr10314 = getelementptr inbounds i64, i64* %cloptr10311, i64 2                  ; &eptr10314[2]
  %eptr10315 = getelementptr inbounds i64, i64* %cloptr10311, i64 3                  ; &eptr10315[3]
  store i64 %omT$_37length, i64* %eptr10313                                          ; *eptr10313 = %omT$_37length
  store i64 %Szf$_37_62, i64* %eptr10314                                             ; *eptr10314 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10315                                            ; *eptr10315 = %wdt$_37drop
  %eptr10312 = getelementptr inbounds i64, i64* %cloptr10311, i64 0                  ; &cloptr10311[0]
  %f10316 = ptrtoint void(i64,i64,i64)* @lam9687 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10316, i64* %eptr10312                                                 ; store fptr
  %arg8979 = ptrtoint i64* %cloptr10311 to i64                                       ; closure cast; i64* -> i64
  %rva9442 = add i64 0, 0                                                            ; quoted ()
  %rva9441 = call i64 @prim_cons(i64 %arg8979, i64 %rva9442)                         ; call prim_cons
  %cloptr10317 = inttoptr i64 %arg8980 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10317)                                        ; assert function application
  %i0ptr10318 = getelementptr inbounds i64, i64* %cloptr10317, i64 0                 ; &cloptr10317[0]
  %f10320 = load i64, i64* %i0ptr10318, align 8                                      ; load; *i0ptr10318
  %fptr10319 = inttoptr i64 %f10320 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10319(i64 %arg8980, i64 %rva9441)                   ; tail call
  ret void
}


define void @lam9827(i64 %env9828, i64 %cont8442, i64 %SQz$a) {
  %arg8720 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %ZT2$a = call i64 @prim_make_45vector(i64 %arg8720, i64 %SQz$a)                    ; call prim_make_45vector
  %cloptr10321 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10322 = getelementptr inbounds i64, i64* %cloptr10321, i64 0                  ; &cloptr10321[0]
  %f10323 = ptrtoint void(i64,i64,i64)* @lam9824 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10323, i64* %eptr10322                                                 ; store fptr
  %arg8723 = ptrtoint i64* %cloptr10321 to i64                                       ; closure cast; i64* -> i64
  %cloptr10324 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10326 = getelementptr inbounds i64, i64* %cloptr10324, i64 1                  ; &eptr10326[1]
  %eptr10327 = getelementptr inbounds i64, i64* %cloptr10324, i64 2                  ; &eptr10327[2]
  store i64 %ZT2$a, i64* %eptr10326                                                  ; *eptr10326 = %ZT2$a
  store i64 %cont8442, i64* %eptr10327                                               ; *eptr10327 = %cont8442
  %eptr10325 = getelementptr inbounds i64, i64* %cloptr10324, i64 0                  ; &cloptr10324[0]
  %f10328 = ptrtoint void(i64,i64,i64)* @lam9821 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10328, i64* %eptr10325                                                 ; store fptr
  %arg8722 = ptrtoint i64* %cloptr10324 to i64                                       ; closure cast; i64* -> i64
  %cloptr10329 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10331 = getelementptr inbounds i64, i64* %cloptr10329, i64 1                  ; &eptr10331[1]
  %eptr10332 = getelementptr inbounds i64, i64* %cloptr10329, i64 2                  ; &eptr10332[2]
  store i64 %ZT2$a, i64* %eptr10331                                                  ; *eptr10331 = %ZT2$a
  store i64 %cont8442, i64* %eptr10332                                               ; *eptr10332 = %cont8442
  %eptr10330 = getelementptr inbounds i64, i64* %cloptr10329, i64 0                  ; &cloptr10329[0]
  %f10333 = ptrtoint void(i64,i64,i64)* @lam9804 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10333, i64* %eptr10330                                                 ; store fptr
  %arg8721 = ptrtoint i64* %cloptr10329 to i64                                       ; closure cast; i64* -> i64
  %cloptr10334 = inttoptr i64 %arg8723 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10334)                                        ; assert function application
  %i0ptr10335 = getelementptr inbounds i64, i64* %cloptr10334, i64 0                 ; &cloptr10334[0]
  %f10337 = load i64, i64* %i0ptr10335, align 8                                      ; load; *i0ptr10335
  %fptr10336 = inttoptr i64 %f10337 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10336(i64 %arg8723, i64 %arg8722, i64 %arg8721)     ; tail call
  ret void
}


define void @lam9824(i64 %env9825, i64 %cont8448, i64 %v7W$k) {
  %arg8725 = add i64 0, 0                                                            ; quoted ()
  %cloptr10338 = inttoptr i64 %cont8448 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10338)                                        ; assert function application
  %i0ptr10339 = getelementptr inbounds i64, i64* %cloptr10338, i64 0                 ; &cloptr10338[0]
  %f10341 = load i64, i64* %i0ptr10339, align 8                                      ; load; *i0ptr10339
  %fptr10340 = inttoptr i64 %f10341 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10340(i64 %cont8448, i64 %arg8725, i64 %v7W$k)      ; tail call
  ret void
}


define void @lam9821(i64 %env9822, i64 %_958443, i64 %bRB$cc) {
  %envptr10342 = inttoptr i64 %env9822 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10343 = getelementptr inbounds i64, i64* %envptr10342, i64 2                ; &envptr10342[2]
  %cont8442 = load i64, i64* %envptr10343, align 8                                   ; load; *envptr10343
  %envptr10344 = inttoptr i64 %env9822 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10345 = getelementptr inbounds i64, i64* %envptr10344, i64 1                ; &envptr10344[1]
  %ZT2$a = load i64, i64* %envptr10345, align 8                                      ; load; *envptr10345
  %arg8727 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8345 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8727)                     ; call prim_vector_45ref
  %a8346 = call i64 @prim_null_63(i64 %a8345)                                        ; call prim_null_63
  %cmp10346 = icmp eq i64 %a8346, 15                                                 ; false?
  br i1 %cmp10346, label %else10348, label %then10347                                ; if

then10347:
  %arg8731 = add i64 0, 0                                                            ; quoted ()
  %arg8730 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr10349 = inttoptr i64 %cont8442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10349)                                        ; assert function application
  %i0ptr10350 = getelementptr inbounds i64, i64* %cloptr10349, i64 0                 ; &cloptr10349[0]
  %f10352 = load i64, i64* %i0ptr10350, align 8                                      ; load; *i0ptr10350
  %fptr10351 = inttoptr i64 %f10352 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10351(i64 %cont8442, i64 %arg8731, i64 %arg8730)    ; tail call
  ret void

else10348:
  %arg8733 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8347 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8733)                     ; call prim_vector_45ref
  %a8348 = call i64 @prim_cons_63(i64 %a8347)                                        ; call prim_cons_63
  %cmp10353 = icmp eq i64 %a8348, 15                                                 ; false?
  br i1 %cmp10353, label %else10355, label %then10354                                ; if

then10354:
  %arg8736 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8349 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8736)                     ; call prim_vector_45ref
  %retprim8447 = call i64 @prim_cdr(i64 %a8349)                                      ; call prim_cdr
  %cloptr10356 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10358 = getelementptr inbounds i64, i64* %cloptr10356, i64 1                  ; &eptr10358[1]
  %eptr10359 = getelementptr inbounds i64, i64* %cloptr10356, i64 2                  ; &eptr10359[2]
  %eptr10360 = getelementptr inbounds i64, i64* %cloptr10356, i64 3                  ; &eptr10360[3]
  store i64 %bRB$cc, i64* %eptr10358                                                 ; *eptr10358 = %bRB$cc
  store i64 %ZT2$a, i64* %eptr10359                                                  ; *eptr10359 = %ZT2$a
  store i64 %cont8442, i64* %eptr10360                                               ; *eptr10360 = %cont8442
  %eptr10357 = getelementptr inbounds i64, i64* %cloptr10356, i64 0                  ; &cloptr10356[0]
  %f10361 = ptrtoint void(i64,i64,i64)* @lam9814 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10361, i64* %eptr10357                                                 ; store fptr
  %arg8741 = ptrtoint i64* %cloptr10356 to i64                                       ; closure cast; i64* -> i64
  %arg8740 = add i64 0, 0                                                            ; quoted ()
  %cloptr10362 = inttoptr i64 %arg8741 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10362)                                        ; assert function application
  %i0ptr10363 = getelementptr inbounds i64, i64* %cloptr10362, i64 0                 ; &cloptr10362[0]
  %f10365 = load i64, i64* %i0ptr10363, align 8                                      ; load; *i0ptr10363
  %fptr10364 = inttoptr i64 %f10365 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10364(i64 %arg8741, i64 %arg8740, i64 %retprim8447) ; tail call
  ret void

else10355:
  %arg8755 = add i64 0, 0                                                            ; quoted ()
  %arg8754 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10366 = inttoptr i64 %cont8442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10366)                                        ; assert function application
  %i0ptr10367 = getelementptr inbounds i64, i64* %cloptr10366, i64 0                 ; &cloptr10366[0]
  %f10369 = load i64, i64* %i0ptr10367, align 8                                      ; load; *i0ptr10367
  %fptr10368 = inttoptr i64 %f10369 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10368(i64 %cont8442, i64 %arg8755, i64 %arg8754)    ; tail call
  ret void
}


define void @lam9814(i64 %env9815, i64 %_958444, i64 %QlR$b) {
  %envptr10370 = inttoptr i64 %env9815 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10371 = getelementptr inbounds i64, i64* %envptr10370, i64 3                ; &envptr10370[3]
  %cont8442 = load i64, i64* %envptr10371, align 8                                   ; load; *envptr10371
  %envptr10372 = inttoptr i64 %env9815 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10373 = getelementptr inbounds i64, i64* %envptr10372, i64 2                ; &envptr10372[2]
  %ZT2$a = load i64, i64* %envptr10373, align 8                                      ; load; *envptr10373
  %envptr10374 = inttoptr i64 %env9815 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10375 = getelementptr inbounds i64, i64* %envptr10374, i64 1                ; &envptr10374[1]
  %bRB$cc = load i64, i64* %envptr10375, align 8                                     ; load; *envptr10375
  %arg8742 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8350 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8742)                     ; call prim_vector_45ref
  %a8351 = call i64 @prim_cdr(i64 %a8350)                                            ; call prim_cdr
  %arg8746 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8446 = call i64 @prim_vector_45set_33(i64 %ZT2$a, i64 %arg8746, i64 %a8351); call prim_vector_45set_33
  %cloptr10376 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10378 = getelementptr inbounds i64, i64* %cloptr10376, i64 1                  ; &eptr10378[1]
  %eptr10379 = getelementptr inbounds i64, i64* %cloptr10376, i64 2                  ; &eptr10379[2]
  store i64 %bRB$cc, i64* %eptr10378                                                 ; *eptr10378 = %bRB$cc
  store i64 %cont8442, i64* %eptr10379                                               ; *eptr10379 = %cont8442
  %eptr10377 = getelementptr inbounds i64, i64* %cloptr10376, i64 0                  ; &cloptr10376[0]
  %f10380 = ptrtoint void(i64,i64,i64)* @lam9810 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10380, i64* %eptr10377                                                 ; store fptr
  %arg8750 = ptrtoint i64* %cloptr10376 to i64                                       ; closure cast; i64* -> i64
  %arg8749 = add i64 0, 0                                                            ; quoted ()
  %cloptr10381 = inttoptr i64 %arg8750 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10381)                                        ; assert function application
  %i0ptr10382 = getelementptr inbounds i64, i64* %cloptr10381, i64 0                 ; &cloptr10381[0]
  %f10384 = load i64, i64* %i0ptr10382, align 8                                      ; load; *i0ptr10382
  %fptr10383 = inttoptr i64 %f10384 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10383(i64 %arg8750, i64 %arg8749, i64 %retprim8446) ; tail call
  ret void
}


define void @lam9810(i64 %env9811, i64 %_958445, i64 %XHG$_950) {
  %envptr10385 = inttoptr i64 %env9811 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10386 = getelementptr inbounds i64, i64* %envptr10385, i64 2                ; &envptr10385[2]
  %cont8442 = load i64, i64* %envptr10386, align 8                                   ; load; *envptr10386
  %envptr10387 = inttoptr i64 %env9811 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10388 = getelementptr inbounds i64, i64* %envptr10387, i64 1                ; &envptr10387[1]
  %bRB$cc = load i64, i64* %envptr10388, align 8                                     ; load; *envptr10388
  %cloptr10389 = inttoptr i64 %bRB$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10389)                                        ; assert function application
  %i0ptr10390 = getelementptr inbounds i64, i64* %cloptr10389, i64 0                 ; &cloptr10389[0]
  %f10392 = load i64, i64* %i0ptr10390, align 8                                      ; load; *i0ptr10390
  %fptr10391 = inttoptr i64 %f10392 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10391(i64 %bRB$cc, i64 %cont8442, i64 %bRB$cc)      ; tail call
  ret void
}


define void @lam9804(i64 %env9805, i64 %_958443, i64 %bRB$cc) {
  %envptr10393 = inttoptr i64 %env9805 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10394 = getelementptr inbounds i64, i64* %envptr10393, i64 2                ; &envptr10393[2]
  %cont8442 = load i64, i64* %envptr10394, align 8                                   ; load; *envptr10394
  %envptr10395 = inttoptr i64 %env9805 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10396 = getelementptr inbounds i64, i64* %envptr10395, i64 1                ; &envptr10395[1]
  %ZT2$a = load i64, i64* %envptr10396, align 8                                      ; load; *envptr10396
  %arg8757 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8345 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8757)                     ; call prim_vector_45ref
  %a8346 = call i64 @prim_null_63(i64 %a8345)                                        ; call prim_null_63
  %cmp10397 = icmp eq i64 %a8346, 15                                                 ; false?
  br i1 %cmp10397, label %else10399, label %then10398                                ; if

then10398:
  %arg8761 = add i64 0, 0                                                            ; quoted ()
  %arg8760 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr10400 = inttoptr i64 %cont8442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10400)                                        ; assert function application
  %i0ptr10401 = getelementptr inbounds i64, i64* %cloptr10400, i64 0                 ; &cloptr10400[0]
  %f10403 = load i64, i64* %i0ptr10401, align 8                                      ; load; *i0ptr10401
  %fptr10402 = inttoptr i64 %f10403 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10402(i64 %cont8442, i64 %arg8761, i64 %arg8760)    ; tail call
  ret void

else10399:
  %arg8763 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8347 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8763)                     ; call prim_vector_45ref
  %a8348 = call i64 @prim_cons_63(i64 %a8347)                                        ; call prim_cons_63
  %cmp10404 = icmp eq i64 %a8348, 15                                                 ; false?
  br i1 %cmp10404, label %else10406, label %then10405                                ; if

then10405:
  %arg8766 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8349 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8766)                     ; call prim_vector_45ref
  %retprim8447 = call i64 @prim_cdr(i64 %a8349)                                      ; call prim_cdr
  %cloptr10407 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10409 = getelementptr inbounds i64, i64* %cloptr10407, i64 1                  ; &eptr10409[1]
  %eptr10410 = getelementptr inbounds i64, i64* %cloptr10407, i64 2                  ; &eptr10410[2]
  %eptr10411 = getelementptr inbounds i64, i64* %cloptr10407, i64 3                  ; &eptr10411[3]
  store i64 %bRB$cc, i64* %eptr10409                                                 ; *eptr10409 = %bRB$cc
  store i64 %ZT2$a, i64* %eptr10410                                                  ; *eptr10410 = %ZT2$a
  store i64 %cont8442, i64* %eptr10411                                               ; *eptr10411 = %cont8442
  %eptr10408 = getelementptr inbounds i64, i64* %cloptr10407, i64 0                  ; &cloptr10407[0]
  %f10412 = ptrtoint void(i64,i64,i64)* @lam9797 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10412, i64* %eptr10408                                                 ; store fptr
  %arg8771 = ptrtoint i64* %cloptr10407 to i64                                       ; closure cast; i64* -> i64
  %arg8770 = add i64 0, 0                                                            ; quoted ()
  %cloptr10413 = inttoptr i64 %arg8771 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10413)                                        ; assert function application
  %i0ptr10414 = getelementptr inbounds i64, i64* %cloptr10413, i64 0                 ; &cloptr10413[0]
  %f10416 = load i64, i64* %i0ptr10414, align 8                                      ; load; *i0ptr10414
  %fptr10415 = inttoptr i64 %f10416 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10415(i64 %arg8771, i64 %arg8770, i64 %retprim8447) ; tail call
  ret void

else10406:
  %arg8785 = add i64 0, 0                                                            ; quoted ()
  %arg8784 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10417 = inttoptr i64 %cont8442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10417)                                        ; assert function application
  %i0ptr10418 = getelementptr inbounds i64, i64* %cloptr10417, i64 0                 ; &cloptr10417[0]
  %f10420 = load i64, i64* %i0ptr10418, align 8                                      ; load; *i0ptr10418
  %fptr10419 = inttoptr i64 %f10420 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10419(i64 %cont8442, i64 %arg8785, i64 %arg8784)    ; tail call
  ret void
}


define void @lam9797(i64 %env9798, i64 %_958444, i64 %QlR$b) {
  %envptr10421 = inttoptr i64 %env9798 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10422 = getelementptr inbounds i64, i64* %envptr10421, i64 3                ; &envptr10421[3]
  %cont8442 = load i64, i64* %envptr10422, align 8                                   ; load; *envptr10422
  %envptr10423 = inttoptr i64 %env9798 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10424 = getelementptr inbounds i64, i64* %envptr10423, i64 2                ; &envptr10423[2]
  %ZT2$a = load i64, i64* %envptr10424, align 8                                      ; load; *envptr10424
  %envptr10425 = inttoptr i64 %env9798 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10426 = getelementptr inbounds i64, i64* %envptr10425, i64 1                ; &envptr10425[1]
  %bRB$cc = load i64, i64* %envptr10426, align 8                                     ; load; *envptr10426
  %arg8772 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8350 = call i64 @prim_vector_45ref(i64 %ZT2$a, i64 %arg8772)                     ; call prim_vector_45ref
  %a8351 = call i64 @prim_cdr(i64 %a8350)                                            ; call prim_cdr
  %arg8776 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8446 = call i64 @prim_vector_45set_33(i64 %ZT2$a, i64 %arg8776, i64 %a8351); call prim_vector_45set_33
  %cloptr10427 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10429 = getelementptr inbounds i64, i64* %cloptr10427, i64 1                  ; &eptr10429[1]
  %eptr10430 = getelementptr inbounds i64, i64* %cloptr10427, i64 2                  ; &eptr10430[2]
  store i64 %bRB$cc, i64* %eptr10429                                                 ; *eptr10429 = %bRB$cc
  store i64 %cont8442, i64* %eptr10430                                               ; *eptr10430 = %cont8442
  %eptr10428 = getelementptr inbounds i64, i64* %cloptr10427, i64 0                  ; &cloptr10427[0]
  %f10431 = ptrtoint void(i64,i64,i64)* @lam9793 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10431, i64* %eptr10428                                                 ; store fptr
  %arg8780 = ptrtoint i64* %cloptr10427 to i64                                       ; closure cast; i64* -> i64
  %arg8779 = add i64 0, 0                                                            ; quoted ()
  %cloptr10432 = inttoptr i64 %arg8780 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10432)                                        ; assert function application
  %i0ptr10433 = getelementptr inbounds i64, i64* %cloptr10432, i64 0                 ; &cloptr10432[0]
  %f10435 = load i64, i64* %i0ptr10433, align 8                                      ; load; *i0ptr10433
  %fptr10434 = inttoptr i64 %f10435 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10434(i64 %arg8780, i64 %arg8779, i64 %retprim8446) ; tail call
  ret void
}


define void @lam9793(i64 %env9794, i64 %_958445, i64 %XHG$_950) {
  %envptr10436 = inttoptr i64 %env9794 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10437 = getelementptr inbounds i64, i64* %envptr10436, i64 2                ; &envptr10436[2]
  %cont8442 = load i64, i64* %envptr10437, align 8                                   ; load; *envptr10437
  %envptr10438 = inttoptr i64 %env9794 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10439 = getelementptr inbounds i64, i64* %envptr10438, i64 1                ; &envptr10438[1]
  %bRB$cc = load i64, i64* %envptr10439, align 8                                     ; load; *envptr10439
  %cloptr10440 = inttoptr i64 %bRB$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10440)                                        ; assert function application
  %i0ptr10441 = getelementptr inbounds i64, i64* %cloptr10440, i64 0                 ; &cloptr10440[0]
  %f10443 = load i64, i64* %i0ptr10441, align 8                                      ; load; *i0ptr10441
  %fptr10442 = inttoptr i64 %f10443 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10442(i64 %bRB$cc, i64 %cont8442, i64 %bRB$cc)      ; tail call
  ret void
}


define void @lam9787(i64 %env9788, i64 %cont8449, i64 %ezE$lst, i64 %sU4$n) {
  %arg8788 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %ZQZ$lst = call i64 @prim_make_45vector(i64 %arg8788, i64 %ezE$lst)                ; call prim_make_45vector
  %arg8790 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %htv$n = call i64 @prim_make_45vector(i64 %arg8790, i64 %sU4$n)                    ; call prim_make_45vector
  %cloptr10444 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10445 = getelementptr inbounds i64, i64* %cloptr10444, i64 0                  ; &cloptr10444[0]
  %f10446 = ptrtoint void(i64,i64,i64)* @lam9783 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10446, i64* %eptr10445                                                 ; store fptr
  %arg8793 = ptrtoint i64* %cloptr10444 to i64                                       ; closure cast; i64* -> i64
  %cloptr10447 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10449 = getelementptr inbounds i64, i64* %cloptr10447, i64 1                  ; &eptr10449[1]
  %eptr10450 = getelementptr inbounds i64, i64* %cloptr10447, i64 2                  ; &eptr10450[2]
  %eptr10451 = getelementptr inbounds i64, i64* %cloptr10447, i64 3                  ; &eptr10451[3]
  store i64 %htv$n, i64* %eptr10449                                                  ; *eptr10449 = %htv$n
  store i64 %ZQZ$lst, i64* %eptr10450                                                ; *eptr10450 = %ZQZ$lst
  store i64 %cont8449, i64* %eptr10451                                               ; *eptr10451 = %cont8449
  %eptr10448 = getelementptr inbounds i64, i64* %cloptr10447, i64 0                  ; &cloptr10447[0]
  %f10452 = ptrtoint void(i64,i64,i64)* @lam9781 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10452, i64* %eptr10448                                                 ; store fptr
  %arg8792 = ptrtoint i64* %cloptr10447 to i64                                       ; closure cast; i64* -> i64
  %cloptr10453 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10455 = getelementptr inbounds i64, i64* %cloptr10453, i64 1                  ; &eptr10455[1]
  %eptr10456 = getelementptr inbounds i64, i64* %cloptr10453, i64 2                  ; &eptr10456[2]
  %eptr10457 = getelementptr inbounds i64, i64* %cloptr10453, i64 3                  ; &eptr10457[3]
  store i64 %htv$n, i64* %eptr10455                                                  ; *eptr10455 = %htv$n
  store i64 %ZQZ$lst, i64* %eptr10456                                                ; *eptr10456 = %ZQZ$lst
  store i64 %cont8449, i64* %eptr10457                                               ; *eptr10457 = %cont8449
  %eptr10454 = getelementptr inbounds i64, i64* %cloptr10453, i64 0                  ; &cloptr10453[0]
  %f10458 = ptrtoint void(i64,i64,i64)* @lam9764 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10458, i64* %eptr10454                                                 ; store fptr
  %arg8791 = ptrtoint i64* %cloptr10453 to i64                                       ; closure cast; i64* -> i64
  %cloptr10459 = inttoptr i64 %arg8793 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10459)                                        ; assert function application
  %i0ptr10460 = getelementptr inbounds i64, i64* %cloptr10459, i64 0                 ; &cloptr10459[0]
  %f10462 = load i64, i64* %i0ptr10460, align 8                                      ; load; *i0ptr10460
  %fptr10461 = inttoptr i64 %f10462 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10461(i64 %arg8793, i64 %arg8792, i64 %arg8791)     ; tail call
  ret void
}


define void @lam9783(i64 %env9784, i64 %cont8456, i64 %MsS$u) {
  %cloptr10463 = inttoptr i64 %MsS$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10463)                                        ; assert function application
  %i0ptr10464 = getelementptr inbounds i64, i64* %cloptr10463, i64 0                 ; &cloptr10463[0]
  %f10466 = load i64, i64* %i0ptr10464, align 8                                      ; load; *i0ptr10464
  %fptr10465 = inttoptr i64 %f10466 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10465(i64 %MsS$u, i64 %cont8456, i64 %MsS$u)        ; tail call
  ret void
}


define void @lam9781(i64 %env9782, i64 %_958450, i64 %fSu$cc) {
  %envptr10467 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10468 = getelementptr inbounds i64, i64* %envptr10467, i64 3                ; &envptr10467[3]
  %cont8449 = load i64, i64* %envptr10468, align 8                                   ; load; *envptr10468
  %envptr10469 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10470 = getelementptr inbounds i64, i64* %envptr10469, i64 2                ; &envptr10469[2]
  %ZQZ$lst = load i64, i64* %envptr10470, align 8                                    ; load; *envptr10470
  %envptr10471 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10472 = getelementptr inbounds i64, i64* %envptr10471, i64 1                ; &envptr10471[1]
  %htv$n = load i64, i64* %envptr10472, align 8                                      ; load; *envptr10472
  %arg8797 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8352 = call i64 @prim_vector_45ref(i64 %htv$n, i64 %arg8797)                     ; call prim_vector_45ref
  %arg8800 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8353 = call i64 @prim__61(i64 %arg8800, i64 %a8352)                              ; call prim__61
  %cmp10473 = icmp eq i64 %a8353, 15                                                 ; false?
  br i1 %cmp10473, label %else10475, label %then10474                                ; if

then10474:
  %arg8801 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8451 = call i64 @prim_vector_45ref(i64 %ZQZ$lst, i64 %arg8801)             ; call prim_vector_45ref
  %arg8804 = add i64 0, 0                                                            ; quoted ()
  %cloptr10476 = inttoptr i64 %cont8449 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10476)                                        ; assert function application
  %i0ptr10477 = getelementptr inbounds i64, i64* %cloptr10476, i64 0                 ; &cloptr10476[0]
  %f10479 = load i64, i64* %i0ptr10477, align 8                                      ; load; *i0ptr10477
  %fptr10478 = inttoptr i64 %f10479 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10478(i64 %cont8449, i64 %arg8804, i64 %retprim8451); tail call
  ret void

else10475:
  %arg8806 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8354 = call i64 @prim_vector_45ref(i64 %ZQZ$lst, i64 %arg8806)                   ; call prim_vector_45ref
  %a8355 = call i64 @prim_cdr(i64 %a8354)                                            ; call prim_cdr
  %arg8810 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8455 = call i64 @prim_vector_45set_33(i64 %ZQZ$lst, i64 %arg8810, i64 %a8355); call prim_vector_45set_33
  %cloptr10480 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10482 = getelementptr inbounds i64, i64* %cloptr10480, i64 1                  ; &eptr10482[1]
  %eptr10483 = getelementptr inbounds i64, i64* %cloptr10480, i64 2                  ; &eptr10483[2]
  %eptr10484 = getelementptr inbounds i64, i64* %cloptr10480, i64 3                  ; &eptr10484[3]
  store i64 %fSu$cc, i64* %eptr10482                                                 ; *eptr10482 = %fSu$cc
  store i64 %htv$n, i64* %eptr10483                                                  ; *eptr10483 = %htv$n
  store i64 %cont8449, i64* %eptr10484                                               ; *eptr10484 = %cont8449
  %eptr10481 = getelementptr inbounds i64, i64* %cloptr10480, i64 0                  ; &cloptr10480[0]
  %f10485 = ptrtoint void(i64,i64,i64)* @lam9775 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10485, i64* %eptr10481                                                 ; store fptr
  %arg8814 = ptrtoint i64* %cloptr10480 to i64                                       ; closure cast; i64* -> i64
  %arg8813 = add i64 0, 0                                                            ; quoted ()
  %cloptr10486 = inttoptr i64 %arg8814 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10486)                                        ; assert function application
  %i0ptr10487 = getelementptr inbounds i64, i64* %cloptr10486, i64 0                 ; &cloptr10486[0]
  %f10489 = load i64, i64* %i0ptr10487, align 8                                      ; load; *i0ptr10487
  %fptr10488 = inttoptr i64 %f10489 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10488(i64 %arg8814, i64 %arg8813, i64 %retprim8455) ; tail call
  ret void
}


define void @lam9775(i64 %env9776, i64 %_958452, i64 %AuX$_950) {
  %envptr10490 = inttoptr i64 %env9776 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10491 = getelementptr inbounds i64, i64* %envptr10490, i64 3                ; &envptr10490[3]
  %cont8449 = load i64, i64* %envptr10491, align 8                                   ; load; *envptr10491
  %envptr10492 = inttoptr i64 %env9776 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10493 = getelementptr inbounds i64, i64* %envptr10492, i64 2                ; &envptr10492[2]
  %htv$n = load i64, i64* %envptr10493, align 8                                      ; load; *envptr10493
  %envptr10494 = inttoptr i64 %env9776 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10495 = getelementptr inbounds i64, i64* %envptr10494, i64 1                ; &envptr10494[1]
  %fSu$cc = load i64, i64* %envptr10495, align 8                                     ; load; *envptr10495
  %arg8815 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8356 = call i64 @prim_vector_45ref(i64 %htv$n, i64 %arg8815)                     ; call prim_vector_45ref
  %arg8817 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a8357 = call i64 @prim__45(i64 %a8356, i64 %arg8817)                              ; call prim__45
  %arg8820 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8454 = call i64 @prim_vector_45set_33(i64 %htv$n, i64 %arg8820, i64 %a8357); call prim_vector_45set_33
  %cloptr10496 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10498 = getelementptr inbounds i64, i64* %cloptr10496, i64 1                  ; &eptr10498[1]
  %eptr10499 = getelementptr inbounds i64, i64* %cloptr10496, i64 2                  ; &eptr10499[2]
  store i64 %fSu$cc, i64* %eptr10498                                                 ; *eptr10498 = %fSu$cc
  store i64 %cont8449, i64* %eptr10499                                               ; *eptr10499 = %cont8449
  %eptr10497 = getelementptr inbounds i64, i64* %cloptr10496, i64 0                  ; &cloptr10496[0]
  %f10500 = ptrtoint void(i64,i64,i64)* @lam9770 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10500, i64* %eptr10497                                                 ; store fptr
  %arg8824 = ptrtoint i64* %cloptr10496 to i64                                       ; closure cast; i64* -> i64
  %arg8823 = add i64 0, 0                                                            ; quoted ()
  %cloptr10501 = inttoptr i64 %arg8824 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10501)                                        ; assert function application
  %i0ptr10502 = getelementptr inbounds i64, i64* %cloptr10501, i64 0                 ; &cloptr10501[0]
  %f10504 = load i64, i64* %i0ptr10502, align 8                                      ; load; *i0ptr10502
  %fptr10503 = inttoptr i64 %f10504 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10503(i64 %arg8824, i64 %arg8823, i64 %retprim8454) ; tail call
  ret void
}


define void @lam9770(i64 %env9771, i64 %_958453, i64 %UJE$_951) {
  %envptr10505 = inttoptr i64 %env9771 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10506 = getelementptr inbounds i64, i64* %envptr10505, i64 2                ; &envptr10505[2]
  %cont8449 = load i64, i64* %envptr10506, align 8                                   ; load; *envptr10506
  %envptr10507 = inttoptr i64 %env9771 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10508 = getelementptr inbounds i64, i64* %envptr10507, i64 1                ; &envptr10507[1]
  %fSu$cc = load i64, i64* %envptr10508, align 8                                     ; load; *envptr10508
  %cloptr10509 = inttoptr i64 %fSu$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10509)                                        ; assert function application
  %i0ptr10510 = getelementptr inbounds i64, i64* %cloptr10509, i64 0                 ; &cloptr10509[0]
  %f10512 = load i64, i64* %i0ptr10510, align 8                                      ; load; *i0ptr10510
  %fptr10511 = inttoptr i64 %f10512 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10511(i64 %fSu$cc, i64 %cont8449, i64 %fSu$cc)      ; tail call
  ret void
}


define void @lam9764(i64 %env9765, i64 %_958450, i64 %fSu$cc) {
  %envptr10513 = inttoptr i64 %env9765 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10514 = getelementptr inbounds i64, i64* %envptr10513, i64 3                ; &envptr10513[3]
  %cont8449 = load i64, i64* %envptr10514, align 8                                   ; load; *envptr10514
  %envptr10515 = inttoptr i64 %env9765 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10516 = getelementptr inbounds i64, i64* %envptr10515, i64 2                ; &envptr10515[2]
  %ZQZ$lst = load i64, i64* %envptr10516, align 8                                    ; load; *envptr10516
  %envptr10517 = inttoptr i64 %env9765 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10518 = getelementptr inbounds i64, i64* %envptr10517, i64 1                ; &envptr10517[1]
  %htv$n = load i64, i64* %envptr10518, align 8                                      ; load; *envptr10518
  %arg8828 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8352 = call i64 @prim_vector_45ref(i64 %htv$n, i64 %arg8828)                     ; call prim_vector_45ref
  %arg8831 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8353 = call i64 @prim__61(i64 %arg8831, i64 %a8352)                              ; call prim__61
  %cmp10519 = icmp eq i64 %a8353, 15                                                 ; false?
  br i1 %cmp10519, label %else10521, label %then10520                                ; if

then10520:
  %arg8832 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8451 = call i64 @prim_vector_45ref(i64 %ZQZ$lst, i64 %arg8832)             ; call prim_vector_45ref
  %arg8835 = add i64 0, 0                                                            ; quoted ()
  %cloptr10522 = inttoptr i64 %cont8449 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10522)                                        ; assert function application
  %i0ptr10523 = getelementptr inbounds i64, i64* %cloptr10522, i64 0                 ; &cloptr10522[0]
  %f10525 = load i64, i64* %i0ptr10523, align 8                                      ; load; *i0ptr10523
  %fptr10524 = inttoptr i64 %f10525 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10524(i64 %cont8449, i64 %arg8835, i64 %retprim8451); tail call
  ret void

else10521:
  %arg8837 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8354 = call i64 @prim_vector_45ref(i64 %ZQZ$lst, i64 %arg8837)                   ; call prim_vector_45ref
  %a8355 = call i64 @prim_cdr(i64 %a8354)                                            ; call prim_cdr
  %arg8841 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8455 = call i64 @prim_vector_45set_33(i64 %ZQZ$lst, i64 %arg8841, i64 %a8355); call prim_vector_45set_33
  %cloptr10526 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10528 = getelementptr inbounds i64, i64* %cloptr10526, i64 1                  ; &eptr10528[1]
  %eptr10529 = getelementptr inbounds i64, i64* %cloptr10526, i64 2                  ; &eptr10529[2]
  %eptr10530 = getelementptr inbounds i64, i64* %cloptr10526, i64 3                  ; &eptr10530[3]
  store i64 %fSu$cc, i64* %eptr10528                                                 ; *eptr10528 = %fSu$cc
  store i64 %htv$n, i64* %eptr10529                                                  ; *eptr10529 = %htv$n
  store i64 %cont8449, i64* %eptr10530                                               ; *eptr10530 = %cont8449
  %eptr10527 = getelementptr inbounds i64, i64* %cloptr10526, i64 0                  ; &cloptr10526[0]
  %f10531 = ptrtoint void(i64,i64,i64)* @lam9758 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10531, i64* %eptr10527                                                 ; store fptr
  %arg8845 = ptrtoint i64* %cloptr10526 to i64                                       ; closure cast; i64* -> i64
  %arg8844 = add i64 0, 0                                                            ; quoted ()
  %cloptr10532 = inttoptr i64 %arg8845 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10532)                                        ; assert function application
  %i0ptr10533 = getelementptr inbounds i64, i64* %cloptr10532, i64 0                 ; &cloptr10532[0]
  %f10535 = load i64, i64* %i0ptr10533, align 8                                      ; load; *i0ptr10533
  %fptr10534 = inttoptr i64 %f10535 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10534(i64 %arg8845, i64 %arg8844, i64 %retprim8455) ; tail call
  ret void
}


define void @lam9758(i64 %env9759, i64 %_958452, i64 %AuX$_950) {
  %envptr10536 = inttoptr i64 %env9759 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10537 = getelementptr inbounds i64, i64* %envptr10536, i64 3                ; &envptr10536[3]
  %cont8449 = load i64, i64* %envptr10537, align 8                                   ; load; *envptr10537
  %envptr10538 = inttoptr i64 %env9759 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10539 = getelementptr inbounds i64, i64* %envptr10538, i64 2                ; &envptr10538[2]
  %htv$n = load i64, i64* %envptr10539, align 8                                      ; load; *envptr10539
  %envptr10540 = inttoptr i64 %env9759 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10541 = getelementptr inbounds i64, i64* %envptr10540, i64 1                ; &envptr10540[1]
  %fSu$cc = load i64, i64* %envptr10541, align 8                                     ; load; *envptr10541
  %arg8846 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8356 = call i64 @prim_vector_45ref(i64 %htv$n, i64 %arg8846)                     ; call prim_vector_45ref
  %arg8848 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a8357 = call i64 @prim__45(i64 %a8356, i64 %arg8848)                              ; call prim__45
  %arg8851 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8454 = call i64 @prim_vector_45set_33(i64 %htv$n, i64 %arg8851, i64 %a8357); call prim_vector_45set_33
  %cloptr10542 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10544 = getelementptr inbounds i64, i64* %cloptr10542, i64 1                  ; &eptr10544[1]
  %eptr10545 = getelementptr inbounds i64, i64* %cloptr10542, i64 2                  ; &eptr10545[2]
  store i64 %fSu$cc, i64* %eptr10544                                                 ; *eptr10544 = %fSu$cc
  store i64 %cont8449, i64* %eptr10545                                               ; *eptr10545 = %cont8449
  %eptr10543 = getelementptr inbounds i64, i64* %cloptr10542, i64 0                  ; &cloptr10542[0]
  %f10546 = ptrtoint void(i64,i64,i64)* @lam9753 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10546, i64* %eptr10543                                                 ; store fptr
  %arg8855 = ptrtoint i64* %cloptr10542 to i64                                       ; closure cast; i64* -> i64
  %arg8854 = add i64 0, 0                                                            ; quoted ()
  %cloptr10547 = inttoptr i64 %arg8855 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10547)                                        ; assert function application
  %i0ptr10548 = getelementptr inbounds i64, i64* %cloptr10547, i64 0                 ; &cloptr10547[0]
  %f10550 = load i64, i64* %i0ptr10548, align 8                                      ; load; *i0ptr10548
  %fptr10549 = inttoptr i64 %f10550 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10549(i64 %arg8855, i64 %arg8854, i64 %retprim8454) ; tail call
  ret void
}


define void @lam9753(i64 %env9754, i64 %_958453, i64 %UJE$_951) {
  %envptr10551 = inttoptr i64 %env9754 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10552 = getelementptr inbounds i64, i64* %envptr10551, i64 2                ; &envptr10551[2]
  %cont8449 = load i64, i64* %envptr10552, align 8                                   ; load; *envptr10552
  %envptr10553 = inttoptr i64 %env9754 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10554 = getelementptr inbounds i64, i64* %envptr10553, i64 1                ; &envptr10553[1]
  %fSu$cc = load i64, i64* %envptr10554, align 8                                     ; load; *envptr10554
  %cloptr10555 = inttoptr i64 %fSu$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10555)                                        ; assert function application
  %i0ptr10556 = getelementptr inbounds i64, i64* %cloptr10555, i64 0                 ; &cloptr10555[0]
  %f10558 = load i64, i64* %i0ptr10556, align 8                                      ; load; *i0ptr10556
  %fptr10557 = inttoptr i64 %f10558 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10557(i64 %fSu$cc, i64 %cont8449, i64 %fSu$cc)      ; tail call
  ret void
}


define void @lam9747(i64 %env9748, i64 %cont8457, i64 %zzX$v, i64 %sPG$lst) {
  %arg8860 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Qm1$lst = call i64 @prim_make_45vector(i64 %arg8860, i64 %sPG$lst)                ; call prim_make_45vector
  %cloptr10559 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10560 = getelementptr inbounds i64, i64* %cloptr10559, i64 0                  ; &cloptr10559[0]
  %f10561 = ptrtoint void(i64,i64,i64)* @lam9744 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10561, i64* %eptr10560                                                 ; store fptr
  %arg8863 = ptrtoint i64* %cloptr10559 to i64                                       ; closure cast; i64* -> i64
  %cloptr10562 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10564 = getelementptr inbounds i64, i64* %cloptr10562, i64 1                  ; &eptr10564[1]
  %eptr10565 = getelementptr inbounds i64, i64* %cloptr10562, i64 2                  ; &eptr10565[2]
  %eptr10566 = getelementptr inbounds i64, i64* %cloptr10562, i64 3                  ; &eptr10566[3]
  store i64 %Qm1$lst, i64* %eptr10564                                                ; *eptr10564 = %Qm1$lst
  store i64 %cont8457, i64* %eptr10565                                               ; *eptr10565 = %cont8457
  store i64 %zzX$v, i64* %eptr10566                                                  ; *eptr10566 = %zzX$v
  %eptr10563 = getelementptr inbounds i64, i64* %cloptr10562, i64 0                  ; &cloptr10562[0]
  %f10567 = ptrtoint void(i64,i64,i64)* @lam9742 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10567, i64* %eptr10563                                                 ; store fptr
  %arg8862 = ptrtoint i64* %cloptr10562 to i64                                       ; closure cast; i64* -> i64
  %cloptr10568 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10570 = getelementptr inbounds i64, i64* %cloptr10568, i64 1                  ; &eptr10570[1]
  %eptr10571 = getelementptr inbounds i64, i64* %cloptr10568, i64 2                  ; &eptr10571[2]
  %eptr10572 = getelementptr inbounds i64, i64* %cloptr10568, i64 3                  ; &eptr10572[3]
  store i64 %Qm1$lst, i64* %eptr10570                                                ; *eptr10570 = %Qm1$lst
  store i64 %cont8457, i64* %eptr10571                                               ; *eptr10571 = %cont8457
  store i64 %zzX$v, i64* %eptr10572                                                  ; *eptr10572 = %zzX$v
  %eptr10569 = getelementptr inbounds i64, i64* %cloptr10568, i64 0                  ; &cloptr10568[0]
  %f10573 = ptrtoint void(i64,i64,i64)* @lam9729 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10573, i64* %eptr10569                                                 ; store fptr
  %arg8861 = ptrtoint i64* %cloptr10568 to i64                                       ; closure cast; i64* -> i64
  %cloptr10574 = inttoptr i64 %arg8863 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10574)                                        ; assert function application
  %i0ptr10575 = getelementptr inbounds i64, i64* %cloptr10574, i64 0                 ; &cloptr10574[0]
  %f10577 = load i64, i64* %i0ptr10575, align 8                                      ; load; *i0ptr10575
  %fptr10576 = inttoptr i64 %f10577 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10576(i64 %arg8863, i64 %arg8862, i64 %arg8861)     ; tail call
  ret void
}


define void @lam9744(i64 %env9745, i64 %cont8462, i64 %YTq$u) {
  %cloptr10578 = inttoptr i64 %YTq$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10578)                                        ; assert function application
  %i0ptr10579 = getelementptr inbounds i64, i64* %cloptr10578, i64 0                 ; &cloptr10578[0]
  %f10581 = load i64, i64* %i0ptr10579, align 8                                      ; load; *i0ptr10579
  %fptr10580 = inttoptr i64 %f10581 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10580(i64 %YTq$u, i64 %cont8462, i64 %YTq$u)        ; tail call
  ret void
}


define void @lam9742(i64 %env9743, i64 %_958458, i64 %kvn$cc) {
  %envptr10582 = inttoptr i64 %env9743 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10583 = getelementptr inbounds i64, i64* %envptr10582, i64 3                ; &envptr10582[3]
  %zzX$v = load i64, i64* %envptr10583, align 8                                      ; load; *envptr10583
  %envptr10584 = inttoptr i64 %env9743 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10585 = getelementptr inbounds i64, i64* %envptr10584, i64 2                ; &envptr10584[2]
  %cont8457 = load i64, i64* %envptr10585, align 8                                   ; load; *envptr10585
  %envptr10586 = inttoptr i64 %env9743 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10587 = getelementptr inbounds i64, i64* %envptr10586, i64 1                ; &envptr10586[1]
  %Qm1$lst = load i64, i64* %envptr10587, align 8                                    ; load; *envptr10587
  %arg8867 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8358 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8867)                   ; call prim_vector_45ref
  %a8359 = call i64 @prim_null_63(i64 %a8358)                                        ; call prim_null_63
  %cmp10588 = icmp eq i64 %a8359, 15                                                 ; false?
  br i1 %cmp10588, label %else10590, label %then10589                                ; if

then10589:
  %arg8871 = add i64 0, 0                                                            ; quoted ()
  %arg8870 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10591 = inttoptr i64 %cont8457 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10591)                                        ; assert function application
  %i0ptr10592 = getelementptr inbounds i64, i64* %cloptr10591, i64 0                 ; &cloptr10591[0]
  %f10594 = load i64, i64* %i0ptr10592, align 8                                      ; load; *i0ptr10592
  %fptr10593 = inttoptr i64 %f10594 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10593(i64 %cont8457, i64 %arg8871, i64 %arg8870)    ; tail call
  ret void

else10590:
  %arg8873 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8360 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8873)                   ; call prim_vector_45ref
  %a8361 = call i64 @prim_car(i64 %a8360)                                            ; call prim_car
  %a8362 = call i64 @prim_eqv_63(i64 %a8361, i64 %zzX$v)                             ; call prim_eqv_63
  %cmp10595 = icmp eq i64 %a8362, 15                                                 ; false?
  br i1 %cmp10595, label %else10597, label %then10596                                ; if

then10596:
  %arg8878 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8459 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8878)             ; call prim_vector_45ref
  %arg8881 = add i64 0, 0                                                            ; quoted ()
  %cloptr10598 = inttoptr i64 %cont8457 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10598)                                        ; assert function application
  %i0ptr10599 = getelementptr inbounds i64, i64* %cloptr10598, i64 0                 ; &cloptr10598[0]
  %f10601 = load i64, i64* %i0ptr10599, align 8                                      ; load; *i0ptr10599
  %fptr10600 = inttoptr i64 %f10601 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10600(i64 %cont8457, i64 %arg8881, i64 %retprim8459); tail call
  ret void

else10597:
  %arg8883 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8363 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8883)                   ; call prim_vector_45ref
  %a8364 = call i64 @prim_cdr(i64 %a8363)                                            ; call prim_cdr
  %arg8887 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8461 = call i64 @prim_vector_45set_33(i64 %Qm1$lst, i64 %arg8887, i64 %a8364); call prim_vector_45set_33
  %cloptr10602 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10604 = getelementptr inbounds i64, i64* %cloptr10602, i64 1                  ; &eptr10604[1]
  %eptr10605 = getelementptr inbounds i64, i64* %cloptr10602, i64 2                  ; &eptr10605[2]
  store i64 %cont8457, i64* %eptr10604                                               ; *eptr10604 = %cont8457
  store i64 %kvn$cc, i64* %eptr10605                                                 ; *eptr10605 = %kvn$cc
  %eptr10603 = getelementptr inbounds i64, i64* %cloptr10602, i64 0                  ; &cloptr10602[0]
  %f10606 = ptrtoint void(i64,i64,i64)* @lam9736 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10606, i64* %eptr10603                                                 ; store fptr
  %arg8891 = ptrtoint i64* %cloptr10602 to i64                                       ; closure cast; i64* -> i64
  %arg8890 = add i64 0, 0                                                            ; quoted ()
  %cloptr10607 = inttoptr i64 %arg8891 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10607)                                        ; assert function application
  %i0ptr10608 = getelementptr inbounds i64, i64* %cloptr10607, i64 0                 ; &cloptr10607[0]
  %f10610 = load i64, i64* %i0ptr10608, align 8                                      ; load; *i0ptr10608
  %fptr10609 = inttoptr i64 %f10610 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10609(i64 %arg8891, i64 %arg8890, i64 %retprim8461) ; tail call
  ret void
}


define void @lam9736(i64 %env9737, i64 %_958460, i64 %mC6$_950) {
  %envptr10611 = inttoptr i64 %env9737 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10612 = getelementptr inbounds i64, i64* %envptr10611, i64 2                ; &envptr10611[2]
  %kvn$cc = load i64, i64* %envptr10612, align 8                                     ; load; *envptr10612
  %envptr10613 = inttoptr i64 %env9737 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10614 = getelementptr inbounds i64, i64* %envptr10613, i64 1                ; &envptr10613[1]
  %cont8457 = load i64, i64* %envptr10614, align 8                                   ; load; *envptr10614
  %cloptr10615 = inttoptr i64 %kvn$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10615)                                        ; assert function application
  %i0ptr10616 = getelementptr inbounds i64, i64* %cloptr10615, i64 0                 ; &cloptr10615[0]
  %f10618 = load i64, i64* %i0ptr10616, align 8                                      ; load; *i0ptr10616
  %fptr10617 = inttoptr i64 %f10618 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10617(i64 %kvn$cc, i64 %cont8457, i64 %kvn$cc)      ; tail call
  ret void
}


define void @lam9729(i64 %env9730, i64 %_958458, i64 %kvn$cc) {
  %envptr10619 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10620 = getelementptr inbounds i64, i64* %envptr10619, i64 3                ; &envptr10619[3]
  %zzX$v = load i64, i64* %envptr10620, align 8                                      ; load; *envptr10620
  %envptr10621 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10622 = getelementptr inbounds i64, i64* %envptr10621, i64 2                ; &envptr10621[2]
  %cont8457 = load i64, i64* %envptr10622, align 8                                   ; load; *envptr10622
  %envptr10623 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10624 = getelementptr inbounds i64, i64* %envptr10623, i64 1                ; &envptr10623[1]
  %Qm1$lst = load i64, i64* %envptr10624, align 8                                    ; load; *envptr10624
  %arg8895 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8358 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8895)                   ; call prim_vector_45ref
  %a8359 = call i64 @prim_null_63(i64 %a8358)                                        ; call prim_null_63
  %cmp10625 = icmp eq i64 %a8359, 15                                                 ; false?
  br i1 %cmp10625, label %else10627, label %then10626                                ; if

then10626:
  %arg8899 = add i64 0, 0                                                            ; quoted ()
  %arg8898 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10628 = inttoptr i64 %cont8457 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10628)                                        ; assert function application
  %i0ptr10629 = getelementptr inbounds i64, i64* %cloptr10628, i64 0                 ; &cloptr10628[0]
  %f10631 = load i64, i64* %i0ptr10629, align 8                                      ; load; *i0ptr10629
  %fptr10630 = inttoptr i64 %f10631 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10630(i64 %cont8457, i64 %arg8899, i64 %arg8898)    ; tail call
  ret void

else10627:
  %arg8901 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8360 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8901)                   ; call prim_vector_45ref
  %a8361 = call i64 @prim_car(i64 %a8360)                                            ; call prim_car
  %a8362 = call i64 @prim_eqv_63(i64 %a8361, i64 %zzX$v)                             ; call prim_eqv_63
  %cmp10632 = icmp eq i64 %a8362, 15                                                 ; false?
  br i1 %cmp10632, label %else10634, label %then10633                                ; if

then10633:
  %arg8906 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8459 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8906)             ; call prim_vector_45ref
  %arg8909 = add i64 0, 0                                                            ; quoted ()
  %cloptr10635 = inttoptr i64 %cont8457 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10635)                                        ; assert function application
  %i0ptr10636 = getelementptr inbounds i64, i64* %cloptr10635, i64 0                 ; &cloptr10635[0]
  %f10638 = load i64, i64* %i0ptr10636, align 8                                      ; load; *i0ptr10636
  %fptr10637 = inttoptr i64 %f10638 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10637(i64 %cont8457, i64 %arg8909, i64 %retprim8459); tail call
  ret void

else10634:
  %arg8911 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8363 = call i64 @prim_vector_45ref(i64 %Qm1$lst, i64 %arg8911)                   ; call prim_vector_45ref
  %a8364 = call i64 @prim_cdr(i64 %a8363)                                            ; call prim_cdr
  %arg8915 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8461 = call i64 @prim_vector_45set_33(i64 %Qm1$lst, i64 %arg8915, i64 %a8364); call prim_vector_45set_33
  %cloptr10639 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10641 = getelementptr inbounds i64, i64* %cloptr10639, i64 1                  ; &eptr10641[1]
  %eptr10642 = getelementptr inbounds i64, i64* %cloptr10639, i64 2                  ; &eptr10642[2]
  store i64 %cont8457, i64* %eptr10641                                               ; *eptr10641 = %cont8457
  store i64 %kvn$cc, i64* %eptr10642                                                 ; *eptr10642 = %kvn$cc
  %eptr10640 = getelementptr inbounds i64, i64* %cloptr10639, i64 0                  ; &cloptr10639[0]
  %f10643 = ptrtoint void(i64,i64,i64)* @lam9723 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10643, i64* %eptr10640                                                 ; store fptr
  %arg8919 = ptrtoint i64* %cloptr10639 to i64                                       ; closure cast; i64* -> i64
  %arg8918 = add i64 0, 0                                                            ; quoted ()
  %cloptr10644 = inttoptr i64 %arg8919 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10644)                                        ; assert function application
  %i0ptr10645 = getelementptr inbounds i64, i64* %cloptr10644, i64 0                 ; &cloptr10644[0]
  %f10647 = load i64, i64* %i0ptr10645, align 8                                      ; load; *i0ptr10645
  %fptr10646 = inttoptr i64 %f10647 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10646(i64 %arg8919, i64 %arg8918, i64 %retprim8461) ; tail call
  ret void
}


define void @lam9723(i64 %env9724, i64 %_958460, i64 %mC6$_950) {
  %envptr10648 = inttoptr i64 %env9724 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10649 = getelementptr inbounds i64, i64* %envptr10648, i64 2                ; &envptr10648[2]
  %kvn$cc = load i64, i64* %envptr10649, align 8                                     ; load; *envptr10649
  %envptr10650 = inttoptr i64 %env9724 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10651 = getelementptr inbounds i64, i64* %envptr10650, i64 1                ; &envptr10650[1]
  %cont8457 = load i64, i64* %envptr10651, align 8                                   ; load; *envptr10651
  %cloptr10652 = inttoptr i64 %kvn$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10652)                                        ; assert function application
  %i0ptr10653 = getelementptr inbounds i64, i64* %cloptr10652, i64 0                 ; &cloptr10652[0]
  %f10655 = load i64, i64* %i0ptr10653, align 8                                      ; load; *i0ptr10653
  %fptr10654 = inttoptr i64 %f10655 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10654(i64 %kvn$cc, i64 %cont8457, i64 %kvn$cc)      ; tail call
  ret void
}


define void @lam9716(i64 %env9717, i64 %up3$args8464) {
  %envptr10656 = inttoptr i64 %env9717 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10657 = getelementptr inbounds i64, i64* %envptr10656, i64 1                ; &envptr10656[1]
  %l3f$_37foldl1 = load i64, i64* %envptr10657, align 8                              ; load; *envptr10657
  %cont8463 = call i64 @prim_car(i64 %up3$args8464)                                  ; call prim_car
  %up3$args = call i64 @prim_cdr(i64 %up3$args8464)                                  ; call prim_cdr
  %a8365 = call i64 @prim_null_63(i64 %up3$args)                                     ; call prim_null_63
  %cmp10658 = icmp eq i64 %a8365, 15                                                 ; false?
  br i1 %cmp10658, label %else10660, label %then10659                                ; if

then10659:
  %arg8927 = add i64 0, 0                                                            ; quoted ()
  %arg8926 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr10661 = inttoptr i64 %cont8463 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10661)                                        ; assert function application
  %i0ptr10662 = getelementptr inbounds i64, i64* %cloptr10661, i64 0                 ; &cloptr10661[0]
  %f10664 = load i64, i64* %i0ptr10662, align 8                                      ; load; *i0ptr10662
  %fptr10663 = inttoptr i64 %f10664 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10663(i64 %cont8463, i64 %arg8927, i64 %arg8926)    ; tail call
  ret void

else10660:
  %a8366 = call i64 @prim_cdr(i64 %up3$args)                                         ; call prim_cdr
  %a8367 = call i64 @prim_null_63(i64 %a8366)                                        ; call prim_null_63
  %cmp10665 = icmp eq i64 %a8367, 15                                                 ; false?
  br i1 %cmp10665, label %else10667, label %then10666                                ; if

then10666:
  %retprim8465 = call i64 @prim_car(i64 %up3$args)                                   ; call prim_car
  %arg8933 = add i64 0, 0                                                            ; quoted ()
  %cloptr10668 = inttoptr i64 %cont8463 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %cont8463, i64 %arg8933, i64 %retprim8465); tail call
  ret void

else10667:
  %a8368 = call i64 @prim_car(i64 %up3$args)                                         ; call prim_car
  %a8369 = call i64 @prim_cdr(i64 %up3$args)                                         ; call prim_cdr
  %cloptr10672 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10673 = getelementptr inbounds i64, i64* %cloptr10672, i64 0                  ; &cloptr10672[0]
  %f10674 = ptrtoint void(i64,i64,i64,i64)* @lam9714 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10674, i64* %eptr10673                                                 ; store fptr
  %arg8939 = ptrtoint i64* %cloptr10672 to i64                                       ; closure cast; i64* -> i64
  %cloptr10675 = inttoptr i64 %l3f$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10675)                                        ; assert function application
  %i0ptr10676 = getelementptr inbounds i64, i64* %cloptr10675, i64 0                 ; &cloptr10675[0]
  %f10678 = load i64, i64* %i0ptr10676, align 8                                      ; load; *i0ptr10676
  %fptr10677 = inttoptr i64 %f10678 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10677(i64 %l3f$_37foldl1, i64 %cont8463, i64 %arg8939, i64 %a8368, i64 %a8369); tail call
  ret void
}


define void @lam9714(i64 %env9715, i64 %cont8466, i64 %Qe6$n, i64 %LFS$v) {
  %retprim8467 = call i64 @prim__47(i64 %LFS$v, i64 %Qe6$n)                          ; call prim__47
  %arg8945 = add i64 0, 0                                                            ; quoted ()
  %cloptr10679 = inttoptr i64 %cont8466 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10679)                                        ; assert function application
  %i0ptr10680 = getelementptr inbounds i64, i64* %cloptr10679, i64 0                 ; &cloptr10679[0]
  %f10682 = load i64, i64* %i0ptr10680, align 8                                      ; load; *i0ptr10680
  %fptr10681 = inttoptr i64 %f10682 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10681(i64 %cont8466, i64 %arg8945, i64 %retprim8467); tail call
  ret void
}


define void @lam9708(i64 %env9709, i64 %cont8468, i64 %Uu6$x) {
  %retprim8469 = call i64 @prim_car(i64 %Uu6$x)                                      ; call prim_car
  %arg8949 = add i64 0, 0                                                            ; quoted ()
  %cloptr10683 = inttoptr i64 %cont8468 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10683)                                        ; assert function application
  %i0ptr10684 = getelementptr inbounds i64, i64* %cloptr10683, i64 0                 ; &cloptr10683[0]
  %f10686 = load i64, i64* %i0ptr10684, align 8                                      ; load; *i0ptr10684
  %fptr10685 = inttoptr i64 %f10686 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10685(i64 %cont8468, i64 %arg8949, i64 %retprim8469); tail call
  ret void
}


define void @lam9705(i64 %env9706, i64 %cont8470, i64 %kQv$x) {
  %a8370 = call i64 @prim_cdr(i64 %kQv$x)                                            ; call prim_cdr
  %retprim8471 = call i64 @prim_car(i64 %a8370)                                      ; call prim_car
  %arg8954 = add i64 0, 0                                                            ; quoted ()
  %cloptr10687 = inttoptr i64 %cont8470 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10687)                                        ; assert function application
  %i0ptr10688 = getelementptr inbounds i64, i64* %cloptr10687, i64 0                 ; &cloptr10687[0]
  %f10690 = load i64, i64* %i0ptr10688, align 8                                      ; load; *i0ptr10688
  %fptr10689 = inttoptr i64 %f10690 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10689(i64 %cont8470, i64 %arg8954, i64 %retprim8471); tail call
  ret void
}


define void @lam9702(i64 %env9703, i64 %cont8472, i64 %VgL$x) {
  %a8371 = call i64 @prim_cdr(i64 %VgL$x)                                            ; call prim_cdr
  %a8372 = call i64 @prim_cdr(i64 %a8371)                                            ; call prim_cdr
  %retprim8473 = call i64 @prim_car(i64 %a8372)                                      ; call prim_car
  %arg8960 = add i64 0, 0                                                            ; quoted ()
  %cloptr10691 = inttoptr i64 %cont8472 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10691)                                        ; assert function application
  %i0ptr10692 = getelementptr inbounds i64, i64* %cloptr10691, i64 0                 ; &cloptr10691[0]
  %f10694 = load i64, i64* %i0ptr10692, align 8                                      ; load; *i0ptr10692
  %fptr10693 = inttoptr i64 %f10694 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10693(i64 %cont8472, i64 %arg8960, i64 %retprim8473); tail call
  ret void
}


define void @lam9699(i64 %env9700, i64 %cont8474, i64 %juU$x) {
  %a8373 = call i64 @prim_cdr(i64 %juU$x)                                            ; call prim_cdr
  %a8374 = call i64 @prim_cdr(i64 %a8373)                                            ; call prim_cdr
  %a8375 = call i64 @prim_cdr(i64 %a8374)                                            ; call prim_cdr
  %retprim8475 = call i64 @prim_car(i64 %a8375)                                      ; call prim_car
  %arg8967 = add i64 0, 0                                                            ; quoted ()
  %cloptr10695 = inttoptr i64 %cont8474 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10695)                                        ; assert function application
  %i0ptr10696 = getelementptr inbounds i64, i64* %cloptr10695, i64 0                 ; &cloptr10695[0]
  %f10698 = load i64, i64* %i0ptr10696, align 8                                      ; load; *i0ptr10696
  %fptr10697 = inttoptr i64 %f10698 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10697(i64 %cont8474, i64 %arg8967, i64 %retprim8475); tail call
  ret void
}


define void @lam9696(i64 %env9697, i64 %cont8476, i64 %tsW$p) {
  %a8376 = call i64 @prim_cons_63(i64 %tsW$p)                                        ; call prim_cons_63
  %cmp10699 = icmp eq i64 %a8376, 15                                                 ; false?
  br i1 %cmp10699, label %else10701, label %then10700                                ; if

then10700:
  %a8377 = call i64 @prim_car(i64 %tsW$p)                                            ; call prim_car
  %arg8971 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym10702, i32 0, i32 0)); quoted string
  %retprim8477 = call i64 @prim_eq_63(i64 %a8377, i64 %arg8971)                      ; call prim_eq_63
  %arg8974 = add i64 0, 0                                                            ; quoted ()
  %cloptr10703 = inttoptr i64 %cont8476 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10703)                                        ; assert function application
  %i0ptr10704 = getelementptr inbounds i64, i64* %cloptr10703, i64 0                 ; &cloptr10703[0]
  %f10706 = load i64, i64* %i0ptr10704, align 8                                      ; load; *i0ptr10704
  %fptr10705 = inttoptr i64 %f10706 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10705(i64 %cont8476, i64 %arg8974, i64 %retprim8477); tail call
  ret void

else10701:
  %arg8977 = add i64 0, 0                                                            ; quoted ()
  %arg8976 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10707 = inttoptr i64 %cont8476 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10707)                                        ; assert function application
  %i0ptr10708 = getelementptr inbounds i64, i64* %cloptr10707, i64 0                 ; &cloptr10707[0]
  %f10710 = load i64, i64* %i0ptr10708, align 8                                      ; load; *i0ptr10708
  %fptr10709 = inttoptr i64 %f10710 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10709(i64 %cont8476, i64 %arg8977, i64 %arg8976)    ; tail call
  ret void
}


define void @lam9690(i64 %env9691, i64 %uqy$lst8521) {
  %cont8520 = call i64 @prim_car(i64 %uqy$lst8521)                                   ; call prim_car
  %uqy$lst = call i64 @prim_cdr(i64 %uqy$lst8521)                                    ; call prim_cdr
  %arg8984 = add i64 0, 0                                                            ; quoted ()
  %cloptr10711 = inttoptr i64 %cont8520 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10711)                                        ; assert function application
  %i0ptr10712 = getelementptr inbounds i64, i64* %cloptr10711, i64 0                 ; &cloptr10711[0]
  %f10714 = load i64, i64* %i0ptr10712, align 8                                      ; load; *i0ptr10712
  %fptr10713 = inttoptr i64 %f10714 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10713(i64 %cont8520, i64 %arg8984, i64 %uqy$lst)    ; tail call
  ret void
}


define void @lam9687(i64 %env9688, i64 %_958478, i64 %wWS$_37raise_45handler) {
  %envptr10715 = inttoptr i64 %env9688 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10716 = getelementptr inbounds i64, i64* %envptr10715, i64 3                ; &envptr10715[3]
  %wdt$_37drop = load i64, i64* %envptr10716, align 8                                ; load; *envptr10716
  %envptr10717 = inttoptr i64 %env9688 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10718 = getelementptr inbounds i64, i64* %envptr10717, i64 2                ; &envptr10717[2]
  %Szf$_37_62 = load i64, i64* %envptr10718, align 8                                 ; load; *envptr10718
  %envptr10719 = inttoptr i64 %env9688 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10720 = getelementptr inbounds i64, i64* %envptr10719, i64 1                ; &envptr10719[1]
  %omT$_37length = load i64, i64* %envptr10720, align 8                              ; load; *envptr10720
  %cloptr10721 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10722 = getelementptr inbounds i64, i64* %cloptr10721, i64 0                  ; &cloptr10721[0]
  %f10723 = ptrtoint void(i64,i64)* @lam9685 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10723, i64* %eptr10722                                                 ; store fptr
  %arg8987 = ptrtoint i64* %cloptr10721 to i64                                       ; closure cast; i64* -> i64
  %cloptr10724 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10726 = getelementptr inbounds i64, i64* %cloptr10724, i64 1                  ; &eptr10726[1]
  %eptr10727 = getelementptr inbounds i64, i64* %cloptr10724, i64 2                  ; &eptr10727[2]
  %eptr10728 = getelementptr inbounds i64, i64* %cloptr10724, i64 3                  ; &eptr10728[3]
  store i64 %omT$_37length, i64* %eptr10726                                          ; *eptr10726 = %omT$_37length
  store i64 %Szf$_37_62, i64* %eptr10727                                             ; *eptr10727 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10728                                            ; *eptr10728 = %wdt$_37drop
  %eptr10725 = getelementptr inbounds i64, i64* %cloptr10724, i64 0                  ; &cloptr10724[0]
  %f10729 = ptrtoint void(i64,i64,i64)* @lam9682 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10729, i64* %eptr10725                                                 ; store fptr
  %arg8986 = ptrtoint i64* %cloptr10724 to i64                                       ; closure cast; i64* -> i64
  %rva9440 = add i64 0, 0                                                            ; quoted ()
  %rva9439 = call i64 @prim_cons(i64 %arg8986, i64 %rva9440)                         ; call prim_cons
  %cloptr10730 = inttoptr i64 %arg8987 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10730)                                        ; assert function application
  %i0ptr10731 = getelementptr inbounds i64, i64* %cloptr10730, i64 0                 ; &cloptr10730[0]
  %f10733 = load i64, i64* %i0ptr10731, align 8                                      ; load; *i0ptr10731
  %fptr10732 = inttoptr i64 %f10733 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10732(i64 %arg8987, i64 %rva9439)                   ; tail call
  ret void
}


define void @lam9685(i64 %env9686, i64 %fdW$lst8519) {
  %cont8518 = call i64 @prim_car(i64 %fdW$lst8519)                                   ; call prim_car
  %fdW$lst = call i64 @prim_cdr(i64 %fdW$lst8519)                                    ; call prim_cdr
  %arg8991 = add i64 0, 0                                                            ; quoted ()
  %cloptr10734 = inttoptr i64 %cont8518 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10734)                                        ; assert function application
  %i0ptr10735 = getelementptr inbounds i64, i64* %cloptr10734, i64 0                 ; &cloptr10734[0]
  %f10737 = load i64, i64* %i0ptr10735, align 8                                      ; load; *i0ptr10735
  %fptr10736 = inttoptr i64 %f10737 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10736(i64 %cont8518, i64 %arg8991, i64 %fdW$lst)    ; tail call
  ret void
}


define void @lam9682(i64 %env9683, i64 %_958516, i64 %a8378) {
  %envptr10738 = inttoptr i64 %env9683 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10739 = getelementptr inbounds i64, i64* %envptr10738, i64 3                ; &envptr10738[3]
  %wdt$_37drop = load i64, i64* %envptr10739, align 8                                ; load; *envptr10739
  %envptr10740 = inttoptr i64 %env9683 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10741 = getelementptr inbounds i64, i64* %envptr10740, i64 2                ; &envptr10740[2]
  %Szf$_37_62 = load i64, i64* %envptr10741, align 8                                 ; load; *envptr10741
  %envptr10742 = inttoptr i64 %env9683 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10743 = getelementptr inbounds i64, i64* %envptr10742, i64 1                ; &envptr10742[1]
  %omT$_37length = load i64, i64* %envptr10743, align 8                              ; load; *envptr10743
  %arg8994 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim8517 = call i64 @prim_make_45vector(i64 %arg8994, i64 %a8378)              ; call prim_make_45vector
  %cloptr10744 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10746 = getelementptr inbounds i64, i64* %cloptr10744, i64 1                  ; &eptr10746[1]
  %eptr10747 = getelementptr inbounds i64, i64* %cloptr10744, i64 2                  ; &eptr10747[2]
  %eptr10748 = getelementptr inbounds i64, i64* %cloptr10744, i64 3                  ; &eptr10748[3]
  store i64 %omT$_37length, i64* %eptr10746                                          ; *eptr10746 = %omT$_37length
  store i64 %Szf$_37_62, i64* %eptr10747                                             ; *eptr10747 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10748                                            ; *eptr10748 = %wdt$_37drop
  %eptr10745 = getelementptr inbounds i64, i64* %cloptr10744, i64 0                  ; &cloptr10744[0]
  %f10749 = ptrtoint void(i64,i64,i64)* @lam9679 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10749, i64* %eptr10745                                                 ; store fptr
  %arg8997 = ptrtoint i64* %cloptr10744 to i64                                       ; closure cast; i64* -> i64
  %arg8996 = add i64 0, 0                                                            ; quoted ()
  %cloptr10750 = inttoptr i64 %arg8997 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10750)                                        ; assert function application
  %i0ptr10751 = getelementptr inbounds i64, i64* %cloptr10750, i64 0                 ; &cloptr10750[0]
  %f10753 = load i64, i64* %i0ptr10751, align 8                                      ; load; *i0ptr10751
  %fptr10752 = inttoptr i64 %f10753 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10752(i64 %arg8997, i64 %arg8996, i64 %retprim8517) ; tail call
  ret void
}


define void @lam9679(i64 %env9680, i64 %_958479, i64 %ThD$_37wind_45stack) {
  %envptr10754 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10755 = getelementptr inbounds i64, i64* %envptr10754, i64 3                ; &envptr10754[3]
  %wdt$_37drop = load i64, i64* %envptr10755, align 8                                ; load; *envptr10755
  %envptr10756 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10757 = getelementptr inbounds i64, i64* %envptr10756, i64 2                ; &envptr10756[2]
  %Szf$_37_62 = load i64, i64* %envptr10757, align 8                                 ; load; *envptr10757
  %envptr10758 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10759 = getelementptr inbounds i64, i64* %envptr10758, i64 1                ; &envptr10758[1]
  %omT$_37length = load i64, i64* %envptr10759, align 8                              ; load; *envptr10759
  %cloptr10760 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10762 = getelementptr inbounds i64, i64* %cloptr10760, i64 1                  ; &eptr10762[1]
  %eptr10763 = getelementptr inbounds i64, i64* %cloptr10760, i64 2                  ; &eptr10763[2]
  %eptr10764 = getelementptr inbounds i64, i64* %cloptr10760, i64 3                  ; &eptr10764[3]
  store i64 %omT$_37length, i64* %eptr10762                                          ; *eptr10762 = %omT$_37length
  store i64 %Szf$_37_62, i64* %eptr10763                                             ; *eptr10763 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10764                                            ; *eptr10764 = %wdt$_37drop
  %eptr10761 = getelementptr inbounds i64, i64* %cloptr10760, i64 0                  ; &cloptr10760[0]
  %f10765 = ptrtoint void(i64,i64,i64,i64)* @lam9677 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10765, i64* %eptr10761                                                 ; store fptr
  %HdB$_37common_45tail = ptrtoint i64* %cloptr10760 to i64                          ; closure cast; i64* -> i64
  %cloptr10766 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10768 = getelementptr inbounds i64, i64* %cloptr10766, i64 1                  ; &eptr10768[1]
  %eptr10769 = getelementptr inbounds i64, i64* %cloptr10766, i64 2                  ; &eptr10769[2]
  store i64 %HdB$_37common_45tail, i64* %eptr10768                                   ; *eptr10768 = %HdB$_37common_45tail
  store i64 %ThD$_37wind_45stack, i64* %eptr10769                                    ; *eptr10769 = %ThD$_37wind_45stack
  %eptr10767 = getelementptr inbounds i64, i64* %cloptr10766, i64 0                  ; &cloptr10766[0]
  %f10770 = ptrtoint void(i64,i64,i64)* @lam9635 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10770, i64* %eptr10767                                                 ; store fptr
  %ych$_37do_45wind = ptrtoint i64* %cloptr10766 to i64                              ; closure cast; i64* -> i64
  %a8410 = call i64 @prim_set()                                                      ; call prim_set
  %cloptr10771 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10772 = getelementptr inbounds i64, i64* %cloptr10771, i64 0                  ; &cloptr10771[0]
  %f10773 = ptrtoint void(i64,i64,i64)* @lam9585 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10773, i64* %eptr10772                                                 ; store fptr
  %arg9182 = ptrtoint i64* %cloptr10771 to i64                                       ; closure cast; i64* -> i64
  %cloptr10774 = inttoptr i64 %a8410 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10774)                                        ; assert function application
  %i0ptr10775 = getelementptr inbounds i64, i64* %cloptr10774, i64 0                 ; &cloptr10774[0]
  %f10777 = load i64, i64* %i0ptr10775, align 8                                      ; load; *i0ptr10775
  %fptr10776 = inttoptr i64 %f10777 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10776(i64 %a8410, i64 %arg9182)                     ; tail call
  ret void
}


define void @lam9677(i64 %env9678, i64 %cont8480, i64 %TNs$x, i64 %zgo$y) {
  %envptr10778 = inttoptr i64 %env9678 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10779 = getelementptr inbounds i64, i64* %envptr10778, i64 3                ; &envptr10778[3]
  %wdt$_37drop = load i64, i64* %envptr10779, align 8                                ; load; *envptr10779
  %envptr10780 = inttoptr i64 %env9678 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10781 = getelementptr inbounds i64, i64* %envptr10780, i64 2                ; &envptr10780[2]
  %Szf$_37_62 = load i64, i64* %envptr10781, align 8                                 ; load; *envptr10781
  %envptr10782 = inttoptr i64 %env9678 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10783 = getelementptr inbounds i64, i64* %envptr10782, i64 1                ; &envptr10782[1]
  %omT$_37length = load i64, i64* %envptr10783, align 8                              ; load; *envptr10783
  %cloptr10784 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10786 = getelementptr inbounds i64, i64* %cloptr10784, i64 1                  ; &eptr10786[1]
  %eptr10787 = getelementptr inbounds i64, i64* %cloptr10784, i64 2                  ; &eptr10787[2]
  %eptr10788 = getelementptr inbounds i64, i64* %cloptr10784, i64 3                  ; &eptr10788[3]
  %eptr10789 = getelementptr inbounds i64, i64* %cloptr10784, i64 4                  ; &eptr10789[4]
  %eptr10790 = getelementptr inbounds i64, i64* %cloptr10784, i64 5                  ; &eptr10790[5]
  %eptr10791 = getelementptr inbounds i64, i64* %cloptr10784, i64 6                  ; &eptr10791[6]
  store i64 %TNs$x, i64* %eptr10786                                                  ; *eptr10786 = %TNs$x
  store i64 %omT$_37length, i64* %eptr10787                                          ; *eptr10787 = %omT$_37length
  store i64 %Szf$_37_62, i64* %eptr10788                                             ; *eptr10788 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10789                                            ; *eptr10789 = %wdt$_37drop
  store i64 %cont8480, i64* %eptr10790                                               ; *eptr10790 = %cont8480
  store i64 %zgo$y, i64* %eptr10791                                                  ; *eptr10791 = %zgo$y
  %eptr10785 = getelementptr inbounds i64, i64* %cloptr10784, i64 0                  ; &cloptr10784[0]
  %f10792 = ptrtoint void(i64,i64,i64)* @lam9675 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10792, i64* %eptr10785                                                 ; store fptr
  %arg8999 = ptrtoint i64* %cloptr10784 to i64                                       ; closure cast; i64* -> i64
  %cloptr10793 = inttoptr i64 %omT$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10793)                                        ; assert function application
  %i0ptr10794 = getelementptr inbounds i64, i64* %cloptr10793, i64 0                 ; &cloptr10793[0]
  %f10796 = load i64, i64* %i0ptr10794, align 8                                      ; load; *i0ptr10794
  %fptr10795 = inttoptr i64 %f10796 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10795(i64 %omT$_37length, i64 %arg8999, i64 %TNs$x) ; tail call
  ret void
}


define void @lam9675(i64 %env9676, i64 %_958481, i64 %uhi$lx) {
  %envptr10797 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10798 = getelementptr inbounds i64, i64* %envptr10797, i64 6                ; &envptr10797[6]
  %zgo$y = load i64, i64* %envptr10798, align 8                                      ; load; *envptr10798
  %envptr10799 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10800 = getelementptr inbounds i64, i64* %envptr10799, i64 5                ; &envptr10799[5]
  %cont8480 = load i64, i64* %envptr10800, align 8                                   ; load; *envptr10800
  %envptr10801 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10802 = getelementptr inbounds i64, i64* %envptr10801, i64 4                ; &envptr10801[4]
  %wdt$_37drop = load i64, i64* %envptr10802, align 8                                ; load; *envptr10802
  %envptr10803 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10804 = getelementptr inbounds i64, i64* %envptr10803, i64 3                ; &envptr10803[3]
  %Szf$_37_62 = load i64, i64* %envptr10804, align 8                                 ; load; *envptr10804
  %envptr10805 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10806 = getelementptr inbounds i64, i64* %envptr10805, i64 2                ; &envptr10805[2]
  %omT$_37length = load i64, i64* %envptr10806, align 8                              ; load; *envptr10806
  %envptr10807 = inttoptr i64 %env9676 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10808 = getelementptr inbounds i64, i64* %envptr10807, i64 1                ; &envptr10807[1]
  %TNs$x = load i64, i64* %envptr10808, align 8                                      ; load; *envptr10808
  %cloptr10809 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10811 = getelementptr inbounds i64, i64* %cloptr10809, i64 1                  ; &eptr10811[1]
  %eptr10812 = getelementptr inbounds i64, i64* %cloptr10809, i64 2                  ; &eptr10812[2]
  %eptr10813 = getelementptr inbounds i64, i64* %cloptr10809, i64 3                  ; &eptr10813[3]
  %eptr10814 = getelementptr inbounds i64, i64* %cloptr10809, i64 4                  ; &eptr10814[4]
  %eptr10815 = getelementptr inbounds i64, i64* %cloptr10809, i64 5                  ; &eptr10815[5]
  %eptr10816 = getelementptr inbounds i64, i64* %cloptr10809, i64 6                  ; &eptr10816[6]
  store i64 %TNs$x, i64* %eptr10811                                                  ; *eptr10811 = %TNs$x
  store i64 %Szf$_37_62, i64* %eptr10812                                             ; *eptr10812 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10813                                            ; *eptr10813 = %wdt$_37drop
  store i64 %uhi$lx, i64* %eptr10814                                                 ; *eptr10814 = %uhi$lx
  store i64 %cont8480, i64* %eptr10815                                               ; *eptr10815 = %cont8480
  store i64 %zgo$y, i64* %eptr10816                                                  ; *eptr10816 = %zgo$y
  %eptr10810 = getelementptr inbounds i64, i64* %cloptr10809, i64 0                  ; &cloptr10809[0]
  %f10817 = ptrtoint void(i64,i64,i64)* @lam9673 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10817, i64* %eptr10810                                                 ; store fptr
  %arg9002 = ptrtoint i64* %cloptr10809 to i64                                       ; closure cast; i64* -> i64
  %cloptr10818 = inttoptr i64 %omT$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10818)                                        ; assert function application
  %i0ptr10819 = getelementptr inbounds i64, i64* %cloptr10818, i64 0                 ; &cloptr10818[0]
  %f10821 = load i64, i64* %i0ptr10819, align 8                                      ; load; *i0ptr10819
  %fptr10820 = inttoptr i64 %f10821 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10820(i64 %omT$_37length, i64 %arg9002, i64 %zgo$y) ; tail call
  ret void
}


define void @lam9673(i64 %env9674, i64 %_958482, i64 %iw7$ly) {
  %envptr10822 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10823 = getelementptr inbounds i64, i64* %envptr10822, i64 6                ; &envptr10822[6]
  %zgo$y = load i64, i64* %envptr10823, align 8                                      ; load; *envptr10823
  %envptr10824 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10825 = getelementptr inbounds i64, i64* %envptr10824, i64 5                ; &envptr10824[5]
  %cont8480 = load i64, i64* %envptr10825, align 8                                   ; load; *envptr10825
  %envptr10826 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10827 = getelementptr inbounds i64, i64* %envptr10826, i64 4                ; &envptr10826[4]
  %uhi$lx = load i64, i64* %envptr10827, align 8                                     ; load; *envptr10827
  %envptr10828 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10829 = getelementptr inbounds i64, i64* %envptr10828, i64 3                ; &envptr10828[3]
  %wdt$_37drop = load i64, i64* %envptr10829, align 8                                ; load; *envptr10829
  %envptr10830 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10831 = getelementptr inbounds i64, i64* %envptr10830, i64 2                ; &envptr10830[2]
  %Szf$_37_62 = load i64, i64* %envptr10831, align 8                                 ; load; *envptr10831
  %envptr10832 = inttoptr i64 %env9674 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10833 = getelementptr inbounds i64, i64* %envptr10832, i64 1                ; &envptr10832[1]
  %TNs$x = load i64, i64* %envptr10833, align 8                                      ; load; *envptr10833
  %cloptr10834 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10835 = getelementptr inbounds i64, i64* %cloptr10834, i64 0                  ; &cloptr10834[0]
  %f10836 = ptrtoint void(i64,i64)* @lam9671 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10836, i64* %eptr10835                                                 ; store fptr
  %arg9005 = ptrtoint i64* %cloptr10834 to i64                                       ; closure cast; i64* -> i64
  %cloptr10837 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10839 = getelementptr inbounds i64, i64* %cloptr10837, i64 1                  ; &eptr10839[1]
  %eptr10840 = getelementptr inbounds i64, i64* %cloptr10837, i64 2                  ; &eptr10840[2]
  %eptr10841 = getelementptr inbounds i64, i64* %cloptr10837, i64 3                  ; &eptr10841[3]
  %eptr10842 = getelementptr inbounds i64, i64* %cloptr10837, i64 4                  ; &eptr10842[4]
  %eptr10843 = getelementptr inbounds i64, i64* %cloptr10837, i64 5                  ; &eptr10843[5]
  %eptr10844 = getelementptr inbounds i64, i64* %cloptr10837, i64 6                  ; &eptr10844[6]
  %eptr10845 = getelementptr inbounds i64, i64* %cloptr10837, i64 7                  ; &eptr10845[7]
  store i64 %TNs$x, i64* %eptr10839                                                  ; *eptr10839 = %TNs$x
  store i64 %Szf$_37_62, i64* %eptr10840                                             ; *eptr10840 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10841                                            ; *eptr10841 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10842                                                 ; *eptr10842 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10843                                                 ; *eptr10843 = %uhi$lx
  store i64 %cont8480, i64* %eptr10844                                               ; *eptr10844 = %cont8480
  store i64 %zgo$y, i64* %eptr10845                                                  ; *eptr10845 = %zgo$y
  %eptr10838 = getelementptr inbounds i64, i64* %cloptr10837, i64 0                  ; &cloptr10837[0]
  %f10846 = ptrtoint void(i64,i64,i64)* @lam9668 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10846, i64* %eptr10838                                                 ; store fptr
  %arg9004 = ptrtoint i64* %cloptr10837 to i64                                       ; closure cast; i64* -> i64
  %cloptr10847 = inttoptr i64 %arg9005 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10847)                                        ; assert function application
  %i0ptr10848 = getelementptr inbounds i64, i64* %cloptr10847, i64 0                 ; &cloptr10847[0]
  %f10850 = load i64, i64* %i0ptr10848, align 8                                      ; load; *i0ptr10848
  %fptr10849 = inttoptr i64 %f10850 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10849(i64 %arg9005, i64 %arg9004)                   ; tail call
  ret void
}


define void @lam9671(i64 %env9672, i64 %GKd$lst8492) {
  %cont8491 = call i64 @prim_car(i64 %GKd$lst8492)                                   ; call prim_car
  %GKd$lst = call i64 @prim_cdr(i64 %GKd$lst8492)                                    ; call prim_cdr
  %arg9009 = add i64 0, 0                                                            ; quoted ()
  %cloptr10851 = inttoptr i64 %cont8491 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10851)                                        ; assert function application
  %i0ptr10852 = getelementptr inbounds i64, i64* %cloptr10851, i64 0                 ; &cloptr10851[0]
  %f10854 = load i64, i64* %i0ptr10852, align 8                                      ; load; *i0ptr10852
  %fptr10853 = inttoptr i64 %f10854 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10853(i64 %cont8491, i64 %arg9009, i64 %GKd$lst)    ; tail call
  ret void
}


define void @lam9668(i64 %env9669, i64 %_958489, i64 %a8379) {
  %envptr10855 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10856 = getelementptr inbounds i64, i64* %envptr10855, i64 7                ; &envptr10855[7]
  %zgo$y = load i64, i64* %envptr10856, align 8                                      ; load; *envptr10856
  %envptr10857 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10858 = getelementptr inbounds i64, i64* %envptr10857, i64 6                ; &envptr10857[6]
  %cont8480 = load i64, i64* %envptr10858, align 8                                   ; load; *envptr10858
  %envptr10859 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10860 = getelementptr inbounds i64, i64* %envptr10859, i64 5                ; &envptr10859[5]
  %uhi$lx = load i64, i64* %envptr10860, align 8                                     ; load; *envptr10860
  %envptr10861 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10862 = getelementptr inbounds i64, i64* %envptr10861, i64 4                ; &envptr10861[4]
  %iw7$ly = load i64, i64* %envptr10862, align 8                                     ; load; *envptr10862
  %envptr10863 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10864 = getelementptr inbounds i64, i64* %envptr10863, i64 3                ; &envptr10863[3]
  %wdt$_37drop = load i64, i64* %envptr10864, align 8                                ; load; *envptr10864
  %envptr10865 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10866 = getelementptr inbounds i64, i64* %envptr10865, i64 2                ; &envptr10865[2]
  %Szf$_37_62 = load i64, i64* %envptr10866, align 8                                 ; load; *envptr10866
  %envptr10867 = inttoptr i64 %env9669 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10868 = getelementptr inbounds i64, i64* %envptr10867, i64 1                ; &envptr10867[1]
  %TNs$x = load i64, i64* %envptr10868, align 8                                      ; load; *envptr10868
  %arg9012 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim8490 = call i64 @prim_make_45vector(i64 %arg9012, i64 %a8379)              ; call prim_make_45vector
  %cloptr10869 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10871 = getelementptr inbounds i64, i64* %cloptr10869, i64 1                  ; &eptr10871[1]
  %eptr10872 = getelementptr inbounds i64, i64* %cloptr10869, i64 2                  ; &eptr10872[2]
  %eptr10873 = getelementptr inbounds i64, i64* %cloptr10869, i64 3                  ; &eptr10873[3]
  %eptr10874 = getelementptr inbounds i64, i64* %cloptr10869, i64 4                  ; &eptr10874[4]
  %eptr10875 = getelementptr inbounds i64, i64* %cloptr10869, i64 5                  ; &eptr10875[5]
  %eptr10876 = getelementptr inbounds i64, i64* %cloptr10869, i64 6                  ; &eptr10876[6]
  %eptr10877 = getelementptr inbounds i64, i64* %cloptr10869, i64 7                  ; &eptr10877[7]
  store i64 %TNs$x, i64* %eptr10871                                                  ; *eptr10871 = %TNs$x
  store i64 %Szf$_37_62, i64* %eptr10872                                             ; *eptr10872 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10873                                            ; *eptr10873 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10874                                                 ; *eptr10874 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10875                                                 ; *eptr10875 = %uhi$lx
  store i64 %cont8480, i64* %eptr10876                                               ; *eptr10876 = %cont8480
  store i64 %zgo$y, i64* %eptr10877                                                  ; *eptr10877 = %zgo$y
  %eptr10870 = getelementptr inbounds i64, i64* %cloptr10869, i64 0                  ; &cloptr10869[0]
  %f10878 = ptrtoint void(i64,i64,i64)* @lam9665 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10878, i64* %eptr10870                                                 ; store fptr
  %arg9015 = ptrtoint i64* %cloptr10869 to i64                                       ; closure cast; i64* -> i64
  %arg9014 = add i64 0, 0                                                            ; quoted ()
  %cloptr10879 = inttoptr i64 %arg9015 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10879)                                        ; assert function application
  %i0ptr10880 = getelementptr inbounds i64, i64* %cloptr10879, i64 0                 ; &cloptr10879[0]
  %f10882 = load i64, i64* %i0ptr10880, align 8                                      ; load; *i0ptr10880
  %fptr10881 = inttoptr i64 %f10882 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10881(i64 %arg9015, i64 %arg9014, i64 %retprim8490) ; tail call
  ret void
}


define void @lam9665(i64 %env9666, i64 %_958483, i64 %NrE$loop) {
  %envptr10883 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10884 = getelementptr inbounds i64, i64* %envptr10883, i64 7                ; &envptr10883[7]
  %zgo$y = load i64, i64* %envptr10884, align 8                                      ; load; *envptr10884
  %envptr10885 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10886 = getelementptr inbounds i64, i64* %envptr10885, i64 6                ; &envptr10885[6]
  %cont8480 = load i64, i64* %envptr10886, align 8                                   ; load; *envptr10886
  %envptr10887 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10888 = getelementptr inbounds i64, i64* %envptr10887, i64 5                ; &envptr10887[5]
  %uhi$lx = load i64, i64* %envptr10888, align 8                                     ; load; *envptr10888
  %envptr10889 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10890 = getelementptr inbounds i64, i64* %envptr10889, i64 4                ; &envptr10889[4]
  %iw7$ly = load i64, i64* %envptr10890, align 8                                     ; load; *envptr10890
  %envptr10891 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10892 = getelementptr inbounds i64, i64* %envptr10891, i64 3                ; &envptr10891[3]
  %wdt$_37drop = load i64, i64* %envptr10892, align 8                                ; load; *envptr10892
  %envptr10893 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10894 = getelementptr inbounds i64, i64* %envptr10893, i64 2                ; &envptr10893[2]
  %Szf$_37_62 = load i64, i64* %envptr10894, align 8                                 ; load; *envptr10894
  %envptr10895 = inttoptr i64 %env9666 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10896 = getelementptr inbounds i64, i64* %envptr10895, i64 1                ; &envptr10895[1]
  %TNs$x = load i64, i64* %envptr10896, align 8                                      ; load; *envptr10896
  %arg9017 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10897 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10899 = getelementptr inbounds i64, i64* %cloptr10897, i64 1                  ; &eptr10899[1]
  store i64 %NrE$loop, i64* %eptr10899                                               ; *eptr10899 = %NrE$loop
  %eptr10898 = getelementptr inbounds i64, i64* %cloptr10897, i64 0                  ; &cloptr10897[0]
  %f10900 = ptrtoint void(i64,i64,i64,i64)* @lam9662 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10900, i64* %eptr10898                                                 ; store fptr
  %arg9016 = ptrtoint i64* %cloptr10897 to i64                                       ; closure cast; i64* -> i64
  %q88$_958283 = call i64 @prim_vector_45set_33(i64 %NrE$loop, i64 %arg9017, i64 %arg9016); call prim_vector_45set_33
  %arg9032 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8384 = call i64 @prim_vector_45ref(i64 %NrE$loop, i64 %arg9032)                  ; call prim_vector_45ref
  %cloptr10901 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr10903 = getelementptr inbounds i64, i64* %cloptr10901, i64 1                  ; &eptr10903[1]
  %eptr10904 = getelementptr inbounds i64, i64* %cloptr10901, i64 2                  ; &eptr10904[2]
  %eptr10905 = getelementptr inbounds i64, i64* %cloptr10901, i64 3                  ; &eptr10905[3]
  %eptr10906 = getelementptr inbounds i64, i64* %cloptr10901, i64 4                  ; &eptr10906[4]
  %eptr10907 = getelementptr inbounds i64, i64* %cloptr10901, i64 5                  ; &eptr10907[5]
  %eptr10908 = getelementptr inbounds i64, i64* %cloptr10901, i64 6                  ; &eptr10908[6]
  %eptr10909 = getelementptr inbounds i64, i64* %cloptr10901, i64 7                  ; &eptr10909[7]
  %eptr10910 = getelementptr inbounds i64, i64* %cloptr10901, i64 8                  ; &eptr10910[8]
  store i64 %TNs$x, i64* %eptr10903                                                  ; *eptr10903 = %TNs$x
  store i64 %a8384, i64* %eptr10904                                                  ; *eptr10904 = %a8384
  store i64 %Szf$_37_62, i64* %eptr10905                                             ; *eptr10905 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10906                                            ; *eptr10906 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10907                                                 ; *eptr10907 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10908                                                 ; *eptr10908 = %uhi$lx
  store i64 %cont8480, i64* %eptr10909                                               ; *eptr10909 = %cont8480
  store i64 %zgo$y, i64* %eptr10910                                                  ; *eptr10910 = %zgo$y
  %eptr10902 = getelementptr inbounds i64, i64* %cloptr10901, i64 0                  ; &cloptr10901[0]
  %f10911 = ptrtoint void(i64,i64,i64)* @lam9657 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10911, i64* %eptr10902                                                 ; store fptr
  %arg9036 = ptrtoint i64* %cloptr10901 to i64                                       ; closure cast; i64* -> i64
  %cloptr10912 = inttoptr i64 %Szf$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10912)                                        ; assert function application
  %i0ptr10913 = getelementptr inbounds i64, i64* %cloptr10912, i64 0                 ; &cloptr10912[0]
  %f10915 = load i64, i64* %i0ptr10913, align 8                                      ; load; *i0ptr10913
  %fptr10914 = inttoptr i64 %f10915 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10914(i64 %Szf$_37_62, i64 %arg9036, i64 %uhi$lx, i64 %iw7$ly); tail call
  ret void
}


define void @lam9662(i64 %env9663, i64 %cont8484, i64 %rik$x, i64 %HC5$y) {
  %envptr10916 = inttoptr i64 %env9663 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10917 = getelementptr inbounds i64, i64* %envptr10916, i64 1                ; &envptr10916[1]
  %NrE$loop = load i64, i64* %envptr10917, align 8                                   ; load; *envptr10917
  %a8380 = call i64 @prim_eq_63(i64 %rik$x, i64 %HC5$y)                              ; call prim_eq_63
  %cmp10918 = icmp eq i64 %a8380, 15                                                 ; false?
  br i1 %cmp10918, label %else10920, label %then10919                                ; if

then10919:
  %arg9022 = add i64 0, 0                                                            ; quoted ()
  %cloptr10921 = inttoptr i64 %cont8484 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10921)                                        ; assert function application
  %i0ptr10922 = getelementptr inbounds i64, i64* %cloptr10921, i64 0                 ; &cloptr10921[0]
  %f10924 = load i64, i64* %i0ptr10922, align 8                                      ; load; *i0ptr10922
  %fptr10923 = inttoptr i64 %f10924 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10923(i64 %cont8484, i64 %arg9022, i64 %rik$x)      ; tail call
  ret void

else10920:
  %arg9024 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8381 = call i64 @prim_vector_45ref(i64 %NrE$loop, i64 %arg9024)                  ; call prim_vector_45ref
  %a8382 = call i64 @prim_cdr(i64 %rik$x)                                            ; call prim_cdr
  %a8383 = call i64 @prim_cdr(i64 %HC5$y)                                            ; call prim_cdr
  %cloptr10925 = inttoptr i64 %a8381 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10925)                                        ; assert function application
  %i0ptr10926 = getelementptr inbounds i64, i64* %cloptr10925, i64 0                 ; &cloptr10925[0]
  %f10928 = load i64, i64* %i0ptr10926, align 8                                      ; load; *i0ptr10926
  %fptr10927 = inttoptr i64 %f10928 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10927(i64 %a8381, i64 %cont8484, i64 %a8382, i64 %a8383); tail call
  ret void
}


define void @lam9657(i64 %env9658, i64 %_958485, i64 %a8385) {
  %envptr10929 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10930 = getelementptr inbounds i64, i64* %envptr10929, i64 8                ; &envptr10929[8]
  %zgo$y = load i64, i64* %envptr10930, align 8                                      ; load; *envptr10930
  %envptr10931 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10932 = getelementptr inbounds i64, i64* %envptr10931, i64 7                ; &envptr10931[7]
  %cont8480 = load i64, i64* %envptr10932, align 8                                   ; load; *envptr10932
  %envptr10933 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10934 = getelementptr inbounds i64, i64* %envptr10933, i64 6                ; &envptr10933[6]
  %uhi$lx = load i64, i64* %envptr10934, align 8                                     ; load; *envptr10934
  %envptr10935 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10936 = getelementptr inbounds i64, i64* %envptr10935, i64 5                ; &envptr10935[5]
  %iw7$ly = load i64, i64* %envptr10936, align 8                                     ; load; *envptr10936
  %envptr10937 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10938 = getelementptr inbounds i64, i64* %envptr10937, i64 4                ; &envptr10937[4]
  %wdt$_37drop = load i64, i64* %envptr10938, align 8                                ; load; *envptr10938
  %envptr10939 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10940 = getelementptr inbounds i64, i64* %envptr10939, i64 3                ; &envptr10939[3]
  %Szf$_37_62 = load i64, i64* %envptr10940, align 8                                 ; load; *envptr10940
  %envptr10941 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10942 = getelementptr inbounds i64, i64* %envptr10941, i64 2                ; &envptr10941[2]
  %a8384 = load i64, i64* %envptr10942, align 8                                      ; load; *envptr10942
  %envptr10943 = inttoptr i64 %env9658 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10944 = getelementptr inbounds i64, i64* %envptr10943, i64 1                ; &envptr10943[1]
  %TNs$x = load i64, i64* %envptr10944, align 8                                      ; load; *envptr10944
  %cmp10945 = icmp eq i64 %a8385, 15                                                 ; false?
  br i1 %cmp10945, label %else10947, label %then10946                                ; if

then10946:
  %a8386 = call i64 @prim__45(i64 %uhi$lx, i64 %iw7$ly)                              ; call prim__45
  %cloptr10948 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10950 = getelementptr inbounds i64, i64* %cloptr10948, i64 1                  ; &eptr10950[1]
  %eptr10951 = getelementptr inbounds i64, i64* %cloptr10948, i64 2                  ; &eptr10951[2]
  %eptr10952 = getelementptr inbounds i64, i64* %cloptr10948, i64 3                  ; &eptr10952[3]
  %eptr10953 = getelementptr inbounds i64, i64* %cloptr10948, i64 4                  ; &eptr10953[4]
  %eptr10954 = getelementptr inbounds i64, i64* %cloptr10948, i64 5                  ; &eptr10954[5]
  %eptr10955 = getelementptr inbounds i64, i64* %cloptr10948, i64 6                  ; &eptr10955[6]
  %eptr10956 = getelementptr inbounds i64, i64* %cloptr10948, i64 7                  ; &eptr10956[7]
  store i64 %a8384, i64* %eptr10950                                                  ; *eptr10950 = %a8384
  store i64 %Szf$_37_62, i64* %eptr10951                                             ; *eptr10951 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10952                                            ; *eptr10952 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10953                                                 ; *eptr10953 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10954                                                 ; *eptr10954 = %uhi$lx
  store i64 %cont8480, i64* %eptr10955                                               ; *eptr10955 = %cont8480
  store i64 %zgo$y, i64* %eptr10956                                                  ; *eptr10956 = %zgo$y
  %eptr10949 = getelementptr inbounds i64, i64* %cloptr10948, i64 0                  ; &cloptr10948[0]
  %f10957 = ptrtoint void(i64,i64,i64)* @lam9645 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10957, i64* %eptr10949                                                 ; store fptr
  %arg9042 = ptrtoint i64* %cloptr10948 to i64                                       ; closure cast; i64* -> i64
  %cloptr10958 = inttoptr i64 %wdt$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10958)                                        ; assert function application
  %i0ptr10959 = getelementptr inbounds i64, i64* %cloptr10958, i64 0                 ; &cloptr10958[0]
  %f10961 = load i64, i64* %i0ptr10959, align 8                                      ; load; *i0ptr10959
  %fptr10960 = inttoptr i64 %f10961 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10960(i64 %wdt$_37drop, i64 %arg9042, i64 %TNs$x, i64 %a8386); tail call
  ret void

else10947:
  %cloptr10962 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10964 = getelementptr inbounds i64, i64* %cloptr10962, i64 1                  ; &eptr10964[1]
  %eptr10965 = getelementptr inbounds i64, i64* %cloptr10962, i64 2                  ; &eptr10965[2]
  %eptr10966 = getelementptr inbounds i64, i64* %cloptr10962, i64 3                  ; &eptr10966[3]
  %eptr10967 = getelementptr inbounds i64, i64* %cloptr10962, i64 4                  ; &eptr10967[4]
  %eptr10968 = getelementptr inbounds i64, i64* %cloptr10962, i64 5                  ; &eptr10968[5]
  %eptr10969 = getelementptr inbounds i64, i64* %cloptr10962, i64 6                  ; &eptr10969[6]
  %eptr10970 = getelementptr inbounds i64, i64* %cloptr10962, i64 7                  ; &eptr10970[7]
  store i64 %a8384, i64* %eptr10964                                                  ; *eptr10964 = %a8384
  store i64 %Szf$_37_62, i64* %eptr10965                                             ; *eptr10965 = %Szf$_37_62
  store i64 %wdt$_37drop, i64* %eptr10966                                            ; *eptr10966 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10967                                                 ; *eptr10967 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10968                                                 ; *eptr10968 = %uhi$lx
  store i64 %cont8480, i64* %eptr10969                                               ; *eptr10969 = %cont8480
  store i64 %zgo$y, i64* %eptr10970                                                  ; *eptr10970 = %zgo$y
  %eptr10963 = getelementptr inbounds i64, i64* %cloptr10962, i64 0                  ; &cloptr10962[0]
  %f10971 = ptrtoint void(i64,i64,i64)* @lam9655 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10971, i64* %eptr10963                                                 ; store fptr
  %arg9067 = ptrtoint i64* %cloptr10962 to i64                                       ; closure cast; i64* -> i64
  %arg9066 = add i64 0, 0                                                            ; quoted ()
  %cloptr10972 = inttoptr i64 %arg9067 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10972)                                        ; assert function application
  %i0ptr10973 = getelementptr inbounds i64, i64* %cloptr10972, i64 0                 ; &cloptr10972[0]
  %f10975 = load i64, i64* %i0ptr10973, align 8                                      ; load; *i0ptr10973
  %fptr10974 = inttoptr i64 %f10975 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10974(i64 %arg9067, i64 %arg9066, i64 %TNs$x)       ; tail call
  ret void
}


define void @lam9655(i64 %env9656, i64 %_958486, i64 %a8387) {
  %envptr10976 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10977 = getelementptr inbounds i64, i64* %envptr10976, i64 7                ; &envptr10976[7]
  %zgo$y = load i64, i64* %envptr10977, align 8                                      ; load; *envptr10977
  %envptr10978 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10979 = getelementptr inbounds i64, i64* %envptr10978, i64 6                ; &envptr10978[6]
  %cont8480 = load i64, i64* %envptr10979, align 8                                   ; load; *envptr10979
  %envptr10980 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10981 = getelementptr inbounds i64, i64* %envptr10980, i64 5                ; &envptr10980[5]
  %uhi$lx = load i64, i64* %envptr10981, align 8                                     ; load; *envptr10981
  %envptr10982 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10983 = getelementptr inbounds i64, i64* %envptr10982, i64 4                ; &envptr10982[4]
  %iw7$ly = load i64, i64* %envptr10983, align 8                                     ; load; *envptr10983
  %envptr10984 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10985 = getelementptr inbounds i64, i64* %envptr10984, i64 3                ; &envptr10984[3]
  %wdt$_37drop = load i64, i64* %envptr10985, align 8                                ; load; *envptr10985
  %envptr10986 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10987 = getelementptr inbounds i64, i64* %envptr10986, i64 2                ; &envptr10986[2]
  %Szf$_37_62 = load i64, i64* %envptr10987, align 8                                 ; load; *envptr10987
  %envptr10988 = inttoptr i64 %env9656 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10989 = getelementptr inbounds i64, i64* %envptr10988, i64 1                ; &envptr10988[1]
  %a8384 = load i64, i64* %envptr10989, align 8                                      ; load; *envptr10989
  %cloptr10990 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10992 = getelementptr inbounds i64, i64* %cloptr10990, i64 1                  ; &eptr10992[1]
  %eptr10993 = getelementptr inbounds i64, i64* %cloptr10990, i64 2                  ; &eptr10993[2]
  %eptr10994 = getelementptr inbounds i64, i64* %cloptr10990, i64 3                  ; &eptr10994[3]
  %eptr10995 = getelementptr inbounds i64, i64* %cloptr10990, i64 4                  ; &eptr10995[4]
  %eptr10996 = getelementptr inbounds i64, i64* %cloptr10990, i64 5                  ; &eptr10996[5]
  %eptr10997 = getelementptr inbounds i64, i64* %cloptr10990, i64 6                  ; &eptr10997[6]
  %eptr10998 = getelementptr inbounds i64, i64* %cloptr10990, i64 7                  ; &eptr10998[7]
  store i64 %a8387, i64* %eptr10992                                                  ; *eptr10992 = %a8387
  store i64 %a8384, i64* %eptr10993                                                  ; *eptr10993 = %a8384
  store i64 %wdt$_37drop, i64* %eptr10994                                            ; *eptr10994 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr10995                                                 ; *eptr10995 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr10996                                                 ; *eptr10996 = %uhi$lx
  store i64 %cont8480, i64* %eptr10997                                               ; *eptr10997 = %cont8480
  store i64 %zgo$y, i64* %eptr10998                                                  ; *eptr10998 = %zgo$y
  %eptr10991 = getelementptr inbounds i64, i64* %cloptr10990, i64 0                  ; &cloptr10990[0]
  %f10999 = ptrtoint void(i64,i64,i64)* @lam9653 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10999, i64* %eptr10991                                                 ; store fptr
  %arg9070 = ptrtoint i64* %cloptr10990 to i64                                       ; closure cast; i64* -> i64
  %cloptr11000 = inttoptr i64 %Szf$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11000)                                        ; assert function application
  %i0ptr11001 = getelementptr inbounds i64, i64* %cloptr11000, i64 0                 ; &cloptr11000[0]
  %f11003 = load i64, i64* %i0ptr11001, align 8                                      ; load; *i0ptr11001
  %fptr11002 = inttoptr i64 %f11003 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11002(i64 %Szf$_37_62, i64 %arg9070, i64 %iw7$ly, i64 %uhi$lx); tail call
  ret void
}


define void @lam9653(i64 %env9654, i64 %_958487, i64 %a8388) {
  %envptr11004 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11005 = getelementptr inbounds i64, i64* %envptr11004, i64 7                ; &envptr11004[7]
  %zgo$y = load i64, i64* %envptr11005, align 8                                      ; load; *envptr11005
  %envptr11006 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11007 = getelementptr inbounds i64, i64* %envptr11006, i64 6                ; &envptr11006[6]
  %cont8480 = load i64, i64* %envptr11007, align 8                                   ; load; *envptr11007
  %envptr11008 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11009 = getelementptr inbounds i64, i64* %envptr11008, i64 5                ; &envptr11008[5]
  %uhi$lx = load i64, i64* %envptr11009, align 8                                     ; load; *envptr11009
  %envptr11010 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11011 = getelementptr inbounds i64, i64* %envptr11010, i64 4                ; &envptr11010[4]
  %iw7$ly = load i64, i64* %envptr11011, align 8                                     ; load; *envptr11011
  %envptr11012 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11013 = getelementptr inbounds i64, i64* %envptr11012, i64 3                ; &envptr11012[3]
  %wdt$_37drop = load i64, i64* %envptr11013, align 8                                ; load; *envptr11013
  %envptr11014 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11015 = getelementptr inbounds i64, i64* %envptr11014, i64 2                ; &envptr11014[2]
  %a8384 = load i64, i64* %envptr11015, align 8                                      ; load; *envptr11015
  %envptr11016 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11017 = getelementptr inbounds i64, i64* %envptr11016, i64 1                ; &envptr11016[1]
  %a8387 = load i64, i64* %envptr11017, align 8                                      ; load; *envptr11017
  %cmp11018 = icmp eq i64 %a8388, 15                                                 ; false?
  br i1 %cmp11018, label %else11020, label %then11019                                ; if

then11019:
  %a8389 = call i64 @prim__45(i64 %iw7$ly, i64 %uhi$lx)                              ; call prim__45
  %cloptr11021 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11023 = getelementptr inbounds i64, i64* %cloptr11021, i64 1                  ; &eptr11023[1]
  %eptr11024 = getelementptr inbounds i64, i64* %cloptr11021, i64 2                  ; &eptr11024[2]
  %eptr11025 = getelementptr inbounds i64, i64* %cloptr11021, i64 3                  ; &eptr11025[3]
  store i64 %a8387, i64* %eptr11023                                                  ; *eptr11023 = %a8387
  store i64 %a8384, i64* %eptr11024                                                  ; *eptr11024 = %a8384
  store i64 %cont8480, i64* %eptr11025                                               ; *eptr11025 = %cont8480
  %eptr11022 = getelementptr inbounds i64, i64* %cloptr11021, i64 0                  ; &cloptr11021[0]
  %f11026 = ptrtoint void(i64,i64,i64)* @lam9648 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11026, i64* %eptr11022                                                 ; store fptr
  %arg9076 = ptrtoint i64* %cloptr11021 to i64                                       ; closure cast; i64* -> i64
  %cloptr11027 = inttoptr i64 %wdt$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11027)                                        ; assert function application
  %i0ptr11028 = getelementptr inbounds i64, i64* %cloptr11027, i64 0                 ; &cloptr11027[0]
  %f11030 = load i64, i64* %i0ptr11028, align 8                                      ; load; *i0ptr11028
  %fptr11029 = inttoptr i64 %f11030 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11029(i64 %wdt$_37drop, i64 %arg9076, i64 %zgo$y, i64 %a8389); tail call
  ret void

else11020:
  %cloptr11031 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11033 = getelementptr inbounds i64, i64* %cloptr11031, i64 1                  ; &eptr11033[1]
  %eptr11034 = getelementptr inbounds i64, i64* %cloptr11031, i64 2                  ; &eptr11034[2]
  %eptr11035 = getelementptr inbounds i64, i64* %cloptr11031, i64 3                  ; &eptr11035[3]
  store i64 %a8387, i64* %eptr11033                                                  ; *eptr11033 = %a8387
  store i64 %a8384, i64* %eptr11034                                                  ; *eptr11034 = %a8384
  store i64 %cont8480, i64* %eptr11035                                               ; *eptr11035 = %cont8480
  %eptr11032 = getelementptr inbounds i64, i64* %cloptr11031, i64 0                  ; &cloptr11031[0]
  %f11036 = ptrtoint void(i64,i64,i64)* @lam9651 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11036, i64* %eptr11032                                                 ; store fptr
  %arg9084 = ptrtoint i64* %cloptr11031 to i64                                       ; closure cast; i64* -> i64
  %arg9083 = add i64 0, 0                                                            ; quoted ()
  %cloptr11037 = inttoptr i64 %arg9084 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11037)                                        ; assert function application
  %i0ptr11038 = getelementptr inbounds i64, i64* %cloptr11037, i64 0                 ; &cloptr11037[0]
  %f11040 = load i64, i64* %i0ptr11038, align 8                                      ; load; *i0ptr11038
  %fptr11039 = inttoptr i64 %f11040 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11039(i64 %arg9084, i64 %arg9083, i64 %zgo$y)       ; tail call
  ret void
}


define void @lam9651(i64 %env9652, i64 %_958488, i64 %a8390) {
  %envptr11041 = inttoptr i64 %env9652 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11042 = getelementptr inbounds i64, i64* %envptr11041, i64 3                ; &envptr11041[3]
  %cont8480 = load i64, i64* %envptr11042, align 8                                   ; load; *envptr11042
  %envptr11043 = inttoptr i64 %env9652 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11044 = getelementptr inbounds i64, i64* %envptr11043, i64 2                ; &envptr11043[2]
  %a8384 = load i64, i64* %envptr11044, align 8                                      ; load; *envptr11044
  %envptr11045 = inttoptr i64 %env9652 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11046 = getelementptr inbounds i64, i64* %envptr11045, i64 1                ; &envptr11045[1]
  %a8387 = load i64, i64* %envptr11046, align 8                                      ; load; *envptr11046
  %cloptr11047 = inttoptr i64 %a8384 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11047)                                        ; assert function application
  %i0ptr11048 = getelementptr inbounds i64, i64* %cloptr11047, i64 0                 ; &cloptr11047[0]
  %f11050 = load i64, i64* %i0ptr11048, align 8                                      ; load; *i0ptr11048
  %fptr11049 = inttoptr i64 %f11050 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11049(i64 %a8384, i64 %cont8480, i64 %a8387, i64 %a8390); tail call
  ret void
}


define void @lam9648(i64 %env9649, i64 %_958488, i64 %a8390) {
  %envptr11051 = inttoptr i64 %env9649 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11052 = getelementptr inbounds i64, i64* %envptr11051, i64 3                ; &envptr11051[3]
  %cont8480 = load i64, i64* %envptr11052, align 8                                   ; load; *envptr11052
  %envptr11053 = inttoptr i64 %env9649 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11054 = getelementptr inbounds i64, i64* %envptr11053, i64 2                ; &envptr11053[2]
  %a8384 = load i64, i64* %envptr11054, align 8                                      ; load; *envptr11054
  %envptr11055 = inttoptr i64 %env9649 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11056 = getelementptr inbounds i64, i64* %envptr11055, i64 1                ; &envptr11055[1]
  %a8387 = load i64, i64* %envptr11056, align 8                                      ; load; *envptr11056
  %cloptr11057 = inttoptr i64 %a8384 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11057)                                        ; assert function application
  %i0ptr11058 = getelementptr inbounds i64, i64* %cloptr11057, i64 0                 ; &cloptr11057[0]
  %f11060 = load i64, i64* %i0ptr11058, align 8                                      ; load; *i0ptr11058
  %fptr11059 = inttoptr i64 %f11060 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11059(i64 %a8384, i64 %cont8480, i64 %a8387, i64 %a8390); tail call
  ret void
}


define void @lam9645(i64 %env9646, i64 %_958486, i64 %a8387) {
  %envptr11061 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11062 = getelementptr inbounds i64, i64* %envptr11061, i64 7                ; &envptr11061[7]
  %zgo$y = load i64, i64* %envptr11062, align 8                                      ; load; *envptr11062
  %envptr11063 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11064 = getelementptr inbounds i64, i64* %envptr11063, i64 6                ; &envptr11063[6]
  %cont8480 = load i64, i64* %envptr11064, align 8                                   ; load; *envptr11064
  %envptr11065 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11066 = getelementptr inbounds i64, i64* %envptr11065, i64 5                ; &envptr11065[5]
  %uhi$lx = load i64, i64* %envptr11066, align 8                                     ; load; *envptr11066
  %envptr11067 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11068 = getelementptr inbounds i64, i64* %envptr11067, i64 4                ; &envptr11067[4]
  %iw7$ly = load i64, i64* %envptr11068, align 8                                     ; load; *envptr11068
  %envptr11069 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11070 = getelementptr inbounds i64, i64* %envptr11069, i64 3                ; &envptr11069[3]
  %wdt$_37drop = load i64, i64* %envptr11070, align 8                                ; load; *envptr11070
  %envptr11071 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11072 = getelementptr inbounds i64, i64* %envptr11071, i64 2                ; &envptr11071[2]
  %Szf$_37_62 = load i64, i64* %envptr11072, align 8                                 ; load; *envptr11072
  %envptr11073 = inttoptr i64 %env9646 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11074 = getelementptr inbounds i64, i64* %envptr11073, i64 1                ; &envptr11073[1]
  %a8384 = load i64, i64* %envptr11074, align 8                                      ; load; *envptr11074
  %cloptr11075 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11077 = getelementptr inbounds i64, i64* %cloptr11075, i64 1                  ; &eptr11077[1]
  %eptr11078 = getelementptr inbounds i64, i64* %cloptr11075, i64 2                  ; &eptr11078[2]
  %eptr11079 = getelementptr inbounds i64, i64* %cloptr11075, i64 3                  ; &eptr11079[3]
  %eptr11080 = getelementptr inbounds i64, i64* %cloptr11075, i64 4                  ; &eptr11080[4]
  %eptr11081 = getelementptr inbounds i64, i64* %cloptr11075, i64 5                  ; &eptr11081[5]
  %eptr11082 = getelementptr inbounds i64, i64* %cloptr11075, i64 6                  ; &eptr11082[6]
  %eptr11083 = getelementptr inbounds i64, i64* %cloptr11075, i64 7                  ; &eptr11083[7]
  store i64 %a8387, i64* %eptr11077                                                  ; *eptr11077 = %a8387
  store i64 %a8384, i64* %eptr11078                                                  ; *eptr11078 = %a8384
  store i64 %wdt$_37drop, i64* %eptr11079                                            ; *eptr11079 = %wdt$_37drop
  store i64 %iw7$ly, i64* %eptr11080                                                 ; *eptr11080 = %iw7$ly
  store i64 %uhi$lx, i64* %eptr11081                                                 ; *eptr11081 = %uhi$lx
  store i64 %cont8480, i64* %eptr11082                                               ; *eptr11082 = %cont8480
  store i64 %zgo$y, i64* %eptr11083                                                  ; *eptr11083 = %zgo$y
  %eptr11076 = getelementptr inbounds i64, i64* %cloptr11075, i64 0                  ; &cloptr11075[0]
  %f11084 = ptrtoint void(i64,i64,i64)* @lam9643 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11084, i64* %eptr11076                                                 ; store fptr
  %arg9046 = ptrtoint i64* %cloptr11075 to i64                                       ; closure cast; i64* -> i64
  %cloptr11085 = inttoptr i64 %Szf$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11085)                                        ; assert function application
  %i0ptr11086 = getelementptr inbounds i64, i64* %cloptr11085, i64 0                 ; &cloptr11085[0]
  %f11088 = load i64, i64* %i0ptr11086, align 8                                      ; load; *i0ptr11086
  %fptr11087 = inttoptr i64 %f11088 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11087(i64 %Szf$_37_62, i64 %arg9046, i64 %iw7$ly, i64 %uhi$lx); tail call
  ret void
}


define void @lam9643(i64 %env9644, i64 %_958487, i64 %a8388) {
  %envptr11089 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11090 = getelementptr inbounds i64, i64* %envptr11089, i64 7                ; &envptr11089[7]
  %zgo$y = load i64, i64* %envptr11090, align 8                                      ; load; *envptr11090
  %envptr11091 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11092 = getelementptr inbounds i64, i64* %envptr11091, i64 6                ; &envptr11091[6]
  %cont8480 = load i64, i64* %envptr11092, align 8                                   ; load; *envptr11092
  %envptr11093 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11094 = getelementptr inbounds i64, i64* %envptr11093, i64 5                ; &envptr11093[5]
  %uhi$lx = load i64, i64* %envptr11094, align 8                                     ; load; *envptr11094
  %envptr11095 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11096 = getelementptr inbounds i64, i64* %envptr11095, i64 4                ; &envptr11095[4]
  %iw7$ly = load i64, i64* %envptr11096, align 8                                     ; load; *envptr11096
  %envptr11097 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11098 = getelementptr inbounds i64, i64* %envptr11097, i64 3                ; &envptr11097[3]
  %wdt$_37drop = load i64, i64* %envptr11098, align 8                                ; load; *envptr11098
  %envptr11099 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11100 = getelementptr inbounds i64, i64* %envptr11099, i64 2                ; &envptr11099[2]
  %a8384 = load i64, i64* %envptr11100, align 8                                      ; load; *envptr11100
  %envptr11101 = inttoptr i64 %env9644 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11102 = getelementptr inbounds i64, i64* %envptr11101, i64 1                ; &envptr11101[1]
  %a8387 = load i64, i64* %envptr11102, align 8                                      ; load; *envptr11102
  %cmp11103 = icmp eq i64 %a8388, 15                                                 ; false?
  br i1 %cmp11103, label %else11105, label %then11104                                ; if

then11104:
  %a8389 = call i64 @prim__45(i64 %iw7$ly, i64 %uhi$lx)                              ; call prim__45
  %cloptr11106 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11108 = getelementptr inbounds i64, i64* %cloptr11106, i64 1                  ; &eptr11108[1]
  %eptr11109 = getelementptr inbounds i64, i64* %cloptr11106, i64 2                  ; &eptr11109[2]
  %eptr11110 = getelementptr inbounds i64, i64* %cloptr11106, i64 3                  ; &eptr11110[3]
  store i64 %a8387, i64* %eptr11108                                                  ; *eptr11108 = %a8387
  store i64 %a8384, i64* %eptr11109                                                  ; *eptr11109 = %a8384
  store i64 %cont8480, i64* %eptr11110                                               ; *eptr11110 = %cont8480
  %eptr11107 = getelementptr inbounds i64, i64* %cloptr11106, i64 0                  ; &cloptr11106[0]
  %f11111 = ptrtoint void(i64,i64,i64)* @lam9638 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11111, i64* %eptr11107                                                 ; store fptr
  %arg9052 = ptrtoint i64* %cloptr11106 to i64                                       ; closure cast; i64* -> i64
  %cloptr11112 = inttoptr i64 %wdt$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11112)                                        ; assert function application
  %i0ptr11113 = getelementptr inbounds i64, i64* %cloptr11112, i64 0                 ; &cloptr11112[0]
  %f11115 = load i64, i64* %i0ptr11113, align 8                                      ; load; *i0ptr11113
  %fptr11114 = inttoptr i64 %f11115 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11114(i64 %wdt$_37drop, i64 %arg9052, i64 %zgo$y, i64 %a8389); tail call
  ret void

else11105:
  %cloptr11116 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11118 = getelementptr inbounds i64, i64* %cloptr11116, i64 1                  ; &eptr11118[1]
  %eptr11119 = getelementptr inbounds i64, i64* %cloptr11116, i64 2                  ; &eptr11119[2]
  %eptr11120 = getelementptr inbounds i64, i64* %cloptr11116, i64 3                  ; &eptr11120[3]
  store i64 %a8387, i64* %eptr11118                                                  ; *eptr11118 = %a8387
  store i64 %a8384, i64* %eptr11119                                                  ; *eptr11119 = %a8384
  store i64 %cont8480, i64* %eptr11120                                               ; *eptr11120 = %cont8480
  %eptr11117 = getelementptr inbounds i64, i64* %cloptr11116, i64 0                  ; &cloptr11116[0]
  %f11121 = ptrtoint void(i64,i64,i64)* @lam9641 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11121, i64* %eptr11117                                                 ; store fptr
  %arg9060 = ptrtoint i64* %cloptr11116 to i64                                       ; closure cast; i64* -> i64
  %arg9059 = add i64 0, 0                                                            ; quoted ()
  %cloptr11122 = inttoptr i64 %arg9060 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11122)                                        ; assert function application
  %i0ptr11123 = getelementptr inbounds i64, i64* %cloptr11122, i64 0                 ; &cloptr11122[0]
  %f11125 = load i64, i64* %i0ptr11123, align 8                                      ; load; *i0ptr11123
  %fptr11124 = inttoptr i64 %f11125 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11124(i64 %arg9060, i64 %arg9059, i64 %zgo$y)       ; tail call
  ret void
}


define void @lam9641(i64 %env9642, i64 %_958488, i64 %a8390) {
  %envptr11126 = inttoptr i64 %env9642 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11127 = getelementptr inbounds i64, i64* %envptr11126, i64 3                ; &envptr11126[3]
  %cont8480 = load i64, i64* %envptr11127, align 8                                   ; load; *envptr11127
  %envptr11128 = inttoptr i64 %env9642 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11129 = getelementptr inbounds i64, i64* %envptr11128, i64 2                ; &envptr11128[2]
  %a8384 = load i64, i64* %envptr11129, align 8                                      ; load; *envptr11129
  %envptr11130 = inttoptr i64 %env9642 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11131 = getelementptr inbounds i64, i64* %envptr11130, i64 1                ; &envptr11130[1]
  %a8387 = load i64, i64* %envptr11131, align 8                                      ; load; *envptr11131
  %cloptr11132 = inttoptr i64 %a8384 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11132)                                        ; assert function application
  %i0ptr11133 = getelementptr inbounds i64, i64* %cloptr11132, i64 0                 ; &cloptr11132[0]
  %f11135 = load i64, i64* %i0ptr11133, align 8                                      ; load; *i0ptr11133
  %fptr11134 = inttoptr i64 %f11135 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11134(i64 %a8384, i64 %cont8480, i64 %a8387, i64 %a8390); tail call
  ret void
}


define void @lam9638(i64 %env9639, i64 %_958488, i64 %a8390) {
  %envptr11136 = inttoptr i64 %env9639 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11137 = getelementptr inbounds i64, i64* %envptr11136, i64 3                ; &envptr11136[3]
  %cont8480 = load i64, i64* %envptr11137, align 8                                   ; load; *envptr11137
  %envptr11138 = inttoptr i64 %env9639 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11139 = getelementptr inbounds i64, i64* %envptr11138, i64 2                ; &envptr11138[2]
  %a8384 = load i64, i64* %envptr11139, align 8                                      ; load; *envptr11139
  %envptr11140 = inttoptr i64 %env9639 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11141 = getelementptr inbounds i64, i64* %envptr11140, i64 1                ; &envptr11140[1]
  %a8387 = load i64, i64* %envptr11141, align 8                                      ; load; *envptr11141
  %cloptr11142 = inttoptr i64 %a8384 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11142)                                        ; assert function application
  %i0ptr11143 = getelementptr inbounds i64, i64* %cloptr11142, i64 0                 ; &cloptr11142[0]
  %f11145 = load i64, i64* %i0ptr11143, align 8                                      ; load; *i0ptr11143
  %fptr11144 = inttoptr i64 %f11145 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11144(i64 %a8384, i64 %cont8480, i64 %a8387, i64 %a8390); tail call
  ret void
}


define void @lam9635(i64 %env9636, i64 %cont8493, i64 %Qf7$new) {
  %envptr11146 = inttoptr i64 %env9636 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11147 = getelementptr inbounds i64, i64* %envptr11146, i64 2                ; &envptr11146[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11147, align 8                        ; load; *envptr11147
  %envptr11148 = inttoptr i64 %env9636 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11149 = getelementptr inbounds i64, i64* %envptr11148, i64 1                ; &envptr11148[1]
  %HdB$_37common_45tail = load i64, i64* %envptr11149, align 8                       ; load; *envptr11149
  %arg9089 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8391 = call i64 @prim_vector_45ref(i64 %ThD$_37wind_45stack, i64 %arg9089)       ; call prim_vector_45ref
  %cloptr11150 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11152 = getelementptr inbounds i64, i64* %cloptr11150, i64 1                  ; &eptr11152[1]
  %eptr11153 = getelementptr inbounds i64, i64* %cloptr11150, i64 2                  ; &eptr11153[2]
  %eptr11154 = getelementptr inbounds i64, i64* %cloptr11150, i64 3                  ; &eptr11154[3]
  store i64 %Qf7$new, i64* %eptr11152                                                ; *eptr11152 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11153                                    ; *eptr11153 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11154                                               ; *eptr11154 = %cont8493
  %eptr11151 = getelementptr inbounds i64, i64* %cloptr11150, i64 0                  ; &cloptr11150[0]
  %f11155 = ptrtoint void(i64,i64,i64)* @lam9632 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11155, i64* %eptr11151                                                 ; store fptr
  %arg9093 = ptrtoint i64* %cloptr11150 to i64                                       ; closure cast; i64* -> i64
  %cloptr11156 = inttoptr i64 %HdB$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11156)                                        ; assert function application
  %i0ptr11157 = getelementptr inbounds i64, i64* %cloptr11156, i64 0                 ; &cloptr11156[0]
  %f11159 = load i64, i64* %i0ptr11157, align 8                                      ; load; *i0ptr11157
  %fptr11158 = inttoptr i64 %f11159 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11158(i64 %HdB$_37common_45tail, i64 %arg9093, i64 %Qf7$new, i64 %a8391); tail call
  ret void
}


define void @lam9632(i64 %env9633, i64 %_958494, i64 %OKD$tail) {
  %envptr11160 = inttoptr i64 %env9633 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11161 = getelementptr inbounds i64, i64* %envptr11160, i64 3                ; &envptr11160[3]
  %cont8493 = load i64, i64* %envptr11161, align 8                                   ; load; *envptr11161
  %envptr11162 = inttoptr i64 %env9633 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11163 = getelementptr inbounds i64, i64* %envptr11162, i64 2                ; &envptr11162[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11163, align 8                        ; load; *envptr11163
  %envptr11164 = inttoptr i64 %env9633 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11165 = getelementptr inbounds i64, i64* %envptr11164, i64 1                ; &envptr11164[1]
  %Qf7$new = load i64, i64* %envptr11165, align 8                                    ; load; *envptr11165
  %cloptr11166 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11167 = getelementptr inbounds i64, i64* %cloptr11166, i64 0                  ; &cloptr11166[0]
  %f11168 = ptrtoint void(i64,i64)* @lam9630 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11168, i64* %eptr11167                                                 ; store fptr
  %arg9096 = ptrtoint i64* %cloptr11166 to i64                                       ; closure cast; i64* -> i64
  %cloptr11169 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11171 = getelementptr inbounds i64, i64* %cloptr11169, i64 1                  ; &eptr11171[1]
  %eptr11172 = getelementptr inbounds i64, i64* %cloptr11169, i64 2                  ; &eptr11172[2]
  %eptr11173 = getelementptr inbounds i64, i64* %cloptr11169, i64 3                  ; &eptr11173[3]
  %eptr11174 = getelementptr inbounds i64, i64* %cloptr11169, i64 4                  ; &eptr11174[4]
  store i64 %Qf7$new, i64* %eptr11171                                                ; *eptr11171 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11172                                    ; *eptr11172 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11173                                               ; *eptr11173 = %cont8493
  store i64 %OKD$tail, i64* %eptr11174                                               ; *eptr11174 = %OKD$tail
  %eptr11170 = getelementptr inbounds i64, i64* %cloptr11169, i64 0                  ; &cloptr11169[0]
  %f11175 = ptrtoint void(i64,i64,i64)* @lam9627 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11175, i64* %eptr11170                                                 ; store fptr
  %arg9095 = ptrtoint i64* %cloptr11169 to i64                                       ; closure cast; i64* -> i64
  %cloptr11176 = inttoptr i64 %arg9096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11176)                                        ; assert function application
  %i0ptr11177 = getelementptr inbounds i64, i64* %cloptr11176, i64 0                 ; &cloptr11176[0]
  %f11179 = load i64, i64* %i0ptr11177, align 8                                      ; load; *i0ptr11177
  %fptr11178 = inttoptr i64 %f11179 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11178(i64 %arg9096, i64 %arg9095)                   ; tail call
  ret void
}


define void @lam9630(i64 %env9631, i64 %jrI$lst8515) {
  %cont8514 = call i64 @prim_car(i64 %jrI$lst8515)                                   ; call prim_car
  %jrI$lst = call i64 @prim_cdr(i64 %jrI$lst8515)                                    ; call prim_cdr
  %arg9100 = add i64 0, 0                                                            ; quoted ()
  %cloptr11180 = inttoptr i64 %cont8514 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11180)                                        ; assert function application
  %i0ptr11181 = getelementptr inbounds i64, i64* %cloptr11180, i64 0                 ; &cloptr11180[0]
  %f11183 = load i64, i64* %i0ptr11181, align 8                                      ; load; *i0ptr11181
  %fptr11182 = inttoptr i64 %f11183 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11182(i64 %cont8514, i64 %arg9100, i64 %jrI$lst)    ; tail call
  ret void
}


define void @lam9627(i64 %env9628, i64 %_958512, i64 %a8392) {
  %envptr11184 = inttoptr i64 %env9628 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11185 = getelementptr inbounds i64, i64* %envptr11184, i64 4                ; &envptr11184[4]
  %OKD$tail = load i64, i64* %envptr11185, align 8                                   ; load; *envptr11185
  %envptr11186 = inttoptr i64 %env9628 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11187 = getelementptr inbounds i64, i64* %envptr11186, i64 3                ; &envptr11186[3]
  %cont8493 = load i64, i64* %envptr11187, align 8                                   ; load; *envptr11187
  %envptr11188 = inttoptr i64 %env9628 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11189 = getelementptr inbounds i64, i64* %envptr11188, i64 2                ; &envptr11188[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11189, align 8                        ; load; *envptr11189
  %envptr11190 = inttoptr i64 %env9628 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11191 = getelementptr inbounds i64, i64* %envptr11190, i64 1                ; &envptr11190[1]
  %Qf7$new = load i64, i64* %envptr11191, align 8                                    ; load; *envptr11191
  %arg9103 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim8513 = call i64 @prim_make_45vector(i64 %arg9103, i64 %a8392)              ; call prim_make_45vector
  %cloptr11192 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11194 = getelementptr inbounds i64, i64* %cloptr11192, i64 1                  ; &eptr11194[1]
  %eptr11195 = getelementptr inbounds i64, i64* %cloptr11192, i64 2                  ; &eptr11195[2]
  %eptr11196 = getelementptr inbounds i64, i64* %cloptr11192, i64 3                  ; &eptr11196[3]
  %eptr11197 = getelementptr inbounds i64, i64* %cloptr11192, i64 4                  ; &eptr11197[4]
  store i64 %Qf7$new, i64* %eptr11194                                                ; *eptr11194 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11195                                    ; *eptr11195 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11196                                               ; *eptr11196 = %cont8493
  store i64 %OKD$tail, i64* %eptr11197                                               ; *eptr11197 = %OKD$tail
  %eptr11193 = getelementptr inbounds i64, i64* %cloptr11192, i64 0                  ; &cloptr11192[0]
  %f11198 = ptrtoint void(i64,i64,i64)* @lam9624 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11198, i64* %eptr11193                                                 ; store fptr
  %arg9106 = ptrtoint i64* %cloptr11192 to i64                                       ; closure cast; i64* -> i64
  %arg9105 = add i64 0, 0                                                            ; quoted ()
  %cloptr11199 = inttoptr i64 %arg9106 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11199)                                        ; assert function application
  %i0ptr11200 = getelementptr inbounds i64, i64* %cloptr11199, i64 0                 ; &cloptr11199[0]
  %f11202 = load i64, i64* %i0ptr11200, align 8                                      ; load; *i0ptr11200
  %fptr11201 = inttoptr i64 %f11202 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11201(i64 %arg9106, i64 %arg9105, i64 %retprim8513) ; tail call
  ret void
}


define void @lam9624(i64 %env9625, i64 %_958506, i64 %laD$f) {
  %envptr11203 = inttoptr i64 %env9625 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11204 = getelementptr inbounds i64, i64* %envptr11203, i64 4                ; &envptr11203[4]
  %OKD$tail = load i64, i64* %envptr11204, align 8                                   ; load; *envptr11204
  %envptr11205 = inttoptr i64 %env9625 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11206 = getelementptr inbounds i64, i64* %envptr11205, i64 3                ; &envptr11205[3]
  %cont8493 = load i64, i64* %envptr11206, align 8                                   ; load; *envptr11206
  %envptr11207 = inttoptr i64 %env9625 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11208 = getelementptr inbounds i64, i64* %envptr11207, i64 2                ; &envptr11207[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11208, align 8                        ; load; *envptr11208
  %envptr11209 = inttoptr i64 %env9625 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11210 = getelementptr inbounds i64, i64* %envptr11209, i64 1                ; &envptr11209[1]
  %Qf7$new = load i64, i64* %envptr11210, align 8                                    ; load; *envptr11210
  %arg9108 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11211 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11213 = getelementptr inbounds i64, i64* %cloptr11211, i64 1                  ; &eptr11213[1]
  %eptr11214 = getelementptr inbounds i64, i64* %cloptr11211, i64 2                  ; &eptr11214[2]
  %eptr11215 = getelementptr inbounds i64, i64* %cloptr11211, i64 3                  ; &eptr11215[3]
  store i64 %laD$f, i64* %eptr11213                                                  ; *eptr11213 = %laD$f
  store i64 %ThD$_37wind_45stack, i64* %eptr11214                                    ; *eptr11214 = %ThD$_37wind_45stack
  store i64 %OKD$tail, i64* %eptr11215                                               ; *eptr11215 = %OKD$tail
  %eptr11212 = getelementptr inbounds i64, i64* %cloptr11211, i64 0                  ; &cloptr11211[0]
  %f11216 = ptrtoint void(i64,i64,i64)* @lam9621 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11216, i64* %eptr11212                                                 ; store fptr
  %arg9107 = ptrtoint i64* %cloptr11211 to i64                                       ; closure cast; i64* -> i64
  %CyN$_958285 = call i64 @prim_vector_45set_33(i64 %laD$f, i64 %arg9108, i64 %arg9107); call prim_vector_45set_33
  %arg9133 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8400 = call i64 @prim_vector_45ref(i64 %laD$f, i64 %arg9133)                     ; call prim_vector_45ref
  %arg9135 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8401 = call i64 @prim_vector_45ref(i64 %ThD$_37wind_45stack, i64 %arg9135)       ; call prim_vector_45ref
  %cloptr11217 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11219 = getelementptr inbounds i64, i64* %cloptr11217, i64 1                  ; &eptr11219[1]
  %eptr11220 = getelementptr inbounds i64, i64* %cloptr11217, i64 2                  ; &eptr11220[2]
  %eptr11221 = getelementptr inbounds i64, i64* %cloptr11217, i64 3                  ; &eptr11221[3]
  %eptr11222 = getelementptr inbounds i64, i64* %cloptr11217, i64 4                  ; &eptr11222[4]
  store i64 %Qf7$new, i64* %eptr11219                                                ; *eptr11219 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11220                                    ; *eptr11220 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11221                                               ; *eptr11221 = %cont8493
  store i64 %OKD$tail, i64* %eptr11222                                               ; *eptr11222 = %OKD$tail
  %eptr11218 = getelementptr inbounds i64, i64* %cloptr11217, i64 0                  ; &cloptr11217[0]
  %f11223 = ptrtoint void(i64,i64,i64)* @lam9609 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11223, i64* %eptr11218                                                 ; store fptr
  %arg9138 = ptrtoint i64* %cloptr11217 to i64                                       ; closure cast; i64* -> i64
  %cloptr11224 = inttoptr i64 %a8400 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11224)                                        ; assert function application
  %i0ptr11225 = getelementptr inbounds i64, i64* %cloptr11224, i64 0                 ; &cloptr11224[0]
  %f11227 = load i64, i64* %i0ptr11225, align 8                                      ; load; *i0ptr11225
  %fptr11226 = inttoptr i64 %f11227 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11226(i64 %a8400, i64 %arg9138, i64 %a8401)         ; tail call
  ret void
}


define void @lam9621(i64 %env9622, i64 %cont8507, i64 %BOn$l) {
  %envptr11228 = inttoptr i64 %env9622 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11229 = getelementptr inbounds i64, i64* %envptr11228, i64 3                ; &envptr11228[3]
  %OKD$tail = load i64, i64* %envptr11229, align 8                                   ; load; *envptr11229
  %envptr11230 = inttoptr i64 %env9622 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11231 = getelementptr inbounds i64, i64* %envptr11230, i64 2                ; &envptr11230[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11231, align 8                        ; load; *envptr11231
  %envptr11232 = inttoptr i64 %env9622 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11233 = getelementptr inbounds i64, i64* %envptr11232, i64 1                ; &envptr11232[1]
  %laD$f = load i64, i64* %envptr11233, align 8                                      ; load; *envptr11233
  %a8393 = call i64 @prim_eq_63(i64 %BOn$l, i64 %OKD$tail)                           ; call prim_eq_63
  %a8394 = call i64 @prim_not(i64 %a8393)                                            ; call prim_not
  %cmp11234 = icmp eq i64 %a8394, 15                                                 ; false?
  br i1 %cmp11234, label %else11236, label %then11235                                ; if

then11235:
  %a8395 = call i64 @prim_cdr(i64 %BOn$l)                                            ; call prim_cdr
  %arg9115 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8510 = call i64 @prim_vector_45set_33(i64 %ThD$_37wind_45stack, i64 %arg9115, i64 %a8395); call prim_vector_45set_33
  %cloptr11237 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11239 = getelementptr inbounds i64, i64* %cloptr11237, i64 1                  ; &eptr11239[1]
  %eptr11240 = getelementptr inbounds i64, i64* %cloptr11237, i64 2                  ; &eptr11240[2]
  %eptr11241 = getelementptr inbounds i64, i64* %cloptr11237, i64 3                  ; &eptr11241[3]
  store i64 %cont8507, i64* %eptr11239                                               ; *eptr11239 = %cont8507
  store i64 %laD$f, i64* %eptr11240                                                  ; *eptr11240 = %laD$f
  store i64 %BOn$l, i64* %eptr11241                                                  ; *eptr11241 = %BOn$l
  %eptr11238 = getelementptr inbounds i64, i64* %cloptr11237, i64 0                  ; &cloptr11237[0]
  %f11242 = ptrtoint void(i64,i64,i64)* @lam9617 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11242, i64* %eptr11238                                                 ; store fptr
  %arg9119 = ptrtoint i64* %cloptr11237 to i64                                       ; closure cast; i64* -> i64
  %arg9118 = add i64 0, 0                                                            ; quoted ()
  %cloptr11243 = inttoptr i64 %arg9119 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11243)                                        ; assert function application
  %i0ptr11244 = getelementptr inbounds i64, i64* %cloptr11243, i64 0                 ; &cloptr11243[0]
  %f11246 = load i64, i64* %i0ptr11244, align 8                                      ; load; *i0ptr11244
  %fptr11245 = inttoptr i64 %f11246 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11245(i64 %arg9119, i64 %arg9118, i64 %retprim8510) ; tail call
  ret void

else11236:
  %retprim8511 = call i64 @prim_void()                                               ; call prim_void
  %arg9131 = add i64 0, 0                                                            ; quoted ()
  %cloptr11247 = inttoptr i64 %cont8507 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11247)                                        ; assert function application
  %i0ptr11248 = getelementptr inbounds i64, i64* %cloptr11247, i64 0                 ; &cloptr11247[0]
  %f11250 = load i64, i64* %i0ptr11248, align 8                                      ; load; *i0ptr11248
  %fptr11249 = inttoptr i64 %f11250 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11249(i64 %cont8507, i64 %arg9131, i64 %retprim8511); tail call
  ret void
}


define void @lam9617(i64 %env9618, i64 %_958508, i64 %l3b$_958286) {
  %envptr11251 = inttoptr i64 %env9618 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11252 = getelementptr inbounds i64, i64* %envptr11251, i64 3                ; &envptr11251[3]
  %BOn$l = load i64, i64* %envptr11252, align 8                                      ; load; *envptr11252
  %envptr11253 = inttoptr i64 %env9618 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11254 = getelementptr inbounds i64, i64* %envptr11253, i64 2                ; &envptr11253[2]
  %laD$f = load i64, i64* %envptr11254, align 8                                      ; load; *envptr11254
  %envptr11255 = inttoptr i64 %env9618 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11256 = getelementptr inbounds i64, i64* %envptr11255, i64 1                ; &envptr11255[1]
  %cont8507 = load i64, i64* %envptr11256, align 8                                   ; load; *envptr11256
  %a8396 = call i64 @prim_car(i64 %BOn$l)                                            ; call prim_car
  %a8397 = call i64 @prim_cdr(i64 %a8396)                                            ; call prim_cdr
  %cloptr11257 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11259 = getelementptr inbounds i64, i64* %cloptr11257, i64 1                  ; &eptr11259[1]
  %eptr11260 = getelementptr inbounds i64, i64* %cloptr11257, i64 2                  ; &eptr11260[2]
  %eptr11261 = getelementptr inbounds i64, i64* %cloptr11257, i64 3                  ; &eptr11261[3]
  store i64 %cont8507, i64* %eptr11259                                               ; *eptr11259 = %cont8507
  store i64 %laD$f, i64* %eptr11260                                                  ; *eptr11260 = %laD$f
  store i64 %BOn$l, i64* %eptr11261                                                  ; *eptr11261 = %BOn$l
  %eptr11258 = getelementptr inbounds i64, i64* %cloptr11257, i64 0                  ; &cloptr11257[0]
  %f11262 = ptrtoint void(i64,i64,i64)* @lam9615 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11262, i64* %eptr11258                                                 ; store fptr
  %arg9122 = ptrtoint i64* %cloptr11257 to i64                                       ; closure cast; i64* -> i64
  %cloptr11263 = inttoptr i64 %a8397 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11263)                                        ; assert function application
  %i0ptr11264 = getelementptr inbounds i64, i64* %cloptr11263, i64 0                 ; &cloptr11263[0]
  %f11266 = load i64, i64* %i0ptr11264, align 8                                      ; load; *i0ptr11264
  %fptr11265 = inttoptr i64 %f11266 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11265(i64 %a8397, i64 %arg9122)                     ; tail call
  ret void
}


define void @lam9615(i64 %env9616, i64 %_958509, i64 %gkL$_958287) {
  %envptr11267 = inttoptr i64 %env9616 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11268 = getelementptr inbounds i64, i64* %envptr11267, i64 3                ; &envptr11267[3]
  %BOn$l = load i64, i64* %envptr11268, align 8                                      ; load; *envptr11268
  %envptr11269 = inttoptr i64 %env9616 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11270 = getelementptr inbounds i64, i64* %envptr11269, i64 2                ; &envptr11269[2]
  %laD$f = load i64, i64* %envptr11270, align 8                                      ; load; *envptr11270
  %envptr11271 = inttoptr i64 %env9616 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11272 = getelementptr inbounds i64, i64* %envptr11271, i64 1                ; &envptr11271[1]
  %cont8507 = load i64, i64* %envptr11272, align 8                                   ; load; *envptr11272
  %arg9124 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8398 = call i64 @prim_vector_45ref(i64 %laD$f, i64 %arg9124)                     ; call prim_vector_45ref
  %a8399 = call i64 @prim_cdr(i64 %BOn$l)                                            ; call prim_cdr
  %cloptr11273 = inttoptr i64 %a8398 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11273)                                        ; assert function application
  %i0ptr11274 = getelementptr inbounds i64, i64* %cloptr11273, i64 0                 ; &cloptr11273[0]
  %f11276 = load i64, i64* %i0ptr11274, align 8                                      ; load; *i0ptr11274
  %fptr11275 = inttoptr i64 %f11276 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11275(i64 %a8398, i64 %cont8507, i64 %a8399)        ; tail call
  ret void
}


define void @lam9609(i64 %env9610, i64 %_958495, i64 %MhN$_958284) {
  %envptr11277 = inttoptr i64 %env9610 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11278 = getelementptr inbounds i64, i64* %envptr11277, i64 4                ; &envptr11277[4]
  %OKD$tail = load i64, i64* %envptr11278, align 8                                   ; load; *envptr11278
  %envptr11279 = inttoptr i64 %env9610 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11280 = getelementptr inbounds i64, i64* %envptr11279, i64 3                ; &envptr11279[3]
  %cont8493 = load i64, i64* %envptr11280, align 8                                   ; load; *envptr11280
  %envptr11281 = inttoptr i64 %env9610 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11282 = getelementptr inbounds i64, i64* %envptr11281, i64 2                ; &envptr11281[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11282, align 8                        ; load; *envptr11282
  %envptr11283 = inttoptr i64 %env9610 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11284 = getelementptr inbounds i64, i64* %envptr11283, i64 1                ; &envptr11283[1]
  %Qf7$new = load i64, i64* %envptr11284, align 8                                    ; load; *envptr11284
  %cloptr11285 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11286 = getelementptr inbounds i64, i64* %cloptr11285, i64 0                  ; &cloptr11285[0]
  %f11287 = ptrtoint void(i64,i64)* @lam9607 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11287, i64* %eptr11286                                                 ; store fptr
  %arg9141 = ptrtoint i64* %cloptr11285 to i64                                       ; closure cast; i64* -> i64
  %cloptr11288 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11290 = getelementptr inbounds i64, i64* %cloptr11288, i64 1                  ; &eptr11290[1]
  %eptr11291 = getelementptr inbounds i64, i64* %cloptr11288, i64 2                  ; &eptr11291[2]
  %eptr11292 = getelementptr inbounds i64, i64* %cloptr11288, i64 3                  ; &eptr11292[3]
  %eptr11293 = getelementptr inbounds i64, i64* %cloptr11288, i64 4                  ; &eptr11293[4]
  store i64 %Qf7$new, i64* %eptr11290                                                ; *eptr11290 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11291                                    ; *eptr11291 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11292                                               ; *eptr11292 = %cont8493
  store i64 %OKD$tail, i64* %eptr11293                                               ; *eptr11293 = %OKD$tail
  %eptr11289 = getelementptr inbounds i64, i64* %cloptr11288, i64 0                  ; &cloptr11288[0]
  %f11294 = ptrtoint void(i64,i64,i64)* @lam9604 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11294, i64* %eptr11289                                                 ; store fptr
  %arg9140 = ptrtoint i64* %cloptr11288 to i64                                       ; closure cast; i64* -> i64
  %cloptr11295 = inttoptr i64 %arg9141 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11295)                                        ; assert function application
  %i0ptr11296 = getelementptr inbounds i64, i64* %cloptr11295, i64 0                 ; &cloptr11295[0]
  %f11298 = load i64, i64* %i0ptr11296, align 8                                      ; load; *i0ptr11296
  %fptr11297 = inttoptr i64 %f11298 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11297(i64 %arg9141, i64 %arg9140)                   ; tail call
  ret void
}


define void @lam9607(i64 %env9608, i64 %Bhn$lst8505) {
  %cont8504 = call i64 @prim_car(i64 %Bhn$lst8505)                                   ; call prim_car
  %Bhn$lst = call i64 @prim_cdr(i64 %Bhn$lst8505)                                    ; call prim_cdr
  %arg9145 = add i64 0, 0                                                            ; quoted ()
  %cloptr11299 = inttoptr i64 %cont8504 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11299)                                        ; assert function application
  %i0ptr11300 = getelementptr inbounds i64, i64* %cloptr11299, i64 0                 ; &cloptr11299[0]
  %f11302 = load i64, i64* %i0ptr11300, align 8                                      ; load; *i0ptr11300
  %fptr11301 = inttoptr i64 %f11302 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11301(i64 %cont8504, i64 %arg9145, i64 %Bhn$lst)    ; tail call
  ret void
}


define void @lam9604(i64 %env9605, i64 %_958502, i64 %a8402) {
  %envptr11303 = inttoptr i64 %env9605 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11304 = getelementptr inbounds i64, i64* %envptr11303, i64 4                ; &envptr11303[4]
  %OKD$tail = load i64, i64* %envptr11304, align 8                                   ; load; *envptr11304
  %envptr11305 = inttoptr i64 %env9605 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11306 = getelementptr inbounds i64, i64* %envptr11305, i64 3                ; &envptr11305[3]
  %cont8493 = load i64, i64* %envptr11306, align 8                                   ; load; *envptr11306
  %envptr11307 = inttoptr i64 %env9605 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11308 = getelementptr inbounds i64, i64* %envptr11307, i64 2                ; &envptr11307[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11308, align 8                        ; load; *envptr11308
  %envptr11309 = inttoptr i64 %env9605 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11310 = getelementptr inbounds i64, i64* %envptr11309, i64 1                ; &envptr11309[1]
  %Qf7$new = load i64, i64* %envptr11310, align 8                                    ; load; *envptr11310
  %arg9148 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim8503 = call i64 @prim_make_45vector(i64 %arg9148, i64 %a8402)              ; call prim_make_45vector
  %cloptr11311 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11313 = getelementptr inbounds i64, i64* %cloptr11311, i64 1                  ; &eptr11313[1]
  %eptr11314 = getelementptr inbounds i64, i64* %cloptr11311, i64 2                  ; &eptr11314[2]
  %eptr11315 = getelementptr inbounds i64, i64* %cloptr11311, i64 3                  ; &eptr11315[3]
  %eptr11316 = getelementptr inbounds i64, i64* %cloptr11311, i64 4                  ; &eptr11316[4]
  store i64 %Qf7$new, i64* %eptr11313                                                ; *eptr11313 = %Qf7$new
  store i64 %ThD$_37wind_45stack, i64* %eptr11314                                    ; *eptr11314 = %ThD$_37wind_45stack
  store i64 %cont8493, i64* %eptr11315                                               ; *eptr11315 = %cont8493
  store i64 %OKD$tail, i64* %eptr11316                                               ; *eptr11316 = %OKD$tail
  %eptr11312 = getelementptr inbounds i64, i64* %cloptr11311, i64 0                  ; &cloptr11311[0]
  %f11317 = ptrtoint void(i64,i64,i64)* @lam9601 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11317, i64* %eptr11312                                                 ; store fptr
  %arg9151 = ptrtoint i64* %cloptr11311 to i64                                       ; closure cast; i64* -> i64
  %arg9150 = add i64 0, 0                                                            ; quoted ()
  %cloptr11318 = inttoptr i64 %arg9151 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11318)                                        ; assert function application
  %i0ptr11319 = getelementptr inbounds i64, i64* %cloptr11318, i64 0                 ; &cloptr11318[0]
  %f11321 = load i64, i64* %i0ptr11319, align 8                                      ; load; *i0ptr11319
  %fptr11320 = inttoptr i64 %f11321 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11320(i64 %arg9151, i64 %arg9150, i64 %retprim8503) ; tail call
  ret void
}


define void @lam9601(i64 %env9602, i64 %_958496, i64 %e9o$f) {
  %envptr11322 = inttoptr i64 %env9602 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11323 = getelementptr inbounds i64, i64* %envptr11322, i64 4                ; &envptr11322[4]
  %OKD$tail = load i64, i64* %envptr11323, align 8                                   ; load; *envptr11323
  %envptr11324 = inttoptr i64 %env9602 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11325 = getelementptr inbounds i64, i64* %envptr11324, i64 3                ; &envptr11324[3]
  %cont8493 = load i64, i64* %envptr11325, align 8                                   ; load; *envptr11325
  %envptr11326 = inttoptr i64 %env9602 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11327 = getelementptr inbounds i64, i64* %envptr11326, i64 2                ; &envptr11326[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11327, align 8                        ; load; *envptr11327
  %envptr11328 = inttoptr i64 %env9602 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11329 = getelementptr inbounds i64, i64* %envptr11328, i64 1                ; &envptr11328[1]
  %Qf7$new = load i64, i64* %envptr11329, align 8                                    ; load; *envptr11329
  %arg9153 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11330 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11332 = getelementptr inbounds i64, i64* %cloptr11330, i64 1                  ; &eptr11332[1]
  %eptr11333 = getelementptr inbounds i64, i64* %cloptr11330, i64 2                  ; &eptr11333[2]
  %eptr11334 = getelementptr inbounds i64, i64* %cloptr11330, i64 3                  ; &eptr11334[3]
  store i64 %ThD$_37wind_45stack, i64* %eptr11332                                    ; *eptr11332 = %ThD$_37wind_45stack
  store i64 %e9o$f, i64* %eptr11333                                                  ; *eptr11333 = %e9o$f
  store i64 %OKD$tail, i64* %eptr11334                                               ; *eptr11334 = %OKD$tail
  %eptr11331 = getelementptr inbounds i64, i64* %cloptr11330, i64 0                  ; &cloptr11330[0]
  %f11335 = ptrtoint void(i64,i64,i64)* @lam9598 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11335, i64* %eptr11331                                                 ; store fptr
  %arg9152 = ptrtoint i64* %cloptr11330 to i64                                       ; closure cast; i64* -> i64
  %SYe$_958288 = call i64 @prim_vector_45set_33(i64 %e9o$f, i64 %arg9153, i64 %arg9152); call prim_vector_45set_33
  %arg9177 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8409 = call i64 @prim_vector_45ref(i64 %e9o$f, i64 %arg9177)                     ; call prim_vector_45ref
  %cloptr11336 = inttoptr i64 %a8409 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11336)                                        ; assert function application
  %i0ptr11337 = getelementptr inbounds i64, i64* %cloptr11336, i64 0                 ; &cloptr11336[0]
  %f11339 = load i64, i64* %i0ptr11337, align 8                                      ; load; *i0ptr11337
  %fptr11338 = inttoptr i64 %f11339 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11338(i64 %a8409, i64 %cont8493, i64 %Qf7$new)      ; tail call
  ret void
}


define void @lam9598(i64 %env9599, i64 %cont8497, i64 %mf7$l) {
  %envptr11340 = inttoptr i64 %env9599 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11341 = getelementptr inbounds i64, i64* %envptr11340, i64 3                ; &envptr11340[3]
  %OKD$tail = load i64, i64* %envptr11341, align 8                                   ; load; *envptr11341
  %envptr11342 = inttoptr i64 %env9599 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11343 = getelementptr inbounds i64, i64* %envptr11342, i64 2                ; &envptr11342[2]
  %e9o$f = load i64, i64* %envptr11343, align 8                                      ; load; *envptr11343
  %envptr11344 = inttoptr i64 %env9599 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11345 = getelementptr inbounds i64, i64* %envptr11344, i64 1                ; &envptr11344[1]
  %ThD$_37wind_45stack = load i64, i64* %envptr11345, align 8                        ; load; *envptr11345
  %a8403 = call i64 @prim_eq_63(i64 %mf7$l, i64 %OKD$tail)                           ; call prim_eq_63
  %a8404 = call i64 @prim_not(i64 %a8403)                                            ; call prim_not
  %cmp11346 = icmp eq i64 %a8404, 15                                                 ; false?
  br i1 %cmp11346, label %else11348, label %then11347                                ; if

then11347:
  %arg9158 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8405 = call i64 @prim_vector_45ref(i64 %e9o$f, i64 %arg9158)                     ; call prim_vector_45ref
  %a8406 = call i64 @prim_cdr(i64 %mf7$l)                                            ; call prim_cdr
  %cloptr11349 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11351 = getelementptr inbounds i64, i64* %cloptr11349, i64 1                  ; &eptr11351[1]
  %eptr11352 = getelementptr inbounds i64, i64* %cloptr11349, i64 2                  ; &eptr11352[2]
  %eptr11353 = getelementptr inbounds i64, i64* %cloptr11349, i64 3                  ; &eptr11353[3]
  store i64 %cont8497, i64* %eptr11351                                               ; *eptr11351 = %cont8497
  store i64 %ThD$_37wind_45stack, i64* %eptr11352                                    ; *eptr11352 = %ThD$_37wind_45stack
  store i64 %mf7$l, i64* %eptr11353                                                  ; *eptr11353 = %mf7$l
  %eptr11350 = getelementptr inbounds i64, i64* %cloptr11349, i64 0                  ; &cloptr11349[0]
  %f11354 = ptrtoint void(i64,i64,i64)* @lam9594 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11354, i64* %eptr11350                                                 ; store fptr
  %arg9162 = ptrtoint i64* %cloptr11349 to i64                                       ; closure cast; i64* -> i64
  %cloptr11355 = inttoptr i64 %a8405 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11355)                                        ; assert function application
  %i0ptr11356 = getelementptr inbounds i64, i64* %cloptr11355, i64 0                 ; &cloptr11355[0]
  %f11358 = load i64, i64* %i0ptr11356, align 8                                      ; load; *i0ptr11356
  %fptr11357 = inttoptr i64 %f11358 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11357(i64 %a8405, i64 %arg9162, i64 %a8406)         ; tail call
  ret void

else11348:
  %retprim8501 = call i64 @prim_void()                                               ; call prim_void
  %arg9175 = add i64 0, 0                                                            ; quoted ()
  %cloptr11359 = inttoptr i64 %cont8497 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11359)                                        ; assert function application
  %i0ptr11360 = getelementptr inbounds i64, i64* %cloptr11359, i64 0                 ; &cloptr11359[0]
  %f11362 = load i64, i64* %i0ptr11360, align 8                                      ; load; *i0ptr11360
  %fptr11361 = inttoptr i64 %f11362 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11361(i64 %cont8497, i64 %arg9175, i64 %retprim8501); tail call
  ret void
}


define void @lam9594(i64 %env9595, i64 %_958498, i64 %fnO$_958289) {
  %envptr11363 = inttoptr i64 %env9595 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11364 = getelementptr inbounds i64, i64* %envptr11363, i64 3                ; &envptr11363[3]
  %mf7$l = load i64, i64* %envptr11364, align 8                                      ; load; *envptr11364
  %envptr11365 = inttoptr i64 %env9595 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11366 = getelementptr inbounds i64, i64* %envptr11365, i64 2                ; &envptr11365[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11366, align 8                        ; load; *envptr11366
  %envptr11367 = inttoptr i64 %env9595 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11368 = getelementptr inbounds i64, i64* %envptr11367, i64 1                ; &envptr11367[1]
  %cont8497 = load i64, i64* %envptr11368, align 8                                   ; load; *envptr11368
  %a8407 = call i64 @prim_car(i64 %mf7$l)                                            ; call prim_car
  %a8408 = call i64 @prim_car(i64 %a8407)                                            ; call prim_car
  %cloptr11369 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11371 = getelementptr inbounds i64, i64* %cloptr11369, i64 1                  ; &eptr11371[1]
  %eptr11372 = getelementptr inbounds i64, i64* %cloptr11369, i64 2                  ; &eptr11372[2]
  %eptr11373 = getelementptr inbounds i64, i64* %cloptr11369, i64 3                  ; &eptr11373[3]
  store i64 %cont8497, i64* %eptr11371                                               ; *eptr11371 = %cont8497
  store i64 %ThD$_37wind_45stack, i64* %eptr11372                                    ; *eptr11372 = %ThD$_37wind_45stack
  store i64 %mf7$l, i64* %eptr11373                                                  ; *eptr11373 = %mf7$l
  %eptr11370 = getelementptr inbounds i64, i64* %cloptr11369, i64 0                  ; &cloptr11369[0]
  %f11374 = ptrtoint void(i64,i64,i64)* @lam9592 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11374, i64* %eptr11370                                                 ; store fptr
  %arg9166 = ptrtoint i64* %cloptr11369 to i64                                       ; closure cast; i64* -> i64
  %cloptr11375 = inttoptr i64 %a8408 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11375)                                        ; assert function application
  %i0ptr11376 = getelementptr inbounds i64, i64* %cloptr11375, i64 0                 ; &cloptr11375[0]
  %f11378 = load i64, i64* %i0ptr11376, align 8                                      ; load; *i0ptr11376
  %fptr11377 = inttoptr i64 %f11378 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11377(i64 %a8408, i64 %arg9166)                     ; tail call
  ret void
}


define void @lam9592(i64 %env9593, i64 %_958499, i64 %MF5$_958290) {
  %envptr11379 = inttoptr i64 %env9593 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11380 = getelementptr inbounds i64, i64* %envptr11379, i64 3                ; &envptr11379[3]
  %mf7$l = load i64, i64* %envptr11380, align 8                                      ; load; *envptr11380
  %envptr11381 = inttoptr i64 %env9593 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11382 = getelementptr inbounds i64, i64* %envptr11381, i64 2                ; &envptr11381[2]
  %ThD$_37wind_45stack = load i64, i64* %envptr11382, align 8                        ; load; *envptr11382
  %envptr11383 = inttoptr i64 %env9593 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11384 = getelementptr inbounds i64, i64* %envptr11383, i64 1                ; &envptr11383[1]
  %cont8497 = load i64, i64* %envptr11384, align 8                                   ; load; *envptr11384
  %arg9169 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim8500 = call i64 @prim_vector_45set_33(i64 %ThD$_37wind_45stack, i64 %arg9169, i64 %mf7$l); call prim_vector_45set_33
  %arg9172 = add i64 0, 0                                                            ; quoted ()
  %cloptr11385 = inttoptr i64 %cont8497 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11385)                                        ; assert function application
  %i0ptr11386 = getelementptr inbounds i64, i64* %cloptr11385, i64 0                 ; &cloptr11385[0]
  %f11388 = load i64, i64* %i0ptr11386, align 8                                      ; load; *i0ptr11386
  %fptr11387 = inttoptr i64 %f11388 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11387(i64 %cont8497, i64 %arg9172, i64 %retprim8500); tail call
  ret void
}


define void @lam9585(i64 %env9586, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr11389 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11389)                                        ; assert function application
  %i0ptr11390 = getelementptr inbounds i64, i64* %cloptr11389, i64 0                 ; &cloptr11389[0]
  %f11392 = load i64, i64* %i0ptr11390, align 8                                      ; load; *i0ptr11390
  %fptr11391 = inttoptr i64 %f11392 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11391(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam9579(i64 %env9580, i64 %cont8526, i64 %hZH$_37foldl) {
  %envptr11393 = inttoptr i64 %env9580 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11394 = getelementptr inbounds i64, i64* %envptr11393, i64 3                ; &envptr11393[3]
  %FCK$_37map1 = load i64, i64* %envptr11394, align 8                                ; load; *envptr11394
  %envptr11395 = inttoptr i64 %env9580 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11396 = getelementptr inbounds i64, i64* %envptr11395, i64 2                ; &envptr11395[2]
  %kc9$_37foldr1 = load i64, i64* %envptr11396, align 8                              ; load; *envptr11396
  %envptr11397 = inttoptr i64 %env9580 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11398 = getelementptr inbounds i64, i64* %envptr11397, i64 1                ; &envptr11397[1]
  %Be4$_37foldr = load i64, i64* %envptr11398, align 8                               ; load; *envptr11398
  %arg9188 = add i64 0, 0                                                            ; quoted ()
  %cloptr11399 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11401 = getelementptr inbounds i64, i64* %cloptr11399, i64 1                  ; &eptr11401[1]
  %eptr11402 = getelementptr inbounds i64, i64* %cloptr11399, i64 2                  ; &eptr11402[2]
  %eptr11403 = getelementptr inbounds i64, i64* %cloptr11399, i64 3                  ; &eptr11403[3]
  %eptr11404 = getelementptr inbounds i64, i64* %cloptr11399, i64 4                  ; &eptr11404[4]
  store i64 %Be4$_37foldr, i64* %eptr11401                                           ; *eptr11401 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11402                                           ; *eptr11402 = %hZH$_37foldl
  store i64 %kc9$_37foldr1, i64* %eptr11403                                          ; *eptr11403 = %kc9$_37foldr1
  store i64 %FCK$_37map1, i64* %eptr11404                                            ; *eptr11404 = %FCK$_37map1
  %eptr11400 = getelementptr inbounds i64, i64* %cloptr11399, i64 0                  ; &cloptr11399[0]
  %f11405 = ptrtoint void(i64,i64)* @lam9576 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11405, i64* %eptr11400                                                 ; store fptr
  %arg9187 = ptrtoint i64* %cloptr11399 to i64                                       ; closure cast; i64* -> i64
  %cloptr11406 = inttoptr i64 %cont8526 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11406)                                        ; assert function application
  %i0ptr11407 = getelementptr inbounds i64, i64* %cloptr11406, i64 0                 ; &cloptr11406[0]
  %f11409 = load i64, i64* %i0ptr11407, align 8                                      ; load; *i0ptr11407
  %fptr11408 = inttoptr i64 %f11409 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11408(i64 %cont8526, i64 %arg9188, i64 %arg9187)    ; tail call
  ret void
}


define void @lam9576(i64 %env9577, i64 %PSj$args8528) {
  %envptr11410 = inttoptr i64 %env9577 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11411 = getelementptr inbounds i64, i64* %envptr11410, i64 4                ; &envptr11410[4]
  %FCK$_37map1 = load i64, i64* %envptr11411, align 8                                ; load; *envptr11411
  %envptr11412 = inttoptr i64 %env9577 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11413 = getelementptr inbounds i64, i64* %envptr11412, i64 3                ; &envptr11412[3]
  %kc9$_37foldr1 = load i64, i64* %envptr11413, align 8                              ; load; *envptr11413
  %envptr11414 = inttoptr i64 %env9577 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11415 = getelementptr inbounds i64, i64* %envptr11414, i64 2                ; &envptr11414[2]
  %hZH$_37foldl = load i64, i64* %envptr11415, align 8                               ; load; *envptr11415
  %envptr11416 = inttoptr i64 %env9577 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11417 = getelementptr inbounds i64, i64* %envptr11416, i64 1                ; &envptr11416[1]
  %Be4$_37foldr = load i64, i64* %envptr11417, align 8                               ; load; *envptr11417
  %cont8527 = call i64 @prim_car(i64 %PSj$args8528)                                  ; call prim_car
  %PSj$args = call i64 @prim_cdr(i64 %PSj$args8528)                                  ; call prim_cdr
  %csr$f = call i64 @prim_car(i64 %PSj$args)                                         ; call prim_car
  %a8331 = call i64 @prim_cdr(i64 %PSj$args)                                         ; call prim_cdr
  %retprim8547 = call i64 @prim_car(i64 %a8331)                                      ; call prim_car
  %cloptr11418 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11420 = getelementptr inbounds i64, i64* %cloptr11418, i64 1                  ; &eptr11420[1]
  %eptr11421 = getelementptr inbounds i64, i64* %cloptr11418, i64 2                  ; &eptr11421[2]
  %eptr11422 = getelementptr inbounds i64, i64* %cloptr11418, i64 3                  ; &eptr11422[3]
  %eptr11423 = getelementptr inbounds i64, i64* %cloptr11418, i64 4                  ; &eptr11423[4]
  %eptr11424 = getelementptr inbounds i64, i64* %cloptr11418, i64 5                  ; &eptr11424[5]
  %eptr11425 = getelementptr inbounds i64, i64* %cloptr11418, i64 6                  ; &eptr11425[6]
  %eptr11426 = getelementptr inbounds i64, i64* %cloptr11418, i64 7                  ; &eptr11426[7]
  store i64 %Be4$_37foldr, i64* %eptr11420                                           ; *eptr11420 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11421                                           ; *eptr11421 = %hZH$_37foldl
  store i64 %csr$f, i64* %eptr11422                                                  ; *eptr11422 = %csr$f
  store i64 %cont8527, i64* %eptr11423                                               ; *eptr11423 = %cont8527
  store i64 %kc9$_37foldr1, i64* %eptr11424                                          ; *eptr11424 = %kc9$_37foldr1
  store i64 %FCK$_37map1, i64* %eptr11425                                            ; *eptr11425 = %FCK$_37map1
  store i64 %PSj$args, i64* %eptr11426                                               ; *eptr11426 = %PSj$args
  %eptr11419 = getelementptr inbounds i64, i64* %cloptr11418, i64 0                  ; &cloptr11418[0]
  %f11427 = ptrtoint void(i64,i64,i64)* @lam9574 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11427, i64* %eptr11419                                                 ; store fptr
  %arg9197 = ptrtoint i64* %cloptr11418 to i64                                       ; closure cast; i64* -> i64
  %arg9196 = add i64 0, 0                                                            ; quoted ()
  %cloptr11428 = inttoptr i64 %arg9197 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11428)                                        ; assert function application
  %i0ptr11429 = getelementptr inbounds i64, i64* %cloptr11428, i64 0                 ; &cloptr11428[0]
  %f11431 = load i64, i64* %i0ptr11429, align 8                                      ; load; *i0ptr11429
  %fptr11430 = inttoptr i64 %f11431 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11430(i64 %arg9197, i64 %arg9196, i64 %retprim8547) ; tail call
  ret void
}


define void @lam9574(i64 %env9575, i64 %_958529, i64 %ae7$acc) {
  %envptr11432 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11433 = getelementptr inbounds i64, i64* %envptr11432, i64 7                ; &envptr11432[7]
  %PSj$args = load i64, i64* %envptr11433, align 8                                   ; load; *envptr11433
  %envptr11434 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11435 = getelementptr inbounds i64, i64* %envptr11434, i64 6                ; &envptr11434[6]
  %FCK$_37map1 = load i64, i64* %envptr11435, align 8                                ; load; *envptr11435
  %envptr11436 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11437 = getelementptr inbounds i64, i64* %envptr11436, i64 5                ; &envptr11436[5]
  %kc9$_37foldr1 = load i64, i64* %envptr11437, align 8                              ; load; *envptr11437
  %envptr11438 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11439 = getelementptr inbounds i64, i64* %envptr11438, i64 4                ; &envptr11438[4]
  %cont8527 = load i64, i64* %envptr11439, align 8                                   ; load; *envptr11439
  %envptr11440 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11441 = getelementptr inbounds i64, i64* %envptr11440, i64 3                ; &envptr11440[3]
  %csr$f = load i64, i64* %envptr11441, align 8                                      ; load; *envptr11441
  %envptr11442 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11443 = getelementptr inbounds i64, i64* %envptr11442, i64 2                ; &envptr11442[2]
  %hZH$_37foldl = load i64, i64* %envptr11443, align 8                               ; load; *envptr11443
  %envptr11444 = inttoptr i64 %env9575 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11445 = getelementptr inbounds i64, i64* %envptr11444, i64 1                ; &envptr11444[1]
  %Be4$_37foldr = load i64, i64* %envptr11445, align 8                               ; load; *envptr11445
  %a8332 = call i64 @prim_cdr(i64 %PSj$args)                                         ; call prim_cdr
  %retprim8546 = call i64 @prim_cdr(i64 %a8332)                                      ; call prim_cdr
  %cloptr11446 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11448 = getelementptr inbounds i64, i64* %cloptr11446, i64 1                  ; &eptr11448[1]
  %eptr11449 = getelementptr inbounds i64, i64* %cloptr11446, i64 2                  ; &eptr11449[2]
  %eptr11450 = getelementptr inbounds i64, i64* %cloptr11446, i64 3                  ; &eptr11450[3]
  %eptr11451 = getelementptr inbounds i64, i64* %cloptr11446, i64 4                  ; &eptr11451[4]
  %eptr11452 = getelementptr inbounds i64, i64* %cloptr11446, i64 5                  ; &eptr11452[5]
  %eptr11453 = getelementptr inbounds i64, i64* %cloptr11446, i64 6                  ; &eptr11453[6]
  %eptr11454 = getelementptr inbounds i64, i64* %cloptr11446, i64 7                  ; &eptr11454[7]
  store i64 %Be4$_37foldr, i64* %eptr11448                                           ; *eptr11448 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11449                                           ; *eptr11449 = %hZH$_37foldl
  store i64 %csr$f, i64* %eptr11450                                                  ; *eptr11450 = %csr$f
  store i64 %cont8527, i64* %eptr11451                                               ; *eptr11451 = %cont8527
  store i64 %kc9$_37foldr1, i64* %eptr11452                                          ; *eptr11452 = %kc9$_37foldr1
  store i64 %FCK$_37map1, i64* %eptr11453                                            ; *eptr11453 = %FCK$_37map1
  store i64 %ae7$acc, i64* %eptr11454                                                ; *eptr11454 = %ae7$acc
  %eptr11447 = getelementptr inbounds i64, i64* %cloptr11446, i64 0                  ; &cloptr11446[0]
  %f11455 = ptrtoint void(i64,i64,i64)* @lam9572 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11455, i64* %eptr11447                                                 ; store fptr
  %arg9202 = ptrtoint i64* %cloptr11446 to i64                                       ; closure cast; i64* -> i64
  %arg9201 = add i64 0, 0                                                            ; quoted ()
  %cloptr11456 = inttoptr i64 %arg9202 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11456)                                        ; assert function application
  %i0ptr11457 = getelementptr inbounds i64, i64* %cloptr11456, i64 0                 ; &cloptr11456[0]
  %f11459 = load i64, i64* %i0ptr11457, align 8                                      ; load; *i0ptr11457
  %fptr11458 = inttoptr i64 %f11459 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11458(i64 %arg9202, i64 %arg9201, i64 %retprim8546) ; tail call
  ret void
}


define void @lam9572(i64 %env9573, i64 %_958530, i64 %me1$lsts) {
  %envptr11460 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11461 = getelementptr inbounds i64, i64* %envptr11460, i64 7                ; &envptr11460[7]
  %ae7$acc = load i64, i64* %envptr11461, align 8                                    ; load; *envptr11461
  %envptr11462 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11463 = getelementptr inbounds i64, i64* %envptr11462, i64 6                ; &envptr11462[6]
  %FCK$_37map1 = load i64, i64* %envptr11463, align 8                                ; load; *envptr11463
  %envptr11464 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11465 = getelementptr inbounds i64, i64* %envptr11464, i64 5                ; &envptr11464[5]
  %kc9$_37foldr1 = load i64, i64* %envptr11465, align 8                              ; load; *envptr11465
  %envptr11466 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11467 = getelementptr inbounds i64, i64* %envptr11466, i64 4                ; &envptr11466[4]
  %cont8527 = load i64, i64* %envptr11467, align 8                                   ; load; *envptr11467
  %envptr11468 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11469 = getelementptr inbounds i64, i64* %envptr11468, i64 3                ; &envptr11468[3]
  %csr$f = load i64, i64* %envptr11469, align 8                                      ; load; *envptr11469
  %envptr11470 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11471 = getelementptr inbounds i64, i64* %envptr11470, i64 2                ; &envptr11470[2]
  %hZH$_37foldl = load i64, i64* %envptr11471, align 8                               ; load; *envptr11471
  %envptr11472 = inttoptr i64 %env9573 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11473 = getelementptr inbounds i64, i64* %envptr11472, i64 1                ; &envptr11472[1]
  %Be4$_37foldr = load i64, i64* %envptr11473, align 8                               ; load; *envptr11473
  %cloptr11474 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11476 = getelementptr inbounds i64, i64* %cloptr11474, i64 1                  ; &eptr11476[1]
  %eptr11477 = getelementptr inbounds i64, i64* %cloptr11474, i64 2                  ; &eptr11477[2]
  %eptr11478 = getelementptr inbounds i64, i64* %cloptr11474, i64 3                  ; &eptr11478[3]
  %eptr11479 = getelementptr inbounds i64, i64* %cloptr11474, i64 4                  ; &eptr11479[4]
  %eptr11480 = getelementptr inbounds i64, i64* %cloptr11474, i64 5                  ; &eptr11480[5]
  %eptr11481 = getelementptr inbounds i64, i64* %cloptr11474, i64 6                  ; &eptr11481[6]
  %eptr11482 = getelementptr inbounds i64, i64* %cloptr11474, i64 7                  ; &eptr11482[7]
  store i64 %Be4$_37foldr, i64* %eptr11476                                           ; *eptr11476 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11477                                           ; *eptr11477 = %hZH$_37foldl
  store i64 %csr$f, i64* %eptr11478                                                  ; *eptr11478 = %csr$f
  store i64 %cont8527, i64* %eptr11479                                               ; *eptr11479 = %cont8527
  store i64 %me1$lsts, i64* %eptr11480                                               ; *eptr11480 = %me1$lsts
  store i64 %FCK$_37map1, i64* %eptr11481                                            ; *eptr11481 = %FCK$_37map1
  store i64 %ae7$acc, i64* %eptr11482                                                ; *eptr11482 = %ae7$acc
  %eptr11475 = getelementptr inbounds i64, i64* %cloptr11474, i64 0                  ; &cloptr11474[0]
  %f11483 = ptrtoint void(i64,i64,i64)* @lam9570 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11483, i64* %eptr11475                                                 ; store fptr
  %arg9206 = ptrtoint i64* %cloptr11474 to i64                                       ; closure cast; i64* -> i64
  %cloptr11484 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11485 = getelementptr inbounds i64, i64* %cloptr11484, i64 0                  ; &cloptr11484[0]
  %f11486 = ptrtoint void(i64,i64,i64,i64)* @lam9549 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11486, i64* %eptr11485                                                 ; store fptr
  %arg9205 = ptrtoint i64* %cloptr11484 to i64                                       ; closure cast; i64* -> i64
  %arg9204 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr11487 = inttoptr i64 %kc9$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11487)                                        ; assert function application
  %i0ptr11488 = getelementptr inbounds i64, i64* %cloptr11487, i64 0                 ; &cloptr11487[0]
  %f11490 = load i64, i64* %i0ptr11488, align 8                                      ; load; *i0ptr11488
  %fptr11489 = inttoptr i64 %f11490 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11489(i64 %kc9$_37foldr1, i64 %arg9206, i64 %arg9205, i64 %arg9204, i64 %me1$lsts); tail call
  ret void
}


define void @lam9570(i64 %env9571, i64 %_958531, i64 %a8333) {
  %envptr11491 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11492 = getelementptr inbounds i64, i64* %envptr11491, i64 7                ; &envptr11491[7]
  %ae7$acc = load i64, i64* %envptr11492, align 8                                    ; load; *envptr11492
  %envptr11493 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11494 = getelementptr inbounds i64, i64* %envptr11493, i64 6                ; &envptr11493[6]
  %FCK$_37map1 = load i64, i64* %envptr11494, align 8                                ; load; *envptr11494
  %envptr11495 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11496 = getelementptr inbounds i64, i64* %envptr11495, i64 5                ; &envptr11495[5]
  %me1$lsts = load i64, i64* %envptr11496, align 8                                   ; load; *envptr11496
  %envptr11497 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11498 = getelementptr inbounds i64, i64* %envptr11497, i64 4                ; &envptr11497[4]
  %cont8527 = load i64, i64* %envptr11498, align 8                                   ; load; *envptr11498
  %envptr11499 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11500 = getelementptr inbounds i64, i64* %envptr11499, i64 3                ; &envptr11499[3]
  %csr$f = load i64, i64* %envptr11500, align 8                                      ; load; *envptr11500
  %envptr11501 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11502 = getelementptr inbounds i64, i64* %envptr11501, i64 2                ; &envptr11501[2]
  %hZH$_37foldl = load i64, i64* %envptr11502, align 8                               ; load; *envptr11502
  %envptr11503 = inttoptr i64 %env9571 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11504 = getelementptr inbounds i64, i64* %envptr11503, i64 1                ; &envptr11503[1]
  %Be4$_37foldr = load i64, i64* %envptr11504, align 8                               ; load; *envptr11504
  %cmp11505 = icmp eq i64 %a8333, 15                                                 ; false?
  br i1 %cmp11505, label %else11507, label %then11506                                ; if

then11506:
  %arg9209 = add i64 0, 0                                                            ; quoted ()
  %cloptr11508 = inttoptr i64 %cont8527 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11508)                                        ; assert function application
  %i0ptr11509 = getelementptr inbounds i64, i64* %cloptr11508, i64 0                 ; &cloptr11508[0]
  %f11511 = load i64, i64* %i0ptr11509, align 8                                      ; load; *i0ptr11509
  %fptr11510 = inttoptr i64 %f11511 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11510(i64 %cont8527, i64 %arg9209, i64 %ae7$acc)    ; tail call
  ret void

else11507:
  %cloptr11512 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11514 = getelementptr inbounds i64, i64* %cloptr11512, i64 1                  ; &eptr11514[1]
  %eptr11515 = getelementptr inbounds i64, i64* %cloptr11512, i64 2                  ; &eptr11515[2]
  %eptr11516 = getelementptr inbounds i64, i64* %cloptr11512, i64 3                  ; &eptr11516[3]
  %eptr11517 = getelementptr inbounds i64, i64* %cloptr11512, i64 4                  ; &eptr11517[4]
  %eptr11518 = getelementptr inbounds i64, i64* %cloptr11512, i64 5                  ; &eptr11518[5]
  %eptr11519 = getelementptr inbounds i64, i64* %cloptr11512, i64 6                  ; &eptr11519[6]
  %eptr11520 = getelementptr inbounds i64, i64* %cloptr11512, i64 7                  ; &eptr11520[7]
  store i64 %Be4$_37foldr, i64* %eptr11514                                           ; *eptr11514 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11515                                           ; *eptr11515 = %hZH$_37foldl
  store i64 %csr$f, i64* %eptr11516                                                  ; *eptr11516 = %csr$f
  store i64 %cont8527, i64* %eptr11517                                               ; *eptr11517 = %cont8527
  store i64 %me1$lsts, i64* %eptr11518                                               ; *eptr11518 = %me1$lsts
  store i64 %FCK$_37map1, i64* %eptr11519                                            ; *eptr11519 = %FCK$_37map1
  store i64 %ae7$acc, i64* %eptr11520                                                ; *eptr11520 = %ae7$acc
  %eptr11513 = getelementptr inbounds i64, i64* %cloptr11512, i64 0                  ; &cloptr11512[0]
  %f11521 = ptrtoint void(i64,i64,i64)* @lam9568 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11521, i64* %eptr11513                                                 ; store fptr
  %arg9213 = ptrtoint i64* %cloptr11512 to i64                                       ; closure cast; i64* -> i64
  %cloptr11522 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11523 = getelementptr inbounds i64, i64* %cloptr11522, i64 0                  ; &cloptr11522[0]
  %f11524 = ptrtoint void(i64,i64,i64)* @lam9553 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11524, i64* %eptr11523                                                 ; store fptr
  %arg9212 = ptrtoint i64* %cloptr11522 to i64                                       ; closure cast; i64* -> i64
  %cloptr11525 = inttoptr i64 %FCK$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11525)                                        ; assert function application
  %i0ptr11526 = getelementptr inbounds i64, i64* %cloptr11525, i64 0                 ; &cloptr11525[0]
  %f11528 = load i64, i64* %i0ptr11526, align 8                                      ; load; *i0ptr11526
  %fptr11527 = inttoptr i64 %f11528 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11527(i64 %FCK$_37map1, i64 %arg9213, i64 %arg9212, i64 %me1$lsts); tail call
  ret void
}


define void @lam9568(i64 %env9569, i64 %_958532, i64 %rHq$lsts_43) {
  %envptr11529 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11530 = getelementptr inbounds i64, i64* %envptr11529, i64 7                ; &envptr11529[7]
  %ae7$acc = load i64, i64* %envptr11530, align 8                                    ; load; *envptr11530
  %envptr11531 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11532 = getelementptr inbounds i64, i64* %envptr11531, i64 6                ; &envptr11531[6]
  %FCK$_37map1 = load i64, i64* %envptr11532, align 8                                ; load; *envptr11532
  %envptr11533 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11534 = getelementptr inbounds i64, i64* %envptr11533, i64 5                ; &envptr11533[5]
  %me1$lsts = load i64, i64* %envptr11534, align 8                                   ; load; *envptr11534
  %envptr11535 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11536 = getelementptr inbounds i64, i64* %envptr11535, i64 4                ; &envptr11535[4]
  %cont8527 = load i64, i64* %envptr11536, align 8                                   ; load; *envptr11536
  %envptr11537 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11538 = getelementptr inbounds i64, i64* %envptr11537, i64 3                ; &envptr11537[3]
  %csr$f = load i64, i64* %envptr11538, align 8                                      ; load; *envptr11538
  %envptr11539 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11540 = getelementptr inbounds i64, i64* %envptr11539, i64 2                ; &envptr11539[2]
  %hZH$_37foldl = load i64, i64* %envptr11540, align 8                               ; load; *envptr11540
  %envptr11541 = inttoptr i64 %env9569 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11542 = getelementptr inbounds i64, i64* %envptr11541, i64 1                ; &envptr11541[1]
  %Be4$_37foldr = load i64, i64* %envptr11542, align 8                               ; load; *envptr11542
  %cloptr11543 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11545 = getelementptr inbounds i64, i64* %cloptr11543, i64 1                  ; &eptr11545[1]
  %eptr11546 = getelementptr inbounds i64, i64* %cloptr11543, i64 2                  ; &eptr11546[2]
  %eptr11547 = getelementptr inbounds i64, i64* %cloptr11543, i64 3                  ; &eptr11547[3]
  %eptr11548 = getelementptr inbounds i64, i64* %cloptr11543, i64 4                  ; &eptr11548[4]
  %eptr11549 = getelementptr inbounds i64, i64* %cloptr11543, i64 5                  ; &eptr11549[5]
  %eptr11550 = getelementptr inbounds i64, i64* %cloptr11543, i64 6                  ; &eptr11550[6]
  store i64 %Be4$_37foldr, i64* %eptr11545                                           ; *eptr11545 = %Be4$_37foldr
  store i64 %hZH$_37foldl, i64* %eptr11546                                           ; *eptr11546 = %hZH$_37foldl
  store i64 %rHq$lsts_43, i64* %eptr11547                                            ; *eptr11547 = %rHq$lsts_43
  store i64 %csr$f, i64* %eptr11548                                                  ; *eptr11548 = %csr$f
  store i64 %cont8527, i64* %eptr11549                                               ; *eptr11549 = %cont8527
  store i64 %ae7$acc, i64* %eptr11550                                                ; *eptr11550 = %ae7$acc
  %eptr11544 = getelementptr inbounds i64, i64* %cloptr11543, i64 0                  ; &cloptr11543[0]
  %f11551 = ptrtoint void(i64,i64,i64)* @lam9566 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11551, i64* %eptr11544                                                 ; store fptr
  %arg9217 = ptrtoint i64* %cloptr11543 to i64                                       ; closure cast; i64* -> i64
  %cloptr11552 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11553 = getelementptr inbounds i64, i64* %cloptr11552, i64 0                  ; &cloptr11552[0]
  %f11554 = ptrtoint void(i64,i64,i64)* @lam9556 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11554, i64* %eptr11553                                                 ; store fptr
  %arg9216 = ptrtoint i64* %cloptr11552 to i64                                       ; closure cast; i64* -> i64
  %cloptr11555 = inttoptr i64 %FCK$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11555)                                        ; assert function application
  %i0ptr11556 = getelementptr inbounds i64, i64* %cloptr11555, i64 0                 ; &cloptr11555[0]
  %f11558 = load i64, i64* %i0ptr11556, align 8                                      ; load; *i0ptr11556
  %fptr11557 = inttoptr i64 %f11558 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11557(i64 %FCK$_37map1, i64 %arg9217, i64 %arg9216, i64 %me1$lsts); tail call
  ret void
}


define void @lam9566(i64 %env9567, i64 %_958533, i64 %Ffp$vs) {
  %envptr11559 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11560 = getelementptr inbounds i64, i64* %envptr11559, i64 6                ; &envptr11559[6]
  %ae7$acc = load i64, i64* %envptr11560, align 8                                    ; load; *envptr11560
  %envptr11561 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11562 = getelementptr inbounds i64, i64* %envptr11561, i64 5                ; &envptr11561[5]
  %cont8527 = load i64, i64* %envptr11562, align 8                                   ; load; *envptr11562
  %envptr11563 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11564 = getelementptr inbounds i64, i64* %envptr11563, i64 4                ; &envptr11563[4]
  %csr$f = load i64, i64* %envptr11564, align 8                                      ; load; *envptr11564
  %envptr11565 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11566 = getelementptr inbounds i64, i64* %envptr11565, i64 3                ; &envptr11565[3]
  %rHq$lsts_43 = load i64, i64* %envptr11566, align 8                                ; load; *envptr11566
  %envptr11567 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11568 = getelementptr inbounds i64, i64* %envptr11567, i64 2                ; &envptr11567[2]
  %hZH$_37foldl = load i64, i64* %envptr11568, align 8                               ; load; *envptr11568
  %envptr11569 = inttoptr i64 %env9567 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11570 = getelementptr inbounds i64, i64* %envptr11569, i64 1                ; &envptr11569[1]
  %Be4$_37foldr = load i64, i64* %envptr11570, align 8                               ; load; *envptr11570
  %arg9219 = add i64 0, 0                                                            ; quoted ()
  %a8334 = call i64 @prim_cons(i64 %ae7$acc, i64 %arg9219)                           ; call prim_cons
  %cloptr11571 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11573 = getelementptr inbounds i64, i64* %cloptr11571, i64 1                  ; &eptr11573[1]
  %eptr11574 = getelementptr inbounds i64, i64* %cloptr11571, i64 2                  ; &eptr11574[2]
  %eptr11575 = getelementptr inbounds i64, i64* %cloptr11571, i64 3                  ; &eptr11575[3]
  %eptr11576 = getelementptr inbounds i64, i64* %cloptr11571, i64 4                  ; &eptr11576[4]
  store i64 %hZH$_37foldl, i64* %eptr11573                                           ; *eptr11573 = %hZH$_37foldl
  store i64 %rHq$lsts_43, i64* %eptr11574                                            ; *eptr11574 = %rHq$lsts_43
  store i64 %csr$f, i64* %eptr11575                                                  ; *eptr11575 = %csr$f
  store i64 %cont8527, i64* %eptr11576                                               ; *eptr11576 = %cont8527
  %eptr11572 = getelementptr inbounds i64, i64* %cloptr11571, i64 0                  ; &cloptr11571[0]
  %f11577 = ptrtoint void(i64,i64,i64)* @lam9563 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11577, i64* %eptr11572                                                 ; store fptr
  %arg9224 = ptrtoint i64* %cloptr11571 to i64                                       ; closure cast; i64* -> i64
  %cloptr11578 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11579 = getelementptr inbounds i64, i64* %cloptr11578, i64 0                  ; &cloptr11578[0]
  %f11580 = ptrtoint void(i64,i64,i64,i64)* @lam9559 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11580, i64* %eptr11579                                                 ; store fptr
  %arg9223 = ptrtoint i64* %cloptr11578 to i64                                       ; closure cast; i64* -> i64
  %cloptr11581 = inttoptr i64 %Be4$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11581)                                        ; assert function application
  %i0ptr11582 = getelementptr inbounds i64, i64* %cloptr11581, i64 0                 ; &cloptr11581[0]
  %f11584 = load i64, i64* %i0ptr11582, align 8                                      ; load; *i0ptr11582
  %fptr11583 = inttoptr i64 %f11584 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11583(i64 %Be4$_37foldr, i64 %arg9224, i64 %arg9223, i64 %a8334, i64 %Ffp$vs); tail call
  ret void
}


define void @lam9563(i64 %env9564, i64 %_958536, i64 %a8335) {
  %envptr11585 = inttoptr i64 %env9564 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11586 = getelementptr inbounds i64, i64* %envptr11585, i64 4                ; &envptr11585[4]
  %cont8527 = load i64, i64* %envptr11586, align 8                                   ; load; *envptr11586
  %envptr11587 = inttoptr i64 %env9564 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11588 = getelementptr inbounds i64, i64* %envptr11587, i64 3                ; &envptr11587[3]
  %csr$f = load i64, i64* %envptr11588, align 8                                      ; load; *envptr11588
  %envptr11589 = inttoptr i64 %env9564 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11590 = getelementptr inbounds i64, i64* %envptr11589, i64 2                ; &envptr11589[2]
  %rHq$lsts_43 = load i64, i64* %envptr11590, align 8                                ; load; *envptr11590
  %envptr11591 = inttoptr i64 %env9564 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11592 = getelementptr inbounds i64, i64* %envptr11591, i64 1                ; &envptr11591[1]
  %hZH$_37foldl = load i64, i64* %envptr11592, align 8                               ; load; *envptr11592
  %cloptr11593 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11595 = getelementptr inbounds i64, i64* %cloptr11593, i64 1                  ; &eptr11595[1]
  %eptr11596 = getelementptr inbounds i64, i64* %cloptr11593, i64 2                  ; &eptr11596[2]
  %eptr11597 = getelementptr inbounds i64, i64* %cloptr11593, i64 3                  ; &eptr11597[3]
  %eptr11598 = getelementptr inbounds i64, i64* %cloptr11593, i64 4                  ; &eptr11598[4]
  store i64 %hZH$_37foldl, i64* %eptr11595                                           ; *eptr11595 = %hZH$_37foldl
  store i64 %rHq$lsts_43, i64* %eptr11596                                            ; *eptr11596 = %rHq$lsts_43
  store i64 %csr$f, i64* %eptr11597                                                  ; *eptr11597 = %csr$f
  store i64 %cont8527, i64* %eptr11598                                               ; *eptr11598 = %cont8527
  %eptr11594 = getelementptr inbounds i64, i64* %cloptr11593, i64 0                  ; &cloptr11593[0]
  %f11599 = ptrtoint void(i64,i64,i64)* @lam9561 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11599, i64* %eptr11594                                                 ; store fptr
  %arg9227 = ptrtoint i64* %cloptr11593 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst8537 = call i64 @prim_cons(i64 %arg9227, i64 %a8335)                     ; call prim_cons
  %cloptr11600 = inttoptr i64 %csr$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11600)                                        ; assert function application
  %i0ptr11601 = getelementptr inbounds i64, i64* %cloptr11600, i64 0                 ; &cloptr11600[0]
  %f11603 = load i64, i64* %i0ptr11601, align 8                                      ; load; *i0ptr11601
  %fptr11602 = inttoptr i64 %f11603 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11602(i64 %csr$f, i64 %cps_45lst8537)               ; tail call
  ret void
}


define void @lam9561(i64 %env9562, i64 %_958534, i64 %YQo$acc_43) {
  %envptr11604 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11605 = getelementptr inbounds i64, i64* %envptr11604, i64 4                ; &envptr11604[4]
  %cont8527 = load i64, i64* %envptr11605, align 8                                   ; load; *envptr11605
  %envptr11606 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11607 = getelementptr inbounds i64, i64* %envptr11606, i64 3                ; &envptr11606[3]
  %csr$f = load i64, i64* %envptr11607, align 8                                      ; load; *envptr11607
  %envptr11608 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11609 = getelementptr inbounds i64, i64* %envptr11608, i64 2                ; &envptr11608[2]
  %rHq$lsts_43 = load i64, i64* %envptr11609, align 8                                ; load; *envptr11609
  %envptr11610 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11611 = getelementptr inbounds i64, i64* %envptr11610, i64 1                ; &envptr11610[1]
  %hZH$_37foldl = load i64, i64* %envptr11611, align 8                               ; load; *envptr11611
  %a8336 = call i64 @prim_cons(i64 %YQo$acc_43, i64 %rHq$lsts_43)                    ; call prim_cons
  %a8337 = call i64 @prim_cons(i64 %csr$f, i64 %a8336)                               ; call prim_cons
  %cps_45lst8535 = call i64 @prim_cons(i64 %cont8527, i64 %a8337)                    ; call prim_cons
  %cloptr11612 = inttoptr i64 %hZH$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11612)                                        ; assert function application
  %i0ptr11613 = getelementptr inbounds i64, i64* %cloptr11612, i64 0                 ; &cloptr11612[0]
  %f11615 = load i64, i64* %i0ptr11613, align 8                                      ; load; *i0ptr11613
  %fptr11614 = inttoptr i64 %f11615 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11614(i64 %hZH$_37foldl, i64 %cps_45lst8535)        ; tail call
  ret void
}


define void @lam9559(i64 %env9560, i64 %cont8538, i64 %DiK$a, i64 %BDZ$b) {
  %retprim8539 = call i64 @prim_cons(i64 %DiK$a, i64 %BDZ$b)                         ; call prim_cons
  %arg9237 = add i64 0, 0                                                            ; quoted ()
  %cloptr11616 = inttoptr i64 %cont8538 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11616)                                        ; assert function application
  %i0ptr11617 = getelementptr inbounds i64, i64* %cloptr11616, i64 0                 ; &cloptr11616[0]
  %f11619 = load i64, i64* %i0ptr11617, align 8                                      ; load; *i0ptr11617
  %fptr11618 = inttoptr i64 %f11619 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11618(i64 %cont8538, i64 %arg9237, i64 %retprim8539); tail call
  ret void
}


define void @lam9556(i64 %env9557, i64 %cont8540, i64 %po0$x) {
  %retprim8541 = call i64 @prim_car(i64 %po0$x)                                      ; call prim_car
  %arg9241 = add i64 0, 0                                                            ; quoted ()
  %cloptr11620 = inttoptr i64 %cont8540 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11620)                                        ; assert function application
  %i0ptr11621 = getelementptr inbounds i64, i64* %cloptr11620, i64 0                 ; &cloptr11620[0]
  %f11623 = load i64, i64* %i0ptr11621, align 8                                      ; load; *i0ptr11621
  %fptr11622 = inttoptr i64 %f11623 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11622(i64 %cont8540, i64 %arg9241, i64 %retprim8541); tail call
  ret void
}


define void @lam9553(i64 %env9554, i64 %cont8542, i64 %s58$x) {
  %retprim8543 = call i64 @prim_cdr(i64 %s58$x)                                      ; call prim_cdr
  %arg9245 = add i64 0, 0                                                            ; quoted ()
  %cloptr11624 = inttoptr i64 %cont8542 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11624)                                        ; assert function application
  %i0ptr11625 = getelementptr inbounds i64, i64* %cloptr11624, i64 0                 ; &cloptr11624[0]
  %f11627 = load i64, i64* %i0ptr11625, align 8                                      ; load; *i0ptr11625
  %fptr11626 = inttoptr i64 %f11627 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11626(i64 %cont8542, i64 %arg9245, i64 %retprim8543); tail call
  ret void
}


define void @lam9549(i64 %env9550, i64 %cont8544, i64 %c63$lst, i64 %iaV$b) {
  %cmp11628 = icmp eq i64 %iaV$b, 15                                                 ; false?
  br i1 %cmp11628, label %else11630, label %then11629                                ; if

then11629:
  %arg9248 = add i64 0, 0                                                            ; quoted ()
  %cloptr11631 = inttoptr i64 %cont8544 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11631)                                        ; assert function application
  %i0ptr11632 = getelementptr inbounds i64, i64* %cloptr11631, i64 0                 ; &cloptr11631[0]
  %f11634 = load i64, i64* %i0ptr11632, align 8                                      ; load; *i0ptr11632
  %fptr11633 = inttoptr i64 %f11634 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11633(i64 %cont8544, i64 %arg9248, i64 %iaV$b)      ; tail call
  ret void

else11630:
  %retprim8545 = call i64 @prim_null_63(i64 %c63$lst)                                ; call prim_null_63
  %arg9252 = add i64 0, 0                                                            ; quoted ()
  %cloptr11635 = inttoptr i64 %cont8544 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11635)                                        ; assert function application
  %i0ptr11636 = getelementptr inbounds i64, i64* %cloptr11635, i64 0                 ; &cloptr11635[0]
  %f11638 = load i64, i64* %i0ptr11636, align 8                                      ; load; *i0ptr11636
  %fptr11637 = inttoptr i64 %f11638 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11637(i64 %cont8544, i64 %arg9252, i64 %retprim8545); tail call
  ret void
}


define void @lam9542(i64 %env9543, i64 %cont8548, i64 %XAr$_37foldr) {
  %envptr11639 = inttoptr i64 %env9543 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11640 = getelementptr inbounds i64, i64* %envptr11639, i64 2                ; &envptr11639[2]
  %kc9$_37foldr1 = load i64, i64* %envptr11640, align 8                              ; load; *envptr11640
  %envptr11641 = inttoptr i64 %env9543 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11642 = getelementptr inbounds i64, i64* %envptr11641, i64 1                ; &envptr11641[1]
  %AhL$_37map1 = load i64, i64* %envptr11642, align 8                                ; load; *envptr11642
  %arg9255 = add i64 0, 0                                                            ; quoted ()
  %cloptr11643 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11645 = getelementptr inbounds i64, i64* %cloptr11643, i64 1                  ; &eptr11645[1]
  %eptr11646 = getelementptr inbounds i64, i64* %cloptr11643, i64 2                  ; &eptr11646[2]
  %eptr11647 = getelementptr inbounds i64, i64* %cloptr11643, i64 3                  ; &eptr11647[3]
  store i64 %AhL$_37map1, i64* %eptr11645                                            ; *eptr11645 = %AhL$_37map1
  store i64 %kc9$_37foldr1, i64* %eptr11646                                          ; *eptr11646 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11647                                           ; *eptr11647 = %XAr$_37foldr
  %eptr11644 = getelementptr inbounds i64, i64* %cloptr11643, i64 0                  ; &cloptr11643[0]
  %f11648 = ptrtoint void(i64,i64)* @lam9539 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11648, i64* %eptr11644                                                 ; store fptr
  %arg9254 = ptrtoint i64* %cloptr11643 to i64                                       ; closure cast; i64* -> i64
  %cloptr11649 = inttoptr i64 %cont8548 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11649)                                        ; assert function application
  %i0ptr11650 = getelementptr inbounds i64, i64* %cloptr11649, i64 0                 ; &cloptr11649[0]
  %f11652 = load i64, i64* %i0ptr11650, align 8                                      ; load; *i0ptr11650
  %fptr11651 = inttoptr i64 %f11652 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11651(i64 %cont8548, i64 %arg9255, i64 %arg9254)    ; tail call
  ret void
}


define void @lam9539(i64 %env9540, i64 %Kba$args8550) {
  %envptr11653 = inttoptr i64 %env9540 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11654 = getelementptr inbounds i64, i64* %envptr11653, i64 3                ; &envptr11653[3]
  %XAr$_37foldr = load i64, i64* %envptr11654, align 8                               ; load; *envptr11654
  %envptr11655 = inttoptr i64 %env9540 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11656 = getelementptr inbounds i64, i64* %envptr11655, i64 2                ; &envptr11655[2]
  %kc9$_37foldr1 = load i64, i64* %envptr11656, align 8                              ; load; *envptr11656
  %envptr11657 = inttoptr i64 %env9540 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11658 = getelementptr inbounds i64, i64* %envptr11657, i64 1                ; &envptr11657[1]
  %AhL$_37map1 = load i64, i64* %envptr11658, align 8                                ; load; *envptr11658
  %cont8549 = call i64 @prim_car(i64 %Kba$args8550)                                  ; call prim_car
  %Kba$args = call i64 @prim_cdr(i64 %Kba$args8550)                                  ; call prim_cdr
  %zhz$f = call i64 @prim_car(i64 %Kba$args)                                         ; call prim_car
  %a8317 = call i64 @prim_cdr(i64 %Kba$args)                                         ; call prim_cdr
  %retprim8569 = call i64 @prim_car(i64 %a8317)                                      ; call prim_car
  %cloptr11659 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11661 = getelementptr inbounds i64, i64* %cloptr11659, i64 1                  ; &eptr11661[1]
  %eptr11662 = getelementptr inbounds i64, i64* %cloptr11659, i64 2                  ; &eptr11662[2]
  %eptr11663 = getelementptr inbounds i64, i64* %cloptr11659, i64 3                  ; &eptr11663[3]
  %eptr11664 = getelementptr inbounds i64, i64* %cloptr11659, i64 4                  ; &eptr11664[4]
  %eptr11665 = getelementptr inbounds i64, i64* %cloptr11659, i64 5                  ; &eptr11665[5]
  %eptr11666 = getelementptr inbounds i64, i64* %cloptr11659, i64 6                  ; &eptr11666[6]
  store i64 %AhL$_37map1, i64* %eptr11661                                            ; *eptr11661 = %AhL$_37map1
  store i64 %cont8549, i64* %eptr11662                                               ; *eptr11662 = %cont8549
  store i64 %Kba$args, i64* %eptr11663                                               ; *eptr11663 = %Kba$args
  store i64 %kc9$_37foldr1, i64* %eptr11664                                          ; *eptr11664 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11665                                           ; *eptr11665 = %XAr$_37foldr
  store i64 %zhz$f, i64* %eptr11666                                                  ; *eptr11666 = %zhz$f
  %eptr11660 = getelementptr inbounds i64, i64* %cloptr11659, i64 0                  ; &cloptr11659[0]
  %f11667 = ptrtoint void(i64,i64,i64)* @lam9537 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11667, i64* %eptr11660                                                 ; store fptr
  %arg9264 = ptrtoint i64* %cloptr11659 to i64                                       ; closure cast; i64* -> i64
  %arg9263 = add i64 0, 0                                                            ; quoted ()
  %cloptr11668 = inttoptr i64 %arg9264 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11668)                                        ; assert function application
  %i0ptr11669 = getelementptr inbounds i64, i64* %cloptr11668, i64 0                 ; &cloptr11668[0]
  %f11671 = load i64, i64* %i0ptr11669, align 8                                      ; load; *i0ptr11669
  %fptr11670 = inttoptr i64 %f11671 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11670(i64 %arg9264, i64 %arg9263, i64 %retprim8569) ; tail call
  ret void
}


define void @lam9537(i64 %env9538, i64 %_958551, i64 %unN$acc) {
  %envptr11672 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11673 = getelementptr inbounds i64, i64* %envptr11672, i64 6                ; &envptr11672[6]
  %zhz$f = load i64, i64* %envptr11673, align 8                                      ; load; *envptr11673
  %envptr11674 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11675 = getelementptr inbounds i64, i64* %envptr11674, i64 5                ; &envptr11674[5]
  %XAr$_37foldr = load i64, i64* %envptr11675, align 8                               ; load; *envptr11675
  %envptr11676 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11677 = getelementptr inbounds i64, i64* %envptr11676, i64 4                ; &envptr11676[4]
  %kc9$_37foldr1 = load i64, i64* %envptr11677, align 8                              ; load; *envptr11677
  %envptr11678 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11679 = getelementptr inbounds i64, i64* %envptr11678, i64 3                ; &envptr11678[3]
  %Kba$args = load i64, i64* %envptr11679, align 8                                   ; load; *envptr11679
  %envptr11680 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11681 = getelementptr inbounds i64, i64* %envptr11680, i64 2                ; &envptr11680[2]
  %cont8549 = load i64, i64* %envptr11681, align 8                                   ; load; *envptr11681
  %envptr11682 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11683 = getelementptr inbounds i64, i64* %envptr11682, i64 1                ; &envptr11682[1]
  %AhL$_37map1 = load i64, i64* %envptr11683, align 8                                ; load; *envptr11683
  %a8318 = call i64 @prim_cdr(i64 %Kba$args)                                         ; call prim_cdr
  %retprim8568 = call i64 @prim_cdr(i64 %a8318)                                      ; call prim_cdr
  %cloptr11684 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11686 = getelementptr inbounds i64, i64* %cloptr11684, i64 1                  ; &eptr11686[1]
  %eptr11687 = getelementptr inbounds i64, i64* %cloptr11684, i64 2                  ; &eptr11687[2]
  %eptr11688 = getelementptr inbounds i64, i64* %cloptr11684, i64 3                  ; &eptr11688[3]
  %eptr11689 = getelementptr inbounds i64, i64* %cloptr11684, i64 4                  ; &eptr11689[4]
  %eptr11690 = getelementptr inbounds i64, i64* %cloptr11684, i64 5                  ; &eptr11690[5]
  %eptr11691 = getelementptr inbounds i64, i64* %cloptr11684, i64 6                  ; &eptr11691[6]
  store i64 %AhL$_37map1, i64* %eptr11686                                            ; *eptr11686 = %AhL$_37map1
  store i64 %unN$acc, i64* %eptr11687                                                ; *eptr11687 = %unN$acc
  store i64 %cont8549, i64* %eptr11688                                               ; *eptr11688 = %cont8549
  store i64 %kc9$_37foldr1, i64* %eptr11689                                          ; *eptr11689 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11690                                           ; *eptr11690 = %XAr$_37foldr
  store i64 %zhz$f, i64* %eptr11691                                                  ; *eptr11691 = %zhz$f
  %eptr11685 = getelementptr inbounds i64, i64* %cloptr11684, i64 0                  ; &cloptr11684[0]
  %f11692 = ptrtoint void(i64,i64,i64)* @lam9535 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11692, i64* %eptr11685                                                 ; store fptr
  %arg9269 = ptrtoint i64* %cloptr11684 to i64                                       ; closure cast; i64* -> i64
  %arg9268 = add i64 0, 0                                                            ; quoted ()
  %cloptr11693 = inttoptr i64 %arg9269 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11693)                                        ; assert function application
  %i0ptr11694 = getelementptr inbounds i64, i64* %cloptr11693, i64 0                 ; &cloptr11693[0]
  %f11696 = load i64, i64* %i0ptr11694, align 8                                      ; load; *i0ptr11694
  %fptr11695 = inttoptr i64 %f11696 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11695(i64 %arg9269, i64 %arg9268, i64 %retprim8568) ; tail call
  ret void
}


define void @lam9535(i64 %env9536, i64 %_958552, i64 %BvI$lsts) {
  %envptr11697 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11698 = getelementptr inbounds i64, i64* %envptr11697, i64 6                ; &envptr11697[6]
  %zhz$f = load i64, i64* %envptr11698, align 8                                      ; load; *envptr11698
  %envptr11699 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11700 = getelementptr inbounds i64, i64* %envptr11699, i64 5                ; &envptr11699[5]
  %XAr$_37foldr = load i64, i64* %envptr11700, align 8                               ; load; *envptr11700
  %envptr11701 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11702 = getelementptr inbounds i64, i64* %envptr11701, i64 4                ; &envptr11701[4]
  %kc9$_37foldr1 = load i64, i64* %envptr11702, align 8                              ; load; *envptr11702
  %envptr11703 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11704 = getelementptr inbounds i64, i64* %envptr11703, i64 3                ; &envptr11703[3]
  %cont8549 = load i64, i64* %envptr11704, align 8                                   ; load; *envptr11704
  %envptr11705 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11706 = getelementptr inbounds i64, i64* %envptr11705, i64 2                ; &envptr11705[2]
  %unN$acc = load i64, i64* %envptr11706, align 8                                    ; load; *envptr11706
  %envptr11707 = inttoptr i64 %env9536 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11708 = getelementptr inbounds i64, i64* %envptr11707, i64 1                ; &envptr11707[1]
  %AhL$_37map1 = load i64, i64* %envptr11708, align 8                                ; load; *envptr11708
  %cloptr11709 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11711 = getelementptr inbounds i64, i64* %cloptr11709, i64 1                  ; &eptr11711[1]
  %eptr11712 = getelementptr inbounds i64, i64* %cloptr11709, i64 2                  ; &eptr11712[2]
  %eptr11713 = getelementptr inbounds i64, i64* %cloptr11709, i64 3                  ; &eptr11713[3]
  %eptr11714 = getelementptr inbounds i64, i64* %cloptr11709, i64 4                  ; &eptr11714[4]
  %eptr11715 = getelementptr inbounds i64, i64* %cloptr11709, i64 5                  ; &eptr11715[5]
  %eptr11716 = getelementptr inbounds i64, i64* %cloptr11709, i64 6                  ; &eptr11716[6]
  %eptr11717 = getelementptr inbounds i64, i64* %cloptr11709, i64 7                  ; &eptr11717[7]
  store i64 %AhL$_37map1, i64* %eptr11711                                            ; *eptr11711 = %AhL$_37map1
  store i64 %unN$acc, i64* %eptr11712                                                ; *eptr11712 = %unN$acc
  store i64 %cont8549, i64* %eptr11713                                               ; *eptr11713 = %cont8549
  store i64 %kc9$_37foldr1, i64* %eptr11714                                          ; *eptr11714 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11715                                           ; *eptr11715 = %XAr$_37foldr
  store i64 %zhz$f, i64* %eptr11716                                                  ; *eptr11716 = %zhz$f
  store i64 %BvI$lsts, i64* %eptr11717                                               ; *eptr11717 = %BvI$lsts
  %eptr11710 = getelementptr inbounds i64, i64* %cloptr11709, i64 0                  ; &cloptr11709[0]
  %f11718 = ptrtoint void(i64,i64,i64)* @lam9533 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11718, i64* %eptr11710                                                 ; store fptr
  %arg9273 = ptrtoint i64* %cloptr11709 to i64                                       ; closure cast; i64* -> i64
  %cloptr11719 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11720 = getelementptr inbounds i64, i64* %cloptr11719, i64 0                  ; &cloptr11719[0]
  %f11721 = ptrtoint void(i64,i64,i64,i64)* @lam9512 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11721, i64* %eptr11720                                                 ; store fptr
  %arg9272 = ptrtoint i64* %cloptr11719 to i64                                       ; closure cast; i64* -> i64
  %arg9271 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr11722 = inttoptr i64 %kc9$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11722)                                        ; assert function application
  %i0ptr11723 = getelementptr inbounds i64, i64* %cloptr11722, i64 0                 ; &cloptr11722[0]
  %f11725 = load i64, i64* %i0ptr11723, align 8                                      ; load; *i0ptr11723
  %fptr11724 = inttoptr i64 %f11725 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11724(i64 %kc9$_37foldr1, i64 %arg9273, i64 %arg9272, i64 %arg9271, i64 %BvI$lsts); tail call
  ret void
}


define void @lam9533(i64 %env9534, i64 %_958553, i64 %a8319) {
  %envptr11726 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11727 = getelementptr inbounds i64, i64* %envptr11726, i64 7                ; &envptr11726[7]
  %BvI$lsts = load i64, i64* %envptr11727, align 8                                   ; load; *envptr11727
  %envptr11728 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11729 = getelementptr inbounds i64, i64* %envptr11728, i64 6                ; &envptr11728[6]
  %zhz$f = load i64, i64* %envptr11729, align 8                                      ; load; *envptr11729
  %envptr11730 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11731 = getelementptr inbounds i64, i64* %envptr11730, i64 5                ; &envptr11730[5]
  %XAr$_37foldr = load i64, i64* %envptr11731, align 8                               ; load; *envptr11731
  %envptr11732 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11733 = getelementptr inbounds i64, i64* %envptr11732, i64 4                ; &envptr11732[4]
  %kc9$_37foldr1 = load i64, i64* %envptr11733, align 8                              ; load; *envptr11733
  %envptr11734 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11735 = getelementptr inbounds i64, i64* %envptr11734, i64 3                ; &envptr11734[3]
  %cont8549 = load i64, i64* %envptr11735, align 8                                   ; load; *envptr11735
  %envptr11736 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11737 = getelementptr inbounds i64, i64* %envptr11736, i64 2                ; &envptr11736[2]
  %unN$acc = load i64, i64* %envptr11737, align 8                                    ; load; *envptr11737
  %envptr11738 = inttoptr i64 %env9534 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11739 = getelementptr inbounds i64, i64* %envptr11738, i64 1                ; &envptr11738[1]
  %AhL$_37map1 = load i64, i64* %envptr11739, align 8                                ; load; *envptr11739
  %cmp11740 = icmp eq i64 %a8319, 15                                                 ; false?
  br i1 %cmp11740, label %else11742, label %then11741                                ; if

then11741:
  %arg9276 = add i64 0, 0                                                            ; quoted ()
  %cloptr11743 = inttoptr i64 %cont8549 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11743)                                        ; assert function application
  %i0ptr11744 = getelementptr inbounds i64, i64* %cloptr11743, i64 0                 ; &cloptr11743[0]
  %f11746 = load i64, i64* %i0ptr11744, align 8                                      ; load; *i0ptr11744
  %fptr11745 = inttoptr i64 %f11746 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11745(i64 %cont8549, i64 %arg9276, i64 %unN$acc)    ; tail call
  ret void

else11742:
  %cloptr11747 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11749 = getelementptr inbounds i64, i64* %cloptr11747, i64 1                  ; &eptr11749[1]
  %eptr11750 = getelementptr inbounds i64, i64* %cloptr11747, i64 2                  ; &eptr11750[2]
  %eptr11751 = getelementptr inbounds i64, i64* %cloptr11747, i64 3                  ; &eptr11751[3]
  %eptr11752 = getelementptr inbounds i64, i64* %cloptr11747, i64 4                  ; &eptr11752[4]
  %eptr11753 = getelementptr inbounds i64, i64* %cloptr11747, i64 5                  ; &eptr11753[5]
  %eptr11754 = getelementptr inbounds i64, i64* %cloptr11747, i64 6                  ; &eptr11754[6]
  %eptr11755 = getelementptr inbounds i64, i64* %cloptr11747, i64 7                  ; &eptr11755[7]
  store i64 %AhL$_37map1, i64* %eptr11749                                            ; *eptr11749 = %AhL$_37map1
  store i64 %unN$acc, i64* %eptr11750                                                ; *eptr11750 = %unN$acc
  store i64 %cont8549, i64* %eptr11751                                               ; *eptr11751 = %cont8549
  store i64 %kc9$_37foldr1, i64* %eptr11752                                          ; *eptr11752 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11753                                           ; *eptr11753 = %XAr$_37foldr
  store i64 %zhz$f, i64* %eptr11754                                                  ; *eptr11754 = %zhz$f
  store i64 %BvI$lsts, i64* %eptr11755                                               ; *eptr11755 = %BvI$lsts
  %eptr11748 = getelementptr inbounds i64, i64* %cloptr11747, i64 0                  ; &cloptr11747[0]
  %f11756 = ptrtoint void(i64,i64,i64)* @lam9531 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11756, i64* %eptr11748                                                 ; store fptr
  %arg9280 = ptrtoint i64* %cloptr11747 to i64                                       ; closure cast; i64* -> i64
  %cloptr11757 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11758 = getelementptr inbounds i64, i64* %cloptr11757, i64 0                  ; &cloptr11757[0]
  %f11759 = ptrtoint void(i64,i64,i64)* @lam9516 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11759, i64* %eptr11758                                                 ; store fptr
  %arg9279 = ptrtoint i64* %cloptr11757 to i64                                       ; closure cast; i64* -> i64
  %cloptr11760 = inttoptr i64 %AhL$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11760)                                        ; assert function application
  %i0ptr11761 = getelementptr inbounds i64, i64* %cloptr11760, i64 0                 ; &cloptr11760[0]
  %f11763 = load i64, i64* %i0ptr11761, align 8                                      ; load; *i0ptr11761
  %fptr11762 = inttoptr i64 %f11763 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11762(i64 %AhL$_37map1, i64 %arg9280, i64 %arg9279, i64 %BvI$lsts); tail call
  ret void
}


define void @lam9531(i64 %env9532, i64 %_958554, i64 %UbL$lsts_43) {
  %envptr11764 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11765 = getelementptr inbounds i64, i64* %envptr11764, i64 7                ; &envptr11764[7]
  %BvI$lsts = load i64, i64* %envptr11765, align 8                                   ; load; *envptr11765
  %envptr11766 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11767 = getelementptr inbounds i64, i64* %envptr11766, i64 6                ; &envptr11766[6]
  %zhz$f = load i64, i64* %envptr11767, align 8                                      ; load; *envptr11767
  %envptr11768 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11769 = getelementptr inbounds i64, i64* %envptr11768, i64 5                ; &envptr11768[5]
  %XAr$_37foldr = load i64, i64* %envptr11769, align 8                               ; load; *envptr11769
  %envptr11770 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11771 = getelementptr inbounds i64, i64* %envptr11770, i64 4                ; &envptr11770[4]
  %kc9$_37foldr1 = load i64, i64* %envptr11771, align 8                              ; load; *envptr11771
  %envptr11772 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11773 = getelementptr inbounds i64, i64* %envptr11772, i64 3                ; &envptr11772[3]
  %cont8549 = load i64, i64* %envptr11773, align 8                                   ; load; *envptr11773
  %envptr11774 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11775 = getelementptr inbounds i64, i64* %envptr11774, i64 2                ; &envptr11774[2]
  %unN$acc = load i64, i64* %envptr11775, align 8                                    ; load; *envptr11775
  %envptr11776 = inttoptr i64 %env9532 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11777 = getelementptr inbounds i64, i64* %envptr11776, i64 1                ; &envptr11776[1]
  %AhL$_37map1 = load i64, i64* %envptr11777, align 8                                ; load; *envptr11777
  %cloptr11778 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11780 = getelementptr inbounds i64, i64* %cloptr11778, i64 1                  ; &eptr11780[1]
  %eptr11781 = getelementptr inbounds i64, i64* %cloptr11778, i64 2                  ; &eptr11781[2]
  %eptr11782 = getelementptr inbounds i64, i64* %cloptr11778, i64 3                  ; &eptr11782[3]
  %eptr11783 = getelementptr inbounds i64, i64* %cloptr11778, i64 4                  ; &eptr11783[4]
  %eptr11784 = getelementptr inbounds i64, i64* %cloptr11778, i64 5                  ; &eptr11784[5]
  %eptr11785 = getelementptr inbounds i64, i64* %cloptr11778, i64 6                  ; &eptr11785[6]
  store i64 %unN$acc, i64* %eptr11780                                                ; *eptr11780 = %unN$acc
  store i64 %cont8549, i64* %eptr11781                                               ; *eptr11781 = %cont8549
  store i64 %kc9$_37foldr1, i64* %eptr11782                                          ; *eptr11782 = %kc9$_37foldr1
  store i64 %XAr$_37foldr, i64* %eptr11783                                           ; *eptr11783 = %XAr$_37foldr
  store i64 %zhz$f, i64* %eptr11784                                                  ; *eptr11784 = %zhz$f
  store i64 %UbL$lsts_43, i64* %eptr11785                                            ; *eptr11785 = %UbL$lsts_43
  %eptr11779 = getelementptr inbounds i64, i64* %cloptr11778, i64 0                  ; &cloptr11778[0]
  %f11786 = ptrtoint void(i64,i64,i64)* @lam9529 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11786, i64* %eptr11779                                                 ; store fptr
  %arg9284 = ptrtoint i64* %cloptr11778 to i64                                       ; closure cast; i64* -> i64
  %cloptr11787 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11788 = getelementptr inbounds i64, i64* %cloptr11787, i64 0                  ; &cloptr11787[0]
  %f11789 = ptrtoint void(i64,i64,i64)* @lam9519 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11789, i64* %eptr11788                                                 ; store fptr
  %arg9283 = ptrtoint i64* %cloptr11787 to i64                                       ; closure cast; i64* -> i64
  %cloptr11790 = inttoptr i64 %AhL$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11790)                                        ; assert function application
  %i0ptr11791 = getelementptr inbounds i64, i64* %cloptr11790, i64 0                 ; &cloptr11790[0]
  %f11793 = load i64, i64* %i0ptr11791, align 8                                      ; load; *i0ptr11791
  %fptr11792 = inttoptr i64 %f11793 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11792(i64 %AhL$_37map1, i64 %arg9284, i64 %arg9283, i64 %BvI$lsts); tail call
  ret void
}


define void @lam9529(i64 %env9530, i64 %_958555, i64 %d0v$vs) {
  %envptr11794 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11795 = getelementptr inbounds i64, i64* %envptr11794, i64 6                ; &envptr11794[6]
  %UbL$lsts_43 = load i64, i64* %envptr11795, align 8                                ; load; *envptr11795
  %envptr11796 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11797 = getelementptr inbounds i64, i64* %envptr11796, i64 5                ; &envptr11796[5]
  %zhz$f = load i64, i64* %envptr11797, align 8                                      ; load; *envptr11797
  %envptr11798 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11799 = getelementptr inbounds i64, i64* %envptr11798, i64 4                ; &envptr11798[4]
  %XAr$_37foldr = load i64, i64* %envptr11799, align 8                               ; load; *envptr11799
  %envptr11800 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11801 = getelementptr inbounds i64, i64* %envptr11800, i64 3                ; &envptr11800[3]
  %kc9$_37foldr1 = load i64, i64* %envptr11801, align 8                              ; load; *envptr11801
  %envptr11802 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11803 = getelementptr inbounds i64, i64* %envptr11802, i64 2                ; &envptr11802[2]
  %cont8549 = load i64, i64* %envptr11803, align 8                                   ; load; *envptr11803
  %envptr11804 = inttoptr i64 %env9530 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11805 = getelementptr inbounds i64, i64* %envptr11804, i64 1                ; &envptr11804[1]
  %unN$acc = load i64, i64* %envptr11805, align 8                                    ; load; *envptr11805
  %a8320 = call i64 @prim_cons(i64 %unN$acc, i64 %UbL$lsts_43)                       ; call prim_cons
  %a8321 = call i64 @prim_cons(i64 %zhz$f, i64 %a8320)                               ; call prim_cons
  %cloptr11806 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11808 = getelementptr inbounds i64, i64* %cloptr11806, i64 1                  ; &eptr11808[1]
  %eptr11809 = getelementptr inbounds i64, i64* %cloptr11806, i64 2                  ; &eptr11809[2]
  %eptr11810 = getelementptr inbounds i64, i64* %cloptr11806, i64 3                  ; &eptr11810[3]
  %eptr11811 = getelementptr inbounds i64, i64* %cloptr11806, i64 4                  ; &eptr11811[4]
  store i64 %cont8549, i64* %eptr11808                                               ; *eptr11808 = %cont8549
  store i64 %d0v$vs, i64* %eptr11809                                                 ; *eptr11809 = %d0v$vs
  store i64 %kc9$_37foldr1, i64* %eptr11810                                          ; *eptr11810 = %kc9$_37foldr1
  store i64 %zhz$f, i64* %eptr11811                                                  ; *eptr11811 = %zhz$f
  %eptr11807 = getelementptr inbounds i64, i64* %cloptr11806, i64 0                  ; &cloptr11806[0]
  %f11812 = ptrtoint void(i64,i64,i64)* @lam9527 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11812, i64* %eptr11807                                                 ; store fptr
  %arg9291 = ptrtoint i64* %cloptr11806 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst8561 = call i64 @prim_cons(i64 %arg9291, i64 %a8321)                     ; call prim_cons
  %cloptr11813 = inttoptr i64 %XAr$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11813)                                        ; assert function application
  %i0ptr11814 = getelementptr inbounds i64, i64* %cloptr11813, i64 0                 ; &cloptr11813[0]
  %f11816 = load i64, i64* %i0ptr11814, align 8                                      ; load; *i0ptr11814
  %fptr11815 = inttoptr i64 %f11816 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11815(i64 %XAr$_37foldr, i64 %cps_45lst8561)        ; tail call
  ret void
}


define void @lam9527(i64 %env9528, i64 %_958556, i64 %a8322) {
  %envptr11817 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11818 = getelementptr inbounds i64, i64* %envptr11817, i64 4                ; &envptr11817[4]
  %zhz$f = load i64, i64* %envptr11818, align 8                                      ; load; *envptr11818
  %envptr11819 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11820 = getelementptr inbounds i64, i64* %envptr11819, i64 3                ; &envptr11819[3]
  %kc9$_37foldr1 = load i64, i64* %envptr11820, align 8                              ; load; *envptr11820
  %envptr11821 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11822 = getelementptr inbounds i64, i64* %envptr11821, i64 2                ; &envptr11821[2]
  %d0v$vs = load i64, i64* %envptr11822, align 8                                     ; load; *envptr11822
  %envptr11823 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11824 = getelementptr inbounds i64, i64* %envptr11823, i64 1                ; &envptr11823[1]
  %cont8549 = load i64, i64* %envptr11824, align 8                                   ; load; *envptr11824
  %arg9292 = add i64 0, 0                                                            ; quoted ()
  %a8323 = call i64 @prim_cons(i64 %a8322, i64 %arg9292)                             ; call prim_cons
  %cloptr11825 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11827 = getelementptr inbounds i64, i64* %cloptr11825, i64 1                  ; &eptr11827[1]
  %eptr11828 = getelementptr inbounds i64, i64* %cloptr11825, i64 2                  ; &eptr11828[2]
  store i64 %cont8549, i64* %eptr11827                                               ; *eptr11827 = %cont8549
  store i64 %zhz$f, i64* %eptr11828                                                  ; *eptr11828 = %zhz$f
  %eptr11826 = getelementptr inbounds i64, i64* %cloptr11825, i64 0                  ; &cloptr11825[0]
  %f11829 = ptrtoint void(i64,i64,i64)* @lam9524 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11829, i64* %eptr11826                                                 ; store fptr
  %arg9297 = ptrtoint i64* %cloptr11825 to i64                                       ; closure cast; i64* -> i64
  %cloptr11830 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11831 = getelementptr inbounds i64, i64* %cloptr11830, i64 0                  ; &cloptr11830[0]
  %f11832 = ptrtoint void(i64,i64,i64,i64)* @lam9522 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11832, i64* %eptr11831                                                 ; store fptr
  %arg9296 = ptrtoint i64* %cloptr11830 to i64                                       ; closure cast; i64* -> i64
  %cloptr11833 = inttoptr i64 %kc9$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11833)                                        ; assert function application
  %i0ptr11834 = getelementptr inbounds i64, i64* %cloptr11833, i64 0                 ; &cloptr11833[0]
  %f11836 = load i64, i64* %i0ptr11834, align 8                                      ; load; *i0ptr11834
  %fptr11835 = inttoptr i64 %f11836 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11835(i64 %kc9$_37foldr1, i64 %arg9297, i64 %arg9296, i64 %a8323, i64 %d0v$vs); tail call
  ret void
}


define void @lam9524(i64 %env9525, i64 %_958557, i64 %a8324) {
  %envptr11837 = inttoptr i64 %env9525 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11838 = getelementptr inbounds i64, i64* %envptr11837, i64 2                ; &envptr11837[2]
  %zhz$f = load i64, i64* %envptr11838, align 8                                      ; load; *envptr11838
  %envptr11839 = inttoptr i64 %env9525 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11840 = getelementptr inbounds i64, i64* %envptr11839, i64 1                ; &envptr11839[1]
  %cont8549 = load i64, i64* %envptr11840, align 8                                   ; load; *envptr11840
  %cps_45lst8558 = call i64 @prim_cons(i64 %cont8549, i64 %a8324)                    ; call prim_cons
  %cloptr11841 = inttoptr i64 %zhz$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11841)                                        ; assert function application
  %i0ptr11842 = getelementptr inbounds i64, i64* %cloptr11841, i64 0                 ; &cloptr11841[0]
  %f11844 = load i64, i64* %i0ptr11842, align 8                                      ; load; *i0ptr11842
  %fptr11843 = inttoptr i64 %f11844 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11843(i64 %zhz$f, i64 %cps_45lst8558)               ; tail call
  ret void
}


define void @lam9522(i64 %env9523, i64 %cont8559, i64 %hup$a, i64 %NiB$b) {
  %retprim8560 = call i64 @prim_cons(i64 %hup$a, i64 %NiB$b)                         ; call prim_cons
  %arg9304 = add i64 0, 0                                                            ; quoted ()
  %cloptr11845 = inttoptr i64 %cont8559 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11845)                                        ; assert function application
  %i0ptr11846 = getelementptr inbounds i64, i64* %cloptr11845, i64 0                 ; &cloptr11845[0]
  %f11848 = load i64, i64* %i0ptr11846, align 8                                      ; load; *i0ptr11846
  %fptr11847 = inttoptr i64 %f11848 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11847(i64 %cont8559, i64 %arg9304, i64 %retprim8560); tail call
  ret void
}


define void @lam9519(i64 %env9520, i64 %cont8562, i64 %srK$x) {
  %retprim8563 = call i64 @prim_car(i64 %srK$x)                                      ; call prim_car
  %arg9308 = add i64 0, 0                                                            ; quoted ()
  %cloptr11849 = inttoptr i64 %cont8562 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11849)                                        ; assert function application
  %i0ptr11850 = getelementptr inbounds i64, i64* %cloptr11849, i64 0                 ; &cloptr11849[0]
  %f11852 = load i64, i64* %i0ptr11850, align 8                                      ; load; *i0ptr11850
  %fptr11851 = inttoptr i64 %f11852 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11851(i64 %cont8562, i64 %arg9308, i64 %retprim8563); tail call
  ret void
}


define void @lam9516(i64 %env9517, i64 %cont8564, i64 %kSf$x) {
  %retprim8565 = call i64 @prim_cdr(i64 %kSf$x)                                      ; call prim_cdr
  %arg9312 = add i64 0, 0                                                            ; quoted ()
  %cloptr11853 = inttoptr i64 %cont8564 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11853)                                        ; assert function application
  %i0ptr11854 = getelementptr inbounds i64, i64* %cloptr11853, i64 0                 ; &cloptr11853[0]
  %f11856 = load i64, i64* %i0ptr11854, align 8                                      ; load; *i0ptr11854
  %fptr11855 = inttoptr i64 %f11856 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11855(i64 %cont8564, i64 %arg9312, i64 %retprim8565); tail call
  ret void
}


define void @lam9512(i64 %env9513, i64 %cont8566, i64 %Kwt$lst, i64 %vq9$b) {
  %cmp11857 = icmp eq i64 %vq9$b, 15                                                 ; false?
  br i1 %cmp11857, label %else11859, label %then11858                                ; if

then11858:
  %arg9315 = add i64 0, 0                                                            ; quoted ()
  %cloptr11860 = inttoptr i64 %cont8566 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11860)                                        ; assert function application
  %i0ptr11861 = getelementptr inbounds i64, i64* %cloptr11860, i64 0                 ; &cloptr11860[0]
  %f11863 = load i64, i64* %i0ptr11861, align 8                                      ; load; *i0ptr11861
  %fptr11862 = inttoptr i64 %f11863 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11862(i64 %cont8566, i64 %arg9315, i64 %vq9$b)      ; tail call
  ret void

else11859:
  %retprim8567 = call i64 @prim_null_63(i64 %Kwt$lst)                                ; call prim_null_63
  %arg9319 = add i64 0, 0                                                            ; quoted ()
  %cloptr11864 = inttoptr i64 %cont8566 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11864)                                        ; assert function application
  %i0ptr11865 = getelementptr inbounds i64, i64* %cloptr11864, i64 0                 ; &cloptr11864[0]
  %f11867 = load i64, i64* %i0ptr11865, align 8                                      ; load; *i0ptr11865
  %fptr11866 = inttoptr i64 %f11867 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11866(i64 %cont8566, i64 %arg9319, i64 %retprim8567); tail call
  ret void
}


define void @lam9505(i64 %env9506, i64 %cont8570, i64 %GCL$_37foldl1) {
  %arg9322 = add i64 0, 0                                                            ; quoted ()
  %cloptr11868 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11870 = getelementptr inbounds i64, i64* %cloptr11868, i64 1                  ; &eptr11870[1]
  store i64 %GCL$_37foldl1, i64* %eptr11870                                          ; *eptr11870 = %GCL$_37foldl1
  %eptr11869 = getelementptr inbounds i64, i64* %cloptr11868, i64 0                  ; &cloptr11868[0]
  %f11871 = ptrtoint void(i64,i64,i64,i64,i64)* @lam9502 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f11871, i64* %eptr11869                                                 ; store fptr
  %arg9321 = ptrtoint i64* %cloptr11868 to i64                                       ; closure cast; i64* -> i64
  %cloptr11872 = inttoptr i64 %cont8570 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11872)                                        ; assert function application
  %i0ptr11873 = getelementptr inbounds i64, i64* %cloptr11872, i64 0                 ; &cloptr11872[0]
  %f11875 = load i64, i64* %i0ptr11873, align 8                                      ; load; *i0ptr11873
  %fptr11874 = inttoptr i64 %f11875 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11874(i64 %cont8570, i64 %arg9322, i64 %arg9321)    ; tail call
  ret void
}


define void @lam9502(i64 %env9503, i64 %cont8571, i64 %dfj$f, i64 %C11$acc, i64 %GUo$lst) {
  %envptr11876 = inttoptr i64 %env9503 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11877 = getelementptr inbounds i64, i64* %envptr11876, i64 1                ; &envptr11876[1]
  %GCL$_37foldl1 = load i64, i64* %envptr11877, align 8                              ; load; *envptr11877
  %a8311 = call i64 @prim_null_63(i64 %GUo$lst)                                      ; call prim_null_63
  %cmp11878 = icmp eq i64 %a8311, 15                                                 ; false?
  br i1 %cmp11878, label %else11880, label %then11879                                ; if

then11879:
  %arg9326 = add i64 0, 0                                                            ; quoted ()
  %cloptr11881 = inttoptr i64 %cont8571 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11881)                                        ; assert function application
  %i0ptr11882 = getelementptr inbounds i64, i64* %cloptr11881, i64 0                 ; &cloptr11881[0]
  %f11884 = load i64, i64* %i0ptr11882, align 8                                      ; load; *i0ptr11882
  %fptr11883 = inttoptr i64 %f11884 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11883(i64 %cont8571, i64 %arg9326, i64 %C11$acc)    ; tail call
  ret void

else11880:
  %a8312 = call i64 @prim_car(i64 %GUo$lst)                                          ; call prim_car
  %cloptr11885 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11887 = getelementptr inbounds i64, i64* %cloptr11885, i64 1                  ; &eptr11887[1]
  %eptr11888 = getelementptr inbounds i64, i64* %cloptr11885, i64 2                  ; &eptr11888[2]
  %eptr11889 = getelementptr inbounds i64, i64* %cloptr11885, i64 3                  ; &eptr11889[3]
  %eptr11890 = getelementptr inbounds i64, i64* %cloptr11885, i64 4                  ; &eptr11890[4]
  store i64 %GCL$_37foldl1, i64* %eptr11887                                          ; *eptr11887 = %GCL$_37foldl1
  store i64 %dfj$f, i64* %eptr11888                                                  ; *eptr11888 = %dfj$f
  store i64 %GUo$lst, i64* %eptr11889                                                ; *eptr11889 = %GUo$lst
  store i64 %cont8571, i64* %eptr11890                                               ; *eptr11890 = %cont8571
  %eptr11886 = getelementptr inbounds i64, i64* %cloptr11885, i64 0                  ; &cloptr11885[0]
  %f11891 = ptrtoint void(i64,i64,i64)* @lam9500 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11891, i64* %eptr11886                                                 ; store fptr
  %arg9331 = ptrtoint i64* %cloptr11885 to i64                                       ; closure cast; i64* -> i64
  %cloptr11892 = inttoptr i64 %dfj$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11892)                                        ; assert function application
  %i0ptr11893 = getelementptr inbounds i64, i64* %cloptr11892, i64 0                 ; &cloptr11892[0]
  %f11895 = load i64, i64* %i0ptr11893, align 8                                      ; load; *i0ptr11893
  %fptr11894 = inttoptr i64 %f11895 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11894(i64 %dfj$f, i64 %arg9331, i64 %a8312, i64 %C11$acc); tail call
  ret void
}


define void @lam9500(i64 %env9501, i64 %_958572, i64 %a8313) {
  %envptr11896 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11897 = getelementptr inbounds i64, i64* %envptr11896, i64 4                ; &envptr11896[4]
  %cont8571 = load i64, i64* %envptr11897, align 8                                   ; load; *envptr11897
  %envptr11898 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11899 = getelementptr inbounds i64, i64* %envptr11898, i64 3                ; &envptr11898[3]
  %GUo$lst = load i64, i64* %envptr11899, align 8                                    ; load; *envptr11899
  %envptr11900 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11901 = getelementptr inbounds i64, i64* %envptr11900, i64 2                ; &envptr11900[2]
  %dfj$f = load i64, i64* %envptr11901, align 8                                      ; load; *envptr11901
  %envptr11902 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11903 = getelementptr inbounds i64, i64* %envptr11902, i64 1                ; &envptr11902[1]
  %GCL$_37foldl1 = load i64, i64* %envptr11903, align 8                              ; load; *envptr11903
  %a8314 = call i64 @prim_cdr(i64 %GUo$lst)                                          ; call prim_cdr
  %cloptr11904 = inttoptr i64 %GCL$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11904)                                        ; assert function application
  %i0ptr11905 = getelementptr inbounds i64, i64* %cloptr11904, i64 0                 ; &cloptr11904[0]
  %f11907 = load i64, i64* %i0ptr11905, align 8                                      ; load; *i0ptr11905
  %fptr11906 = inttoptr i64 %f11907 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11906(i64 %GCL$_37foldl1, i64 %cont8571, i64 %dfj$f, i64 %a8313, i64 %a8314); tail call
  ret void
}


define void @lam9497(i64 %env9498, i64 %cont8573, i64 %grv$_37length) {
  %arg9340 = add i64 0, 0                                                            ; quoted ()
  %cloptr11908 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11910 = getelementptr inbounds i64, i64* %cloptr11908, i64 1                  ; &eptr11910[1]
  store i64 %grv$_37length, i64* %eptr11910                                          ; *eptr11910 = %grv$_37length
  %eptr11909 = getelementptr inbounds i64, i64* %cloptr11908, i64 0                  ; &cloptr11908[0]
  %f11911 = ptrtoint void(i64,i64,i64)* @lam9494 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11911, i64* %eptr11909                                                 ; store fptr
  %arg9339 = ptrtoint i64* %cloptr11908 to i64                                       ; closure cast; i64* -> i64
  %cloptr11912 = inttoptr i64 %cont8573 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11912)                                        ; assert function application
  %i0ptr11913 = getelementptr inbounds i64, i64* %cloptr11912, i64 0                 ; &cloptr11912[0]
  %f11915 = load i64, i64* %i0ptr11913, align 8                                      ; load; *i0ptr11913
  %fptr11914 = inttoptr i64 %f11915 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11914(i64 %cont8573, i64 %arg9340, i64 %arg9339)    ; tail call
  ret void
}


define void @lam9494(i64 %env9495, i64 %cont8574, i64 %MXW$lst) {
  %envptr11916 = inttoptr i64 %env9495 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11917 = getelementptr inbounds i64, i64* %envptr11916, i64 1                ; &envptr11916[1]
  %grv$_37length = load i64, i64* %envptr11917, align 8                              ; load; *envptr11917
  %a8308 = call i64 @prim_null_63(i64 %MXW$lst)                                      ; call prim_null_63
  %cmp11918 = icmp eq i64 %a8308, 15                                                 ; false?
  br i1 %cmp11918, label %else11920, label %then11919                                ; if

then11919:
  %arg9344 = add i64 0, 0                                                            ; quoted ()
  %arg9343 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11921 = inttoptr i64 %cont8574 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11921)                                        ; assert function application
  %i0ptr11922 = getelementptr inbounds i64, i64* %cloptr11921, i64 0                 ; &cloptr11921[0]
  %f11924 = load i64, i64* %i0ptr11922, align 8                                      ; load; *i0ptr11922
  %fptr11923 = inttoptr i64 %f11924 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11923(i64 %cont8574, i64 %arg9344, i64 %arg9343)    ; tail call
  ret void

else11920:
  %a8309 = call i64 @prim_cdr(i64 %MXW$lst)                                          ; call prim_cdr
  %cloptr11925 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11927 = getelementptr inbounds i64, i64* %cloptr11925, i64 1                  ; &eptr11927[1]
  store i64 %cont8574, i64* %eptr11927                                               ; *eptr11927 = %cont8574
  %eptr11926 = getelementptr inbounds i64, i64* %cloptr11925, i64 0                  ; &cloptr11925[0]
  %f11928 = ptrtoint void(i64,i64,i64)* @lam9492 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11928, i64* %eptr11926                                                 ; store fptr
  %arg9348 = ptrtoint i64* %cloptr11925 to i64                                       ; closure cast; i64* -> i64
  %cloptr11929 = inttoptr i64 %grv$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11929)                                        ; assert function application
  %i0ptr11930 = getelementptr inbounds i64, i64* %cloptr11929, i64 0                 ; &cloptr11929[0]
  %f11932 = load i64, i64* %i0ptr11930, align 8                                      ; load; *i0ptr11930
  %fptr11931 = inttoptr i64 %f11932 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11931(i64 %grv$_37length, i64 %arg9348, i64 %a8309) ; tail call
  ret void
}


define void @lam9492(i64 %env9493, i64 %_958575, i64 %a8310) {
  %envptr11933 = inttoptr i64 %env9493 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11934 = getelementptr inbounds i64, i64* %envptr11933, i64 1                ; &envptr11933[1]
  %cont8574 = load i64, i64* %envptr11934, align 8                                   ; load; *envptr11934
  %arg9351 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim8576 = call i64 @prim__43(i64 %arg9351, i64 %a8310)                        ; call prim__43
  %arg9353 = add i64 0, 0                                                            ; quoted ()
  %cloptr11935 = inttoptr i64 %cont8574 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11935)                                        ; assert function application
  %i0ptr11936 = getelementptr inbounds i64, i64* %cloptr11935, i64 0                 ; &cloptr11935[0]
  %f11938 = load i64, i64* %i0ptr11936, align 8                                      ; load; *i0ptr11936
  %fptr11937 = inttoptr i64 %f11938 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11937(i64 %cont8574, i64 %arg9353, i64 %retprim8576); tail call
  ret void
}


define void @lam9486(i64 %env9487, i64 %cont8577, i64 %AWO$_37take) {
  %arg9356 = add i64 0, 0                                                            ; quoted ()
  %cloptr11939 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11941 = getelementptr inbounds i64, i64* %cloptr11939, i64 1                  ; &eptr11941[1]
  store i64 %AWO$_37take, i64* %eptr11941                                            ; *eptr11941 = %AWO$_37take
  %eptr11940 = getelementptr inbounds i64, i64* %cloptr11939, i64 0                  ; &cloptr11939[0]
  %f11942 = ptrtoint void(i64,i64,i64,i64)* @lam9483 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11942, i64* %eptr11940                                                 ; store fptr
  %arg9355 = ptrtoint i64* %cloptr11939 to i64                                       ; closure cast; i64* -> i64
  %cloptr11943 = inttoptr i64 %cont8577 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11943)                                        ; assert function application
  %i0ptr11944 = getelementptr inbounds i64, i64* %cloptr11943, i64 0                 ; &cloptr11943[0]
  %f11946 = load i64, i64* %i0ptr11944, align 8                                      ; load; *i0ptr11944
  %fptr11945 = inttoptr i64 %f11946 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11945(i64 %cont8577, i64 %arg9356, i64 %arg9355)    ; tail call
  ret void
}


define void @lam9483(i64 %env9484, i64 %cont8578, i64 %wNR$lst, i64 %USf$n) {
  %envptr11947 = inttoptr i64 %env9484 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11948 = getelementptr inbounds i64, i64* %envptr11947, i64 1                ; &envptr11947[1]
  %AWO$_37take = load i64, i64* %envptr11948, align 8                                ; load; *envptr11948
  %arg9358 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a8302 = call i64 @prim__61(i64 %USf$n, i64 %arg9358)                              ; call prim__61
  %cmp11949 = icmp eq i64 %a8302, 15                                                 ; false?
  br i1 %cmp11949, label %else11951, label %then11950                                ; if

then11950:
  %arg9361 = add i64 0, 0                                                            ; quoted ()
  %arg9360 = add i64 0, 0                                                            ; quoted ()
  %cloptr11952 = inttoptr i64 %cont8578 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11952)                                        ; assert function application
  %i0ptr11953 = getelementptr inbounds i64, i64* %cloptr11952, i64 0                 ; &cloptr11952[0]
  %f11955 = load i64, i64* %i0ptr11953, align 8                                      ; load; *i0ptr11953
  %fptr11954 = inttoptr i64 %f11955 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11954(i64 %cont8578, i64 %arg9361, i64 %arg9360)    ; tail call
  ret void

else11951:
  %a8303 = call i64 @prim_null_63(i64 %wNR$lst)                                      ; call prim_null_63
  %cmp11956 = icmp eq i64 %a8303, 15                                                 ; false?
  br i1 %cmp11956, label %else11958, label %then11957                                ; if

then11957:
  %arg9365 = add i64 0, 0                                                            ; quoted ()
  %arg9364 = add i64 0, 0                                                            ; quoted ()
  %cloptr11959 = inttoptr i64 %cont8578 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11959)                                        ; assert function application
  %i0ptr11960 = getelementptr inbounds i64, i64* %cloptr11959, i64 0                 ; &cloptr11959[0]
  %f11962 = load i64, i64* %i0ptr11960, align 8                                      ; load; *i0ptr11960
  %fptr11961 = inttoptr i64 %f11962 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11961(i64 %cont8578, i64 %arg9365, i64 %arg9364)    ; tail call
  ret void

else11958:
  %a8304 = call i64 @prim_car(i64 %wNR$lst)                                          ; call prim_car
  %a8305 = call i64 @prim_cdr(i64 %wNR$lst)                                          ; call prim_cdr
  %arg9369 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a8306 = call i64 @prim__45(i64 %USf$n, i64 %arg9369)                              ; call prim__45
  %cloptr11963 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11965 = getelementptr inbounds i64, i64* %cloptr11963, i64 1                  ; &eptr11965[1]
  %eptr11966 = getelementptr inbounds i64, i64* %cloptr11963, i64 2                  ; &eptr11966[2]
  store i64 %a8304, i64* %eptr11965                                                  ; *eptr11965 = %a8304
  store i64 %cont8578, i64* %eptr11966                                               ; *eptr11966 = %cont8578
  %eptr11964 = getelementptr inbounds i64, i64* %cloptr11963, i64 0                  ; &cloptr11963[0]
  %f11967 = ptrtoint void(i64,i64,i64)* @lam9479 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f11967, i64* %eptr11964                                                 ; store fptr
  %arg9373 = ptrtoint i64* %cloptr11963 to i64                                       ; closure cast; i64* -> i64
  %cloptr11968 = inttoptr i64 %AWO$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11968)                                        ; assert function application
  %i0ptr11969 = getelementptr inbounds i64, i64* %cloptr11968, i64 0                 ; &cloptr11968[0]
  %f11971 = load i64, i64* %i0ptr11969, align 8                                      ; load; *i0ptr11969
  %fptr11970 = inttoptr i64 %f11971 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11970(i64 %AWO$_37take, i64 %arg9373, i64 %a8305, i64 %a8306); tail call
  ret void
}


define void @lam9479(i64 %env9480, i64 %_958579, i64 %a8307) {
  %envptr11972 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11973 = getelementptr inbounds i64, i64* %envptr11972, i64 2                ; &envptr11972[2]
  %cont8578 = load i64, i64* %envptr11973, align 8                                   ; load; *envptr11973
  %envptr11974 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11975 = getelementptr inbounds i64, i64* %envptr11974, i64 1                ; &envptr11974[1]
  %a8304 = load i64, i64* %envptr11975, align 8                                      ; load; *envptr11975
  %retprim8580 = call i64 @prim_cons(i64 %a8304, i64 %a8307)                         ; call prim_cons
  %arg9378 = add i64 0, 0                                                            ; quoted ()
  %cloptr11976 = inttoptr i64 %cont8578 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11976)                                        ; assert function application
  %i0ptr11977 = getelementptr inbounds i64, i64* %cloptr11976, i64 0                 ; &cloptr11976[0]
  %f11979 = load i64, i64* %i0ptr11977, align 8                                      ; load; *i0ptr11977
  %fptr11978 = inttoptr i64 %f11979 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11978(i64 %cont8578, i64 %arg9378, i64 %retprim8580); tail call
  ret void
}


define void @lam9472(i64 %env9473, i64 %cont8581, i64 %fOU$_37map) {
  %arg9381 = add i64 0, 0                                                            ; quoted ()
  %cloptr11980 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11982 = getelementptr inbounds i64, i64* %cloptr11980, i64 1                  ; &eptr11982[1]
  store i64 %fOU$_37map, i64* %eptr11982                                             ; *eptr11982 = %fOU$_37map
  %eptr11981 = getelementptr inbounds i64, i64* %cloptr11980, i64 0                  ; &cloptr11980[0]
  %f11983 = ptrtoint void(i64,i64,i64,i64)* @lam9469 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f11983, i64* %eptr11981                                                 ; store fptr
  %arg9380 = ptrtoint i64* %cloptr11980 to i64                                       ; closure cast; i64* -> i64
  %cloptr11984 = inttoptr i64 %cont8581 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11984)                                        ; assert function application
  %i0ptr11985 = getelementptr inbounds i64, i64* %cloptr11984, i64 0                 ; &cloptr11984[0]
  %f11987 = load i64, i64* %i0ptr11985, align 8                                      ; load; *i0ptr11985
  %fptr11986 = inttoptr i64 %f11987 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11986(i64 %cont8581, i64 %arg9381, i64 %arg9380)    ; tail call
  ret void
}


define void @lam9469(i64 %env9470, i64 %cont8582, i64 %rjn$f, i64 %ADE$lst) {
  %envptr11988 = inttoptr i64 %env9470 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11989 = getelementptr inbounds i64, i64* %envptr11988, i64 1                ; &envptr11988[1]
  %fOU$_37map = load i64, i64* %envptr11989, align 8                                 ; load; *envptr11989
  %a8297 = call i64 @prim_null_63(i64 %ADE$lst)                                      ; call prim_null_63
  %cmp11990 = icmp eq i64 %a8297, 15                                                 ; false?
  br i1 %cmp11990, label %else11992, label %then11991                                ; if

then11991:
  %arg9385 = add i64 0, 0                                                            ; quoted ()
  %arg9384 = add i64 0, 0                                                            ; quoted ()
  %cloptr11993 = inttoptr i64 %cont8582 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11993)                                        ; assert function application
  %i0ptr11994 = getelementptr inbounds i64, i64* %cloptr11993, i64 0                 ; &cloptr11993[0]
  %f11996 = load i64, i64* %i0ptr11994, align 8                                      ; load; *i0ptr11994
  %fptr11995 = inttoptr i64 %f11996 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11995(i64 %cont8582, i64 %arg9385, i64 %arg9384)    ; tail call
  ret void

else11992:
  %a8298 = call i64 @prim_car(i64 %ADE$lst)                                          ; call prim_car
  %cloptr11997 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11999 = getelementptr inbounds i64, i64* %cloptr11997, i64 1                  ; &eptr11999[1]
  %eptr12000 = getelementptr inbounds i64, i64* %cloptr11997, i64 2                  ; &eptr12000[2]
  %eptr12001 = getelementptr inbounds i64, i64* %cloptr11997, i64 3                  ; &eptr12001[3]
  %eptr12002 = getelementptr inbounds i64, i64* %cloptr11997, i64 4                  ; &eptr12002[4]
  store i64 %fOU$_37map, i64* %eptr11999                                             ; *eptr11999 = %fOU$_37map
  store i64 %rjn$f, i64* %eptr12000                                                  ; *eptr12000 = %rjn$f
  store i64 %ADE$lst, i64* %eptr12001                                                ; *eptr12001 = %ADE$lst
  store i64 %cont8582, i64* %eptr12002                                               ; *eptr12002 = %cont8582
  %eptr11998 = getelementptr inbounds i64, i64* %cloptr11997, i64 0                  ; &cloptr11997[0]
  %f12003 = ptrtoint void(i64,i64,i64)* @lam9467 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12003, i64* %eptr11998                                                 ; store fptr
  %arg9389 = ptrtoint i64* %cloptr11997 to i64                                       ; closure cast; i64* -> i64
  %cloptr12004 = inttoptr i64 %rjn$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12004)                                        ; assert function application
  %i0ptr12005 = getelementptr inbounds i64, i64* %cloptr12004, i64 0                 ; &cloptr12004[0]
  %f12007 = load i64, i64* %i0ptr12005, align 8                                      ; load; *i0ptr12005
  %fptr12006 = inttoptr i64 %f12007 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12006(i64 %rjn$f, i64 %arg9389, i64 %a8298)         ; tail call
  ret void
}


define void @lam9467(i64 %env9468, i64 %_958583, i64 %a8299) {
  %envptr12008 = inttoptr i64 %env9468 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12009 = getelementptr inbounds i64, i64* %envptr12008, i64 4                ; &envptr12008[4]
  %cont8582 = load i64, i64* %envptr12009, align 8                                   ; load; *envptr12009
  %envptr12010 = inttoptr i64 %env9468 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12011 = getelementptr inbounds i64, i64* %envptr12010, i64 3                ; &envptr12010[3]
  %ADE$lst = load i64, i64* %envptr12011, align 8                                    ; load; *envptr12011
  %envptr12012 = inttoptr i64 %env9468 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12013 = getelementptr inbounds i64, i64* %envptr12012, i64 2                ; &envptr12012[2]
  %rjn$f = load i64, i64* %envptr12013, align 8                                      ; load; *envptr12013
  %envptr12014 = inttoptr i64 %env9468 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12015 = getelementptr inbounds i64, i64* %envptr12014, i64 1                ; &envptr12014[1]
  %fOU$_37map = load i64, i64* %envptr12015, align 8                                 ; load; *envptr12015
  %a8300 = call i64 @prim_cdr(i64 %ADE$lst)                                          ; call prim_cdr
  %cloptr12016 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12018 = getelementptr inbounds i64, i64* %cloptr12016, i64 1                  ; &eptr12018[1]
  %eptr12019 = getelementptr inbounds i64, i64* %cloptr12016, i64 2                  ; &eptr12019[2]
  store i64 %a8299, i64* %eptr12018                                                  ; *eptr12018 = %a8299
  store i64 %cont8582, i64* %eptr12019                                               ; *eptr12019 = %cont8582
  %eptr12017 = getelementptr inbounds i64, i64* %cloptr12016, i64 0                  ; &cloptr12016[0]
  %f12020 = ptrtoint void(i64,i64,i64)* @lam9465 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12020, i64* %eptr12017                                                 ; store fptr
  %arg9394 = ptrtoint i64* %cloptr12016 to i64                                       ; closure cast; i64* -> i64
  %cloptr12021 = inttoptr i64 %fOU$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12021)                                        ; assert function application
  %i0ptr12022 = getelementptr inbounds i64, i64* %cloptr12021, i64 0                 ; &cloptr12021[0]
  %f12024 = load i64, i64* %i0ptr12022, align 8                                      ; load; *i0ptr12022
  %fptr12023 = inttoptr i64 %f12024 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12023(i64 %fOU$_37map, i64 %arg9394, i64 %rjn$f, i64 %a8300); tail call
  ret void
}


define void @lam9465(i64 %env9466, i64 %_958584, i64 %a8301) {
  %envptr12025 = inttoptr i64 %env9466 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12026 = getelementptr inbounds i64, i64* %envptr12025, i64 2                ; &envptr12025[2]
  %cont8582 = load i64, i64* %envptr12026, align 8                                   ; load; *envptr12026
  %envptr12027 = inttoptr i64 %env9466 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12028 = getelementptr inbounds i64, i64* %envptr12027, i64 1                ; &envptr12027[1]
  %a8299 = load i64, i64* %envptr12028, align 8                                      ; load; *envptr12028
  %retprim8585 = call i64 @prim_cons(i64 %a8299, i64 %a8301)                         ; call prim_cons
  %arg9399 = add i64 0, 0                                                            ; quoted ()
  %cloptr12029 = inttoptr i64 %cont8582 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12029)                                        ; assert function application
  %i0ptr12030 = getelementptr inbounds i64, i64* %cloptr12029, i64 0                 ; &cloptr12029[0]
  %f12032 = load i64, i64* %i0ptr12030, align 8                                      ; load; *i0ptr12030
  %fptr12031 = inttoptr i64 %f12032 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12031(i64 %cont8582, i64 %arg9399, i64 %retprim8585); tail call
  ret void
}


define void @lam9460(i64 %env9461, i64 %cont8586, i64 %V71$_37foldr1) {
  %arg9402 = add i64 0, 0                                                            ; quoted ()
  %cloptr12033 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr12035 = getelementptr inbounds i64, i64* %cloptr12033, i64 1                  ; &eptr12035[1]
  store i64 %V71$_37foldr1, i64* %eptr12035                                          ; *eptr12035 = %V71$_37foldr1
  %eptr12034 = getelementptr inbounds i64, i64* %cloptr12033, i64 0                  ; &cloptr12033[0]
  %f12036 = ptrtoint void(i64,i64,i64,i64,i64)* @lam9457 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f12036, i64* %eptr12034                                                 ; store fptr
  %arg9401 = ptrtoint i64* %cloptr12033 to i64                                       ; closure cast; i64* -> i64
  %cloptr12037 = inttoptr i64 %cont8586 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12037)                                        ; assert function application
  %i0ptr12038 = getelementptr inbounds i64, i64* %cloptr12037, i64 0                 ; &cloptr12037[0]
  %f12040 = load i64, i64* %i0ptr12038, align 8                                      ; load; *i0ptr12038
  %fptr12039 = inttoptr i64 %f12040 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12039(i64 %cont8586, i64 %arg9402, i64 %arg9401)    ; tail call
  ret void
}


define void @lam9457(i64 %env9458, i64 %cont8587, i64 %ETJ$f, i64 %oKI$acc, i64 %nZJ$lst) {
  %envptr12041 = inttoptr i64 %env9458 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12042 = getelementptr inbounds i64, i64* %envptr12041, i64 1                ; &envptr12041[1]
  %V71$_37foldr1 = load i64, i64* %envptr12042, align 8                              ; load; *envptr12042
  %a8293 = call i64 @prim_null_63(i64 %nZJ$lst)                                      ; call prim_null_63
  %cmp12043 = icmp eq i64 %a8293, 15                                                 ; false?
  br i1 %cmp12043, label %else12045, label %then12044                                ; if

then12044:
  %arg9406 = add i64 0, 0                                                            ; quoted ()
  %cloptr12046 = inttoptr i64 %cont8587 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12046)                                        ; assert function application
  %i0ptr12047 = getelementptr inbounds i64, i64* %cloptr12046, i64 0                 ; &cloptr12046[0]
  %f12049 = load i64, i64* %i0ptr12047, align 8                                      ; load; *i0ptr12047
  %fptr12048 = inttoptr i64 %f12049 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12048(i64 %cont8587, i64 %arg9406, i64 %oKI$acc)    ; tail call
  ret void

else12045:
  %a8294 = call i64 @prim_car(i64 %nZJ$lst)                                          ; call prim_car
  %a8295 = call i64 @prim_cdr(i64 %nZJ$lst)                                          ; call prim_cdr
  %cloptr12050 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12052 = getelementptr inbounds i64, i64* %cloptr12050, i64 1                  ; &eptr12052[1]
  %eptr12053 = getelementptr inbounds i64, i64* %cloptr12050, i64 2                  ; &eptr12053[2]
  %eptr12054 = getelementptr inbounds i64, i64* %cloptr12050, i64 3                  ; &eptr12054[3]
  store i64 %cont8587, i64* %eptr12052                                               ; *eptr12052 = %cont8587
  store i64 %a8294, i64* %eptr12053                                                  ; *eptr12053 = %a8294
  store i64 %ETJ$f, i64* %eptr12054                                                  ; *eptr12054 = %ETJ$f
  %eptr12051 = getelementptr inbounds i64, i64* %cloptr12050, i64 0                  ; &cloptr12050[0]
  %f12055 = ptrtoint void(i64,i64,i64)* @lam9455 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12055, i64* %eptr12051                                                 ; store fptr
  %arg9413 = ptrtoint i64* %cloptr12050 to i64                                       ; closure cast; i64* -> i64
  %cloptr12056 = inttoptr i64 %V71$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12056)                                        ; assert function application
  %i0ptr12057 = getelementptr inbounds i64, i64* %cloptr12056, i64 0                 ; &cloptr12056[0]
  %f12059 = load i64, i64* %i0ptr12057, align 8                                      ; load; *i0ptr12057
  %fptr12058 = inttoptr i64 %f12059 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12058(i64 %V71$_37foldr1, i64 %arg9413, i64 %ETJ$f, i64 %oKI$acc, i64 %a8295); tail call
  ret void
}


define void @lam9455(i64 %env9456, i64 %_958588, i64 %a8296) {
  %envptr12060 = inttoptr i64 %env9456 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12061 = getelementptr inbounds i64, i64* %envptr12060, i64 3                ; &envptr12060[3]
  %ETJ$f = load i64, i64* %envptr12061, align 8                                      ; load; *envptr12061
  %envptr12062 = inttoptr i64 %env9456 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12063 = getelementptr inbounds i64, i64* %envptr12062, i64 2                ; &envptr12062[2]
  %a8294 = load i64, i64* %envptr12063, align 8                                      ; load; *envptr12063
  %envptr12064 = inttoptr i64 %env9456 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12065 = getelementptr inbounds i64, i64* %envptr12064, i64 1                ; &envptr12064[1]
  %cont8587 = load i64, i64* %envptr12065, align 8                                   ; load; *envptr12065
  %cloptr12066 = inttoptr i64 %ETJ$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12066)                                        ; assert function application
  %i0ptr12067 = getelementptr inbounds i64, i64* %cloptr12066, i64 0                 ; &cloptr12066[0]
  %f12069 = load i64, i64* %i0ptr12067, align 8                                      ; load; *i0ptr12067
  %fptr12068 = inttoptr i64 %f12069 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12068(i64 %ETJ$f, i64 %cont8587, i64 %a8294, i64 %a8296); tail call
  ret void
}


define void @lam9452(i64 %env9453, i64 %cont8590, i64 %smn$y) {
  %arg9420 = add i64 0, 0                                                            ; quoted ()
  %cloptr12070 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr12072 = getelementptr inbounds i64, i64* %cloptr12070, i64 1                  ; &eptr12072[1]
  store i64 %smn$y, i64* %eptr12072                                                  ; *eptr12072 = %smn$y
  %eptr12071 = getelementptr inbounds i64, i64* %cloptr12070, i64 0                  ; &cloptr12070[0]
  %f12073 = ptrtoint void(i64,i64,i64)* @lam9449 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12073, i64* %eptr12071                                                 ; store fptr
  %arg9419 = ptrtoint i64* %cloptr12070 to i64                                       ; closure cast; i64* -> i64
  %cloptr12074 = inttoptr i64 %cont8590 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12074)                                        ; assert function application
  %i0ptr12075 = getelementptr inbounds i64, i64* %cloptr12074, i64 0                 ; &cloptr12074[0]
  %f12077 = load i64, i64* %i0ptr12075, align 8                                      ; load; *i0ptr12075
  %fptr12076 = inttoptr i64 %f12077 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12076(i64 %cont8590, i64 %arg9420, i64 %arg9419)    ; tail call
  ret void
}


define void @lam9449(i64 %env9450, i64 %cont8591, i64 %CFj$f) {
  %envptr12078 = inttoptr i64 %env9450 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12079 = getelementptr inbounds i64, i64* %envptr12078, i64 1                ; &envptr12078[1]
  %smn$y = load i64, i64* %envptr12079, align 8                                      ; load; *envptr12079
  %cloptr12080 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12082 = getelementptr inbounds i64, i64* %cloptr12080, i64 1                  ; &eptr12082[1]
  %eptr12083 = getelementptr inbounds i64, i64* %cloptr12080, i64 2                  ; &eptr12083[2]
  store i64 %CFj$f, i64* %eptr12082                                                  ; *eptr12082 = %CFj$f
  store i64 %smn$y, i64* %eptr12083                                                  ; *eptr12083 = %smn$y
  %eptr12081 = getelementptr inbounds i64, i64* %cloptr12080, i64 0                  ; &cloptr12080[0]
  %f12084 = ptrtoint void(i64,i64)* @lam9447 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12084, i64* %eptr12081                                                 ; store fptr
  %arg9422 = ptrtoint i64* %cloptr12080 to i64                                       ; closure cast; i64* -> i64
  %cloptr12085 = inttoptr i64 %CFj$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12085)                                        ; assert function application
  %i0ptr12086 = getelementptr inbounds i64, i64* %cloptr12085, i64 0                 ; &cloptr12085[0]
  %f12088 = load i64, i64* %i0ptr12086, align 8                                      ; load; *i0ptr12086
  %fptr12087 = inttoptr i64 %f12088 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12087(i64 %CFj$f, i64 %cont8591, i64 %arg9422)      ; tail call
  ret void
}


define void @lam9447(i64 %env9448, i64 %sRX$args8593) {
  %envptr12089 = inttoptr i64 %env9448 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12090 = getelementptr inbounds i64, i64* %envptr12089, i64 2                ; &envptr12089[2]
  %smn$y = load i64, i64* %envptr12090, align 8                                      ; load; *envptr12090
  %envptr12091 = inttoptr i64 %env9448 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12092 = getelementptr inbounds i64, i64* %envptr12091, i64 1                ; &envptr12091[1]
  %CFj$f = load i64, i64* %envptr12092, align 8                                      ; load; *envptr12092
  %cont8592 = call i64 @prim_car(i64 %sRX$args8593)                                  ; call prim_car
  %sRX$args = call i64 @prim_cdr(i64 %sRX$args8593)                                  ; call prim_cdr
  %cloptr12093 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12095 = getelementptr inbounds i64, i64* %cloptr12093, i64 1                  ; &eptr12095[1]
  %eptr12096 = getelementptr inbounds i64, i64* %cloptr12093, i64 2                  ; &eptr12096[2]
  %eptr12097 = getelementptr inbounds i64, i64* %cloptr12093, i64 3                  ; &eptr12097[3]
  store i64 %sRX$args, i64* %eptr12095                                               ; *eptr12095 = %sRX$args
  store i64 %CFj$f, i64* %eptr12096                                                  ; *eptr12096 = %CFj$f
  store i64 %cont8592, i64* %eptr12097                                               ; *eptr12097 = %cont8592
  %eptr12094 = getelementptr inbounds i64, i64* %cloptr12093, i64 0                  ; &cloptr12093[0]
  %f12098 = ptrtoint void(i64,i64,i64)* @lam9445 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12098, i64* %eptr12094                                                 ; store fptr
  %arg9428 = ptrtoint i64* %cloptr12093 to i64                                       ; closure cast; i64* -> i64
  %cloptr12099 = inttoptr i64 %smn$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12099)                                        ; assert function application
  %i0ptr12100 = getelementptr inbounds i64, i64* %cloptr12099, i64 0                 ; &cloptr12099[0]
  %f12102 = load i64, i64* %i0ptr12100, align 8                                      ; load; *i0ptr12100
  %fptr12101 = inttoptr i64 %f12102 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12101(i64 %smn$y, i64 %arg9428, i64 %smn$y)         ; tail call
  ret void
}


define void @lam9445(i64 %env9446, i64 %_958594, i64 %a8291) {
  %envptr12103 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12104 = getelementptr inbounds i64, i64* %envptr12103, i64 3                ; &envptr12103[3]
  %cont8592 = load i64, i64* %envptr12104, align 8                                   ; load; *envptr12104
  %envptr12105 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12106 = getelementptr inbounds i64, i64* %envptr12105, i64 2                ; &envptr12105[2]
  %CFj$f = load i64, i64* %envptr12106, align 8                                      ; load; *envptr12106
  %envptr12107 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12108 = getelementptr inbounds i64, i64* %envptr12107, i64 1                ; &envptr12107[1]
  %sRX$args = load i64, i64* %envptr12108, align 8                                   ; load; *envptr12108
  %cloptr12109 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12111 = getelementptr inbounds i64, i64* %cloptr12109, i64 1                  ; &eptr12111[1]
  %eptr12112 = getelementptr inbounds i64, i64* %cloptr12109, i64 2                  ; &eptr12112[2]
  store i64 %sRX$args, i64* %eptr12111                                               ; *eptr12111 = %sRX$args
  store i64 %cont8592, i64* %eptr12112                                               ; *eptr12112 = %cont8592
  %eptr12110 = getelementptr inbounds i64, i64* %cloptr12109, i64 0                  ; &cloptr12109[0]
  %f12113 = ptrtoint void(i64,i64,i64)* @lam9443 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f12113, i64* %eptr12110                                                 ; store fptr
  %arg9431 = ptrtoint i64* %cloptr12109 to i64                                       ; closure cast; i64* -> i64
  %cloptr12114 = inttoptr i64 %a8291 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12114)                                        ; assert function application
  %i0ptr12115 = getelementptr inbounds i64, i64* %cloptr12114, i64 0                 ; &cloptr12114[0]
  %f12117 = load i64, i64* %i0ptr12115, align 8                                      ; load; *i0ptr12115
  %fptr12116 = inttoptr i64 %f12117 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12116(i64 %a8291, i64 %arg9431, i64 %CFj$f)         ; tail call
  ret void
}


define void @lam9443(i64 %env9444, i64 %_958595, i64 %a8292) {
  %envptr12118 = inttoptr i64 %env9444 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12119 = getelementptr inbounds i64, i64* %envptr12118, i64 2                ; &envptr12118[2]
  %cont8592 = load i64, i64* %envptr12119, align 8                                   ; load; *envptr12119
  %envptr12120 = inttoptr i64 %env9444 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12121 = getelementptr inbounds i64, i64* %envptr12120, i64 1                ; &envptr12120[1]
  %sRX$args = load i64, i64* %envptr12121, align 8                                   ; load; *envptr12121
  %cps_45lst8596 = call i64 @prim_cons(i64 %cont8592, i64 %sRX$args)                 ; call prim_cons
  %cloptr12122 = inttoptr i64 %a8292 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12122)                                        ; assert function application
  %i0ptr12123 = getelementptr inbounds i64, i64* %cloptr12122, i64 0                 ; &cloptr12122[0]
  %f12125 = load i64, i64* %i0ptr12123, align 8                                      ; load; *i0ptr12123
  %fptr12124 = inttoptr i64 %f12125 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12124(i64 %a8292, i64 %cps_45lst8596)               ; tail call
  ret void
}





@sym10702 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
