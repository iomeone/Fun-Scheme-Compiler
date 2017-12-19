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
  %cloptr8616 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8617 = getelementptr inbounds i64, i64* %cloptr8616, i64 0                    ; &cloptr8616[0]
  %f8618 = ptrtoint void(i64,i64,i64)* @lam8614 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8618, i64* %eptr8617                                                   ; store fptr
  %arg7264 = ptrtoint i64* %cloptr8616 to i64                                        ; closure cast; i64* -> i64
  %cloptr8619 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8620 = getelementptr inbounds i64, i64* %cloptr8619, i64 0                    ; &cloptr8619[0]
  %f8621 = ptrtoint void(i64,i64,i64)* @lam8612 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8621, i64* %eptr8620                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8619 to i64                                        ; closure cast; i64* -> i64
  %cloptr8622 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8623 = getelementptr inbounds i64, i64* %cloptr8622, i64 0                    ; &cloptr8622[0]
  %f8624 = ptrtoint void(i64,i64,i64)* @lam8154 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8624, i64* %eptr8623                                                   ; store fptr
  %arg7262 = ptrtoint i64* %cloptr8622 to i64                                        ; closure cast; i64* -> i64
  %cloptr8625 = inttoptr i64 %arg7264 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8625)                                         ; assert function application
  %i0ptr8626 = getelementptr inbounds i64, i64* %cloptr8625, i64 0                   ; &cloptr8625[0]
  %f8628 = load i64, i64* %i0ptr8626, align 8                                        ; load; *i0ptr8626
  %fptr8627 = inttoptr i64 %f8628 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8627(i64 %arg7264, i64 %arg7263, i64 %arg7262)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8614(i64 %env8615, i64 %cont7254, i64 %f4M$yu) {
  %cloptr8629 = inttoptr i64 %f4M$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8629)                                         ; assert function application
  %i0ptr8630 = getelementptr inbounds i64, i64* %cloptr8629, i64 0                   ; &cloptr8629[0]
  %f8632 = load i64, i64* %i0ptr8630, align 8                                        ; load; *i0ptr8630
  %fptr8631 = inttoptr i64 %f8632 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8631(i64 %f4M$yu, i64 %cont7254, i64 %f4M$yu)       ; tail call
  ret void
}


define void @lam8612(i64 %env8613, i64 %_957069, i64 %OZM$Ycmb) {
  %cloptr8633 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8635 = getelementptr inbounds i64, i64* %cloptr8633, i64 1                    ; &eptr8635[1]
  store i64 %OZM$Ycmb, i64* %eptr8635                                                ; *eptr8635 = %OZM$Ycmb
  %eptr8634 = getelementptr inbounds i64, i64* %cloptr8633, i64 0                    ; &cloptr8633[0]
  %f8636 = ptrtoint void(i64,i64,i64)* @lam8610 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8636, i64* %eptr8634                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8633 to i64                                        ; closure cast; i64* -> i64
  %cloptr8637 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8638 = getelementptr inbounds i64, i64* %cloptr8637, i64 0                    ; &cloptr8637[0]
  %f8639 = ptrtoint void(i64,i64,i64)* @lam8162 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8639, i64* %eptr8638                                                   ; store fptr
  %arg7268 = ptrtoint i64* %cloptr8637 to i64                                        ; closure cast; i64* -> i64
  %cloptr8640 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8640)                                         ; assert function application
  %i0ptr8641 = getelementptr inbounds i64, i64* %cloptr8640, i64 0                   ; &cloptr8640[0]
  %f8643 = load i64, i64* %i0ptr8641, align 8                                        ; load; *i0ptr8641
  %fptr8642 = inttoptr i64 %f8643 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8642(i64 %OZM$Ycmb, i64 %arg7269, i64 %arg7268)     ; tail call
  ret void
}


define void @lam8610(i64 %env8611, i64 %_957070, i64 %hyC$_37foldr1) {
  %envptr8644 = inttoptr i64 %env8611 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8645 = getelementptr inbounds i64, i64* %envptr8644, i64 1                  ; &envptr8644[1]
  %OZM$Ycmb = load i64, i64* %envptr8645, align 8                                    ; load; *envptr8645
  %cloptr8646 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8648 = getelementptr inbounds i64, i64* %cloptr8646, i64 1                    ; &eptr8648[1]
  %eptr8649 = getelementptr inbounds i64, i64* %cloptr8646, i64 2                    ; &eptr8649[2]
  store i64 %hyC$_37foldr1, i64* %eptr8648                                           ; *eptr8648 = %hyC$_37foldr1
  store i64 %OZM$Ycmb, i64* %eptr8649                                                ; *eptr8649 = %OZM$Ycmb
  %eptr8647 = getelementptr inbounds i64, i64* %cloptr8646, i64 0                    ; &cloptr8646[0]
  %f8650 = ptrtoint void(i64,i64,i64)* @lam8608 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8650, i64* %eptr8647                                                   ; store fptr
  %arg7272 = ptrtoint i64* %cloptr8646 to i64                                        ; closure cast; i64* -> i64
  %cloptr8651 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8652 = getelementptr inbounds i64, i64* %cloptr8651, i64 0                    ; &cloptr8651[0]
  %f8653 = ptrtoint void(i64,i64,i64)* @lam8174 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8653, i64* %eptr8652                                                   ; store fptr
  %arg7271 = ptrtoint i64* %cloptr8651 to i64                                        ; closure cast; i64* -> i64
  %cloptr8654 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8654)                                         ; assert function application
  %i0ptr8655 = getelementptr inbounds i64, i64* %cloptr8654, i64 0                   ; &cloptr8654[0]
  %f8657 = load i64, i64* %i0ptr8655, align 8                                        ; load; *i0ptr8655
  %fptr8656 = inttoptr i64 %f8657 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8656(i64 %OZM$Ycmb, i64 %arg7272, i64 %arg7271)     ; tail call
  ret void
}


define void @lam8608(i64 %env8609, i64 %_957071, i64 %BHn$_37map1) {
  %envptr8658 = inttoptr i64 %env8609 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8659 = getelementptr inbounds i64, i64* %envptr8658, i64 2                  ; &envptr8658[2]
  %OZM$Ycmb = load i64, i64* %envptr8659, align 8                                    ; load; *envptr8659
  %envptr8660 = inttoptr i64 %env8609 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8661 = getelementptr inbounds i64, i64* %envptr8660, i64 1                  ; &envptr8660[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8661, align 8                               ; load; *envptr8661
  %cloptr8662 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8664 = getelementptr inbounds i64, i64* %cloptr8662, i64 1                    ; &eptr8664[1]
  %eptr8665 = getelementptr inbounds i64, i64* %cloptr8662, i64 2                    ; &eptr8665[2]
  %eptr8666 = getelementptr inbounds i64, i64* %cloptr8662, i64 3                    ; &eptr8666[3]
  store i64 %hyC$_37foldr1, i64* %eptr8664                                           ; *eptr8664 = %hyC$_37foldr1
  store i64 %BHn$_37map1, i64* %eptr8665                                             ; *eptr8665 = %BHn$_37map1
  store i64 %OZM$Ycmb, i64* %eptr8666                                                ; *eptr8666 = %OZM$Ycmb
  %eptr8663 = getelementptr inbounds i64, i64* %cloptr8662, i64 0                    ; &cloptr8662[0]
  %f8667 = ptrtoint void(i64,i64,i64)* @lam8606 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8667, i64* %eptr8663                                                   ; store fptr
  %arg7275 = ptrtoint i64* %cloptr8662 to i64                                        ; closure cast; i64* -> i64
  %cloptr8668 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8669 = getelementptr inbounds i64, i64* %cloptr8668, i64 0                    ; &cloptr8668[0]
  %f8670 = ptrtoint void(i64,i64,i64)* @lam8188 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8670, i64* %eptr8669                                                   ; store fptr
  %arg7274 = ptrtoint i64* %cloptr8668 to i64                                        ; closure cast; i64* -> i64
  %cloptr8671 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8671)                                         ; assert function application
  %i0ptr8672 = getelementptr inbounds i64, i64* %cloptr8671, i64 0                   ; &cloptr8671[0]
  %f8674 = load i64, i64* %i0ptr8672, align 8                                        ; load; *i0ptr8672
  %fptr8673 = inttoptr i64 %f8674 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8673(i64 %OZM$Ycmb, i64 %arg7275, i64 %arg7274)     ; tail call
  ret void
}


define void @lam8606(i64 %env8607, i64 %_957072, i64 %okN$_37take) {
  %envptr8675 = inttoptr i64 %env8607 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8676 = getelementptr inbounds i64, i64* %envptr8675, i64 3                  ; &envptr8675[3]
  %OZM$Ycmb = load i64, i64* %envptr8676, align 8                                    ; load; *envptr8676
  %envptr8677 = inttoptr i64 %env8607 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8678 = getelementptr inbounds i64, i64* %envptr8677, i64 2                  ; &envptr8677[2]
  %BHn$_37map1 = load i64, i64* %envptr8678, align 8                                 ; load; *envptr8678
  %envptr8679 = inttoptr i64 %env8607 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8680 = getelementptr inbounds i64, i64* %envptr8679, i64 1                  ; &envptr8679[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8680, align 8                               ; load; *envptr8680
  %cloptr8681 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8681, i64 1                    ; &eptr8683[1]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8681, i64 2                    ; &eptr8684[2]
  %eptr8685 = getelementptr inbounds i64, i64* %cloptr8681, i64 3                    ; &eptr8685[3]
  %eptr8686 = getelementptr inbounds i64, i64* %cloptr8681, i64 4                    ; &eptr8686[4]
  store i64 %hyC$_37foldr1, i64* %eptr8683                                           ; *eptr8683 = %hyC$_37foldr1
  store i64 %BHn$_37map1, i64* %eptr8684                                             ; *eptr8684 = %BHn$_37map1
  store i64 %okN$_37take, i64* %eptr8685                                             ; *eptr8685 = %okN$_37take
  store i64 %OZM$Ycmb, i64* %eptr8686                                                ; *eptr8686 = %OZM$Ycmb
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8681, i64 0                    ; &cloptr8681[0]
  %f8687 = ptrtoint void(i64,i64,i64)* @lam8604 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8687, i64* %eptr8682                                                   ; store fptr
  %arg7278 = ptrtoint i64* %cloptr8681 to i64                                        ; closure cast; i64* -> i64
  %cloptr8688 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8689 = getelementptr inbounds i64, i64* %cloptr8688, i64 0                    ; &cloptr8688[0]
  %f8690 = ptrtoint void(i64,i64,i64)* @lam8199 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8690, i64* %eptr8689                                                   ; store fptr
  %arg7277 = ptrtoint i64* %cloptr8688 to i64                                        ; closure cast; i64* -> i64
  %cloptr8691 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8691)                                         ; assert function application
  %i0ptr8692 = getelementptr inbounds i64, i64* %cloptr8691, i64 0                   ; &cloptr8691[0]
  %f8694 = load i64, i64* %i0ptr8692, align 8                                        ; load; *i0ptr8692
  %fptr8693 = inttoptr i64 %f8694 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8693(i64 %OZM$Ycmb, i64 %arg7278, i64 %arg7277)     ; tail call
  ret void
}


define void @lam8604(i64 %env8605, i64 %_957073, i64 %pWG$_37length) {
  %envptr8695 = inttoptr i64 %env8605 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8696 = getelementptr inbounds i64, i64* %envptr8695, i64 4                  ; &envptr8695[4]
  %OZM$Ycmb = load i64, i64* %envptr8696, align 8                                    ; load; *envptr8696
  %envptr8697 = inttoptr i64 %env8605 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8698 = getelementptr inbounds i64, i64* %envptr8697, i64 3                  ; &envptr8697[3]
  %okN$_37take = load i64, i64* %envptr8698, align 8                                 ; load; *envptr8698
  %envptr8699 = inttoptr i64 %env8605 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8700 = getelementptr inbounds i64, i64* %envptr8699, i64 2                  ; &envptr8699[2]
  %BHn$_37map1 = load i64, i64* %envptr8700, align 8                                 ; load; *envptr8700
  %envptr8701 = inttoptr i64 %env8605 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8702 = getelementptr inbounds i64, i64* %envptr8701, i64 1                  ; &envptr8701[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8702, align 8                               ; load; *envptr8702
  %cloptr8703 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8705 = getelementptr inbounds i64, i64* %cloptr8703, i64 1                    ; &eptr8705[1]
  %eptr8706 = getelementptr inbounds i64, i64* %cloptr8703, i64 2                    ; &eptr8706[2]
  %eptr8707 = getelementptr inbounds i64, i64* %cloptr8703, i64 3                    ; &eptr8707[3]
  %eptr8708 = getelementptr inbounds i64, i64* %cloptr8703, i64 4                    ; &eptr8708[4]
  %eptr8709 = getelementptr inbounds i64, i64* %cloptr8703, i64 5                    ; &eptr8709[5]
  store i64 %hyC$_37foldr1, i64* %eptr8705                                           ; *eptr8705 = %hyC$_37foldr1
  store i64 %BHn$_37map1, i64* %eptr8706                                             ; *eptr8706 = %BHn$_37map1
  store i64 %okN$_37take, i64* %eptr8707                                             ; *eptr8707 = %okN$_37take
  store i64 %pWG$_37length, i64* %eptr8708                                           ; *eptr8708 = %pWG$_37length
  store i64 %OZM$Ycmb, i64* %eptr8709                                                ; *eptr8709 = %OZM$Ycmb
  %eptr8704 = getelementptr inbounds i64, i64* %cloptr8703, i64 0                    ; &cloptr8703[0]
  %f8710 = ptrtoint void(i64,i64,i64)* @lam8602 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8710, i64* %eptr8704                                                   ; store fptr
  %arg7281 = ptrtoint i64* %cloptr8703 to i64                                        ; closure cast; i64* -> i64
  %cloptr8711 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8712 = getelementptr inbounds i64, i64* %cloptr8711, i64 0                    ; &cloptr8711[0]
  %f8713 = ptrtoint void(i64,i64,i64)* @lam8207 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8713, i64* %eptr8712                                                   ; store fptr
  %arg7280 = ptrtoint i64* %cloptr8711 to i64                                        ; closure cast; i64* -> i64
  %cloptr8714 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8714)                                         ; assert function application
  %i0ptr8715 = getelementptr inbounds i64, i64* %cloptr8714, i64 0                   ; &cloptr8714[0]
  %f8717 = load i64, i64* %i0ptr8715, align 8                                        ; load; *i0ptr8715
  %fptr8716 = inttoptr i64 %f8717 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8716(i64 %OZM$Ycmb, i64 %arg7281, i64 %arg7280)     ; tail call
  ret void
}


define void @lam8602(i64 %env8603, i64 %_957074, i64 %u3R$_37foldl1) {
  %envptr8718 = inttoptr i64 %env8603 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8719 = getelementptr inbounds i64, i64* %envptr8718, i64 5                  ; &envptr8718[5]
  %OZM$Ycmb = load i64, i64* %envptr8719, align 8                                    ; load; *envptr8719
  %envptr8720 = inttoptr i64 %env8603 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8721 = getelementptr inbounds i64, i64* %envptr8720, i64 4                  ; &envptr8720[4]
  %pWG$_37length = load i64, i64* %envptr8721, align 8                               ; load; *envptr8721
  %envptr8722 = inttoptr i64 %env8603 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8723 = getelementptr inbounds i64, i64* %envptr8722, i64 3                  ; &envptr8722[3]
  %okN$_37take = load i64, i64* %envptr8723, align 8                                 ; load; *envptr8723
  %envptr8724 = inttoptr i64 %env8603 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8725 = getelementptr inbounds i64, i64* %envptr8724, i64 2                  ; &envptr8724[2]
  %BHn$_37map1 = load i64, i64* %envptr8725, align 8                                 ; load; *envptr8725
  %envptr8726 = inttoptr i64 %env8603 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8727 = getelementptr inbounds i64, i64* %envptr8726, i64 1                  ; &envptr8726[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8727, align 8                               ; load; *envptr8727
  %cloptr8728 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8730 = getelementptr inbounds i64, i64* %cloptr8728, i64 1                    ; &eptr8730[1]
  store i64 %u3R$_37foldl1, i64* %eptr8730                                           ; *eptr8730 = %u3R$_37foldl1
  %eptr8729 = getelementptr inbounds i64, i64* %cloptr8728, i64 0                    ; &cloptr8728[0]
  %f8731 = ptrtoint void(i64,i64,i64)* @lam8600 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8731, i64* %eptr8729                                                   ; store fptr
  %GPJ$_37last = ptrtoint i64* %cloptr8728 to i64                                    ; closure cast; i64* -> i64
  %cloptr8732 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8734 = getelementptr inbounds i64, i64* %cloptr8732, i64 1                    ; &eptr8734[1]
  %eptr8735 = getelementptr inbounds i64, i64* %cloptr8732, i64 2                    ; &eptr8735[2]
  store i64 %okN$_37take, i64* %eptr8734                                             ; *eptr8734 = %okN$_37take
  store i64 %pWG$_37length, i64* %eptr8735                                           ; *eptr8735 = %pWG$_37length
  %eptr8733 = getelementptr inbounds i64, i64* %cloptr8732, i64 0                    ; &cloptr8732[0]
  %f8736 = ptrtoint void(i64,i64,i64,i64)* @lam8594 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8736, i64* %eptr8733                                                   ; store fptr
  %xGy$_37drop_45right = ptrtoint i64* %cloptr8732 to i64                            ; closure cast; i64* -> i64
  %cloptr8737 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8739 = getelementptr inbounds i64, i64* %cloptr8737, i64 1                    ; &eptr8739[1]
  %eptr8740 = getelementptr inbounds i64, i64* %cloptr8737, i64 2                    ; &eptr8740[2]
  %eptr8741 = getelementptr inbounds i64, i64* %cloptr8737, i64 3                    ; &eptr8741[3]
  %eptr8742 = getelementptr inbounds i64, i64* %cloptr8737, i64 4                    ; &eptr8742[4]
  %eptr8743 = getelementptr inbounds i64, i64* %cloptr8737, i64 5                    ; &eptr8743[5]
  %eptr8744 = getelementptr inbounds i64, i64* %cloptr8737, i64 6                    ; &eptr8744[6]
  store i64 %hyC$_37foldr1, i64* %eptr8739                                           ; *eptr8739 = %hyC$_37foldr1
  store i64 %GPJ$_37last, i64* %eptr8740                                             ; *eptr8740 = %GPJ$_37last
  store i64 %xGy$_37drop_45right, i64* %eptr8741                                     ; *eptr8741 = %xGy$_37drop_45right
  store i64 %pWG$_37length, i64* %eptr8742                                           ; *eptr8742 = %pWG$_37length
  store i64 %u3R$_37foldl1, i64* %eptr8743                                           ; *eptr8743 = %u3R$_37foldl1
  store i64 %OZM$Ycmb, i64* %eptr8744                                                ; *eptr8744 = %OZM$Ycmb
  %eptr8738 = getelementptr inbounds i64, i64* %cloptr8737, i64 0                    ; &cloptr8737[0]
  %f8745 = ptrtoint void(i64,i64,i64)* @lam8590 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8745, i64* %eptr8738                                                   ; store fptr
  %arg7301 = ptrtoint i64* %cloptr8737 to i64                                        ; closure cast; i64* -> i64
  %cloptr8746 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8748 = getelementptr inbounds i64, i64* %cloptr8746, i64 1                    ; &eptr8748[1]
  %eptr8749 = getelementptr inbounds i64, i64* %cloptr8746, i64 2                    ; &eptr8749[2]
  store i64 %hyC$_37foldr1, i64* %eptr8748                                           ; *eptr8748 = %hyC$_37foldr1
  store i64 %BHn$_37map1, i64* %eptr8749                                             ; *eptr8749 = %BHn$_37map1
  %eptr8747 = getelementptr inbounds i64, i64* %cloptr8746, i64 0                    ; &cloptr8746[0]
  %f8750 = ptrtoint void(i64,i64,i64)* @lam8244 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8750, i64* %eptr8747                                                   ; store fptr
  %arg7300 = ptrtoint i64* %cloptr8746 to i64                                        ; closure cast; i64* -> i64
  %cloptr8751 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8751)                                         ; assert function application
  %i0ptr8752 = getelementptr inbounds i64, i64* %cloptr8751, i64 0                   ; &cloptr8751[0]
  %f8754 = load i64, i64* %i0ptr8752, align 8                                        ; load; *i0ptr8752
  %fptr8753 = inttoptr i64 %f8754 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8753(i64 %OZM$Ycmb, i64 %arg7301, i64 %arg7300)     ; tail call
  ret void
}


define void @lam8600(i64 %env8601, i64 %cont7075, i64 %thV$lst) {
  %envptr8755 = inttoptr i64 %env8601 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8756 = getelementptr inbounds i64, i64* %envptr8755, i64 1                  ; &envptr8755[1]
  %u3R$_37foldl1 = load i64, i64* %envptr8756, align 8                               ; load; *envptr8756
  %cloptr8757 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8758 = getelementptr inbounds i64, i64* %cloptr8757, i64 0                    ; &cloptr8757[0]
  %f8759 = ptrtoint void(i64,i64,i64,i64)* @lam8598 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8759, i64* %eptr8758                                                   ; store fptr
  %arg7285 = ptrtoint i64* %cloptr8757 to i64                                        ; closure cast; i64* -> i64
  %arg7284 = add i64 0, 0                                                            ; quoted ()
  %cloptr8760 = inttoptr i64 %u3R$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8760)                                         ; assert function application
  %i0ptr8761 = getelementptr inbounds i64, i64* %cloptr8760, i64 0                   ; &cloptr8760[0]
  %f8763 = load i64, i64* %i0ptr8761, align 8                                        ; load; *i0ptr8761
  %fptr8762 = inttoptr i64 %f8763 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8762(i64 %u3R$_37foldl1, i64 %cont7075, i64 %arg7285, i64 %arg7284, i64 %thV$lst); tail call
  ret void
}


define void @lam8598(i64 %env8599, i64 %cont7076, i64 %D6N$x, i64 %HhS$y) {
  %arg7289 = add i64 0, 0                                                            ; quoted ()
  %cloptr8764 = inttoptr i64 %cont7076 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8764)                                         ; assert function application
  %i0ptr8765 = getelementptr inbounds i64, i64* %cloptr8764, i64 0                   ; &cloptr8764[0]
  %f8767 = load i64, i64* %i0ptr8765, align 8                                        ; load; *i0ptr8765
  %fptr8766 = inttoptr i64 %f8767 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8766(i64 %cont7076, i64 %arg7289, i64 %D6N$x)       ; tail call
  ret void
}


define void @lam8594(i64 %env8595, i64 %cont7077, i64 %zcH$lst, i64 %rw6$n) {
  %envptr8768 = inttoptr i64 %env8595 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8769 = getelementptr inbounds i64, i64* %envptr8768, i64 2                  ; &envptr8768[2]
  %pWG$_37length = load i64, i64* %envptr8769, align 8                               ; load; *envptr8769
  %envptr8770 = inttoptr i64 %env8595 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8771 = getelementptr inbounds i64, i64* %envptr8770, i64 1                  ; &envptr8770[1]
  %okN$_37take = load i64, i64* %envptr8771, align 8                                 ; load; *envptr8771
  %cloptr8772 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8774 = getelementptr inbounds i64, i64* %cloptr8772, i64 1                    ; &eptr8774[1]
  %eptr8775 = getelementptr inbounds i64, i64* %cloptr8772, i64 2                    ; &eptr8775[2]
  %eptr8776 = getelementptr inbounds i64, i64* %cloptr8772, i64 3                    ; &eptr8776[3]
  %eptr8777 = getelementptr inbounds i64, i64* %cloptr8772, i64 4                    ; &eptr8777[4]
  store i64 %cont7077, i64* %eptr8774                                                ; *eptr8774 = %cont7077
  store i64 %okN$_37take, i64* %eptr8775                                             ; *eptr8775 = %okN$_37take
  store i64 %rw6$n, i64* %eptr8776                                                   ; *eptr8776 = %rw6$n
  store i64 %zcH$lst, i64* %eptr8777                                                 ; *eptr8777 = %zcH$lst
  %eptr8773 = getelementptr inbounds i64, i64* %cloptr8772, i64 0                    ; &cloptr8772[0]
  %f8778 = ptrtoint void(i64,i64,i64)* @lam8592 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8778, i64* %eptr8773                                                   ; store fptr
  %arg7292 = ptrtoint i64* %cloptr8772 to i64                                        ; closure cast; i64* -> i64
  %cloptr8779 = inttoptr i64 %pWG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8779)                                         ; assert function application
  %i0ptr8780 = getelementptr inbounds i64, i64* %cloptr8779, i64 0                   ; &cloptr8779[0]
  %f8782 = load i64, i64* %i0ptr8780, align 8                                        ; load; *i0ptr8780
  %fptr8781 = inttoptr i64 %f8782 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8781(i64 %pWG$_37length, i64 %arg7292, i64 %zcH$lst); tail call
  ret void
}


define void @lam8592(i64 %env8593, i64 %_957078, i64 %a6972) {
  %envptr8783 = inttoptr i64 %env8593 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8784 = getelementptr inbounds i64, i64* %envptr8783, i64 4                  ; &envptr8783[4]
  %zcH$lst = load i64, i64* %envptr8784, align 8                                     ; load; *envptr8784
  %envptr8785 = inttoptr i64 %env8593 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8786 = getelementptr inbounds i64, i64* %envptr8785, i64 3                  ; &envptr8785[3]
  %rw6$n = load i64, i64* %envptr8786, align 8                                       ; load; *envptr8786
  %envptr8787 = inttoptr i64 %env8593 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8788 = getelementptr inbounds i64, i64* %envptr8787, i64 2                  ; &envptr8787[2]
  %okN$_37take = load i64, i64* %envptr8788, align 8                                 ; load; *envptr8788
  %envptr8789 = inttoptr i64 %env8593 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8790 = getelementptr inbounds i64, i64* %envptr8789, i64 1                  ; &envptr8789[1]
  %cont7077 = load i64, i64* %envptr8790, align 8                                    ; load; *envptr8790
  %a6973 = call i64 @prim__45(i64 %a6972, i64 %rw6$n)                                ; call prim__45
  %cloptr8791 = inttoptr i64 %okN$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8791)                                         ; assert function application
  %i0ptr8792 = getelementptr inbounds i64, i64* %cloptr8791, i64 0                   ; &cloptr8791[0]
  %f8794 = load i64, i64* %i0ptr8792, align 8                                        ; load; *i0ptr8792
  %fptr8793 = inttoptr i64 %f8794 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8793(i64 %okN$_37take, i64 %cont7077, i64 %zcH$lst, i64 %a6973); tail call
  ret void
}


define void @lam8590(i64 %env8591, i64 %_957079, i64 %pNx$_37foldr) {
  %envptr8795 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8796 = getelementptr inbounds i64, i64* %envptr8795, i64 6                  ; &envptr8795[6]
  %OZM$Ycmb = load i64, i64* %envptr8796, align 8                                    ; load; *envptr8796
  %envptr8797 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8798 = getelementptr inbounds i64, i64* %envptr8797, i64 5                  ; &envptr8797[5]
  %u3R$_37foldl1 = load i64, i64* %envptr8798, align 8                               ; load; *envptr8798
  %envptr8799 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8800 = getelementptr inbounds i64, i64* %envptr8799, i64 4                  ; &envptr8799[4]
  %pWG$_37length = load i64, i64* %envptr8800, align 8                               ; load; *envptr8800
  %envptr8801 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8802 = getelementptr inbounds i64, i64* %envptr8801, i64 3                  ; &envptr8801[3]
  %xGy$_37drop_45right = load i64, i64* %envptr8802, align 8                         ; load; *envptr8802
  %envptr8803 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8804 = getelementptr inbounds i64, i64* %envptr8803, i64 2                  ; &envptr8803[2]
  %GPJ$_37last = load i64, i64* %envptr8804, align 8                                 ; load; *envptr8804
  %envptr8805 = inttoptr i64 %env8591 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8806 = getelementptr inbounds i64, i64* %envptr8805, i64 1                  ; &envptr8805[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8806, align 8                               ; load; *envptr8806
  %cloptr8807 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8809 = getelementptr inbounds i64, i64* %cloptr8807, i64 1                    ; &eptr8809[1]
  store i64 %hyC$_37foldr1, i64* %eptr8809                                           ; *eptr8809 = %hyC$_37foldr1
  %eptr8808 = getelementptr inbounds i64, i64* %cloptr8807, i64 0                    ; &cloptr8807[0]
  %f8810 = ptrtoint void(i64,i64,i64,i64)* @lam8588 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8810, i64* %eptr8808                                                   ; store fptr
  %KYJ$_37map1 = ptrtoint i64* %cloptr8807 to i64                                    ; closure cast; i64* -> i64
  %cloptr8811 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8813 = getelementptr inbounds i64, i64* %cloptr8811, i64 1                    ; &eptr8813[1]
  %eptr8814 = getelementptr inbounds i64, i64* %cloptr8811, i64 2                    ; &eptr8814[2]
  %eptr8815 = getelementptr inbounds i64, i64* %cloptr8811, i64 3                    ; &eptr8815[3]
  store i64 %pNx$_37foldr, i64* %eptr8813                                            ; *eptr8813 = %pNx$_37foldr
  store i64 %GPJ$_37last, i64* %eptr8814                                             ; *eptr8814 = %GPJ$_37last
  store i64 %xGy$_37drop_45right, i64* %eptr8815                                     ; *eptr8815 = %xGy$_37drop_45right
  %eptr8812 = getelementptr inbounds i64, i64* %cloptr8811, i64 0                    ; &cloptr8811[0]
  %f8816 = ptrtoint void(i64,i64)* @lam8580 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8816, i64* %eptr8812                                                   ; store fptr
  %tpn$_37map = ptrtoint i64* %cloptr8811 to i64                                     ; closure cast; i64* -> i64
  %cloptr8817 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8819 = getelementptr inbounds i64, i64* %cloptr8817, i64 1                    ; &eptr8819[1]
  %eptr8820 = getelementptr inbounds i64, i64* %cloptr8817, i64 2                    ; &eptr8820[2]
  store i64 %pWG$_37length, i64* %eptr8819                                           ; *eptr8819 = %pWG$_37length
  store i64 %u3R$_37foldl1, i64* %eptr8820                                           ; *eptr8820 = %u3R$_37foldl1
  %eptr8818 = getelementptr inbounds i64, i64* %cloptr8817, i64 0                    ; &cloptr8817[0]
  %f8821 = ptrtoint void(i64,i64,i64)* @lam8567 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8821, i64* %eptr8818                                                   ; store fptr
  %arg7343 = ptrtoint i64* %cloptr8817 to i64                                        ; closure cast; i64* -> i64
  %cloptr8822 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8824 = getelementptr inbounds i64, i64* %cloptr8822, i64 1                    ; &eptr8824[1]
  %eptr8825 = getelementptr inbounds i64, i64* %cloptr8822, i64 2                    ; &eptr8825[2]
  %eptr8826 = getelementptr inbounds i64, i64* %cloptr8822, i64 3                    ; &eptr8826[3]
  store i64 %hyC$_37foldr1, i64* %eptr8824                                           ; *eptr8824 = %hyC$_37foldr1
  store i64 %KYJ$_37map1, i64* %eptr8825                                             ; *eptr8825 = %KYJ$_37map1
  store i64 %pNx$_37foldr, i64* %eptr8826                                            ; *eptr8826 = %pNx$_37foldr
  %eptr8823 = getelementptr inbounds i64, i64* %cloptr8822, i64 0                    ; &cloptr8822[0]
  %f8827 = ptrtoint void(i64,i64,i64)* @lam8281 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8827, i64* %eptr8823                                                   ; store fptr
  %arg7342 = ptrtoint i64* %cloptr8822 to i64                                        ; closure cast; i64* -> i64
  %cloptr8828 = inttoptr i64 %OZM$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8828)                                         ; assert function application
  %i0ptr8829 = getelementptr inbounds i64, i64* %cloptr8828, i64 0                   ; &cloptr8828[0]
  %f8831 = load i64, i64* %i0ptr8829, align 8                                        ; load; *i0ptr8829
  %fptr8830 = inttoptr i64 %f8831 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8830(i64 %OZM$Ycmb, i64 %arg7343, i64 %arg7342)     ; tail call
  ret void
}


define void @lam8588(i64 %env8589, i64 %cont7080, i64 %jE1$f, i64 %U6Z$lst) {
  %envptr8832 = inttoptr i64 %env8589 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8833 = getelementptr inbounds i64, i64* %envptr8832, i64 1                  ; &envptr8832[1]
  %hyC$_37foldr1 = load i64, i64* %envptr8833, align 8                               ; load; *envptr8833
  %cloptr8834 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8836 = getelementptr inbounds i64, i64* %cloptr8834, i64 1                    ; &eptr8836[1]
  store i64 %jE1$f, i64* %eptr8836                                                   ; *eptr8836 = %jE1$f
  %eptr8835 = getelementptr inbounds i64, i64* %cloptr8834, i64 0                    ; &cloptr8834[0]
  %f8837 = ptrtoint void(i64,i64,i64,i64)* @lam8586 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8837, i64* %eptr8835                                                   ; store fptr
  %arg7305 = ptrtoint i64* %cloptr8834 to i64                                        ; closure cast; i64* -> i64
  %arg7304 = add i64 0, 0                                                            ; quoted ()
  %cloptr8838 = inttoptr i64 %hyC$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8838)                                         ; assert function application
  %i0ptr8839 = getelementptr inbounds i64, i64* %cloptr8838, i64 0                   ; &cloptr8838[0]
  %f8841 = load i64, i64* %i0ptr8839, align 8                                        ; load; *i0ptr8839
  %fptr8840 = inttoptr i64 %f8841 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8840(i64 %hyC$_37foldr1, i64 %cont7080, i64 %arg7305, i64 %arg7304, i64 %U6Z$lst); tail call
  ret void
}


define void @lam8586(i64 %env8587, i64 %cont7081, i64 %EE2$v, i64 %laP$r) {
  %envptr8842 = inttoptr i64 %env8587 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8843 = getelementptr inbounds i64, i64* %envptr8842, i64 1                  ; &envptr8842[1]
  %jE1$f = load i64, i64* %envptr8843, align 8                                       ; load; *envptr8843
  %cloptr8844 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8846 = getelementptr inbounds i64, i64* %cloptr8844, i64 1                    ; &eptr8846[1]
  %eptr8847 = getelementptr inbounds i64, i64* %cloptr8844, i64 2                    ; &eptr8847[2]
  store i64 %laP$r, i64* %eptr8846                                                   ; *eptr8846 = %laP$r
  store i64 %cont7081, i64* %eptr8847                                                ; *eptr8847 = %cont7081
  %eptr8845 = getelementptr inbounds i64, i64* %cloptr8844, i64 0                    ; &cloptr8844[0]
  %f8848 = ptrtoint void(i64,i64,i64)* @lam8584 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8848, i64* %eptr8845                                                   ; store fptr
  %arg7309 = ptrtoint i64* %cloptr8844 to i64                                        ; closure cast; i64* -> i64
  %cloptr8849 = inttoptr i64 %jE1$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8849)                                         ; assert function application
  %i0ptr8850 = getelementptr inbounds i64, i64* %cloptr8849, i64 0                   ; &cloptr8849[0]
  %f8852 = load i64, i64* %i0ptr8850, align 8                                        ; load; *i0ptr8850
  %fptr8851 = inttoptr i64 %f8852 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8851(i64 %jE1$f, i64 %arg7309, i64 %EE2$v)          ; tail call
  ret void
}


define void @lam8584(i64 %env8585, i64 %_957082, i64 %a6982) {
  %envptr8853 = inttoptr i64 %env8585 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8854 = getelementptr inbounds i64, i64* %envptr8853, i64 2                  ; &envptr8853[2]
  %cont7081 = load i64, i64* %envptr8854, align 8                                    ; load; *envptr8854
  %envptr8855 = inttoptr i64 %env8585 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8856 = getelementptr inbounds i64, i64* %envptr8855, i64 1                  ; &envptr8855[1]
  %laP$r = load i64, i64* %envptr8856, align 8                                       ; load; *envptr8856
  %retprim7083 = call i64 @prim_cons(i64 %a6982, i64 %laP$r)                         ; call prim_cons
  %arg7314 = add i64 0, 0                                                            ; quoted ()
  %cloptr8857 = inttoptr i64 %cont7081 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8857)                                         ; assert function application
  %i0ptr8858 = getelementptr inbounds i64, i64* %cloptr8857, i64 0                   ; &cloptr8857[0]
  %f8860 = load i64, i64* %i0ptr8858, align 8                                        ; load; *i0ptr8858
  %fptr8859 = inttoptr i64 %f8860 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8859(i64 %cont7081, i64 %arg7314, i64 %retprim7083) ; tail call
  ret void
}


define void @lam8580(i64 %env8581, i64 %tqd$args7085) {
  %envptr8861 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8862 = getelementptr inbounds i64, i64* %envptr8861, i64 3                  ; &envptr8861[3]
  %xGy$_37drop_45right = load i64, i64* %envptr8862, align 8                         ; load; *envptr8862
  %envptr8863 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8864 = getelementptr inbounds i64, i64* %envptr8863, i64 2                  ; &envptr8863[2]
  %GPJ$_37last = load i64, i64* %envptr8864, align 8                                 ; load; *envptr8864
  %envptr8865 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8866 = getelementptr inbounds i64, i64* %envptr8865, i64 1                  ; &envptr8865[1]
  %pNx$_37foldr = load i64, i64* %envptr8866, align 8                                ; load; *envptr8866
  %cont7084 = call i64 @prim_car(i64 %tqd$args7085)                                  ; call prim_car
  %tqd$args = call i64 @prim_cdr(i64 %tqd$args7085)                                  ; call prim_cdr
  %LzK$f = call i64 @prim_car(i64 %tqd$args)                                         ; call prim_car
  %Wzr$lsts = call i64 @prim_cdr(i64 %tqd$args)                                      ; call prim_cdr
  %arg7321 = add i64 0, 0                                                            ; quoted ()
  %a6986 = call i64 @prim_cons(i64 %arg7321, i64 %Wzr$lsts)                          ; call prim_cons
  %cloptr8867 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8869 = getelementptr inbounds i64, i64* %cloptr8867, i64 1                    ; &eptr8869[1]
  %eptr8870 = getelementptr inbounds i64, i64* %cloptr8867, i64 2                    ; &eptr8870[2]
  %eptr8871 = getelementptr inbounds i64, i64* %cloptr8867, i64 3                    ; &eptr8871[3]
  store i64 %GPJ$_37last, i64* %eptr8869                                             ; *eptr8869 = %GPJ$_37last
  store i64 %LzK$f, i64* %eptr8870                                                   ; *eptr8870 = %LzK$f
  store i64 %xGy$_37drop_45right, i64* %eptr8871                                     ; *eptr8871 = %xGy$_37drop_45right
  %eptr8868 = getelementptr inbounds i64, i64* %cloptr8867, i64 0                    ; &cloptr8867[0]
  %f8872 = ptrtoint void(i64,i64)* @lam8577 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8872, i64* %eptr8868                                                   ; store fptr
  %arg7323 = ptrtoint i64* %cloptr8867 to i64                                        ; closure cast; i64* -> i64
  %a6987 = call i64 @prim_cons(i64 %arg7323, i64 %a6986)                             ; call prim_cons
  %cps_45lst7093 = call i64 @prim_cons(i64 %cont7084, i64 %a6987)                    ; call prim_cons
  %cloptr8873 = inttoptr i64 %pNx$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8873)                                         ; assert function application
  %i0ptr8874 = getelementptr inbounds i64, i64* %cloptr8873, i64 0                   ; &cloptr8873[0]
  %f8876 = load i64, i64* %i0ptr8874, align 8                                        ; load; *i0ptr8874
  %fptr8875 = inttoptr i64 %f8876 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8875(i64 %pNx$_37foldr, i64 %cps_45lst7093)         ; tail call
  ret void
}


define void @lam8577(i64 %env8578, i64 %wrq$fargs7087) {
  %envptr8877 = inttoptr i64 %env8578 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8878 = getelementptr inbounds i64, i64* %envptr8877, i64 3                  ; &envptr8877[3]
  %xGy$_37drop_45right = load i64, i64* %envptr8878, align 8                         ; load; *envptr8878
  %envptr8879 = inttoptr i64 %env8578 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8880 = getelementptr inbounds i64, i64* %envptr8879, i64 2                  ; &envptr8879[2]
  %LzK$f = load i64, i64* %envptr8880, align 8                                       ; load; *envptr8880
  %envptr8881 = inttoptr i64 %env8578 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8882 = getelementptr inbounds i64, i64* %envptr8881, i64 1                  ; &envptr8881[1]
  %GPJ$_37last = load i64, i64* %envptr8882, align 8                                 ; load; *envptr8882
  %cont7086 = call i64 @prim_car(i64 %wrq$fargs7087)                                 ; call prim_car
  %wrq$fargs = call i64 @prim_cdr(i64 %wrq$fargs7087)                                ; call prim_cdr
  %cloptr8883 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8885 = getelementptr inbounds i64, i64* %cloptr8883, i64 1                    ; &eptr8885[1]
  %eptr8886 = getelementptr inbounds i64, i64* %cloptr8883, i64 2                    ; &eptr8886[2]
  %eptr8887 = getelementptr inbounds i64, i64* %cloptr8883, i64 3                    ; &eptr8887[3]
  %eptr8888 = getelementptr inbounds i64, i64* %cloptr8883, i64 4                    ; &eptr8888[4]
  store i64 %cont7086, i64* %eptr8885                                                ; *eptr8885 = %cont7086
  store i64 %GPJ$_37last, i64* %eptr8886                                             ; *eptr8886 = %GPJ$_37last
  store i64 %LzK$f, i64* %eptr8887                                                   ; *eptr8887 = %LzK$f
  store i64 %wrq$fargs, i64* %eptr8888                                               ; *eptr8888 = %wrq$fargs
  %eptr8884 = getelementptr inbounds i64, i64* %cloptr8883, i64 0                    ; &cloptr8883[0]
  %f8889 = ptrtoint void(i64,i64,i64)* @lam8575 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8889, i64* %eptr8884                                                   ; store fptr
  %arg7328 = ptrtoint i64* %cloptr8883 to i64                                        ; closure cast; i64* -> i64
  %arg7326 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8890 = inttoptr i64 %xGy$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8890)                                         ; assert function application
  %i0ptr8891 = getelementptr inbounds i64, i64* %cloptr8890, i64 0                   ; &cloptr8890[0]
  %f8893 = load i64, i64* %i0ptr8891, align 8                                        ; load; *i0ptr8891
  %fptr8892 = inttoptr i64 %f8893 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8892(i64 %xGy$_37drop_45right, i64 %arg7328, i64 %wrq$fargs, i64 %arg7326); tail call
  ret void
}


define void @lam8575(i64 %env8576, i64 %_957088, i64 %a6983) {
  %envptr8894 = inttoptr i64 %env8576 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8895 = getelementptr inbounds i64, i64* %envptr8894, i64 4                  ; &envptr8894[4]
  %wrq$fargs = load i64, i64* %envptr8895, align 8                                   ; load; *envptr8895
  %envptr8896 = inttoptr i64 %env8576 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8897 = getelementptr inbounds i64, i64* %envptr8896, i64 3                  ; &envptr8896[3]
  %LzK$f = load i64, i64* %envptr8897, align 8                                       ; load; *envptr8897
  %envptr8898 = inttoptr i64 %env8576 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8899 = getelementptr inbounds i64, i64* %envptr8898, i64 2                  ; &envptr8898[2]
  %GPJ$_37last = load i64, i64* %envptr8899, align 8                                 ; load; *envptr8899
  %envptr8900 = inttoptr i64 %env8576 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8901 = getelementptr inbounds i64, i64* %envptr8900, i64 1                  ; &envptr8900[1]
  %cont7086 = load i64, i64* %envptr8901, align 8                                    ; load; *envptr8901
  %cloptr8902 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8904 = getelementptr inbounds i64, i64* %cloptr8902, i64 1                    ; &eptr8904[1]
  %eptr8905 = getelementptr inbounds i64, i64* %cloptr8902, i64 2                    ; &eptr8905[2]
  %eptr8906 = getelementptr inbounds i64, i64* %cloptr8902, i64 3                    ; &eptr8906[3]
  store i64 %cont7086, i64* %eptr8904                                                ; *eptr8904 = %cont7086
  store i64 %GPJ$_37last, i64* %eptr8905                                             ; *eptr8905 = %GPJ$_37last
  store i64 %wrq$fargs, i64* %eptr8906                                               ; *eptr8906 = %wrq$fargs
  %eptr8903 = getelementptr inbounds i64, i64* %cloptr8902, i64 0                    ; &cloptr8902[0]
  %f8907 = ptrtoint void(i64,i64,i64)* @lam8573 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8907, i64* %eptr8903                                                   ; store fptr
  %arg7331 = ptrtoint i64* %cloptr8902 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7092 = call i64 @prim_cons(i64 %arg7331, i64 %a6983)                     ; call prim_cons
  %cloptr8908 = inttoptr i64 %LzK$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8908)                                         ; assert function application
  %i0ptr8909 = getelementptr inbounds i64, i64* %cloptr8908, i64 0                   ; &cloptr8908[0]
  %f8911 = load i64, i64* %i0ptr8909, align 8                                        ; load; *i0ptr8909
  %fptr8910 = inttoptr i64 %f8911 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8910(i64 %LzK$f, i64 %cps_45lst7092)                ; tail call
  ret void
}


define void @lam8573(i64 %env8574, i64 %_957089, i64 %a6984) {
  %envptr8912 = inttoptr i64 %env8574 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8913 = getelementptr inbounds i64, i64* %envptr8912, i64 3                  ; &envptr8912[3]
  %wrq$fargs = load i64, i64* %envptr8913, align 8                                   ; load; *envptr8913
  %envptr8914 = inttoptr i64 %env8574 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8915 = getelementptr inbounds i64, i64* %envptr8914, i64 2                  ; &envptr8914[2]
  %GPJ$_37last = load i64, i64* %envptr8915, align 8                                 ; load; *envptr8915
  %envptr8916 = inttoptr i64 %env8574 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8917 = getelementptr inbounds i64, i64* %envptr8916, i64 1                  ; &envptr8916[1]
  %cont7086 = load i64, i64* %envptr8917, align 8                                    ; load; *envptr8917
  %cloptr8918 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8920 = getelementptr inbounds i64, i64* %cloptr8918, i64 1                    ; &eptr8920[1]
  %eptr8921 = getelementptr inbounds i64, i64* %cloptr8918, i64 2                    ; &eptr8921[2]
  store i64 %cont7086, i64* %eptr8920                                                ; *eptr8920 = %cont7086
  store i64 %a6984, i64* %eptr8921                                                   ; *eptr8921 = %a6984
  %eptr8919 = getelementptr inbounds i64, i64* %cloptr8918, i64 0                    ; &cloptr8918[0]
  %f8922 = ptrtoint void(i64,i64,i64)* @lam8571 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8922, i64* %eptr8919                                                   ; store fptr
  %arg7333 = ptrtoint i64* %cloptr8918 to i64                                        ; closure cast; i64* -> i64
  %cloptr8923 = inttoptr i64 %GPJ$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8923)                                         ; assert function application
  %i0ptr8924 = getelementptr inbounds i64, i64* %cloptr8923, i64 0                   ; &cloptr8923[0]
  %f8926 = load i64, i64* %i0ptr8924, align 8                                        ; load; *i0ptr8924
  %fptr8925 = inttoptr i64 %f8926 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8925(i64 %GPJ$_37last, i64 %arg7333, i64 %wrq$fargs); tail call
  ret void
}


define void @lam8571(i64 %env8572, i64 %_957090, i64 %a6985) {
  %envptr8927 = inttoptr i64 %env8572 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8928 = getelementptr inbounds i64, i64* %envptr8927, i64 2                  ; &envptr8927[2]
  %a6984 = load i64, i64* %envptr8928, align 8                                       ; load; *envptr8928
  %envptr8929 = inttoptr i64 %env8572 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8930 = getelementptr inbounds i64, i64* %envptr8929, i64 1                  ; &envptr8929[1]
  %cont7086 = load i64, i64* %envptr8930, align 8                                    ; load; *envptr8930
  %retprim7091 = call i64 @prim_cons(i64 %a6984, i64 %a6985)                         ; call prim_cons
  %arg7338 = add i64 0, 0                                                            ; quoted ()
  %cloptr8931 = inttoptr i64 %cont7086 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8931)                                         ; assert function application
  %i0ptr8932 = getelementptr inbounds i64, i64* %cloptr8931, i64 0                   ; &cloptr8931[0]
  %f8934 = load i64, i64* %i0ptr8932, align 8                                        ; load; *i0ptr8932
  %fptr8933 = inttoptr i64 %f8934 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8933(i64 %cont7086, i64 %arg7338, i64 %retprim7091) ; tail call
  ret void
}


define void @lam8567(i64 %env8568, i64 %_957094, i64 %b8V$_37foldl) {
  %envptr8935 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8936 = getelementptr inbounds i64, i64* %envptr8935, i64 2                  ; &envptr8935[2]
  %u3R$_37foldl1 = load i64, i64* %envptr8936, align 8                               ; load; *envptr8936
  %envptr8937 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8938 = getelementptr inbounds i64, i64* %envptr8937, i64 1                  ; &envptr8937[1]
  %pWG$_37length = load i64, i64* %envptr8938, align 8                               ; load; *envptr8938
  %cloptr8939 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8940 = getelementptr inbounds i64, i64* %cloptr8939, i64 0                    ; &cloptr8939[0]
  %f8941 = ptrtoint void(i64,i64,i64,i64)* @lam8565 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8941, i64* %eptr8940                                                   ; store fptr
  %uQz$_37_62 = ptrtoint i64* %cloptr8939 to i64                                     ; closure cast; i64* -> i64
  %cloptr8942 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8943 = getelementptr inbounds i64, i64* %cloptr8942, i64 0                    ; &cloptr8942[0]
  %f8944 = ptrtoint void(i64,i64,i64,i64)* @lam8562 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8944, i64* %eptr8943                                                   ; store fptr
  %dtn$_37_62_61 = ptrtoint i64* %cloptr8942 to i64                                  ; closure cast; i64* -> i64
  %arg7358 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7357 = add i64 0, 0                                                            ; quoted ()
  %ijb$_37append = call i64 @prim_make_45vector(i64 %arg7358, i64 %arg7357)          ; call prim_make_45vector
  %arg7360 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8945 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8947 = getelementptr inbounds i64, i64* %cloptr8945, i64 1                    ; &eptr8947[1]
  store i64 %ijb$_37append, i64* %eptr8947                                           ; *eptr8947 = %ijb$_37append
  %eptr8946 = getelementptr inbounds i64, i64* %cloptr8945, i64 0                    ; &cloptr8945[0]
  %f8948 = ptrtoint void(i64,i64,i64,i64)* @lam8556 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8948, i64* %eptr8946                                                   ; store fptr
  %arg7359 = ptrtoint i64* %cloptr8945 to i64                                        ; closure cast; i64* -> i64
  %YI2$_950 = call i64 @prim_vector_45set_33(i64 %ijb$_37append, i64 %arg7360, i64 %arg7359); call prim_vector_45set_33
  %arg7379 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7190 = call i64 @prim_vector_45ref(i64 %ijb$_37append, i64 %arg7379)       ; call prim_vector_45ref
  %cloptr8949 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8951 = getelementptr inbounds i64, i64* %cloptr8949, i64 1                    ; &eptr8951[1]
  %eptr8952 = getelementptr inbounds i64, i64* %cloptr8949, i64 2                    ; &eptr8952[2]
  %eptr8953 = getelementptr inbounds i64, i64* %cloptr8949, i64 3                    ; &eptr8953[3]
  store i64 %pWG$_37length, i64* %eptr8951                                           ; *eptr8951 = %pWG$_37length
  store i64 %u3R$_37foldl1, i64* %eptr8952                                           ; *eptr8952 = %u3R$_37foldl1
  store i64 %uQz$_37_62, i64* %eptr8953                                              ; *eptr8953 = %uQz$_37_62
  %eptr8950 = getelementptr inbounds i64, i64* %cloptr8949, i64 0                    ; &cloptr8949[0]
  %f8954 = ptrtoint void(i64,i64,i64)* @lam8548 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8954, i64* %eptr8950                                                   ; store fptr
  %arg7383 = ptrtoint i64* %cloptr8949 to i64                                        ; closure cast; i64* -> i64
  %arg7382 = add i64 0, 0                                                            ; quoted ()
  %cloptr8955 = inttoptr i64 %arg7383 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8955)                                         ; assert function application
  %i0ptr8956 = getelementptr inbounds i64, i64* %cloptr8955, i64 0                   ; &cloptr8955[0]
  %f8958 = load i64, i64* %i0ptr8956, align 8                                        ; load; *i0ptr8956
  %fptr8957 = inttoptr i64 %f8958 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8957(i64 %arg7383, i64 %arg7382, i64 %retprim7190)  ; tail call
  ret void
}


define void @lam8565(i64 %env8566, i64 %cont7095, i64 %xpH$a, i64 %CUa$b) {
  %a6995 = call i64 @prim__60_61(i64 %xpH$a, i64 %CUa$b)                             ; call prim__60_61
  %retprim7096 = call i64 @prim_not(i64 %a6995)                                      ; call prim_not
  %arg7349 = add i64 0, 0                                                            ; quoted ()
  %cloptr8959 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8959)                                         ; assert function application
  %i0ptr8960 = getelementptr inbounds i64, i64* %cloptr8959, i64 0                   ; &cloptr8959[0]
  %f8962 = load i64, i64* %i0ptr8960, align 8                                        ; load; *i0ptr8960
  %fptr8961 = inttoptr i64 %f8962 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8961(i64 %cont7095, i64 %arg7349, i64 %retprim7096) ; tail call
  ret void
}


define void @lam8562(i64 %env8563, i64 %cont7097, i64 %sUN$a, i64 %xfv$b) {
  %a6996 = call i64 @prim__60(i64 %sUN$a, i64 %xfv$b)                                ; call prim__60
  %retprim7098 = call i64 @prim_not(i64 %a6996)                                      ; call prim_not
  %arg7355 = add i64 0, 0                                                            ; quoted ()
  %cloptr8963 = inttoptr i64 %cont7097 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8963)                                         ; assert function application
  %i0ptr8964 = getelementptr inbounds i64, i64* %cloptr8963, i64 0                   ; &cloptr8963[0]
  %f8966 = load i64, i64* %i0ptr8964, align 8                                        ; load; *i0ptr8964
  %fptr8965 = inttoptr i64 %f8966 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8965(i64 %cont7097, i64 %arg7355, i64 %retprim7098) ; tail call
  ret void
}


define void @lam8556(i64 %env8557, i64 %cont7187, i64 %lhm$ls0, i64 %GSc$ls1) {
  %envptr8967 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8968 = getelementptr inbounds i64, i64* %envptr8967, i64 1                  ; &envptr8967[1]
  %ijb$_37append = load i64, i64* %envptr8968, align 8                               ; load; *envptr8968
  %a6997 = call i64 @prim_null_63(i64 %lhm$ls0)                                      ; call prim_null_63
  %cmp8969 = icmp eq i64 %a6997, 15                                                  ; false?
  br i1 %cmp8969, label %else8971, label %then8970                                   ; if

then8970:
  %arg7364 = add i64 0, 0                                                            ; quoted ()
  %cloptr8972 = inttoptr i64 %cont7187 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8972)                                         ; assert function application
  %i0ptr8973 = getelementptr inbounds i64, i64* %cloptr8972, i64 0                   ; &cloptr8972[0]
  %f8975 = load i64, i64* %i0ptr8973, align 8                                        ; load; *i0ptr8973
  %fptr8974 = inttoptr i64 %f8975 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8974(i64 %cont7187, i64 %arg7364, i64 %GSc$ls1)     ; tail call
  ret void

else8971:
  %a6998 = call i64 @prim_car(i64 %lhm$ls0)                                          ; call prim_car
  %arg7367 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %ijb$_37append, i64 %arg7367)             ; call prim_vector_45ref
  %a7000 = call i64 @prim_cdr(i64 %lhm$ls0)                                          ; call prim_cdr
  %cloptr8976 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8978 = getelementptr inbounds i64, i64* %cloptr8976, i64 1                    ; &eptr8978[1]
  %eptr8979 = getelementptr inbounds i64, i64* %cloptr8976, i64 2                    ; &eptr8979[2]
  store i64 %a6998, i64* %eptr8978                                                   ; *eptr8978 = %a6998
  store i64 %cont7187, i64* %eptr8979                                                ; *eptr8979 = %cont7187
  %eptr8977 = getelementptr inbounds i64, i64* %cloptr8976, i64 0                    ; &cloptr8976[0]
  %f8980 = ptrtoint void(i64,i64,i64)* @lam8553 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8980, i64* %eptr8977                                                   ; store fptr
  %arg7372 = ptrtoint i64* %cloptr8976 to i64                                        ; closure cast; i64* -> i64
  %cloptr8981 = inttoptr i64 %a6999 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8981)                                         ; assert function application
  %i0ptr8982 = getelementptr inbounds i64, i64* %cloptr8981, i64 0                   ; &cloptr8981[0]
  %f8984 = load i64, i64* %i0ptr8982, align 8                                        ; load; *i0ptr8982
  %fptr8983 = inttoptr i64 %f8984 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8983(i64 %a6999, i64 %arg7372, i64 %a7000, i64 %GSc$ls1); tail call
  ret void
}


define void @lam8553(i64 %env8554, i64 %_957188, i64 %a7001) {
  %envptr8985 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8986 = getelementptr inbounds i64, i64* %envptr8985, i64 2                  ; &envptr8985[2]
  %cont7187 = load i64, i64* %envptr8986, align 8                                    ; load; *envptr8986
  %envptr8987 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8988 = getelementptr inbounds i64, i64* %envptr8987, i64 1                  ; &envptr8987[1]
  %a6998 = load i64, i64* %envptr8988, align 8                                       ; load; *envptr8988
  %retprim7189 = call i64 @prim_cons(i64 %a6998, i64 %a7001)                         ; call prim_cons
  %arg7377 = add i64 0, 0                                                            ; quoted ()
  %cloptr8989 = inttoptr i64 %cont7187 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8989)                                         ; assert function application
  %i0ptr8990 = getelementptr inbounds i64, i64* %cloptr8989, i64 0                   ; &cloptr8989[0]
  %f8992 = load i64, i64* %i0ptr8990, align 8                                        ; load; *i0ptr8990
  %fptr8991 = inttoptr i64 %f8992 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8991(i64 %cont7187, i64 %arg7377, i64 %retprim7189) ; tail call
  ret void
}


define void @lam8548(i64 %env8549, i64 %_957099, i64 %MAO$_37append) {
  %envptr8993 = inttoptr i64 %env8549 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8994 = getelementptr inbounds i64, i64* %envptr8993, i64 3                  ; &envptr8993[3]
  %uQz$_37_62 = load i64, i64* %envptr8994, align 8                                  ; load; *envptr8994
  %envptr8995 = inttoptr i64 %env8549 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8996 = getelementptr inbounds i64, i64* %envptr8995, i64 2                  ; &envptr8995[2]
  %u3R$_37foldl1 = load i64, i64* %envptr8996, align 8                               ; load; *envptr8996
  %envptr8997 = inttoptr i64 %env8549 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8998 = getelementptr inbounds i64, i64* %envptr8997, i64 1                  ; &envptr8997[1]
  %pWG$_37length = load i64, i64* %envptr8998, align 8                               ; load; *envptr8998
  %cloptr8999 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9000 = getelementptr inbounds i64, i64* %cloptr8999, i64 0                    ; &cloptr8999[0]
  %f9001 = ptrtoint void(i64,i64,i64)* @lam8546 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9001, i64* %eptr9000                                                   ; store fptr
  %BCd$_37list_63 = ptrtoint i64* %cloptr8999 to i64                                 ; closure cast; i64* -> i64
  %cloptr9002 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9003 = getelementptr inbounds i64, i64* %cloptr9002, i64 0                    ; &cloptr9002[0]
  %f9004 = ptrtoint void(i64,i64,i64,i64)* @lam8506 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9004, i64* %eptr9003                                                   ; store fptr
  %LUE$_37drop = ptrtoint i64* %cloptr9002 to i64                                    ; closure cast; i64* -> i64
  %cloptr9005 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9006 = getelementptr inbounds i64, i64* %cloptr9005, i64 0                    ; &cloptr9005[0]
  %f9007 = ptrtoint void(i64,i64,i64,i64)* @lam8466 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9007, i64* %eptr9006                                                   ; store fptr
  %ltr$_37memv = ptrtoint i64* %cloptr9005 to i64                                    ; closure cast; i64* -> i64
  %cloptr9008 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9010 = getelementptr inbounds i64, i64* %cloptr9008, i64 1                    ; &eptr9010[1]
  store i64 %u3R$_37foldl1, i64* %eptr9010                                           ; *eptr9010 = %u3R$_37foldl1
  %eptr9009 = getelementptr inbounds i64, i64* %cloptr9008, i64 0                    ; &cloptr9008[0]
  %f9011 = ptrtoint void(i64,i64)* @lam8435 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9011, i64* %eptr9009                                                   ; store fptr
  %g9c$_37_47 = ptrtoint i64* %cloptr9008 to i64                                     ; closure cast; i64* -> i64
  %cloptr9012 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9013 = getelementptr inbounds i64, i64* %cloptr9012, i64 0                    ; &cloptr9012[0]
  %f9014 = ptrtoint void(i64,i64,i64)* @lam8427 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9014, i64* %eptr9013                                                   ; store fptr
  %gnI$_37first = ptrtoint i64* %cloptr9012 to i64                                   ; closure cast; i64* -> i64
  %cloptr9015 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9016 = getelementptr inbounds i64, i64* %cloptr9015, i64 0                    ; &cloptr9015[0]
  %f9017 = ptrtoint void(i64,i64,i64)* @lam8424 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9017, i64* %eptr9016                                                   ; store fptr
  %k6b$_37second = ptrtoint i64* %cloptr9015 to i64                                  ; closure cast; i64* -> i64
  %cloptr9018 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9019 = getelementptr inbounds i64, i64* %cloptr9018, i64 0                    ; &cloptr9018[0]
  %f9020 = ptrtoint void(i64,i64,i64)* @lam8421 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9020, i64* %eptr9019                                                   ; store fptr
  %swd$_37third = ptrtoint i64* %cloptr9018 to i64                                   ; closure cast; i64* -> i64
  %cloptr9021 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9022 = getelementptr inbounds i64, i64* %cloptr9021, i64 0                    ; &cloptr9021[0]
  %f9023 = ptrtoint void(i64,i64,i64)* @lam8418 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9023, i64* %eptr9022                                                   ; store fptr
  %PIh$_37fourth = ptrtoint i64* %cloptr9021 to i64                                  ; closure cast; i64* -> i64
  %cloptr9024 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9025 = getelementptr inbounds i64, i64* %cloptr9024, i64 0                    ; &cloptr9024[0]
  %f9026 = ptrtoint void(i64,i64,i64)* @lam8415 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9026, i64* %eptr9025                                                   ; store fptr
  %TQ3$promise_63 = ptrtoint i64* %cloptr9024 to i64                                 ; closure cast; i64* -> i64
  %cloptr9027 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9028 = getelementptr inbounds i64, i64* %cloptr9027, i64 0                    ; &cloptr9027[0]
  %f9029 = ptrtoint void(i64,i64)* @lam8409 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9029, i64* %eptr9028                                                   ; store fptr
  %arg7645 = ptrtoint i64* %cloptr9027 to i64                                        ; closure cast; i64* -> i64
  %cloptr9030 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9032 = getelementptr inbounds i64, i64* %cloptr9030, i64 1                    ; &eptr9032[1]
  %eptr9033 = getelementptr inbounds i64, i64* %cloptr9030, i64 2                    ; &eptr9033[2]
  %eptr9034 = getelementptr inbounds i64, i64* %cloptr9030, i64 3                    ; &eptr9034[3]
  store i64 %LUE$_37drop, i64* %eptr9032                                             ; *eptr9032 = %LUE$_37drop
  store i64 %pWG$_37length, i64* %eptr9033                                           ; *eptr9033 = %pWG$_37length
  store i64 %uQz$_37_62, i64* %eptr9034                                              ; *eptr9034 = %uQz$_37_62
  %eptr9031 = getelementptr inbounds i64, i64* %cloptr9030, i64 0                    ; &cloptr9030[0]
  %f9035 = ptrtoint void(i64,i64,i64)* @lam8406 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9035, i64* %eptr9031                                                   ; store fptr
  %arg7644 = ptrtoint i64* %cloptr9030 to i64                                        ; closure cast; i64* -> i64
  %rva8144 = add i64 0, 0                                                            ; quoted ()
  %rva8143 = call i64 @prim_cons(i64 %arg7644, i64 %rva8144)                         ; call prim_cons
  %cloptr9036 = inttoptr i64 %arg7645 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9036)                                         ; assert function application
  %i0ptr9037 = getelementptr inbounds i64, i64* %cloptr9036, i64 0                   ; &cloptr9036[0]
  %f9039 = load i64, i64* %i0ptr9037, align 8                                        ; load; *i0ptr9037
  %fptr9038 = inttoptr i64 %f9039 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9038(i64 %arg7645, i64 %rva8143)                    ; tail call
  ret void
}


define void @lam8546(i64 %env8547, i64 %cont7100, i64 %ztH$a) {
  %arg7385 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %IMz$a = call i64 @prim_make_45vector(i64 %arg7385, i64 %ztH$a)                    ; call prim_make_45vector
  %cloptr9040 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9041 = getelementptr inbounds i64, i64* %cloptr9040, i64 0                    ; &cloptr9040[0]
  %f9042 = ptrtoint void(i64,i64,i64)* @lam8543 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9042, i64* %eptr9041                                                   ; store fptr
  %arg7388 = ptrtoint i64* %cloptr9040 to i64                                        ; closure cast; i64* -> i64
  %cloptr9043 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9045 = getelementptr inbounds i64, i64* %cloptr9043, i64 1                    ; &eptr9045[1]
  %eptr9046 = getelementptr inbounds i64, i64* %cloptr9043, i64 2                    ; &eptr9046[2]
  store i64 %IMz$a, i64* %eptr9045                                                   ; *eptr9045 = %IMz$a
  store i64 %cont7100, i64* %eptr9046                                                ; *eptr9046 = %cont7100
  %eptr9044 = getelementptr inbounds i64, i64* %cloptr9043, i64 0                    ; &cloptr9043[0]
  %f9047 = ptrtoint void(i64,i64,i64)* @lam8540 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9047, i64* %eptr9044                                                   ; store fptr
  %arg7387 = ptrtoint i64* %cloptr9043 to i64                                        ; closure cast; i64* -> i64
  %cloptr9048 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9050 = getelementptr inbounds i64, i64* %cloptr9048, i64 1                    ; &eptr9050[1]
  %eptr9051 = getelementptr inbounds i64, i64* %cloptr9048, i64 2                    ; &eptr9051[2]
  store i64 %IMz$a, i64* %eptr9050                                                   ; *eptr9050 = %IMz$a
  store i64 %cont7100, i64* %eptr9051                                                ; *eptr9051 = %cont7100
  %eptr9049 = getelementptr inbounds i64, i64* %cloptr9048, i64 0                    ; &cloptr9048[0]
  %f9052 = ptrtoint void(i64,i64,i64)* @lam8523 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9052, i64* %eptr9049                                                   ; store fptr
  %arg7386 = ptrtoint i64* %cloptr9048 to i64                                        ; closure cast; i64* -> i64
  %cloptr9053 = inttoptr i64 %arg7388 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9053)                                         ; assert function application
  %i0ptr9054 = getelementptr inbounds i64, i64* %cloptr9053, i64 0                   ; &cloptr9053[0]
  %f9056 = load i64, i64* %i0ptr9054, align 8                                        ; load; *i0ptr9054
  %fptr9055 = inttoptr i64 %f9056 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9055(i64 %arg7388, i64 %arg7387, i64 %arg7386)      ; tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %cont7106, i64 %F73$k) {
  %arg7390 = add i64 0, 0                                                            ; quoted ()
  %cloptr9057 = inttoptr i64 %cont7106 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9057)                                         ; assert function application
  %i0ptr9058 = getelementptr inbounds i64, i64* %cloptr9057, i64 0                   ; &cloptr9057[0]
  %f9060 = load i64, i64* %i0ptr9058, align 8                                        ; load; *i0ptr9058
  %fptr9059 = inttoptr i64 %f9060 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9059(i64 %cont7106, i64 %arg7390, i64 %F73$k)       ; tail call
  ret void
}


define void @lam8540(i64 %env8541, i64 %_957101, i64 %mD8$cc) {
  %envptr9061 = inttoptr i64 %env8541 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9062 = getelementptr inbounds i64, i64* %envptr9061, i64 2                  ; &envptr9061[2]
  %cont7100 = load i64, i64* %envptr9062, align 8                                    ; load; *envptr9062
  %envptr9063 = inttoptr i64 %env8541 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9064 = getelementptr inbounds i64, i64* %envptr9063, i64 1                  ; &envptr9063[1]
  %IMz$a = load i64, i64* %envptr9064, align 8                                       ; load; *envptr9064
  %arg7392 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7002 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7392)                     ; call prim_vector_45ref
  %a7003 = call i64 @prim_null_63(i64 %a7002)                                        ; call prim_null_63
  %cmp9065 = icmp eq i64 %a7003, 15                                                  ; false?
  br i1 %cmp9065, label %else9067, label %then9066                                   ; if

then9066:
  %arg7396 = add i64 0, 0                                                            ; quoted ()
  %arg7395 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9068 = inttoptr i64 %cont7100 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9068)                                         ; assert function application
  %i0ptr9069 = getelementptr inbounds i64, i64* %cloptr9068, i64 0                   ; &cloptr9068[0]
  %f9071 = load i64, i64* %i0ptr9069, align 8                                        ; load; *i0ptr9069
  %fptr9070 = inttoptr i64 %f9071 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9070(i64 %cont7100, i64 %arg7396, i64 %arg7395)     ; tail call
  ret void

else9067:
  %arg7398 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7398)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cons_63(i64 %a7004)                                        ; call prim_cons_63
  %cmp9072 = icmp eq i64 %a7005, 15                                                  ; false?
  br i1 %cmp9072, label %else9074, label %then9073                                   ; if

then9073:
  %arg7401 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7401)                     ; call prim_vector_45ref
  %retprim7105 = call i64 @prim_cdr(i64 %a7006)                                      ; call prim_cdr
  %cloptr9075 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9077 = getelementptr inbounds i64, i64* %cloptr9075, i64 1                    ; &eptr9077[1]
  %eptr9078 = getelementptr inbounds i64, i64* %cloptr9075, i64 2                    ; &eptr9078[2]
  %eptr9079 = getelementptr inbounds i64, i64* %cloptr9075, i64 3                    ; &eptr9079[3]
  store i64 %mD8$cc, i64* %eptr9077                                                  ; *eptr9077 = %mD8$cc
  store i64 %IMz$a, i64* %eptr9078                                                   ; *eptr9078 = %IMz$a
  store i64 %cont7100, i64* %eptr9079                                                ; *eptr9079 = %cont7100
  %eptr9076 = getelementptr inbounds i64, i64* %cloptr9075, i64 0                    ; &cloptr9075[0]
  %f9080 = ptrtoint void(i64,i64,i64)* @lam8533 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9080, i64* %eptr9076                                                   ; store fptr
  %arg7406 = ptrtoint i64* %cloptr9075 to i64                                        ; closure cast; i64* -> i64
  %arg7405 = add i64 0, 0                                                            ; quoted ()
  %cloptr9081 = inttoptr i64 %arg7406 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9081)                                         ; assert function application
  %i0ptr9082 = getelementptr inbounds i64, i64* %cloptr9081, i64 0                   ; &cloptr9081[0]
  %f9084 = load i64, i64* %i0ptr9082, align 8                                        ; load; *i0ptr9082
  %fptr9083 = inttoptr i64 %f9084 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9083(i64 %arg7406, i64 %arg7405, i64 %retprim7105)  ; tail call
  ret void

else9074:
  %arg7420 = add i64 0, 0                                                            ; quoted ()
  %arg7419 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9085 = inttoptr i64 %cont7100 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9085)                                         ; assert function application
  %i0ptr9086 = getelementptr inbounds i64, i64* %cloptr9085, i64 0                   ; &cloptr9085[0]
  %f9088 = load i64, i64* %i0ptr9086, align 8                                        ; load; *i0ptr9086
  %fptr9087 = inttoptr i64 %f9088 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9087(i64 %cont7100, i64 %arg7420, i64 %arg7419)     ; tail call
  ret void
}


define void @lam8533(i64 %env8534, i64 %_957102, i64 %tHV$b) {
  %envptr9089 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9090 = getelementptr inbounds i64, i64* %envptr9089, i64 3                  ; &envptr9089[3]
  %cont7100 = load i64, i64* %envptr9090, align 8                                    ; load; *envptr9090
  %envptr9091 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9092 = getelementptr inbounds i64, i64* %envptr9091, i64 2                  ; &envptr9091[2]
  %IMz$a = load i64, i64* %envptr9092, align 8                                       ; load; *envptr9092
  %envptr9093 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9094 = getelementptr inbounds i64, i64* %envptr9093, i64 1                  ; &envptr9093[1]
  %mD8$cc = load i64, i64* %envptr9094, align 8                                      ; load; *envptr9094
  %arg7407 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7407)                     ; call prim_vector_45ref
  %a7008 = call i64 @prim_cdr(i64 %a7007)                                            ; call prim_cdr
  %arg7411 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45set_33(i64 %IMz$a, i64 %arg7411, i64 %a7008); call prim_vector_45set_33
  %cloptr9095 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9097 = getelementptr inbounds i64, i64* %cloptr9095, i64 1                    ; &eptr9097[1]
  %eptr9098 = getelementptr inbounds i64, i64* %cloptr9095, i64 2                    ; &eptr9098[2]
  store i64 %mD8$cc, i64* %eptr9097                                                  ; *eptr9097 = %mD8$cc
  store i64 %cont7100, i64* %eptr9098                                                ; *eptr9098 = %cont7100
  %eptr9096 = getelementptr inbounds i64, i64* %cloptr9095, i64 0                    ; &cloptr9095[0]
  %f9099 = ptrtoint void(i64,i64,i64)* @lam8529 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9099, i64* %eptr9096                                                   ; store fptr
  %arg7415 = ptrtoint i64* %cloptr9095 to i64                                        ; closure cast; i64* -> i64
  %arg7414 = add i64 0, 0                                                            ; quoted ()
  %cloptr9100 = inttoptr i64 %arg7415 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9100)                                         ; assert function application
  %i0ptr9101 = getelementptr inbounds i64, i64* %cloptr9100, i64 0                   ; &cloptr9100[0]
  %f9103 = load i64, i64* %i0ptr9101, align 8                                        ; load; *i0ptr9101
  %fptr9102 = inttoptr i64 %f9103 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9102(i64 %arg7415, i64 %arg7414, i64 %retprim7104)  ; tail call
  ret void
}


define void @lam8529(i64 %env8530, i64 %_957103, i64 %ELN$_950) {
  %envptr9104 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9105 = getelementptr inbounds i64, i64* %envptr9104, i64 2                  ; &envptr9104[2]
  %cont7100 = load i64, i64* %envptr9105, align 8                                    ; load; *envptr9105
  %envptr9106 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9107 = getelementptr inbounds i64, i64* %envptr9106, i64 1                  ; &envptr9106[1]
  %mD8$cc = load i64, i64* %envptr9107, align 8                                      ; load; *envptr9107
  %cloptr9108 = inttoptr i64 %mD8$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9108)                                         ; assert function application
  %i0ptr9109 = getelementptr inbounds i64, i64* %cloptr9108, i64 0                   ; &cloptr9108[0]
  %f9111 = load i64, i64* %i0ptr9109, align 8                                        ; load; *i0ptr9109
  %fptr9110 = inttoptr i64 %f9111 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9110(i64 %mD8$cc, i64 %cont7100, i64 %mD8$cc)       ; tail call
  ret void
}


define void @lam8523(i64 %env8524, i64 %_957101, i64 %mD8$cc) {
  %envptr9112 = inttoptr i64 %env8524 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9113 = getelementptr inbounds i64, i64* %envptr9112, i64 2                  ; &envptr9112[2]
  %cont7100 = load i64, i64* %envptr9113, align 8                                    ; load; *envptr9113
  %envptr9114 = inttoptr i64 %env8524 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9115 = getelementptr inbounds i64, i64* %envptr9114, i64 1                  ; &envptr9114[1]
  %IMz$a = load i64, i64* %envptr9115, align 8                                       ; load; *envptr9115
  %arg7422 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7002 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7422)                     ; call prim_vector_45ref
  %a7003 = call i64 @prim_null_63(i64 %a7002)                                        ; call prim_null_63
  %cmp9116 = icmp eq i64 %a7003, 15                                                  ; false?
  br i1 %cmp9116, label %else9118, label %then9117                                   ; if

then9117:
  %arg7426 = add i64 0, 0                                                            ; quoted ()
  %arg7425 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9119 = inttoptr i64 %cont7100 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9119)                                         ; assert function application
  %i0ptr9120 = getelementptr inbounds i64, i64* %cloptr9119, i64 0                   ; &cloptr9119[0]
  %f9122 = load i64, i64* %i0ptr9120, align 8                                        ; load; *i0ptr9120
  %fptr9121 = inttoptr i64 %f9122 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9121(i64 %cont7100, i64 %arg7426, i64 %arg7425)     ; tail call
  ret void

else9118:
  %arg7428 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7428)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cons_63(i64 %a7004)                                        ; call prim_cons_63
  %cmp9123 = icmp eq i64 %a7005, 15                                                  ; false?
  br i1 %cmp9123, label %else9125, label %then9124                                   ; if

then9124:
  %arg7431 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7431)                     ; call prim_vector_45ref
  %retprim7105 = call i64 @prim_cdr(i64 %a7006)                                      ; call prim_cdr
  %cloptr9126 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9128 = getelementptr inbounds i64, i64* %cloptr9126, i64 1                    ; &eptr9128[1]
  %eptr9129 = getelementptr inbounds i64, i64* %cloptr9126, i64 2                    ; &eptr9129[2]
  %eptr9130 = getelementptr inbounds i64, i64* %cloptr9126, i64 3                    ; &eptr9130[3]
  store i64 %mD8$cc, i64* %eptr9128                                                  ; *eptr9128 = %mD8$cc
  store i64 %IMz$a, i64* %eptr9129                                                   ; *eptr9129 = %IMz$a
  store i64 %cont7100, i64* %eptr9130                                                ; *eptr9130 = %cont7100
  %eptr9127 = getelementptr inbounds i64, i64* %cloptr9126, i64 0                    ; &cloptr9126[0]
  %f9131 = ptrtoint void(i64,i64,i64)* @lam8516 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9131, i64* %eptr9127                                                   ; store fptr
  %arg7436 = ptrtoint i64* %cloptr9126 to i64                                        ; closure cast; i64* -> i64
  %arg7435 = add i64 0, 0                                                            ; quoted ()
  %cloptr9132 = inttoptr i64 %arg7436 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9132)                                         ; assert function application
  %i0ptr9133 = getelementptr inbounds i64, i64* %cloptr9132, i64 0                   ; &cloptr9132[0]
  %f9135 = load i64, i64* %i0ptr9133, align 8                                        ; load; *i0ptr9133
  %fptr9134 = inttoptr i64 %f9135 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9134(i64 %arg7436, i64 %arg7435, i64 %retprim7105)  ; tail call
  ret void

else9125:
  %arg7450 = add i64 0, 0                                                            ; quoted ()
  %arg7449 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9136 = inttoptr i64 %cont7100 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9136)                                         ; assert function application
  %i0ptr9137 = getelementptr inbounds i64, i64* %cloptr9136, i64 0                   ; &cloptr9136[0]
  %f9139 = load i64, i64* %i0ptr9137, align 8                                        ; load; *i0ptr9137
  %fptr9138 = inttoptr i64 %f9139 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9138(i64 %cont7100, i64 %arg7450, i64 %arg7449)     ; tail call
  ret void
}


define void @lam8516(i64 %env8517, i64 %_957102, i64 %tHV$b) {
  %envptr9140 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9141 = getelementptr inbounds i64, i64* %envptr9140, i64 3                  ; &envptr9140[3]
  %cont7100 = load i64, i64* %envptr9141, align 8                                    ; load; *envptr9141
  %envptr9142 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9143 = getelementptr inbounds i64, i64* %envptr9142, i64 2                  ; &envptr9142[2]
  %IMz$a = load i64, i64* %envptr9143, align 8                                       ; load; *envptr9143
  %envptr9144 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9145 = getelementptr inbounds i64, i64* %envptr9144, i64 1                  ; &envptr9144[1]
  %mD8$cc = load i64, i64* %envptr9145, align 8                                      ; load; *envptr9145
  %arg7437 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim_vector_45ref(i64 %IMz$a, i64 %arg7437)                     ; call prim_vector_45ref
  %a7008 = call i64 @prim_cdr(i64 %a7007)                                            ; call prim_cdr
  %arg7441 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45set_33(i64 %IMz$a, i64 %arg7441, i64 %a7008); call prim_vector_45set_33
  %cloptr9146 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9148 = getelementptr inbounds i64, i64* %cloptr9146, i64 1                    ; &eptr9148[1]
  %eptr9149 = getelementptr inbounds i64, i64* %cloptr9146, i64 2                    ; &eptr9149[2]
  store i64 %mD8$cc, i64* %eptr9148                                                  ; *eptr9148 = %mD8$cc
  store i64 %cont7100, i64* %eptr9149                                                ; *eptr9149 = %cont7100
  %eptr9147 = getelementptr inbounds i64, i64* %cloptr9146, i64 0                    ; &cloptr9146[0]
  %f9150 = ptrtoint void(i64,i64,i64)* @lam8512 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9150, i64* %eptr9147                                                   ; store fptr
  %arg7445 = ptrtoint i64* %cloptr9146 to i64                                        ; closure cast; i64* -> i64
  %arg7444 = add i64 0, 0                                                            ; quoted ()
  %cloptr9151 = inttoptr i64 %arg7445 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9151)                                         ; assert function application
  %i0ptr9152 = getelementptr inbounds i64, i64* %cloptr9151, i64 0                   ; &cloptr9151[0]
  %f9154 = load i64, i64* %i0ptr9152, align 8                                        ; load; *i0ptr9152
  %fptr9153 = inttoptr i64 %f9154 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9153(i64 %arg7445, i64 %arg7444, i64 %retprim7104)  ; tail call
  ret void
}


define void @lam8512(i64 %env8513, i64 %_957103, i64 %ELN$_950) {
  %envptr9155 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9156 = getelementptr inbounds i64, i64* %envptr9155, i64 2                  ; &envptr9155[2]
  %cont7100 = load i64, i64* %envptr9156, align 8                                    ; load; *envptr9156
  %envptr9157 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9158 = getelementptr inbounds i64, i64* %envptr9157, i64 1                  ; &envptr9157[1]
  %mD8$cc = load i64, i64* %envptr9158, align 8                                      ; load; *envptr9158
  %cloptr9159 = inttoptr i64 %mD8$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9159)                                         ; assert function application
  %i0ptr9160 = getelementptr inbounds i64, i64* %cloptr9159, i64 0                   ; &cloptr9159[0]
  %f9162 = load i64, i64* %i0ptr9160, align 8                                        ; load; *i0ptr9160
  %fptr9161 = inttoptr i64 %f9162 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9161(i64 %mD8$cc, i64 %cont7100, i64 %mD8$cc)       ; tail call
  ret void
}


define void @lam8506(i64 %env8507, i64 %cont7107, i64 %l8E$lst, i64 %IQs$n) {
  %arg7453 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %DLx$lst = call i64 @prim_make_45vector(i64 %arg7453, i64 %l8E$lst)                ; call prim_make_45vector
  %arg7455 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Hbl$n = call i64 @prim_make_45vector(i64 %arg7455, i64 %IQs$n)                    ; call prim_make_45vector
  %cloptr9163 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9164 = getelementptr inbounds i64, i64* %cloptr9163, i64 0                    ; &cloptr9163[0]
  %f9165 = ptrtoint void(i64,i64,i64)* @lam8502 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9165, i64* %eptr9164                                                   ; store fptr
  %arg7458 = ptrtoint i64* %cloptr9163 to i64                                        ; closure cast; i64* -> i64
  %cloptr9166 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9168 = getelementptr inbounds i64, i64* %cloptr9166, i64 1                    ; &eptr9168[1]
  %eptr9169 = getelementptr inbounds i64, i64* %cloptr9166, i64 2                    ; &eptr9169[2]
  %eptr9170 = getelementptr inbounds i64, i64* %cloptr9166, i64 3                    ; &eptr9170[3]
  store i64 %Hbl$n, i64* %eptr9168                                                   ; *eptr9168 = %Hbl$n
  store i64 %DLx$lst, i64* %eptr9169                                                 ; *eptr9169 = %DLx$lst
  store i64 %cont7107, i64* %eptr9170                                                ; *eptr9170 = %cont7107
  %eptr9167 = getelementptr inbounds i64, i64* %cloptr9166, i64 0                    ; &cloptr9166[0]
  %f9171 = ptrtoint void(i64,i64,i64)* @lam8500 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9171, i64* %eptr9167                                                   ; store fptr
  %arg7457 = ptrtoint i64* %cloptr9166 to i64                                        ; closure cast; i64* -> i64
  %cloptr9172 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9174 = getelementptr inbounds i64, i64* %cloptr9172, i64 1                    ; &eptr9174[1]
  %eptr9175 = getelementptr inbounds i64, i64* %cloptr9172, i64 2                    ; &eptr9175[2]
  %eptr9176 = getelementptr inbounds i64, i64* %cloptr9172, i64 3                    ; &eptr9176[3]
  store i64 %Hbl$n, i64* %eptr9174                                                   ; *eptr9174 = %Hbl$n
  store i64 %DLx$lst, i64* %eptr9175                                                 ; *eptr9175 = %DLx$lst
  store i64 %cont7107, i64* %eptr9176                                                ; *eptr9176 = %cont7107
  %eptr9173 = getelementptr inbounds i64, i64* %cloptr9172, i64 0                    ; &cloptr9172[0]
  %f9177 = ptrtoint void(i64,i64,i64)* @lam8483 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9177, i64* %eptr9173                                                   ; store fptr
  %arg7456 = ptrtoint i64* %cloptr9172 to i64                                        ; closure cast; i64* -> i64
  %cloptr9178 = inttoptr i64 %arg7458 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9178)                                         ; assert function application
  %i0ptr9179 = getelementptr inbounds i64, i64* %cloptr9178, i64 0                   ; &cloptr9178[0]
  %f9181 = load i64, i64* %i0ptr9179, align 8                                        ; load; *i0ptr9179
  %fptr9180 = inttoptr i64 %f9181 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9180(i64 %arg7458, i64 %arg7457, i64 %arg7456)      ; tail call
  ret void
}


define void @lam8502(i64 %env8503, i64 %cont7114, i64 %kny$u) {
  %cloptr9182 = inttoptr i64 %kny$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9182)                                         ; assert function application
  %i0ptr9183 = getelementptr inbounds i64, i64* %cloptr9182, i64 0                   ; &cloptr9182[0]
  %f9185 = load i64, i64* %i0ptr9183, align 8                                        ; load; *i0ptr9183
  %fptr9184 = inttoptr i64 %f9185 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9184(i64 %kny$u, i64 %cont7114, i64 %kny$u)         ; tail call
  ret void
}


define void @lam8500(i64 %env8501, i64 %_957108, i64 %Eh9$cc) {
  %envptr9186 = inttoptr i64 %env8501 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9187 = getelementptr inbounds i64, i64* %envptr9186, i64 3                  ; &envptr9186[3]
  %cont7107 = load i64, i64* %envptr9187, align 8                                    ; load; *envptr9187
  %envptr9188 = inttoptr i64 %env8501 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9189 = getelementptr inbounds i64, i64* %envptr9188, i64 2                  ; &envptr9188[2]
  %DLx$lst = load i64, i64* %envptr9189, align 8                                     ; load; *envptr9189
  %envptr9190 = inttoptr i64 %env8501 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9191 = getelementptr inbounds i64, i64* %envptr9190, i64 1                  ; &envptr9190[1]
  %Hbl$n = load i64, i64* %envptr9191, align 8                                       ; load; *envptr9191
  %arg7462 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7009 = call i64 @prim_vector_45ref(i64 %Hbl$n, i64 %arg7462)                     ; call prim_vector_45ref
  %arg7465 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim__61(i64 %arg7465, i64 %a7009)                              ; call prim__61
  %cmp9192 = icmp eq i64 %a7010, 15                                                  ; false?
  br i1 %cmp9192, label %else9194, label %then9193                                   ; if

then9193:
  %arg7466 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45ref(i64 %DLx$lst, i64 %arg7466)             ; call prim_vector_45ref
  %arg7469 = add i64 0, 0                                                            ; quoted ()
  %cloptr9195 = inttoptr i64 %cont7107 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9195)                                         ; assert function application
  %i0ptr9196 = getelementptr inbounds i64, i64* %cloptr9195, i64 0                   ; &cloptr9195[0]
  %f9198 = load i64, i64* %i0ptr9196, align 8                                        ; load; *i0ptr9196
  %fptr9197 = inttoptr i64 %f9198 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9197(i64 %cont7107, i64 %arg7469, i64 %retprim7109) ; tail call
  ret void

else9194:
  %arg7471 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7011 = call i64 @prim_vector_45ref(i64 %DLx$lst, i64 %arg7471)                   ; call prim_vector_45ref
  %a7012 = call i64 @prim_cdr(i64 %a7011)                                            ; call prim_cdr
  %arg7475 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45set_33(i64 %DLx$lst, i64 %arg7475, i64 %a7012); call prim_vector_45set_33
  %cloptr9199 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9201 = getelementptr inbounds i64, i64* %cloptr9199, i64 1                    ; &eptr9201[1]
  %eptr9202 = getelementptr inbounds i64, i64* %cloptr9199, i64 2                    ; &eptr9202[2]
  %eptr9203 = getelementptr inbounds i64, i64* %cloptr9199, i64 3                    ; &eptr9203[3]
  store i64 %Eh9$cc, i64* %eptr9201                                                  ; *eptr9201 = %Eh9$cc
  store i64 %Hbl$n, i64* %eptr9202                                                   ; *eptr9202 = %Hbl$n
  store i64 %cont7107, i64* %eptr9203                                                ; *eptr9203 = %cont7107
  %eptr9200 = getelementptr inbounds i64, i64* %cloptr9199, i64 0                    ; &cloptr9199[0]
  %f9204 = ptrtoint void(i64,i64,i64)* @lam8494 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9204, i64* %eptr9200                                                   ; store fptr
  %arg7479 = ptrtoint i64* %cloptr9199 to i64                                        ; closure cast; i64* -> i64
  %arg7478 = add i64 0, 0                                                            ; quoted ()
  %cloptr9205 = inttoptr i64 %arg7479 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9205)                                         ; assert function application
  %i0ptr9206 = getelementptr inbounds i64, i64* %cloptr9205, i64 0                   ; &cloptr9205[0]
  %f9208 = load i64, i64* %i0ptr9206, align 8                                        ; load; *i0ptr9206
  %fptr9207 = inttoptr i64 %f9208 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9207(i64 %arg7479, i64 %arg7478, i64 %retprim7113)  ; tail call
  ret void
}


define void @lam8494(i64 %env8495, i64 %_957110, i64 %Bpc$_950) {
  %envptr9209 = inttoptr i64 %env8495 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9210 = getelementptr inbounds i64, i64* %envptr9209, i64 3                  ; &envptr9209[3]
  %cont7107 = load i64, i64* %envptr9210, align 8                                    ; load; *envptr9210
  %envptr9211 = inttoptr i64 %env8495 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9212 = getelementptr inbounds i64, i64* %envptr9211, i64 2                  ; &envptr9211[2]
  %Hbl$n = load i64, i64* %envptr9212, align 8                                       ; load; *envptr9212
  %envptr9213 = inttoptr i64 %env8495 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9214 = getelementptr inbounds i64, i64* %envptr9213, i64 1                  ; &envptr9213[1]
  %Eh9$cc = load i64, i64* %envptr9214, align 8                                      ; load; *envptr9214
  %arg7480 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7013 = call i64 @prim_vector_45ref(i64 %Hbl$n, i64 %arg7480)                     ; call prim_vector_45ref
  %arg7482 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7014 = call i64 @prim__45(i64 %a7013, i64 %arg7482)                              ; call prim__45
  %arg7485 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45set_33(i64 %Hbl$n, i64 %arg7485, i64 %a7014); call prim_vector_45set_33
  %cloptr9215 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9217 = getelementptr inbounds i64, i64* %cloptr9215, i64 1                    ; &eptr9217[1]
  %eptr9218 = getelementptr inbounds i64, i64* %cloptr9215, i64 2                    ; &eptr9218[2]
  store i64 %Eh9$cc, i64* %eptr9217                                                  ; *eptr9217 = %Eh9$cc
  store i64 %cont7107, i64* %eptr9218                                                ; *eptr9218 = %cont7107
  %eptr9216 = getelementptr inbounds i64, i64* %cloptr9215, i64 0                    ; &cloptr9215[0]
  %f9219 = ptrtoint void(i64,i64,i64)* @lam8489 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9219, i64* %eptr9216                                                   ; store fptr
  %arg7489 = ptrtoint i64* %cloptr9215 to i64                                        ; closure cast; i64* -> i64
  %arg7488 = add i64 0, 0                                                            ; quoted ()
  %cloptr9220 = inttoptr i64 %arg7489 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9220)                                         ; assert function application
  %i0ptr9221 = getelementptr inbounds i64, i64* %cloptr9220, i64 0                   ; &cloptr9220[0]
  %f9223 = load i64, i64* %i0ptr9221, align 8                                        ; load; *i0ptr9221
  %fptr9222 = inttoptr i64 %f9223 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9222(i64 %arg7489, i64 %arg7488, i64 %retprim7112)  ; tail call
  ret void
}


define void @lam8489(i64 %env8490, i64 %_957111, i64 %OWw$_951) {
  %envptr9224 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9225 = getelementptr inbounds i64, i64* %envptr9224, i64 2                  ; &envptr9224[2]
  %cont7107 = load i64, i64* %envptr9225, align 8                                    ; load; *envptr9225
  %envptr9226 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9227 = getelementptr inbounds i64, i64* %envptr9226, i64 1                  ; &envptr9226[1]
  %Eh9$cc = load i64, i64* %envptr9227, align 8                                      ; load; *envptr9227
  %cloptr9228 = inttoptr i64 %Eh9$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9228)                                         ; assert function application
  %i0ptr9229 = getelementptr inbounds i64, i64* %cloptr9228, i64 0                   ; &cloptr9228[0]
  %f9231 = load i64, i64* %i0ptr9229, align 8                                        ; load; *i0ptr9229
  %fptr9230 = inttoptr i64 %f9231 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9230(i64 %Eh9$cc, i64 %cont7107, i64 %Eh9$cc)       ; tail call
  ret void
}


define void @lam8483(i64 %env8484, i64 %_957108, i64 %Eh9$cc) {
  %envptr9232 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9233 = getelementptr inbounds i64, i64* %envptr9232, i64 3                  ; &envptr9232[3]
  %cont7107 = load i64, i64* %envptr9233, align 8                                    ; load; *envptr9233
  %envptr9234 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9235 = getelementptr inbounds i64, i64* %envptr9234, i64 2                  ; &envptr9234[2]
  %DLx$lst = load i64, i64* %envptr9235, align 8                                     ; load; *envptr9235
  %envptr9236 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9237 = getelementptr inbounds i64, i64* %envptr9236, i64 1                  ; &envptr9236[1]
  %Hbl$n = load i64, i64* %envptr9237, align 8                                       ; load; *envptr9237
  %arg7493 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7009 = call i64 @prim_vector_45ref(i64 %Hbl$n, i64 %arg7493)                     ; call prim_vector_45ref
  %arg7496 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim__61(i64 %arg7496, i64 %a7009)                              ; call prim__61
  %cmp9238 = icmp eq i64 %a7010, 15                                                  ; false?
  br i1 %cmp9238, label %else9240, label %then9239                                   ; if

then9239:
  %arg7497 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45ref(i64 %DLx$lst, i64 %arg7497)             ; call prim_vector_45ref
  %arg7500 = add i64 0, 0                                                            ; quoted ()
  %cloptr9241 = inttoptr i64 %cont7107 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9241)                                         ; assert function application
  %i0ptr9242 = getelementptr inbounds i64, i64* %cloptr9241, i64 0                   ; &cloptr9241[0]
  %f9244 = load i64, i64* %i0ptr9242, align 8                                        ; load; *i0ptr9242
  %fptr9243 = inttoptr i64 %f9244 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9243(i64 %cont7107, i64 %arg7500, i64 %retprim7109) ; tail call
  ret void

else9240:
  %arg7502 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7011 = call i64 @prim_vector_45ref(i64 %DLx$lst, i64 %arg7502)                   ; call prim_vector_45ref
  %a7012 = call i64 @prim_cdr(i64 %a7011)                                            ; call prim_cdr
  %arg7506 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45set_33(i64 %DLx$lst, i64 %arg7506, i64 %a7012); call prim_vector_45set_33
  %cloptr9245 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9247 = getelementptr inbounds i64, i64* %cloptr9245, i64 1                    ; &eptr9247[1]
  %eptr9248 = getelementptr inbounds i64, i64* %cloptr9245, i64 2                    ; &eptr9248[2]
  %eptr9249 = getelementptr inbounds i64, i64* %cloptr9245, i64 3                    ; &eptr9249[3]
  store i64 %Eh9$cc, i64* %eptr9247                                                  ; *eptr9247 = %Eh9$cc
  store i64 %Hbl$n, i64* %eptr9248                                                   ; *eptr9248 = %Hbl$n
  store i64 %cont7107, i64* %eptr9249                                                ; *eptr9249 = %cont7107
  %eptr9246 = getelementptr inbounds i64, i64* %cloptr9245, i64 0                    ; &cloptr9245[0]
  %f9250 = ptrtoint void(i64,i64,i64)* @lam8477 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9250, i64* %eptr9246                                                   ; store fptr
  %arg7510 = ptrtoint i64* %cloptr9245 to i64                                        ; closure cast; i64* -> i64
  %arg7509 = add i64 0, 0                                                            ; quoted ()
  %cloptr9251 = inttoptr i64 %arg7510 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9251)                                         ; assert function application
  %i0ptr9252 = getelementptr inbounds i64, i64* %cloptr9251, i64 0                   ; &cloptr9251[0]
  %f9254 = load i64, i64* %i0ptr9252, align 8                                        ; load; *i0ptr9252
  %fptr9253 = inttoptr i64 %f9254 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9253(i64 %arg7510, i64 %arg7509, i64 %retprim7113)  ; tail call
  ret void
}


define void @lam8477(i64 %env8478, i64 %_957110, i64 %Bpc$_950) {
  %envptr9255 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9256 = getelementptr inbounds i64, i64* %envptr9255, i64 3                  ; &envptr9255[3]
  %cont7107 = load i64, i64* %envptr9256, align 8                                    ; load; *envptr9256
  %envptr9257 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9258 = getelementptr inbounds i64, i64* %envptr9257, i64 2                  ; &envptr9257[2]
  %Hbl$n = load i64, i64* %envptr9258, align 8                                       ; load; *envptr9258
  %envptr9259 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9260 = getelementptr inbounds i64, i64* %envptr9259, i64 1                  ; &envptr9259[1]
  %Eh9$cc = load i64, i64* %envptr9260, align 8                                      ; load; *envptr9260
  %arg7511 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7013 = call i64 @prim_vector_45ref(i64 %Hbl$n, i64 %arg7511)                     ; call prim_vector_45ref
  %arg7513 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7014 = call i64 @prim__45(i64 %a7013, i64 %arg7513)                              ; call prim__45
  %arg7516 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45set_33(i64 %Hbl$n, i64 %arg7516, i64 %a7014); call prim_vector_45set_33
  %cloptr9261 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9263 = getelementptr inbounds i64, i64* %cloptr9261, i64 1                    ; &eptr9263[1]
  %eptr9264 = getelementptr inbounds i64, i64* %cloptr9261, i64 2                    ; &eptr9264[2]
  store i64 %Eh9$cc, i64* %eptr9263                                                  ; *eptr9263 = %Eh9$cc
  store i64 %cont7107, i64* %eptr9264                                                ; *eptr9264 = %cont7107
  %eptr9262 = getelementptr inbounds i64, i64* %cloptr9261, i64 0                    ; &cloptr9261[0]
  %f9265 = ptrtoint void(i64,i64,i64)* @lam8472 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9265, i64* %eptr9262                                                   ; store fptr
  %arg7520 = ptrtoint i64* %cloptr9261 to i64                                        ; closure cast; i64* -> i64
  %arg7519 = add i64 0, 0                                                            ; quoted ()
  %cloptr9266 = inttoptr i64 %arg7520 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9266)                                         ; assert function application
  %i0ptr9267 = getelementptr inbounds i64, i64* %cloptr9266, i64 0                   ; &cloptr9266[0]
  %f9269 = load i64, i64* %i0ptr9267, align 8                                        ; load; *i0ptr9267
  %fptr9268 = inttoptr i64 %f9269 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9268(i64 %arg7520, i64 %arg7519, i64 %retprim7112)  ; tail call
  ret void
}


define void @lam8472(i64 %env8473, i64 %_957111, i64 %OWw$_951) {
  %envptr9270 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9271 = getelementptr inbounds i64, i64* %envptr9270, i64 2                  ; &envptr9270[2]
  %cont7107 = load i64, i64* %envptr9271, align 8                                    ; load; *envptr9271
  %envptr9272 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9273 = getelementptr inbounds i64, i64* %envptr9272, i64 1                  ; &envptr9272[1]
  %Eh9$cc = load i64, i64* %envptr9273, align 8                                      ; load; *envptr9273
  %cloptr9274 = inttoptr i64 %Eh9$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9274)                                         ; assert function application
  %i0ptr9275 = getelementptr inbounds i64, i64* %cloptr9274, i64 0                   ; &cloptr9274[0]
  %f9277 = load i64, i64* %i0ptr9275, align 8                                        ; load; *i0ptr9275
  %fptr9276 = inttoptr i64 %f9277 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9276(i64 %Eh9$cc, i64 %cont7107, i64 %Eh9$cc)       ; tail call
  ret void
}


define void @lam8466(i64 %env8467, i64 %cont7115, i64 %nor$v, i64 %cbl$lst) {
  %arg7525 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %NNk$lst = call i64 @prim_make_45vector(i64 %arg7525, i64 %cbl$lst)                ; call prim_make_45vector
  %cloptr9278 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9279 = getelementptr inbounds i64, i64* %cloptr9278, i64 0                    ; &cloptr9278[0]
  %f9280 = ptrtoint void(i64,i64,i64)* @lam8463 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9280, i64* %eptr9279                                                   ; store fptr
  %arg7528 = ptrtoint i64* %cloptr9278 to i64                                        ; closure cast; i64* -> i64
  %cloptr9281 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9283 = getelementptr inbounds i64, i64* %cloptr9281, i64 1                    ; &eptr9283[1]
  %eptr9284 = getelementptr inbounds i64, i64* %cloptr9281, i64 2                    ; &eptr9284[2]
  %eptr9285 = getelementptr inbounds i64, i64* %cloptr9281, i64 3                    ; &eptr9285[3]
  store i64 %nor$v, i64* %eptr9283                                                   ; *eptr9283 = %nor$v
  store i64 %NNk$lst, i64* %eptr9284                                                 ; *eptr9284 = %NNk$lst
  store i64 %cont7115, i64* %eptr9285                                                ; *eptr9285 = %cont7115
  %eptr9282 = getelementptr inbounds i64, i64* %cloptr9281, i64 0                    ; &cloptr9281[0]
  %f9286 = ptrtoint void(i64,i64,i64)* @lam8461 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9286, i64* %eptr9282                                                   ; store fptr
  %arg7527 = ptrtoint i64* %cloptr9281 to i64                                        ; closure cast; i64* -> i64
  %cloptr9287 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9289 = getelementptr inbounds i64, i64* %cloptr9287, i64 1                    ; &eptr9289[1]
  %eptr9290 = getelementptr inbounds i64, i64* %cloptr9287, i64 2                    ; &eptr9290[2]
  %eptr9291 = getelementptr inbounds i64, i64* %cloptr9287, i64 3                    ; &eptr9291[3]
  store i64 %nor$v, i64* %eptr9289                                                   ; *eptr9289 = %nor$v
  store i64 %NNk$lst, i64* %eptr9290                                                 ; *eptr9290 = %NNk$lst
  store i64 %cont7115, i64* %eptr9291                                                ; *eptr9291 = %cont7115
  %eptr9288 = getelementptr inbounds i64, i64* %cloptr9287, i64 0                    ; &cloptr9287[0]
  %f9292 = ptrtoint void(i64,i64,i64)* @lam8448 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9292, i64* %eptr9288                                                   ; store fptr
  %arg7526 = ptrtoint i64* %cloptr9287 to i64                                        ; closure cast; i64* -> i64
  %cloptr9293 = inttoptr i64 %arg7528 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9293)                                         ; assert function application
  %i0ptr9294 = getelementptr inbounds i64, i64* %cloptr9293, i64 0                   ; &cloptr9293[0]
  %f9296 = load i64, i64* %i0ptr9294, align 8                                        ; load; *i0ptr9294
  %fptr9295 = inttoptr i64 %f9296 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9295(i64 %arg7528, i64 %arg7527, i64 %arg7526)      ; tail call
  ret void
}


define void @lam8463(i64 %env8464, i64 %cont7120, i64 %cL7$u) {
  %cloptr9297 = inttoptr i64 %cL7$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9297)                                         ; assert function application
  %i0ptr9298 = getelementptr inbounds i64, i64* %cloptr9297, i64 0                   ; &cloptr9297[0]
  %f9300 = load i64, i64* %i0ptr9298, align 8                                        ; load; *i0ptr9298
  %fptr9299 = inttoptr i64 %f9300 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9299(i64 %cL7$u, i64 %cont7120, i64 %cL7$u)         ; tail call
  ret void
}


define void @lam8461(i64 %env8462, i64 %_957116, i64 %o8u$cc) {
  %envptr9301 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9302 = getelementptr inbounds i64, i64* %envptr9301, i64 3                  ; &envptr9301[3]
  %cont7115 = load i64, i64* %envptr9302, align 8                                    ; load; *envptr9302
  %envptr9303 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9304 = getelementptr inbounds i64, i64* %envptr9303, i64 2                  ; &envptr9303[2]
  %NNk$lst = load i64, i64* %envptr9304, align 8                                     ; load; *envptr9304
  %envptr9305 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9306 = getelementptr inbounds i64, i64* %envptr9305, i64 1                  ; &envptr9305[1]
  %nor$v = load i64, i64* %envptr9306, align 8                                       ; load; *envptr9306
  %arg7532 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7015 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7532)                   ; call prim_vector_45ref
  %a7016 = call i64 @prim_null_63(i64 %a7015)                                        ; call prim_null_63
  %cmp9307 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9307, label %else9309, label %then9308                                   ; if

then9308:
  %arg7536 = add i64 0, 0                                                            ; quoted ()
  %arg7535 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9310 = inttoptr i64 %cont7115 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9310)                                         ; assert function application
  %i0ptr9311 = getelementptr inbounds i64, i64* %cloptr9310, i64 0                   ; &cloptr9310[0]
  %f9313 = load i64, i64* %i0ptr9311, align 8                                        ; load; *i0ptr9311
  %fptr9312 = inttoptr i64 %f9313 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9312(i64 %cont7115, i64 %arg7536, i64 %arg7535)     ; tail call
  ret void

else9309:
  %arg7538 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7538)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_car(i64 %a7017)                                            ; call prim_car
  %a7019 = call i64 @prim_eqv_63(i64 %a7018, i64 %nor$v)                             ; call prim_eqv_63
  %cmp9314 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9314, label %else9316, label %then9315                                   ; if

then9315:
  %arg7543 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7117 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7543)             ; call prim_vector_45ref
  %arg7546 = add i64 0, 0                                                            ; quoted ()
  %cloptr9317 = inttoptr i64 %cont7115 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9317)                                         ; assert function application
  %i0ptr9318 = getelementptr inbounds i64, i64* %cloptr9317, i64 0                   ; &cloptr9317[0]
  %f9320 = load i64, i64* %i0ptr9318, align 8                                        ; load; *i0ptr9318
  %fptr9319 = inttoptr i64 %f9320 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9319(i64 %cont7115, i64 %arg7546, i64 %retprim7117) ; tail call
  ret void

else9316:
  %arg7548 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7020 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7548)                   ; call prim_vector_45ref
  %a7021 = call i64 @prim_cdr(i64 %a7020)                                            ; call prim_cdr
  %arg7552 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7119 = call i64 @prim_vector_45set_33(i64 %NNk$lst, i64 %arg7552, i64 %a7021); call prim_vector_45set_33
  %cloptr9321 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9323 = getelementptr inbounds i64, i64* %cloptr9321, i64 1                    ; &eptr9323[1]
  %eptr9324 = getelementptr inbounds i64, i64* %cloptr9321, i64 2                    ; &eptr9324[2]
  store i64 %o8u$cc, i64* %eptr9323                                                  ; *eptr9323 = %o8u$cc
  store i64 %cont7115, i64* %eptr9324                                                ; *eptr9324 = %cont7115
  %eptr9322 = getelementptr inbounds i64, i64* %cloptr9321, i64 0                    ; &cloptr9321[0]
  %f9325 = ptrtoint void(i64,i64,i64)* @lam8455 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9325, i64* %eptr9322                                                   ; store fptr
  %arg7556 = ptrtoint i64* %cloptr9321 to i64                                        ; closure cast; i64* -> i64
  %arg7555 = add i64 0, 0                                                            ; quoted ()
  %cloptr9326 = inttoptr i64 %arg7556 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9326)                                         ; assert function application
  %i0ptr9327 = getelementptr inbounds i64, i64* %cloptr9326, i64 0                   ; &cloptr9326[0]
  %f9329 = load i64, i64* %i0ptr9327, align 8                                        ; load; *i0ptr9327
  %fptr9328 = inttoptr i64 %f9329 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9328(i64 %arg7556, i64 %arg7555, i64 %retprim7119)  ; tail call
  ret void
}


define void @lam8455(i64 %env8456, i64 %_957118, i64 %ys4$_950) {
  %envptr9330 = inttoptr i64 %env8456 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9331 = getelementptr inbounds i64, i64* %envptr9330, i64 2                  ; &envptr9330[2]
  %cont7115 = load i64, i64* %envptr9331, align 8                                    ; load; *envptr9331
  %envptr9332 = inttoptr i64 %env8456 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9333 = getelementptr inbounds i64, i64* %envptr9332, i64 1                  ; &envptr9332[1]
  %o8u$cc = load i64, i64* %envptr9333, align 8                                      ; load; *envptr9333
  %cloptr9334 = inttoptr i64 %o8u$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9334)                                         ; assert function application
  %i0ptr9335 = getelementptr inbounds i64, i64* %cloptr9334, i64 0                   ; &cloptr9334[0]
  %f9337 = load i64, i64* %i0ptr9335, align 8                                        ; load; *i0ptr9335
  %fptr9336 = inttoptr i64 %f9337 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9336(i64 %o8u$cc, i64 %cont7115, i64 %o8u$cc)       ; tail call
  ret void
}


define void @lam8448(i64 %env8449, i64 %_957116, i64 %o8u$cc) {
  %envptr9338 = inttoptr i64 %env8449 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9339 = getelementptr inbounds i64, i64* %envptr9338, i64 3                  ; &envptr9338[3]
  %cont7115 = load i64, i64* %envptr9339, align 8                                    ; load; *envptr9339
  %envptr9340 = inttoptr i64 %env8449 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9341 = getelementptr inbounds i64, i64* %envptr9340, i64 2                  ; &envptr9340[2]
  %NNk$lst = load i64, i64* %envptr9341, align 8                                     ; load; *envptr9341
  %envptr9342 = inttoptr i64 %env8449 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9343 = getelementptr inbounds i64, i64* %envptr9342, i64 1                  ; &envptr9342[1]
  %nor$v = load i64, i64* %envptr9343, align 8                                       ; load; *envptr9343
  %arg7560 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7015 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7560)                   ; call prim_vector_45ref
  %a7016 = call i64 @prim_null_63(i64 %a7015)                                        ; call prim_null_63
  %cmp9344 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9344, label %else9346, label %then9345                                   ; if

then9345:
  %arg7564 = add i64 0, 0                                                            ; quoted ()
  %arg7563 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9347 = inttoptr i64 %cont7115 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9347)                                         ; assert function application
  %i0ptr9348 = getelementptr inbounds i64, i64* %cloptr9347, i64 0                   ; &cloptr9347[0]
  %f9350 = load i64, i64* %i0ptr9348, align 8                                        ; load; *i0ptr9348
  %fptr9349 = inttoptr i64 %f9350 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9349(i64 %cont7115, i64 %arg7564, i64 %arg7563)     ; tail call
  ret void

else9346:
  %arg7566 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7566)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_car(i64 %a7017)                                            ; call prim_car
  %a7019 = call i64 @prim_eqv_63(i64 %a7018, i64 %nor$v)                             ; call prim_eqv_63
  %cmp9351 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9351, label %else9353, label %then9352                                   ; if

then9352:
  %arg7571 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7117 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7571)             ; call prim_vector_45ref
  %arg7574 = add i64 0, 0                                                            ; quoted ()
  %cloptr9354 = inttoptr i64 %cont7115 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9354)                                         ; assert function application
  %i0ptr9355 = getelementptr inbounds i64, i64* %cloptr9354, i64 0                   ; &cloptr9354[0]
  %f9357 = load i64, i64* %i0ptr9355, align 8                                        ; load; *i0ptr9355
  %fptr9356 = inttoptr i64 %f9357 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9356(i64 %cont7115, i64 %arg7574, i64 %retprim7117) ; tail call
  ret void

else9353:
  %arg7576 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7020 = call i64 @prim_vector_45ref(i64 %NNk$lst, i64 %arg7576)                   ; call prim_vector_45ref
  %a7021 = call i64 @prim_cdr(i64 %a7020)                                            ; call prim_cdr
  %arg7580 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7119 = call i64 @prim_vector_45set_33(i64 %NNk$lst, i64 %arg7580, i64 %a7021); call prim_vector_45set_33
  %cloptr9358 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9360 = getelementptr inbounds i64, i64* %cloptr9358, i64 1                    ; &eptr9360[1]
  %eptr9361 = getelementptr inbounds i64, i64* %cloptr9358, i64 2                    ; &eptr9361[2]
  store i64 %o8u$cc, i64* %eptr9360                                                  ; *eptr9360 = %o8u$cc
  store i64 %cont7115, i64* %eptr9361                                                ; *eptr9361 = %cont7115
  %eptr9359 = getelementptr inbounds i64, i64* %cloptr9358, i64 0                    ; &cloptr9358[0]
  %f9362 = ptrtoint void(i64,i64,i64)* @lam8442 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9362, i64* %eptr9359                                                   ; store fptr
  %arg7584 = ptrtoint i64* %cloptr9358 to i64                                        ; closure cast; i64* -> i64
  %arg7583 = add i64 0, 0                                                            ; quoted ()
  %cloptr9363 = inttoptr i64 %arg7584 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9363)                                         ; assert function application
  %i0ptr9364 = getelementptr inbounds i64, i64* %cloptr9363, i64 0                   ; &cloptr9363[0]
  %f9366 = load i64, i64* %i0ptr9364, align 8                                        ; load; *i0ptr9364
  %fptr9365 = inttoptr i64 %f9366 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9365(i64 %arg7584, i64 %arg7583, i64 %retprim7119)  ; tail call
  ret void
}


define void @lam8442(i64 %env8443, i64 %_957118, i64 %ys4$_950) {
  %envptr9367 = inttoptr i64 %env8443 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9368 = getelementptr inbounds i64, i64* %envptr9367, i64 2                  ; &envptr9367[2]
  %cont7115 = load i64, i64* %envptr9368, align 8                                    ; load; *envptr9368
  %envptr9369 = inttoptr i64 %env8443 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9370 = getelementptr inbounds i64, i64* %envptr9369, i64 1                  ; &envptr9369[1]
  %o8u$cc = load i64, i64* %envptr9370, align 8                                      ; load; *envptr9370
  %cloptr9371 = inttoptr i64 %o8u$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9371)                                         ; assert function application
  %i0ptr9372 = getelementptr inbounds i64, i64* %cloptr9371, i64 0                   ; &cloptr9371[0]
  %f9374 = load i64, i64* %i0ptr9372, align 8                                        ; load; *i0ptr9372
  %fptr9373 = inttoptr i64 %f9374 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9373(i64 %o8u$cc, i64 %cont7115, i64 %o8u$cc)       ; tail call
  ret void
}


define void @lam8435(i64 %env8436, i64 %O2A$args7122) {
  %envptr9375 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9376 = getelementptr inbounds i64, i64* %envptr9375, i64 1                  ; &envptr9375[1]
  %u3R$_37foldl1 = load i64, i64* %envptr9376, align 8                               ; load; *envptr9376
  %cont7121 = call i64 @prim_car(i64 %O2A$args7122)                                  ; call prim_car
  %O2A$args = call i64 @prim_cdr(i64 %O2A$args7122)                                  ; call prim_cdr
  %a7022 = call i64 @prim_null_63(i64 %O2A$args)                                     ; call prim_null_63
  %cmp9377 = icmp eq i64 %a7022, 15                                                  ; false?
  br i1 %cmp9377, label %else9379, label %then9378                                   ; if

then9378:
  %arg7592 = add i64 0, 0                                                            ; quoted ()
  %arg7591 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9380 = inttoptr i64 %cont7121 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9380)                                         ; assert function application
  %i0ptr9381 = getelementptr inbounds i64, i64* %cloptr9380, i64 0                   ; &cloptr9380[0]
  %f9383 = load i64, i64* %i0ptr9381, align 8                                        ; load; *i0ptr9381
  %fptr9382 = inttoptr i64 %f9383 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9382(i64 %cont7121, i64 %arg7592, i64 %arg7591)     ; tail call
  ret void

else9379:
  %a7023 = call i64 @prim_cdr(i64 %O2A$args)                                         ; call prim_cdr
  %a7024 = call i64 @prim_null_63(i64 %a7023)                                        ; call prim_null_63
  %cmp9384 = icmp eq i64 %a7024, 15                                                  ; false?
  br i1 %cmp9384, label %else9386, label %then9385                                   ; if

then9385:
  %retprim7123 = call i64 @prim_car(i64 %O2A$args)                                   ; call prim_car
  %arg7598 = add i64 0, 0                                                            ; quoted ()
  %cloptr9387 = inttoptr i64 %cont7121 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9387)                                         ; assert function application
  %i0ptr9388 = getelementptr inbounds i64, i64* %cloptr9387, i64 0                   ; &cloptr9387[0]
  %f9390 = load i64, i64* %i0ptr9388, align 8                                        ; load; *i0ptr9388
  %fptr9389 = inttoptr i64 %f9390 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9389(i64 %cont7121, i64 %arg7598, i64 %retprim7123) ; tail call
  ret void

else9386:
  %a7025 = call i64 @prim_car(i64 %O2A$args)                                         ; call prim_car
  %a7026 = call i64 @prim_cdr(i64 %O2A$args)                                         ; call prim_cdr
  %cloptr9391 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9392 = getelementptr inbounds i64, i64* %cloptr9391, i64 0                    ; &cloptr9391[0]
  %f9393 = ptrtoint void(i64,i64,i64,i64)* @lam8433 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9393, i64* %eptr9392                                                   ; store fptr
  %arg7604 = ptrtoint i64* %cloptr9391 to i64                                        ; closure cast; i64* -> i64
  %cloptr9394 = inttoptr i64 %u3R$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9394)                                         ; assert function application
  %i0ptr9395 = getelementptr inbounds i64, i64* %cloptr9394, i64 0                   ; &cloptr9394[0]
  %f9397 = load i64, i64* %i0ptr9395, align 8                                        ; load; *i0ptr9395
  %fptr9396 = inttoptr i64 %f9397 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9396(i64 %u3R$_37foldl1, i64 %cont7121, i64 %arg7604, i64 %a7025, i64 %a7026); tail call
  ret void
}


define void @lam8433(i64 %env8434, i64 %cont7124, i64 %nse$n, i64 %N0m$v) {
  %retprim7125 = call i64 @prim__47(i64 %N0m$v, i64 %nse$n)                          ; call prim__47
  %arg7610 = add i64 0, 0                                                            ; quoted ()
  %cloptr9398 = inttoptr i64 %cont7124 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9398)                                         ; assert function application
  %i0ptr9399 = getelementptr inbounds i64, i64* %cloptr9398, i64 0                   ; &cloptr9398[0]
  %f9401 = load i64, i64* %i0ptr9399, align 8                                        ; load; *i0ptr9399
  %fptr9400 = inttoptr i64 %f9401 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9400(i64 %cont7124, i64 %arg7610, i64 %retprim7125) ; tail call
  ret void
}


define void @lam8427(i64 %env8428, i64 %cont7126, i64 %xWv$x) {
  %retprim7127 = call i64 @prim_car(i64 %xWv$x)                                      ; call prim_car
  %arg7614 = add i64 0, 0                                                            ; quoted ()
  %cloptr9402 = inttoptr i64 %cont7126 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9402)                                         ; assert function application
  %i0ptr9403 = getelementptr inbounds i64, i64* %cloptr9402, i64 0                   ; &cloptr9402[0]
  %f9405 = load i64, i64* %i0ptr9403, align 8                                        ; load; *i0ptr9403
  %fptr9404 = inttoptr i64 %f9405 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9404(i64 %cont7126, i64 %arg7614, i64 %retprim7127) ; tail call
  ret void
}


define void @lam8424(i64 %env8425, i64 %cont7128, i64 %ZkB$x) {
  %a7027 = call i64 @prim_cdr(i64 %ZkB$x)                                            ; call prim_cdr
  %retprim7129 = call i64 @prim_car(i64 %a7027)                                      ; call prim_car
  %arg7619 = add i64 0, 0                                                            ; quoted ()
  %cloptr9406 = inttoptr i64 %cont7128 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9406)                                         ; assert function application
  %i0ptr9407 = getelementptr inbounds i64, i64* %cloptr9406, i64 0                   ; &cloptr9406[0]
  %f9409 = load i64, i64* %i0ptr9407, align 8                                        ; load; *i0ptr9407
  %fptr9408 = inttoptr i64 %f9409 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9408(i64 %cont7128, i64 %arg7619, i64 %retprim7129) ; tail call
  ret void
}


define void @lam8421(i64 %env8422, i64 %cont7130, i64 %Srk$x) {
  %a7028 = call i64 @prim_cdr(i64 %Srk$x)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7131 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7625 = add i64 0, 0                                                            ; quoted ()
  %cloptr9410 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9410)                                         ; assert function application
  %i0ptr9411 = getelementptr inbounds i64, i64* %cloptr9410, i64 0                   ; &cloptr9410[0]
  %f9413 = load i64, i64* %i0ptr9411, align 8                                        ; load; *i0ptr9411
  %fptr9412 = inttoptr i64 %f9413 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9412(i64 %cont7130, i64 %arg7625, i64 %retprim7131) ; tail call
  ret void
}


define void @lam8418(i64 %env8419, i64 %cont7132, i64 %ntf$x) {
  %a7030 = call i64 @prim_cdr(i64 %ntf$x)                                            ; call prim_cdr
  %a7031 = call i64 @prim_cdr(i64 %a7030)                                            ; call prim_cdr
  %a7032 = call i64 @prim_cdr(i64 %a7031)                                            ; call prim_cdr
  %retprim7133 = call i64 @prim_car(i64 %a7032)                                      ; call prim_car
  %arg7632 = add i64 0, 0                                                            ; quoted ()
  %cloptr9414 = inttoptr i64 %cont7132 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9414)                                         ; assert function application
  %i0ptr9415 = getelementptr inbounds i64, i64* %cloptr9414, i64 0                   ; &cloptr9414[0]
  %f9417 = load i64, i64* %i0ptr9415, align 8                                        ; load; *i0ptr9415
  %fptr9416 = inttoptr i64 %f9417 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9416(i64 %cont7132, i64 %arg7632, i64 %retprim7133) ; tail call
  ret void
}


define void @lam8415(i64 %env8416, i64 %cont7134, i64 %Gja$p) {
  %a7033 = call i64 @prim_cons_63(i64 %Gja$p)                                        ; call prim_cons_63
  %cmp9418 = icmp eq i64 %a7033, 15                                                  ; false?
  br i1 %cmp9418, label %else9420, label %then9419                                   ; if

then9419:
  %a7034 = call i64 @prim_car(i64 %Gja$p)                                            ; call prim_car
  %arg7636 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9421, i32 0, i32 0)); quoted string
  %retprim7135 = call i64 @prim_eq_63(i64 %a7034, i64 %arg7636)                      ; call prim_eq_63
  %arg7639 = add i64 0, 0                                                            ; quoted ()
  %cloptr9422 = inttoptr i64 %cont7134 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9422)                                         ; assert function application
  %i0ptr9423 = getelementptr inbounds i64, i64* %cloptr9422, i64 0                   ; &cloptr9422[0]
  %f9425 = load i64, i64* %i0ptr9423, align 8                                        ; load; *i0ptr9423
  %fptr9424 = inttoptr i64 %f9425 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9424(i64 %cont7134, i64 %arg7639, i64 %retprim7135) ; tail call
  ret void

else9420:
  %arg7642 = add i64 0, 0                                                            ; quoted ()
  %arg7641 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9426 = inttoptr i64 %cont7134 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9426)                                         ; assert function application
  %i0ptr9427 = getelementptr inbounds i64, i64* %cloptr9426, i64 0                   ; &cloptr9426[0]
  %f9429 = load i64, i64* %i0ptr9427, align 8                                        ; load; *i0ptr9427
  %fptr9428 = inttoptr i64 %f9429 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9428(i64 %cont7134, i64 %arg7642, i64 %arg7641)     ; tail call
  ret void
}


define void @lam8409(i64 %env8410, i64 %STk$lst7186) {
  %cont7185 = call i64 @prim_car(i64 %STk$lst7186)                                   ; call prim_car
  %STk$lst = call i64 @prim_cdr(i64 %STk$lst7186)                                    ; call prim_cdr
  %arg7649 = add i64 0, 0                                                            ; quoted ()
  %cloptr9430 = inttoptr i64 %cont7185 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9430)                                         ; assert function application
  %i0ptr9431 = getelementptr inbounds i64, i64* %cloptr9430, i64 0                   ; &cloptr9430[0]
  %f9433 = load i64, i64* %i0ptr9431, align 8                                        ; load; *i0ptr9431
  %fptr9432 = inttoptr i64 %f9433 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9432(i64 %cont7185, i64 %arg7649, i64 %STk$lst)     ; tail call
  ret void
}


define void @lam8406(i64 %env8407, i64 %_957136, i64 %Ipy$_37raise_45handler) {
  %envptr9434 = inttoptr i64 %env8407 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9435 = getelementptr inbounds i64, i64* %envptr9434, i64 3                  ; &envptr9434[3]
  %uQz$_37_62 = load i64, i64* %envptr9435, align 8                                  ; load; *envptr9435
  %envptr9436 = inttoptr i64 %env8407 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9437 = getelementptr inbounds i64, i64* %envptr9436, i64 2                  ; &envptr9436[2]
  %pWG$_37length = load i64, i64* %envptr9437, align 8                               ; load; *envptr9437
  %envptr9438 = inttoptr i64 %env8407 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9439 = getelementptr inbounds i64, i64* %envptr9438, i64 1                  ; &envptr9438[1]
  %LUE$_37drop = load i64, i64* %envptr9439, align 8                                 ; load; *envptr9439
  %cloptr9440 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9441 = getelementptr inbounds i64, i64* %cloptr9440, i64 0                    ; &cloptr9440[0]
  %f9442 = ptrtoint void(i64,i64)* @lam8404 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9442, i64* %eptr9441                                                   ; store fptr
  %arg7652 = ptrtoint i64* %cloptr9440 to i64                                        ; closure cast; i64* -> i64
  %cloptr9443 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9445 = getelementptr inbounds i64, i64* %cloptr9443, i64 1                    ; &eptr9445[1]
  %eptr9446 = getelementptr inbounds i64, i64* %cloptr9443, i64 2                    ; &eptr9446[2]
  %eptr9447 = getelementptr inbounds i64, i64* %cloptr9443, i64 3                    ; &eptr9447[3]
  store i64 %LUE$_37drop, i64* %eptr9445                                             ; *eptr9445 = %LUE$_37drop
  store i64 %pWG$_37length, i64* %eptr9446                                           ; *eptr9446 = %pWG$_37length
  store i64 %uQz$_37_62, i64* %eptr9447                                              ; *eptr9447 = %uQz$_37_62
  %eptr9444 = getelementptr inbounds i64, i64* %cloptr9443, i64 0                    ; &cloptr9443[0]
  %f9448 = ptrtoint void(i64,i64,i64)* @lam8401 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9448, i64* %eptr9444                                                   ; store fptr
  %arg7651 = ptrtoint i64* %cloptr9443 to i64                                        ; closure cast; i64* -> i64
  %rva8142 = add i64 0, 0                                                            ; quoted ()
  %rva8141 = call i64 @prim_cons(i64 %arg7651, i64 %rva8142)                         ; call prim_cons
  %cloptr9449 = inttoptr i64 %arg7652 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9449)                                         ; assert function application
  %i0ptr9450 = getelementptr inbounds i64, i64* %cloptr9449, i64 0                   ; &cloptr9449[0]
  %f9452 = load i64, i64* %i0ptr9450, align 8                                        ; load; *i0ptr9450
  %fptr9451 = inttoptr i64 %f9452 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9451(i64 %arg7652, i64 %rva8141)                    ; tail call
  ret void
}


define void @lam8404(i64 %env8405, i64 %VSu$lst7184) {
  %cont7183 = call i64 @prim_car(i64 %VSu$lst7184)                                   ; call prim_car
  %VSu$lst = call i64 @prim_cdr(i64 %VSu$lst7184)                                    ; call prim_cdr
  %arg7656 = add i64 0, 0                                                            ; quoted ()
  %cloptr9453 = inttoptr i64 %cont7183 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9453)                                         ; assert function application
  %i0ptr9454 = getelementptr inbounds i64, i64* %cloptr9453, i64 0                   ; &cloptr9453[0]
  %f9456 = load i64, i64* %i0ptr9454, align 8                                        ; load; *i0ptr9454
  %fptr9455 = inttoptr i64 %f9456 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9455(i64 %cont7183, i64 %arg7656, i64 %VSu$lst)     ; tail call
  ret void
}


define void @lam8401(i64 %env8402, i64 %_957181, i64 %a7035) {
  %envptr9457 = inttoptr i64 %env8402 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9458 = getelementptr inbounds i64, i64* %envptr9457, i64 3                  ; &envptr9457[3]
  %uQz$_37_62 = load i64, i64* %envptr9458, align 8                                  ; load; *envptr9458
  %envptr9459 = inttoptr i64 %env8402 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9460 = getelementptr inbounds i64, i64* %envptr9459, i64 2                  ; &envptr9459[2]
  %pWG$_37length = load i64, i64* %envptr9460, align 8                               ; load; *envptr9460
  %envptr9461 = inttoptr i64 %env8402 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9462 = getelementptr inbounds i64, i64* %envptr9461, i64 1                  ; &envptr9461[1]
  %LUE$_37drop = load i64, i64* %envptr9462, align 8                                 ; load; *envptr9462
  %arg7659 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7182 = call i64 @prim_make_45vector(i64 %arg7659, i64 %a7035)              ; call prim_make_45vector
  %cloptr9463 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9465 = getelementptr inbounds i64, i64* %cloptr9463, i64 1                    ; &eptr9465[1]
  %eptr9466 = getelementptr inbounds i64, i64* %cloptr9463, i64 2                    ; &eptr9466[2]
  %eptr9467 = getelementptr inbounds i64, i64* %cloptr9463, i64 3                    ; &eptr9467[3]
  store i64 %LUE$_37drop, i64* %eptr9465                                             ; *eptr9465 = %LUE$_37drop
  store i64 %pWG$_37length, i64* %eptr9466                                           ; *eptr9466 = %pWG$_37length
  store i64 %uQz$_37_62, i64* %eptr9467                                              ; *eptr9467 = %uQz$_37_62
  %eptr9464 = getelementptr inbounds i64, i64* %cloptr9463, i64 0                    ; &cloptr9463[0]
  %f9468 = ptrtoint void(i64,i64,i64)* @lam8398 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9468, i64* %eptr9464                                                   ; store fptr
  %arg7662 = ptrtoint i64* %cloptr9463 to i64                                        ; closure cast; i64* -> i64
  %arg7661 = add i64 0, 0                                                            ; quoted ()
  %cloptr9469 = inttoptr i64 %arg7662 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9469)                                         ; assert function application
  %i0ptr9470 = getelementptr inbounds i64, i64* %cloptr9469, i64 0                   ; &cloptr9469[0]
  %f9472 = load i64, i64* %i0ptr9470, align 8                                        ; load; *i0ptr9470
  %fptr9471 = inttoptr i64 %f9472 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9471(i64 %arg7662, i64 %arg7661, i64 %retprim7182)  ; tail call
  ret void
}


define void @lam8398(i64 %env8399, i64 %_957137, i64 %k8P$_37wind_45stack) {
  %envptr9473 = inttoptr i64 %env8399 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9474 = getelementptr inbounds i64, i64* %envptr9473, i64 3                  ; &envptr9473[3]
  %uQz$_37_62 = load i64, i64* %envptr9474, align 8                                  ; load; *envptr9474
  %envptr9475 = inttoptr i64 %env8399 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9476 = getelementptr inbounds i64, i64* %envptr9475, i64 2                  ; &envptr9475[2]
  %pWG$_37length = load i64, i64* %envptr9476, align 8                               ; load; *envptr9476
  %envptr9477 = inttoptr i64 %env8399 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9478 = getelementptr inbounds i64, i64* %envptr9477, i64 1                  ; &envptr9477[1]
  %LUE$_37drop = load i64, i64* %envptr9478, align 8                                 ; load; *envptr9478
  %cloptr9479 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9481 = getelementptr inbounds i64, i64* %cloptr9479, i64 1                    ; &eptr9481[1]
  %eptr9482 = getelementptr inbounds i64, i64* %cloptr9479, i64 2                    ; &eptr9482[2]
  %eptr9483 = getelementptr inbounds i64, i64* %cloptr9479, i64 3                    ; &eptr9483[3]
  store i64 %LUE$_37drop, i64* %eptr9481                                             ; *eptr9481 = %LUE$_37drop
  store i64 %pWG$_37length, i64* %eptr9482                                           ; *eptr9482 = %pWG$_37length
  store i64 %uQz$_37_62, i64* %eptr9483                                              ; *eptr9483 = %uQz$_37_62
  %eptr9480 = getelementptr inbounds i64, i64* %cloptr9479, i64 0                    ; &cloptr9479[0]
  %f9484 = ptrtoint void(i64,i64,i64,i64)* @lam8396 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9484, i64* %eptr9480                                                   ; store fptr
  %SU2$_37common_45tail = ptrtoint i64* %cloptr9479 to i64                           ; closure cast; i64* -> i64
  %cloptr9485 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9485, i64 1                    ; &eptr9487[1]
  %eptr9488 = getelementptr inbounds i64, i64* %cloptr9485, i64 2                    ; &eptr9488[2]
  store i64 %SU2$_37common_45tail, i64* %eptr9487                                    ; *eptr9487 = %SU2$_37common_45tail
  store i64 %k8P$_37wind_45stack, i64* %eptr9488                                     ; *eptr9488 = %k8P$_37wind_45stack
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9485, i64 0                    ; &cloptr9485[0]
  %f9489 = ptrtoint void(i64,i64,i64)* @lam8354 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9489, i64* %eptr9486                                                   ; store fptr
  %UQA$_37do_45wind = ptrtoint i64* %cloptr9485 to i64                               ; closure cast; i64* -> i64
  %cloptr9490 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9491 = getelementptr inbounds i64, i64* %cloptr9490, i64 0                    ; &cloptr9490[0]
  %f9492 = ptrtoint void(i64,i64)* @lam8304 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9492, i64* %eptr9491                                                   ; store fptr
  %arg7848 = ptrtoint i64* %cloptr9490 to i64                                        ; closure cast; i64* -> i64
  %cloptr9493 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9494 = getelementptr inbounds i64, i64* %cloptr9493, i64 0                    ; &cloptr9493[0]
  %f9495 = ptrtoint void(i64,i64)* @lam8300 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9495, i64* %eptr9494                                                   ; store fptr
  %arg7847 = ptrtoint i64* %cloptr9493 to i64                                        ; closure cast; i64* -> i64
  %rva8140 = add i64 0, 0                                                            ; quoted ()
  %rva8139 = call i64 @prim_cons(i64 %arg7847, i64 %rva8140)                         ; call prim_cons
  %cloptr9496 = inttoptr i64 %arg7848 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9496)                                         ; assert function application
  %i0ptr9497 = getelementptr inbounds i64, i64* %cloptr9496, i64 0                   ; &cloptr9496[0]
  %f9499 = load i64, i64* %i0ptr9497, align 8                                        ; load; *i0ptr9497
  %fptr9498 = inttoptr i64 %f9499 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9498(i64 %arg7848, i64 %rva8139)                    ; tail call
  ret void
}


define void @lam8396(i64 %env8397, i64 %cont7138, i64 %aq3$x, i64 %PJA$y) {
  %envptr9500 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9501 = getelementptr inbounds i64, i64* %envptr9500, i64 3                  ; &envptr9500[3]
  %uQz$_37_62 = load i64, i64* %envptr9501, align 8                                  ; load; *envptr9501
  %envptr9502 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9503 = getelementptr inbounds i64, i64* %envptr9502, i64 2                  ; &envptr9502[2]
  %pWG$_37length = load i64, i64* %envptr9503, align 8                               ; load; *envptr9503
  %envptr9504 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9505 = getelementptr inbounds i64, i64* %envptr9504, i64 1                  ; &envptr9504[1]
  %LUE$_37drop = load i64, i64* %envptr9505, align 8                                 ; load; *envptr9505
  %cloptr9506 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9508 = getelementptr inbounds i64, i64* %cloptr9506, i64 1                    ; &eptr9508[1]
  %eptr9509 = getelementptr inbounds i64, i64* %cloptr9506, i64 2                    ; &eptr9509[2]
  %eptr9510 = getelementptr inbounds i64, i64* %cloptr9506, i64 3                    ; &eptr9510[3]
  %eptr9511 = getelementptr inbounds i64, i64* %cloptr9506, i64 4                    ; &eptr9511[4]
  %eptr9512 = getelementptr inbounds i64, i64* %cloptr9506, i64 5                    ; &eptr9512[5]
  %eptr9513 = getelementptr inbounds i64, i64* %cloptr9506, i64 6                    ; &eptr9513[6]
  store i64 %LUE$_37drop, i64* %eptr9508                                             ; *eptr9508 = %LUE$_37drop
  store i64 %cont7138, i64* %eptr9509                                                ; *eptr9509 = %cont7138
  store i64 %PJA$y, i64* %eptr9510                                                   ; *eptr9510 = %PJA$y
  store i64 %aq3$x, i64* %eptr9511                                                   ; *eptr9511 = %aq3$x
  store i64 %pWG$_37length, i64* %eptr9512                                           ; *eptr9512 = %pWG$_37length
  store i64 %uQz$_37_62, i64* %eptr9513                                              ; *eptr9513 = %uQz$_37_62
  %eptr9507 = getelementptr inbounds i64, i64* %cloptr9506, i64 0                    ; &cloptr9506[0]
  %f9514 = ptrtoint void(i64,i64,i64)* @lam8394 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9514, i64* %eptr9507                                                   ; store fptr
  %arg7664 = ptrtoint i64* %cloptr9506 to i64                                        ; closure cast; i64* -> i64
  %cloptr9515 = inttoptr i64 %pWG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9515)                                         ; assert function application
  %i0ptr9516 = getelementptr inbounds i64, i64* %cloptr9515, i64 0                   ; &cloptr9515[0]
  %f9518 = load i64, i64* %i0ptr9516, align 8                                        ; load; *i0ptr9516
  %fptr9517 = inttoptr i64 %f9518 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9517(i64 %pWG$_37length, i64 %arg7664, i64 %aq3$x)  ; tail call
  ret void
}


define void @lam8394(i64 %env8395, i64 %_957139, i64 %wzc$lx) {
  %envptr9519 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9520 = getelementptr inbounds i64, i64* %envptr9519, i64 6                  ; &envptr9519[6]
  %uQz$_37_62 = load i64, i64* %envptr9520, align 8                                  ; load; *envptr9520
  %envptr9521 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9522 = getelementptr inbounds i64, i64* %envptr9521, i64 5                  ; &envptr9521[5]
  %pWG$_37length = load i64, i64* %envptr9522, align 8                               ; load; *envptr9522
  %envptr9523 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9524 = getelementptr inbounds i64, i64* %envptr9523, i64 4                  ; &envptr9523[4]
  %aq3$x = load i64, i64* %envptr9524, align 8                                       ; load; *envptr9524
  %envptr9525 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9526 = getelementptr inbounds i64, i64* %envptr9525, i64 3                  ; &envptr9525[3]
  %PJA$y = load i64, i64* %envptr9526, align 8                                       ; load; *envptr9526
  %envptr9527 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9528 = getelementptr inbounds i64, i64* %envptr9527, i64 2                  ; &envptr9527[2]
  %cont7138 = load i64, i64* %envptr9528, align 8                                    ; load; *envptr9528
  %envptr9529 = inttoptr i64 %env8395 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9530 = getelementptr inbounds i64, i64* %envptr9529, i64 1                  ; &envptr9529[1]
  %LUE$_37drop = load i64, i64* %envptr9530, align 8                                 ; load; *envptr9530
  %cloptr9531 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9533 = getelementptr inbounds i64, i64* %cloptr9531, i64 1                    ; &eptr9533[1]
  %eptr9534 = getelementptr inbounds i64, i64* %cloptr9531, i64 2                    ; &eptr9534[2]
  %eptr9535 = getelementptr inbounds i64, i64* %cloptr9531, i64 3                    ; &eptr9535[3]
  %eptr9536 = getelementptr inbounds i64, i64* %cloptr9531, i64 4                    ; &eptr9536[4]
  %eptr9537 = getelementptr inbounds i64, i64* %cloptr9531, i64 5                    ; &eptr9537[5]
  %eptr9538 = getelementptr inbounds i64, i64* %cloptr9531, i64 6                    ; &eptr9538[6]
  store i64 %LUE$_37drop, i64* %eptr9533                                             ; *eptr9533 = %LUE$_37drop
  store i64 %wzc$lx, i64* %eptr9534                                                  ; *eptr9534 = %wzc$lx
  store i64 %cont7138, i64* %eptr9535                                                ; *eptr9535 = %cont7138
  store i64 %PJA$y, i64* %eptr9536                                                   ; *eptr9536 = %PJA$y
  store i64 %aq3$x, i64* %eptr9537                                                   ; *eptr9537 = %aq3$x
  store i64 %uQz$_37_62, i64* %eptr9538                                              ; *eptr9538 = %uQz$_37_62
  %eptr9532 = getelementptr inbounds i64, i64* %cloptr9531, i64 0                    ; &cloptr9531[0]
  %f9539 = ptrtoint void(i64,i64,i64)* @lam8392 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9539, i64* %eptr9532                                                   ; store fptr
  %arg7667 = ptrtoint i64* %cloptr9531 to i64                                        ; closure cast; i64* -> i64
  %cloptr9540 = inttoptr i64 %pWG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9540)                                         ; assert function application
  %i0ptr9541 = getelementptr inbounds i64, i64* %cloptr9540, i64 0                   ; &cloptr9540[0]
  %f9543 = load i64, i64* %i0ptr9541, align 8                                        ; load; *i0ptr9541
  %fptr9542 = inttoptr i64 %f9543 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9542(i64 %pWG$_37length, i64 %arg7667, i64 %PJA$y)  ; tail call
  ret void
}


define void @lam8392(i64 %env8393, i64 %_957140, i64 %HAX$ly) {
  %envptr9544 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9545 = getelementptr inbounds i64, i64* %envptr9544, i64 6                  ; &envptr9544[6]
  %uQz$_37_62 = load i64, i64* %envptr9545, align 8                                  ; load; *envptr9545
  %envptr9546 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9547 = getelementptr inbounds i64, i64* %envptr9546, i64 5                  ; &envptr9546[5]
  %aq3$x = load i64, i64* %envptr9547, align 8                                       ; load; *envptr9547
  %envptr9548 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9549 = getelementptr inbounds i64, i64* %envptr9548, i64 4                  ; &envptr9548[4]
  %PJA$y = load i64, i64* %envptr9549, align 8                                       ; load; *envptr9549
  %envptr9550 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9551 = getelementptr inbounds i64, i64* %envptr9550, i64 3                  ; &envptr9550[3]
  %cont7138 = load i64, i64* %envptr9551, align 8                                    ; load; *envptr9551
  %envptr9552 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9553 = getelementptr inbounds i64, i64* %envptr9552, i64 2                  ; &envptr9552[2]
  %wzc$lx = load i64, i64* %envptr9553, align 8                                      ; load; *envptr9553
  %envptr9554 = inttoptr i64 %env8393 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9555 = getelementptr inbounds i64, i64* %envptr9554, i64 1                  ; &envptr9554[1]
  %LUE$_37drop = load i64, i64* %envptr9555, align 8                                 ; load; *envptr9555
  %cloptr9556 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9557 = getelementptr inbounds i64, i64* %cloptr9556, i64 0                    ; &cloptr9556[0]
  %f9558 = ptrtoint void(i64,i64)* @lam8390 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9558, i64* %eptr9557                                                   ; store fptr
  %arg7670 = ptrtoint i64* %cloptr9556 to i64                                        ; closure cast; i64* -> i64
  %cloptr9559 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9561 = getelementptr inbounds i64, i64* %cloptr9559, i64 1                    ; &eptr9561[1]
  %eptr9562 = getelementptr inbounds i64, i64* %cloptr9559, i64 2                    ; &eptr9562[2]
  %eptr9563 = getelementptr inbounds i64, i64* %cloptr9559, i64 3                    ; &eptr9563[3]
  %eptr9564 = getelementptr inbounds i64, i64* %cloptr9559, i64 4                    ; &eptr9564[4]
  %eptr9565 = getelementptr inbounds i64, i64* %cloptr9559, i64 5                    ; &eptr9565[5]
  %eptr9566 = getelementptr inbounds i64, i64* %cloptr9559, i64 6                    ; &eptr9566[6]
  %eptr9567 = getelementptr inbounds i64, i64* %cloptr9559, i64 7                    ; &eptr9567[7]
  store i64 %LUE$_37drop, i64* %eptr9561                                             ; *eptr9561 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9562                                                  ; *eptr9562 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9563                                                  ; *eptr9563 = %wzc$lx
  store i64 %cont7138, i64* %eptr9564                                                ; *eptr9564 = %cont7138
  store i64 %PJA$y, i64* %eptr9565                                                   ; *eptr9565 = %PJA$y
  store i64 %aq3$x, i64* %eptr9566                                                   ; *eptr9566 = %aq3$x
  store i64 %uQz$_37_62, i64* %eptr9567                                              ; *eptr9567 = %uQz$_37_62
  %eptr9560 = getelementptr inbounds i64, i64* %cloptr9559, i64 0                    ; &cloptr9559[0]
  %f9568 = ptrtoint void(i64,i64,i64)* @lam8387 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9568, i64* %eptr9560                                                   ; store fptr
  %arg7669 = ptrtoint i64* %cloptr9559 to i64                                        ; closure cast; i64* -> i64
  %cloptr9569 = inttoptr i64 %arg7670 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9569)                                         ; assert function application
  %i0ptr9570 = getelementptr inbounds i64, i64* %cloptr9569, i64 0                   ; &cloptr9569[0]
  %f9572 = load i64, i64* %i0ptr9570, align 8                                        ; load; *i0ptr9570
  %fptr9571 = inttoptr i64 %f9572 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9571(i64 %arg7670, i64 %arg7669)                    ; tail call
  ret void
}


define void @lam8390(i64 %env8391, i64 %tQw$lst7150) {
  %cont7149 = call i64 @prim_car(i64 %tQw$lst7150)                                   ; call prim_car
  %tQw$lst = call i64 @prim_cdr(i64 %tQw$lst7150)                                    ; call prim_cdr
  %arg7674 = add i64 0, 0                                                            ; quoted ()
  %cloptr9573 = inttoptr i64 %cont7149 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9573)                                         ; assert function application
  %i0ptr9574 = getelementptr inbounds i64, i64* %cloptr9573, i64 0                   ; &cloptr9573[0]
  %f9576 = load i64, i64* %i0ptr9574, align 8                                        ; load; *i0ptr9574
  %fptr9575 = inttoptr i64 %f9576 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9575(i64 %cont7149, i64 %arg7674, i64 %tQw$lst)     ; tail call
  ret void
}


define void @lam8387(i64 %env8388, i64 %_957147, i64 %a7036) {
  %envptr9577 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9578 = getelementptr inbounds i64, i64* %envptr9577, i64 7                  ; &envptr9577[7]
  %uQz$_37_62 = load i64, i64* %envptr9578, align 8                                  ; load; *envptr9578
  %envptr9579 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9580 = getelementptr inbounds i64, i64* %envptr9579, i64 6                  ; &envptr9579[6]
  %aq3$x = load i64, i64* %envptr9580, align 8                                       ; load; *envptr9580
  %envptr9581 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9582 = getelementptr inbounds i64, i64* %envptr9581, i64 5                  ; &envptr9581[5]
  %PJA$y = load i64, i64* %envptr9582, align 8                                       ; load; *envptr9582
  %envptr9583 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9584 = getelementptr inbounds i64, i64* %envptr9583, i64 4                  ; &envptr9583[4]
  %cont7138 = load i64, i64* %envptr9584, align 8                                    ; load; *envptr9584
  %envptr9585 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9586 = getelementptr inbounds i64, i64* %envptr9585, i64 3                  ; &envptr9585[3]
  %wzc$lx = load i64, i64* %envptr9586, align 8                                      ; load; *envptr9586
  %envptr9587 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9588 = getelementptr inbounds i64, i64* %envptr9587, i64 2                  ; &envptr9587[2]
  %HAX$ly = load i64, i64* %envptr9588, align 8                                      ; load; *envptr9588
  %envptr9589 = inttoptr i64 %env8388 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9590 = getelementptr inbounds i64, i64* %envptr9589, i64 1                  ; &envptr9589[1]
  %LUE$_37drop = load i64, i64* %envptr9590, align 8                                 ; load; *envptr9590
  %arg7677 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7148 = call i64 @prim_make_45vector(i64 %arg7677, i64 %a7036)              ; call prim_make_45vector
  %cloptr9591 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9593 = getelementptr inbounds i64, i64* %cloptr9591, i64 1                    ; &eptr9593[1]
  %eptr9594 = getelementptr inbounds i64, i64* %cloptr9591, i64 2                    ; &eptr9594[2]
  %eptr9595 = getelementptr inbounds i64, i64* %cloptr9591, i64 3                    ; &eptr9595[3]
  %eptr9596 = getelementptr inbounds i64, i64* %cloptr9591, i64 4                    ; &eptr9596[4]
  %eptr9597 = getelementptr inbounds i64, i64* %cloptr9591, i64 5                    ; &eptr9597[5]
  %eptr9598 = getelementptr inbounds i64, i64* %cloptr9591, i64 6                    ; &eptr9598[6]
  %eptr9599 = getelementptr inbounds i64, i64* %cloptr9591, i64 7                    ; &eptr9599[7]
  store i64 %LUE$_37drop, i64* %eptr9593                                             ; *eptr9593 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9594                                                  ; *eptr9594 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9595                                                  ; *eptr9595 = %wzc$lx
  store i64 %cont7138, i64* %eptr9596                                                ; *eptr9596 = %cont7138
  store i64 %PJA$y, i64* %eptr9597                                                   ; *eptr9597 = %PJA$y
  store i64 %aq3$x, i64* %eptr9598                                                   ; *eptr9598 = %aq3$x
  store i64 %uQz$_37_62, i64* %eptr9599                                              ; *eptr9599 = %uQz$_37_62
  %eptr9592 = getelementptr inbounds i64, i64* %cloptr9591, i64 0                    ; &cloptr9591[0]
  %f9600 = ptrtoint void(i64,i64,i64)* @lam8384 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9600, i64* %eptr9592                                                   ; store fptr
  %arg7680 = ptrtoint i64* %cloptr9591 to i64                                        ; closure cast; i64* -> i64
  %arg7679 = add i64 0, 0                                                            ; quoted ()
  %cloptr9601 = inttoptr i64 %arg7680 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9601)                                         ; assert function application
  %i0ptr9602 = getelementptr inbounds i64, i64* %cloptr9601, i64 0                   ; &cloptr9601[0]
  %f9604 = load i64, i64* %i0ptr9602, align 8                                        ; load; *i0ptr9602
  %fptr9603 = inttoptr i64 %f9604 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9603(i64 %arg7680, i64 %arg7679, i64 %retprim7148)  ; tail call
  ret void
}


define void @lam8384(i64 %env8385, i64 %_957141, i64 %MJi$loop) {
  %envptr9605 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9606 = getelementptr inbounds i64, i64* %envptr9605, i64 7                  ; &envptr9605[7]
  %uQz$_37_62 = load i64, i64* %envptr9606, align 8                                  ; load; *envptr9606
  %envptr9607 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9608 = getelementptr inbounds i64, i64* %envptr9607, i64 6                  ; &envptr9607[6]
  %aq3$x = load i64, i64* %envptr9608, align 8                                       ; load; *envptr9608
  %envptr9609 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9610 = getelementptr inbounds i64, i64* %envptr9609, i64 5                  ; &envptr9609[5]
  %PJA$y = load i64, i64* %envptr9610, align 8                                       ; load; *envptr9610
  %envptr9611 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9612 = getelementptr inbounds i64, i64* %envptr9611, i64 4                  ; &envptr9611[4]
  %cont7138 = load i64, i64* %envptr9612, align 8                                    ; load; *envptr9612
  %envptr9613 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9614 = getelementptr inbounds i64, i64* %envptr9613, i64 3                  ; &envptr9613[3]
  %wzc$lx = load i64, i64* %envptr9614, align 8                                      ; load; *envptr9614
  %envptr9615 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9616 = getelementptr inbounds i64, i64* %envptr9615, i64 2                  ; &envptr9615[2]
  %HAX$ly = load i64, i64* %envptr9616, align 8                                      ; load; *envptr9616
  %envptr9617 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9618 = getelementptr inbounds i64, i64* %envptr9617, i64 1                  ; &envptr9617[1]
  %LUE$_37drop = load i64, i64* %envptr9618, align 8                                 ; load; *envptr9618
  %arg7682 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9619 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9621 = getelementptr inbounds i64, i64* %cloptr9619, i64 1                    ; &eptr9621[1]
  store i64 %MJi$loop, i64* %eptr9621                                                ; *eptr9621 = %MJi$loop
  %eptr9620 = getelementptr inbounds i64, i64* %cloptr9619, i64 0                    ; &cloptr9619[0]
  %f9622 = ptrtoint void(i64,i64,i64,i64)* @lam8381 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9622, i64* %eptr9620                                                   ; store fptr
  %arg7681 = ptrtoint i64* %cloptr9619 to i64                                        ; closure cast; i64* -> i64
  %tEQ$_956939 = call i64 @prim_vector_45set_33(i64 %MJi$loop, i64 %arg7682, i64 %arg7681); call prim_vector_45set_33
  %arg7697 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7041 = call i64 @prim_vector_45ref(i64 %MJi$loop, i64 %arg7697)                  ; call prim_vector_45ref
  %cloptr9623 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9625 = getelementptr inbounds i64, i64* %cloptr9623, i64 1                    ; &eptr9625[1]
  %eptr9626 = getelementptr inbounds i64, i64* %cloptr9623, i64 2                    ; &eptr9626[2]
  %eptr9627 = getelementptr inbounds i64, i64* %cloptr9623, i64 3                    ; &eptr9627[3]
  %eptr9628 = getelementptr inbounds i64, i64* %cloptr9623, i64 4                    ; &eptr9628[4]
  %eptr9629 = getelementptr inbounds i64, i64* %cloptr9623, i64 5                    ; &eptr9629[5]
  %eptr9630 = getelementptr inbounds i64, i64* %cloptr9623, i64 6                    ; &eptr9630[6]
  %eptr9631 = getelementptr inbounds i64, i64* %cloptr9623, i64 7                    ; &eptr9631[7]
  %eptr9632 = getelementptr inbounds i64, i64* %cloptr9623, i64 8                    ; &eptr9632[8]
  store i64 %LUE$_37drop, i64* %eptr9625                                             ; *eptr9625 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9626                                                  ; *eptr9626 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9627                                                  ; *eptr9627 = %wzc$lx
  store i64 %cont7138, i64* %eptr9628                                                ; *eptr9628 = %cont7138
  store i64 %PJA$y, i64* %eptr9629                                                   ; *eptr9629 = %PJA$y
  store i64 %aq3$x, i64* %eptr9630                                                   ; *eptr9630 = %aq3$x
  store i64 %a7041, i64* %eptr9631                                                   ; *eptr9631 = %a7041
  store i64 %uQz$_37_62, i64* %eptr9632                                              ; *eptr9632 = %uQz$_37_62
  %eptr9624 = getelementptr inbounds i64, i64* %cloptr9623, i64 0                    ; &cloptr9623[0]
  %f9633 = ptrtoint void(i64,i64,i64)* @lam8376 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9633, i64* %eptr9624                                                   ; store fptr
  %arg7701 = ptrtoint i64* %cloptr9623 to i64                                        ; closure cast; i64* -> i64
  %cloptr9634 = inttoptr i64 %uQz$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9634)                                         ; assert function application
  %i0ptr9635 = getelementptr inbounds i64, i64* %cloptr9634, i64 0                   ; &cloptr9634[0]
  %f9637 = load i64, i64* %i0ptr9635, align 8                                        ; load; *i0ptr9635
  %fptr9636 = inttoptr i64 %f9637 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9636(i64 %uQz$_37_62, i64 %arg7701, i64 %wzc$lx, i64 %HAX$ly); tail call
  ret void
}


define void @lam8381(i64 %env8382, i64 %cont7142, i64 %kTe$x, i64 %G0q$y) {
  %envptr9638 = inttoptr i64 %env8382 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9639 = getelementptr inbounds i64, i64* %envptr9638, i64 1                  ; &envptr9638[1]
  %MJi$loop = load i64, i64* %envptr9639, align 8                                    ; load; *envptr9639
  %a7037 = call i64 @prim_eq_63(i64 %kTe$x, i64 %G0q$y)                              ; call prim_eq_63
  %cmp9640 = icmp eq i64 %a7037, 15                                                  ; false?
  br i1 %cmp9640, label %else9642, label %then9641                                   ; if

then9641:
  %arg7687 = add i64 0, 0                                                            ; quoted ()
  %cloptr9643 = inttoptr i64 %cont7142 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9643)                                         ; assert function application
  %i0ptr9644 = getelementptr inbounds i64, i64* %cloptr9643, i64 0                   ; &cloptr9643[0]
  %f9646 = load i64, i64* %i0ptr9644, align 8                                        ; load; *i0ptr9644
  %fptr9645 = inttoptr i64 %f9646 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9645(i64 %cont7142, i64 %arg7687, i64 %kTe$x)       ; tail call
  ret void

else9642:
  %arg7689 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %MJi$loop, i64 %arg7689)                  ; call prim_vector_45ref
  %a7039 = call i64 @prim_cdr(i64 %kTe$x)                                            ; call prim_cdr
  %a7040 = call i64 @prim_cdr(i64 %G0q$y)                                            ; call prim_cdr
  %cloptr9647 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9647)                                         ; assert function application
  %i0ptr9648 = getelementptr inbounds i64, i64* %cloptr9647, i64 0                   ; &cloptr9647[0]
  %f9650 = load i64, i64* %i0ptr9648, align 8                                        ; load; *i0ptr9648
  %fptr9649 = inttoptr i64 %f9650 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9649(i64 %a7038, i64 %cont7142, i64 %a7039, i64 %a7040); tail call
  ret void
}


define void @lam8376(i64 %env8377, i64 %_957143, i64 %a7042) {
  %envptr9651 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9652 = getelementptr inbounds i64, i64* %envptr9651, i64 8                  ; &envptr9651[8]
  %uQz$_37_62 = load i64, i64* %envptr9652, align 8                                  ; load; *envptr9652
  %envptr9653 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9654 = getelementptr inbounds i64, i64* %envptr9653, i64 7                  ; &envptr9653[7]
  %a7041 = load i64, i64* %envptr9654, align 8                                       ; load; *envptr9654
  %envptr9655 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9656 = getelementptr inbounds i64, i64* %envptr9655, i64 6                  ; &envptr9655[6]
  %aq3$x = load i64, i64* %envptr9656, align 8                                       ; load; *envptr9656
  %envptr9657 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9658 = getelementptr inbounds i64, i64* %envptr9657, i64 5                  ; &envptr9657[5]
  %PJA$y = load i64, i64* %envptr9658, align 8                                       ; load; *envptr9658
  %envptr9659 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9660 = getelementptr inbounds i64, i64* %envptr9659, i64 4                  ; &envptr9659[4]
  %cont7138 = load i64, i64* %envptr9660, align 8                                    ; load; *envptr9660
  %envptr9661 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9662 = getelementptr inbounds i64, i64* %envptr9661, i64 3                  ; &envptr9661[3]
  %wzc$lx = load i64, i64* %envptr9662, align 8                                      ; load; *envptr9662
  %envptr9663 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9664 = getelementptr inbounds i64, i64* %envptr9663, i64 2                  ; &envptr9663[2]
  %HAX$ly = load i64, i64* %envptr9664, align 8                                      ; load; *envptr9664
  %envptr9665 = inttoptr i64 %env8377 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9666 = getelementptr inbounds i64, i64* %envptr9665, i64 1                  ; &envptr9665[1]
  %LUE$_37drop = load i64, i64* %envptr9666, align 8                                 ; load; *envptr9666
  %cmp9667 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9667, label %else9669, label %then9668                                   ; if

then9668:
  %a7043 = call i64 @prim__45(i64 %wzc$lx, i64 %HAX$ly)                              ; call prim__45
  %cloptr9670 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9672 = getelementptr inbounds i64, i64* %cloptr9670, i64 1                    ; &eptr9672[1]
  %eptr9673 = getelementptr inbounds i64, i64* %cloptr9670, i64 2                    ; &eptr9673[2]
  %eptr9674 = getelementptr inbounds i64, i64* %cloptr9670, i64 3                    ; &eptr9674[3]
  %eptr9675 = getelementptr inbounds i64, i64* %cloptr9670, i64 4                    ; &eptr9675[4]
  %eptr9676 = getelementptr inbounds i64, i64* %cloptr9670, i64 5                    ; &eptr9676[5]
  %eptr9677 = getelementptr inbounds i64, i64* %cloptr9670, i64 6                    ; &eptr9677[6]
  %eptr9678 = getelementptr inbounds i64, i64* %cloptr9670, i64 7                    ; &eptr9678[7]
  store i64 %LUE$_37drop, i64* %eptr9672                                             ; *eptr9672 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9673                                                  ; *eptr9673 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9674                                                  ; *eptr9674 = %wzc$lx
  store i64 %cont7138, i64* %eptr9675                                                ; *eptr9675 = %cont7138
  store i64 %PJA$y, i64* %eptr9676                                                   ; *eptr9676 = %PJA$y
  store i64 %a7041, i64* %eptr9677                                                   ; *eptr9677 = %a7041
  store i64 %uQz$_37_62, i64* %eptr9678                                              ; *eptr9678 = %uQz$_37_62
  %eptr9671 = getelementptr inbounds i64, i64* %cloptr9670, i64 0                    ; &cloptr9670[0]
  %f9679 = ptrtoint void(i64,i64,i64)* @lam8364 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9679, i64* %eptr9671                                                   ; store fptr
  %arg7707 = ptrtoint i64* %cloptr9670 to i64                                        ; closure cast; i64* -> i64
  %cloptr9680 = inttoptr i64 %LUE$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9680)                                         ; assert function application
  %i0ptr9681 = getelementptr inbounds i64, i64* %cloptr9680, i64 0                   ; &cloptr9680[0]
  %f9683 = load i64, i64* %i0ptr9681, align 8                                        ; load; *i0ptr9681
  %fptr9682 = inttoptr i64 %f9683 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9682(i64 %LUE$_37drop, i64 %arg7707, i64 %aq3$x, i64 %a7043); tail call
  ret void

else9669:
  %cloptr9684 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9686 = getelementptr inbounds i64, i64* %cloptr9684, i64 1                    ; &eptr9686[1]
  %eptr9687 = getelementptr inbounds i64, i64* %cloptr9684, i64 2                    ; &eptr9687[2]
  %eptr9688 = getelementptr inbounds i64, i64* %cloptr9684, i64 3                    ; &eptr9688[3]
  %eptr9689 = getelementptr inbounds i64, i64* %cloptr9684, i64 4                    ; &eptr9689[4]
  %eptr9690 = getelementptr inbounds i64, i64* %cloptr9684, i64 5                    ; &eptr9690[5]
  %eptr9691 = getelementptr inbounds i64, i64* %cloptr9684, i64 6                    ; &eptr9691[6]
  %eptr9692 = getelementptr inbounds i64, i64* %cloptr9684, i64 7                    ; &eptr9692[7]
  store i64 %LUE$_37drop, i64* %eptr9686                                             ; *eptr9686 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9687                                                  ; *eptr9687 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9688                                                  ; *eptr9688 = %wzc$lx
  store i64 %cont7138, i64* %eptr9689                                                ; *eptr9689 = %cont7138
  store i64 %PJA$y, i64* %eptr9690                                                   ; *eptr9690 = %PJA$y
  store i64 %a7041, i64* %eptr9691                                                   ; *eptr9691 = %a7041
  store i64 %uQz$_37_62, i64* %eptr9692                                              ; *eptr9692 = %uQz$_37_62
  %eptr9685 = getelementptr inbounds i64, i64* %cloptr9684, i64 0                    ; &cloptr9684[0]
  %f9693 = ptrtoint void(i64,i64,i64)* @lam8374 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9693, i64* %eptr9685                                                   ; store fptr
  %arg7732 = ptrtoint i64* %cloptr9684 to i64                                        ; closure cast; i64* -> i64
  %arg7731 = add i64 0, 0                                                            ; quoted ()
  %cloptr9694 = inttoptr i64 %arg7732 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9694)                                         ; assert function application
  %i0ptr9695 = getelementptr inbounds i64, i64* %cloptr9694, i64 0                   ; &cloptr9694[0]
  %f9697 = load i64, i64* %i0ptr9695, align 8                                        ; load; *i0ptr9695
  %fptr9696 = inttoptr i64 %f9697 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9696(i64 %arg7732, i64 %arg7731, i64 %aq3$x)        ; tail call
  ret void
}


define void @lam8374(i64 %env8375, i64 %_957144, i64 %a7044) {
  %envptr9698 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9699 = getelementptr inbounds i64, i64* %envptr9698, i64 7                  ; &envptr9698[7]
  %uQz$_37_62 = load i64, i64* %envptr9699, align 8                                  ; load; *envptr9699
  %envptr9700 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9701 = getelementptr inbounds i64, i64* %envptr9700, i64 6                  ; &envptr9700[6]
  %a7041 = load i64, i64* %envptr9701, align 8                                       ; load; *envptr9701
  %envptr9702 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 5                  ; &envptr9702[5]
  %PJA$y = load i64, i64* %envptr9703, align 8                                       ; load; *envptr9703
  %envptr9704 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9705 = getelementptr inbounds i64, i64* %envptr9704, i64 4                  ; &envptr9704[4]
  %cont7138 = load i64, i64* %envptr9705, align 8                                    ; load; *envptr9705
  %envptr9706 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9707 = getelementptr inbounds i64, i64* %envptr9706, i64 3                  ; &envptr9706[3]
  %wzc$lx = load i64, i64* %envptr9707, align 8                                      ; load; *envptr9707
  %envptr9708 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9709 = getelementptr inbounds i64, i64* %envptr9708, i64 2                  ; &envptr9708[2]
  %HAX$ly = load i64, i64* %envptr9709, align 8                                      ; load; *envptr9709
  %envptr9710 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9711 = getelementptr inbounds i64, i64* %envptr9710, i64 1                  ; &envptr9710[1]
  %LUE$_37drop = load i64, i64* %envptr9711, align 8                                 ; load; *envptr9711
  %cloptr9712 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9714 = getelementptr inbounds i64, i64* %cloptr9712, i64 1                    ; &eptr9714[1]
  %eptr9715 = getelementptr inbounds i64, i64* %cloptr9712, i64 2                    ; &eptr9715[2]
  %eptr9716 = getelementptr inbounds i64, i64* %cloptr9712, i64 3                    ; &eptr9716[3]
  %eptr9717 = getelementptr inbounds i64, i64* %cloptr9712, i64 4                    ; &eptr9717[4]
  %eptr9718 = getelementptr inbounds i64, i64* %cloptr9712, i64 5                    ; &eptr9718[5]
  %eptr9719 = getelementptr inbounds i64, i64* %cloptr9712, i64 6                    ; &eptr9719[6]
  %eptr9720 = getelementptr inbounds i64, i64* %cloptr9712, i64 7                    ; &eptr9720[7]
  store i64 %LUE$_37drop, i64* %eptr9714                                             ; *eptr9714 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9715                                                  ; *eptr9715 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9716                                                  ; *eptr9716 = %wzc$lx
  store i64 %cont7138, i64* %eptr9717                                                ; *eptr9717 = %cont7138
  store i64 %PJA$y, i64* %eptr9718                                                   ; *eptr9718 = %PJA$y
  store i64 %a7044, i64* %eptr9719                                                   ; *eptr9719 = %a7044
  store i64 %a7041, i64* %eptr9720                                                   ; *eptr9720 = %a7041
  %eptr9713 = getelementptr inbounds i64, i64* %cloptr9712, i64 0                    ; &cloptr9712[0]
  %f9721 = ptrtoint void(i64,i64,i64)* @lam8372 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9721, i64* %eptr9713                                                   ; store fptr
  %arg7735 = ptrtoint i64* %cloptr9712 to i64                                        ; closure cast; i64* -> i64
  %cloptr9722 = inttoptr i64 %uQz$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9722)                                         ; assert function application
  %i0ptr9723 = getelementptr inbounds i64, i64* %cloptr9722, i64 0                   ; &cloptr9722[0]
  %f9725 = load i64, i64* %i0ptr9723, align 8                                        ; load; *i0ptr9723
  %fptr9724 = inttoptr i64 %f9725 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9724(i64 %uQz$_37_62, i64 %arg7735, i64 %HAX$ly, i64 %wzc$lx); tail call
  ret void
}


define void @lam8372(i64 %env8373, i64 %_957145, i64 %a7045) {
  %envptr9726 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9727 = getelementptr inbounds i64, i64* %envptr9726, i64 7                  ; &envptr9726[7]
  %a7041 = load i64, i64* %envptr9727, align 8                                       ; load; *envptr9727
  %envptr9728 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9729 = getelementptr inbounds i64, i64* %envptr9728, i64 6                  ; &envptr9728[6]
  %a7044 = load i64, i64* %envptr9729, align 8                                       ; load; *envptr9729
  %envptr9730 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9731 = getelementptr inbounds i64, i64* %envptr9730, i64 5                  ; &envptr9730[5]
  %PJA$y = load i64, i64* %envptr9731, align 8                                       ; load; *envptr9731
  %envptr9732 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9733 = getelementptr inbounds i64, i64* %envptr9732, i64 4                  ; &envptr9732[4]
  %cont7138 = load i64, i64* %envptr9733, align 8                                    ; load; *envptr9733
  %envptr9734 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9735 = getelementptr inbounds i64, i64* %envptr9734, i64 3                  ; &envptr9734[3]
  %wzc$lx = load i64, i64* %envptr9735, align 8                                      ; load; *envptr9735
  %envptr9736 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9737 = getelementptr inbounds i64, i64* %envptr9736, i64 2                  ; &envptr9736[2]
  %HAX$ly = load i64, i64* %envptr9737, align 8                                      ; load; *envptr9737
  %envptr9738 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9739 = getelementptr inbounds i64, i64* %envptr9738, i64 1                  ; &envptr9738[1]
  %LUE$_37drop = load i64, i64* %envptr9739, align 8                                 ; load; *envptr9739
  %cmp9740 = icmp eq i64 %a7045, 15                                                  ; false?
  br i1 %cmp9740, label %else9742, label %then9741                                   ; if

then9741:
  %a7046 = call i64 @prim__45(i64 %HAX$ly, i64 %wzc$lx)                              ; call prim__45
  %cloptr9743 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9745 = getelementptr inbounds i64, i64* %cloptr9743, i64 1                    ; &eptr9745[1]
  %eptr9746 = getelementptr inbounds i64, i64* %cloptr9743, i64 2                    ; &eptr9746[2]
  %eptr9747 = getelementptr inbounds i64, i64* %cloptr9743, i64 3                    ; &eptr9747[3]
  store i64 %cont7138, i64* %eptr9745                                                ; *eptr9745 = %cont7138
  store i64 %a7044, i64* %eptr9746                                                   ; *eptr9746 = %a7044
  store i64 %a7041, i64* %eptr9747                                                   ; *eptr9747 = %a7041
  %eptr9744 = getelementptr inbounds i64, i64* %cloptr9743, i64 0                    ; &cloptr9743[0]
  %f9748 = ptrtoint void(i64,i64,i64)* @lam8367 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9748, i64* %eptr9744                                                   ; store fptr
  %arg7741 = ptrtoint i64* %cloptr9743 to i64                                        ; closure cast; i64* -> i64
  %cloptr9749 = inttoptr i64 %LUE$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9749)                                         ; assert function application
  %i0ptr9750 = getelementptr inbounds i64, i64* %cloptr9749, i64 0                   ; &cloptr9749[0]
  %f9752 = load i64, i64* %i0ptr9750, align 8                                        ; load; *i0ptr9750
  %fptr9751 = inttoptr i64 %f9752 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9751(i64 %LUE$_37drop, i64 %arg7741, i64 %PJA$y, i64 %a7046); tail call
  ret void

else9742:
  %cloptr9753 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9755 = getelementptr inbounds i64, i64* %cloptr9753, i64 1                    ; &eptr9755[1]
  %eptr9756 = getelementptr inbounds i64, i64* %cloptr9753, i64 2                    ; &eptr9756[2]
  %eptr9757 = getelementptr inbounds i64, i64* %cloptr9753, i64 3                    ; &eptr9757[3]
  store i64 %cont7138, i64* %eptr9755                                                ; *eptr9755 = %cont7138
  store i64 %a7044, i64* %eptr9756                                                   ; *eptr9756 = %a7044
  store i64 %a7041, i64* %eptr9757                                                   ; *eptr9757 = %a7041
  %eptr9754 = getelementptr inbounds i64, i64* %cloptr9753, i64 0                    ; &cloptr9753[0]
  %f9758 = ptrtoint void(i64,i64,i64)* @lam8370 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9758, i64* %eptr9754                                                   ; store fptr
  %arg7749 = ptrtoint i64* %cloptr9753 to i64                                        ; closure cast; i64* -> i64
  %arg7748 = add i64 0, 0                                                            ; quoted ()
  %cloptr9759 = inttoptr i64 %arg7749 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9759)                                         ; assert function application
  %i0ptr9760 = getelementptr inbounds i64, i64* %cloptr9759, i64 0                   ; &cloptr9759[0]
  %f9762 = load i64, i64* %i0ptr9760, align 8                                        ; load; *i0ptr9760
  %fptr9761 = inttoptr i64 %f9762 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9761(i64 %arg7749, i64 %arg7748, i64 %PJA$y)        ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %_957146, i64 %a7047) {
  %envptr9763 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9764 = getelementptr inbounds i64, i64* %envptr9763, i64 3                  ; &envptr9763[3]
  %a7041 = load i64, i64* %envptr9764, align 8                                       ; load; *envptr9764
  %envptr9765 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9766 = getelementptr inbounds i64, i64* %envptr9765, i64 2                  ; &envptr9765[2]
  %a7044 = load i64, i64* %envptr9766, align 8                                       ; load; *envptr9766
  %envptr9767 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9768 = getelementptr inbounds i64, i64* %envptr9767, i64 1                  ; &envptr9767[1]
  %cont7138 = load i64, i64* %envptr9768, align 8                                    ; load; *envptr9768
  %cloptr9769 = inttoptr i64 %a7041 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9769)                                         ; assert function application
  %i0ptr9770 = getelementptr inbounds i64, i64* %cloptr9769, i64 0                   ; &cloptr9769[0]
  %f9772 = load i64, i64* %i0ptr9770, align 8                                        ; load; *i0ptr9770
  %fptr9771 = inttoptr i64 %f9772 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9771(i64 %a7041, i64 %cont7138, i64 %a7044, i64 %a7047); tail call
  ret void
}


define void @lam8367(i64 %env8368, i64 %_957146, i64 %a7047) {
  %envptr9773 = inttoptr i64 %env8368 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9774 = getelementptr inbounds i64, i64* %envptr9773, i64 3                  ; &envptr9773[3]
  %a7041 = load i64, i64* %envptr9774, align 8                                       ; load; *envptr9774
  %envptr9775 = inttoptr i64 %env8368 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9776 = getelementptr inbounds i64, i64* %envptr9775, i64 2                  ; &envptr9775[2]
  %a7044 = load i64, i64* %envptr9776, align 8                                       ; load; *envptr9776
  %envptr9777 = inttoptr i64 %env8368 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9778 = getelementptr inbounds i64, i64* %envptr9777, i64 1                  ; &envptr9777[1]
  %cont7138 = load i64, i64* %envptr9778, align 8                                    ; load; *envptr9778
  %cloptr9779 = inttoptr i64 %a7041 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9779)                                         ; assert function application
  %i0ptr9780 = getelementptr inbounds i64, i64* %cloptr9779, i64 0                   ; &cloptr9779[0]
  %f9782 = load i64, i64* %i0ptr9780, align 8                                        ; load; *i0ptr9780
  %fptr9781 = inttoptr i64 %f9782 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9781(i64 %a7041, i64 %cont7138, i64 %a7044, i64 %a7047); tail call
  ret void
}


define void @lam8364(i64 %env8365, i64 %_957144, i64 %a7044) {
  %envptr9783 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9784 = getelementptr inbounds i64, i64* %envptr9783, i64 7                  ; &envptr9783[7]
  %uQz$_37_62 = load i64, i64* %envptr9784, align 8                                  ; load; *envptr9784
  %envptr9785 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9786 = getelementptr inbounds i64, i64* %envptr9785, i64 6                  ; &envptr9785[6]
  %a7041 = load i64, i64* %envptr9786, align 8                                       ; load; *envptr9786
  %envptr9787 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9788 = getelementptr inbounds i64, i64* %envptr9787, i64 5                  ; &envptr9787[5]
  %PJA$y = load i64, i64* %envptr9788, align 8                                       ; load; *envptr9788
  %envptr9789 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9790 = getelementptr inbounds i64, i64* %envptr9789, i64 4                  ; &envptr9789[4]
  %cont7138 = load i64, i64* %envptr9790, align 8                                    ; load; *envptr9790
  %envptr9791 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9792 = getelementptr inbounds i64, i64* %envptr9791, i64 3                  ; &envptr9791[3]
  %wzc$lx = load i64, i64* %envptr9792, align 8                                      ; load; *envptr9792
  %envptr9793 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9794 = getelementptr inbounds i64, i64* %envptr9793, i64 2                  ; &envptr9793[2]
  %HAX$ly = load i64, i64* %envptr9794, align 8                                      ; load; *envptr9794
  %envptr9795 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9796 = getelementptr inbounds i64, i64* %envptr9795, i64 1                  ; &envptr9795[1]
  %LUE$_37drop = load i64, i64* %envptr9796, align 8                                 ; load; *envptr9796
  %cloptr9797 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9799 = getelementptr inbounds i64, i64* %cloptr9797, i64 1                    ; &eptr9799[1]
  %eptr9800 = getelementptr inbounds i64, i64* %cloptr9797, i64 2                    ; &eptr9800[2]
  %eptr9801 = getelementptr inbounds i64, i64* %cloptr9797, i64 3                    ; &eptr9801[3]
  %eptr9802 = getelementptr inbounds i64, i64* %cloptr9797, i64 4                    ; &eptr9802[4]
  %eptr9803 = getelementptr inbounds i64, i64* %cloptr9797, i64 5                    ; &eptr9803[5]
  %eptr9804 = getelementptr inbounds i64, i64* %cloptr9797, i64 6                    ; &eptr9804[6]
  %eptr9805 = getelementptr inbounds i64, i64* %cloptr9797, i64 7                    ; &eptr9805[7]
  store i64 %LUE$_37drop, i64* %eptr9799                                             ; *eptr9799 = %LUE$_37drop
  store i64 %HAX$ly, i64* %eptr9800                                                  ; *eptr9800 = %HAX$ly
  store i64 %wzc$lx, i64* %eptr9801                                                  ; *eptr9801 = %wzc$lx
  store i64 %cont7138, i64* %eptr9802                                                ; *eptr9802 = %cont7138
  store i64 %PJA$y, i64* %eptr9803                                                   ; *eptr9803 = %PJA$y
  store i64 %a7044, i64* %eptr9804                                                   ; *eptr9804 = %a7044
  store i64 %a7041, i64* %eptr9805                                                   ; *eptr9805 = %a7041
  %eptr9798 = getelementptr inbounds i64, i64* %cloptr9797, i64 0                    ; &cloptr9797[0]
  %f9806 = ptrtoint void(i64,i64,i64)* @lam8362 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9806, i64* %eptr9798                                                   ; store fptr
  %arg7711 = ptrtoint i64* %cloptr9797 to i64                                        ; closure cast; i64* -> i64
  %cloptr9807 = inttoptr i64 %uQz$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9807)                                         ; assert function application
  %i0ptr9808 = getelementptr inbounds i64, i64* %cloptr9807, i64 0                   ; &cloptr9807[0]
  %f9810 = load i64, i64* %i0ptr9808, align 8                                        ; load; *i0ptr9808
  %fptr9809 = inttoptr i64 %f9810 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9809(i64 %uQz$_37_62, i64 %arg7711, i64 %HAX$ly, i64 %wzc$lx); tail call
  ret void
}


define void @lam8362(i64 %env8363, i64 %_957145, i64 %a7045) {
  %envptr9811 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9812 = getelementptr inbounds i64, i64* %envptr9811, i64 7                  ; &envptr9811[7]
  %a7041 = load i64, i64* %envptr9812, align 8                                       ; load; *envptr9812
  %envptr9813 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9814 = getelementptr inbounds i64, i64* %envptr9813, i64 6                  ; &envptr9813[6]
  %a7044 = load i64, i64* %envptr9814, align 8                                       ; load; *envptr9814
  %envptr9815 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9816 = getelementptr inbounds i64, i64* %envptr9815, i64 5                  ; &envptr9815[5]
  %PJA$y = load i64, i64* %envptr9816, align 8                                       ; load; *envptr9816
  %envptr9817 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9818 = getelementptr inbounds i64, i64* %envptr9817, i64 4                  ; &envptr9817[4]
  %cont7138 = load i64, i64* %envptr9818, align 8                                    ; load; *envptr9818
  %envptr9819 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9820 = getelementptr inbounds i64, i64* %envptr9819, i64 3                  ; &envptr9819[3]
  %wzc$lx = load i64, i64* %envptr9820, align 8                                      ; load; *envptr9820
  %envptr9821 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9822 = getelementptr inbounds i64, i64* %envptr9821, i64 2                  ; &envptr9821[2]
  %HAX$ly = load i64, i64* %envptr9822, align 8                                      ; load; *envptr9822
  %envptr9823 = inttoptr i64 %env8363 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9824 = getelementptr inbounds i64, i64* %envptr9823, i64 1                  ; &envptr9823[1]
  %LUE$_37drop = load i64, i64* %envptr9824, align 8                                 ; load; *envptr9824
  %cmp9825 = icmp eq i64 %a7045, 15                                                  ; false?
  br i1 %cmp9825, label %else9827, label %then9826                                   ; if

then9826:
  %a7046 = call i64 @prim__45(i64 %HAX$ly, i64 %wzc$lx)                              ; call prim__45
  %cloptr9828 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9830 = getelementptr inbounds i64, i64* %cloptr9828, i64 1                    ; &eptr9830[1]
  %eptr9831 = getelementptr inbounds i64, i64* %cloptr9828, i64 2                    ; &eptr9831[2]
  %eptr9832 = getelementptr inbounds i64, i64* %cloptr9828, i64 3                    ; &eptr9832[3]
  store i64 %cont7138, i64* %eptr9830                                                ; *eptr9830 = %cont7138
  store i64 %a7044, i64* %eptr9831                                                   ; *eptr9831 = %a7044
  store i64 %a7041, i64* %eptr9832                                                   ; *eptr9832 = %a7041
  %eptr9829 = getelementptr inbounds i64, i64* %cloptr9828, i64 0                    ; &cloptr9828[0]
  %f9833 = ptrtoint void(i64,i64,i64)* @lam8357 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9833, i64* %eptr9829                                                   ; store fptr
  %arg7717 = ptrtoint i64* %cloptr9828 to i64                                        ; closure cast; i64* -> i64
  %cloptr9834 = inttoptr i64 %LUE$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9834)                                         ; assert function application
  %i0ptr9835 = getelementptr inbounds i64, i64* %cloptr9834, i64 0                   ; &cloptr9834[0]
  %f9837 = load i64, i64* %i0ptr9835, align 8                                        ; load; *i0ptr9835
  %fptr9836 = inttoptr i64 %f9837 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9836(i64 %LUE$_37drop, i64 %arg7717, i64 %PJA$y, i64 %a7046); tail call
  ret void

else9827:
  %cloptr9838 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9840 = getelementptr inbounds i64, i64* %cloptr9838, i64 1                    ; &eptr9840[1]
  %eptr9841 = getelementptr inbounds i64, i64* %cloptr9838, i64 2                    ; &eptr9841[2]
  %eptr9842 = getelementptr inbounds i64, i64* %cloptr9838, i64 3                    ; &eptr9842[3]
  store i64 %cont7138, i64* %eptr9840                                                ; *eptr9840 = %cont7138
  store i64 %a7044, i64* %eptr9841                                                   ; *eptr9841 = %a7044
  store i64 %a7041, i64* %eptr9842                                                   ; *eptr9842 = %a7041
  %eptr9839 = getelementptr inbounds i64, i64* %cloptr9838, i64 0                    ; &cloptr9838[0]
  %f9843 = ptrtoint void(i64,i64,i64)* @lam8360 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9843, i64* %eptr9839                                                   ; store fptr
  %arg7725 = ptrtoint i64* %cloptr9838 to i64                                        ; closure cast; i64* -> i64
  %arg7724 = add i64 0, 0                                                            ; quoted ()
  %cloptr9844 = inttoptr i64 %arg7725 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9844)                                         ; assert function application
  %i0ptr9845 = getelementptr inbounds i64, i64* %cloptr9844, i64 0                   ; &cloptr9844[0]
  %f9847 = load i64, i64* %i0ptr9845, align 8                                        ; load; *i0ptr9845
  %fptr9846 = inttoptr i64 %f9847 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9846(i64 %arg7725, i64 %arg7724, i64 %PJA$y)        ; tail call
  ret void
}


define void @lam8360(i64 %env8361, i64 %_957146, i64 %a7047) {
  %envptr9848 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9849 = getelementptr inbounds i64, i64* %envptr9848, i64 3                  ; &envptr9848[3]
  %a7041 = load i64, i64* %envptr9849, align 8                                       ; load; *envptr9849
  %envptr9850 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9851 = getelementptr inbounds i64, i64* %envptr9850, i64 2                  ; &envptr9850[2]
  %a7044 = load i64, i64* %envptr9851, align 8                                       ; load; *envptr9851
  %envptr9852 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9853 = getelementptr inbounds i64, i64* %envptr9852, i64 1                  ; &envptr9852[1]
  %cont7138 = load i64, i64* %envptr9853, align 8                                    ; load; *envptr9853
  %cloptr9854 = inttoptr i64 %a7041 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9854)                                         ; assert function application
  %i0ptr9855 = getelementptr inbounds i64, i64* %cloptr9854, i64 0                   ; &cloptr9854[0]
  %f9857 = load i64, i64* %i0ptr9855, align 8                                        ; load; *i0ptr9855
  %fptr9856 = inttoptr i64 %f9857 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9856(i64 %a7041, i64 %cont7138, i64 %a7044, i64 %a7047); tail call
  ret void
}


define void @lam8357(i64 %env8358, i64 %_957146, i64 %a7047) {
  %envptr9858 = inttoptr i64 %env8358 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9859 = getelementptr inbounds i64, i64* %envptr9858, i64 3                  ; &envptr9858[3]
  %a7041 = load i64, i64* %envptr9859, align 8                                       ; load; *envptr9859
  %envptr9860 = inttoptr i64 %env8358 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9861 = getelementptr inbounds i64, i64* %envptr9860, i64 2                  ; &envptr9860[2]
  %a7044 = load i64, i64* %envptr9861, align 8                                       ; load; *envptr9861
  %envptr9862 = inttoptr i64 %env8358 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9863 = getelementptr inbounds i64, i64* %envptr9862, i64 1                  ; &envptr9862[1]
  %cont7138 = load i64, i64* %envptr9863, align 8                                    ; load; *envptr9863
  %cloptr9864 = inttoptr i64 %a7041 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9864)                                         ; assert function application
  %i0ptr9865 = getelementptr inbounds i64, i64* %cloptr9864, i64 0                   ; &cloptr9864[0]
  %f9867 = load i64, i64* %i0ptr9865, align 8                                        ; load; *i0ptr9865
  %fptr9866 = inttoptr i64 %f9867 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9866(i64 %a7041, i64 %cont7138, i64 %a7044, i64 %a7047); tail call
  ret void
}


define void @lam8354(i64 %env8355, i64 %cont7151, i64 %YFq$new) {
  %envptr9868 = inttoptr i64 %env8355 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9869 = getelementptr inbounds i64, i64* %envptr9868, i64 2                  ; &envptr9868[2]
  %k8P$_37wind_45stack = load i64, i64* %envptr9869, align 8                         ; load; *envptr9869
  %envptr9870 = inttoptr i64 %env8355 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9871 = getelementptr inbounds i64, i64* %envptr9870, i64 1                  ; &envptr9870[1]
  %SU2$_37common_45tail = load i64, i64* %envptr9871, align 8                        ; load; *envptr9871
  %arg7754 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7048 = call i64 @prim_vector_45ref(i64 %k8P$_37wind_45stack, i64 %arg7754)       ; call prim_vector_45ref
  %cloptr9872 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9874 = getelementptr inbounds i64, i64* %cloptr9872, i64 1                    ; &eptr9874[1]
  %eptr9875 = getelementptr inbounds i64, i64* %cloptr9872, i64 2                    ; &eptr9875[2]
  %eptr9876 = getelementptr inbounds i64, i64* %cloptr9872, i64 3                    ; &eptr9876[3]
  store i64 %YFq$new, i64* %eptr9874                                                 ; *eptr9874 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr9875                                     ; *eptr9875 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr9876                                                ; *eptr9876 = %cont7151
  %eptr9873 = getelementptr inbounds i64, i64* %cloptr9872, i64 0                    ; &cloptr9872[0]
  %f9877 = ptrtoint void(i64,i64,i64)* @lam8351 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9877, i64* %eptr9873                                                   ; store fptr
  %arg7758 = ptrtoint i64* %cloptr9872 to i64                                        ; closure cast; i64* -> i64
  %cloptr9878 = inttoptr i64 %SU2$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9878)                                         ; assert function application
  %i0ptr9879 = getelementptr inbounds i64, i64* %cloptr9878, i64 0                   ; &cloptr9878[0]
  %f9881 = load i64, i64* %i0ptr9879, align 8                                        ; load; *i0ptr9879
  %fptr9880 = inttoptr i64 %f9881 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9880(i64 %SU2$_37common_45tail, i64 %arg7758, i64 %YFq$new, i64 %a7048); tail call
  ret void
}


define void @lam8351(i64 %env8352, i64 %_957152, i64 %v1L$tail) {
  %envptr9882 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9883 = getelementptr inbounds i64, i64* %envptr9882, i64 3                  ; &envptr9882[3]
  %cont7151 = load i64, i64* %envptr9883, align 8                                    ; load; *envptr9883
  %envptr9884 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9885 = getelementptr inbounds i64, i64* %envptr9884, i64 2                  ; &envptr9884[2]
  %k8P$_37wind_45stack = load i64, i64* %envptr9885, align 8                         ; load; *envptr9885
  %envptr9886 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9887 = getelementptr inbounds i64, i64* %envptr9886, i64 1                  ; &envptr9886[1]
  %YFq$new = load i64, i64* %envptr9887, align 8                                     ; load; *envptr9887
  %cloptr9888 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9889 = getelementptr inbounds i64, i64* %cloptr9888, i64 0                    ; &cloptr9888[0]
  %f9890 = ptrtoint void(i64,i64)* @lam8349 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9890, i64* %eptr9889                                                   ; store fptr
  %arg7761 = ptrtoint i64* %cloptr9888 to i64                                        ; closure cast; i64* -> i64
  %cloptr9891 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9893 = getelementptr inbounds i64, i64* %cloptr9891, i64 1                    ; &eptr9893[1]
  %eptr9894 = getelementptr inbounds i64, i64* %cloptr9891, i64 2                    ; &eptr9894[2]
  %eptr9895 = getelementptr inbounds i64, i64* %cloptr9891, i64 3                    ; &eptr9895[3]
  %eptr9896 = getelementptr inbounds i64, i64* %cloptr9891, i64 4                    ; &eptr9896[4]
  store i64 %v1L$tail, i64* %eptr9893                                                ; *eptr9893 = %v1L$tail
  store i64 %YFq$new, i64* %eptr9894                                                 ; *eptr9894 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr9895                                     ; *eptr9895 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr9896                                                ; *eptr9896 = %cont7151
  %eptr9892 = getelementptr inbounds i64, i64* %cloptr9891, i64 0                    ; &cloptr9891[0]
  %f9897 = ptrtoint void(i64,i64,i64)* @lam8346 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9897, i64* %eptr9892                                                   ; store fptr
  %arg7760 = ptrtoint i64* %cloptr9891 to i64                                        ; closure cast; i64* -> i64
  %cloptr9898 = inttoptr i64 %arg7761 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9898)                                         ; assert function application
  %i0ptr9899 = getelementptr inbounds i64, i64* %cloptr9898, i64 0                   ; &cloptr9898[0]
  %f9901 = load i64, i64* %i0ptr9899, align 8                                        ; load; *i0ptr9899
  %fptr9900 = inttoptr i64 %f9901 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9900(i64 %arg7761, i64 %arg7760)                    ; tail call
  ret void
}


define void @lam8349(i64 %env8350, i64 %yo5$lst7173) {
  %cont7172 = call i64 @prim_car(i64 %yo5$lst7173)                                   ; call prim_car
  %yo5$lst = call i64 @prim_cdr(i64 %yo5$lst7173)                                    ; call prim_cdr
  %arg7765 = add i64 0, 0                                                            ; quoted ()
  %cloptr9902 = inttoptr i64 %cont7172 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9902)                                         ; assert function application
  %i0ptr9903 = getelementptr inbounds i64, i64* %cloptr9902, i64 0                   ; &cloptr9902[0]
  %f9905 = load i64, i64* %i0ptr9903, align 8                                        ; load; *i0ptr9903
  %fptr9904 = inttoptr i64 %f9905 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9904(i64 %cont7172, i64 %arg7765, i64 %yo5$lst)     ; tail call
  ret void
}


define void @lam8346(i64 %env8347, i64 %_957170, i64 %a7049) {
  %envptr9906 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9907 = getelementptr inbounds i64, i64* %envptr9906, i64 4                  ; &envptr9906[4]
  %cont7151 = load i64, i64* %envptr9907, align 8                                    ; load; *envptr9907
  %envptr9908 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9909 = getelementptr inbounds i64, i64* %envptr9908, i64 3                  ; &envptr9908[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr9909, align 8                         ; load; *envptr9909
  %envptr9910 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9911 = getelementptr inbounds i64, i64* %envptr9910, i64 2                  ; &envptr9910[2]
  %YFq$new = load i64, i64* %envptr9911, align 8                                     ; load; *envptr9911
  %envptr9912 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9913 = getelementptr inbounds i64, i64* %envptr9912, i64 1                  ; &envptr9912[1]
  %v1L$tail = load i64, i64* %envptr9913, align 8                                    ; load; *envptr9913
  %arg7768 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7171 = call i64 @prim_make_45vector(i64 %arg7768, i64 %a7049)              ; call prim_make_45vector
  %cloptr9914 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9916 = getelementptr inbounds i64, i64* %cloptr9914, i64 1                    ; &eptr9916[1]
  %eptr9917 = getelementptr inbounds i64, i64* %cloptr9914, i64 2                    ; &eptr9917[2]
  %eptr9918 = getelementptr inbounds i64, i64* %cloptr9914, i64 3                    ; &eptr9918[3]
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9914, i64 4                    ; &eptr9919[4]
  store i64 %v1L$tail, i64* %eptr9916                                                ; *eptr9916 = %v1L$tail
  store i64 %YFq$new, i64* %eptr9917                                                 ; *eptr9917 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr9918                                     ; *eptr9918 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr9919                                                ; *eptr9919 = %cont7151
  %eptr9915 = getelementptr inbounds i64, i64* %cloptr9914, i64 0                    ; &cloptr9914[0]
  %f9920 = ptrtoint void(i64,i64,i64)* @lam8343 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9920, i64* %eptr9915                                                   ; store fptr
  %arg7771 = ptrtoint i64* %cloptr9914 to i64                                        ; closure cast; i64* -> i64
  %arg7770 = add i64 0, 0                                                            ; quoted ()
  %cloptr9921 = inttoptr i64 %arg7771 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9921)                                         ; assert function application
  %i0ptr9922 = getelementptr inbounds i64, i64* %cloptr9921, i64 0                   ; &cloptr9921[0]
  %f9924 = load i64, i64* %i0ptr9922, align 8                                        ; load; *i0ptr9922
  %fptr9923 = inttoptr i64 %f9924 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9923(i64 %arg7771, i64 %arg7770, i64 %retprim7171)  ; tail call
  ret void
}


define void @lam8343(i64 %env8344, i64 %_957164, i64 %QZ2$f) {
  %envptr9925 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9926 = getelementptr inbounds i64, i64* %envptr9925, i64 4                  ; &envptr9925[4]
  %cont7151 = load i64, i64* %envptr9926, align 8                                    ; load; *envptr9926
  %envptr9927 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9928 = getelementptr inbounds i64, i64* %envptr9927, i64 3                  ; &envptr9927[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr9928, align 8                         ; load; *envptr9928
  %envptr9929 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9930 = getelementptr inbounds i64, i64* %envptr9929, i64 2                  ; &envptr9929[2]
  %YFq$new = load i64, i64* %envptr9930, align 8                                     ; load; *envptr9930
  %envptr9931 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9932 = getelementptr inbounds i64, i64* %envptr9931, i64 1                  ; &envptr9931[1]
  %v1L$tail = load i64, i64* %envptr9932, align 8                                    ; load; *envptr9932
  %arg7773 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9933 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9935 = getelementptr inbounds i64, i64* %cloptr9933, i64 1                    ; &eptr9935[1]
  %eptr9936 = getelementptr inbounds i64, i64* %cloptr9933, i64 2                    ; &eptr9936[2]
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9933, i64 3                    ; &eptr9937[3]
  store i64 %v1L$tail, i64* %eptr9935                                                ; *eptr9935 = %v1L$tail
  store i64 %QZ2$f, i64* %eptr9936                                                   ; *eptr9936 = %QZ2$f
  store i64 %k8P$_37wind_45stack, i64* %eptr9937                                     ; *eptr9937 = %k8P$_37wind_45stack
  %eptr9934 = getelementptr inbounds i64, i64* %cloptr9933, i64 0                    ; &cloptr9933[0]
  %f9938 = ptrtoint void(i64,i64,i64)* @lam8340 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9938, i64* %eptr9934                                                   ; store fptr
  %arg7772 = ptrtoint i64* %cloptr9933 to i64                                        ; closure cast; i64* -> i64
  %i8y$_956941 = call i64 @prim_vector_45set_33(i64 %QZ2$f, i64 %arg7773, i64 %arg7772); call prim_vector_45set_33
  %arg7798 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7057 = call i64 @prim_vector_45ref(i64 %QZ2$f, i64 %arg7798)                     ; call prim_vector_45ref
  %arg7800 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7058 = call i64 @prim_vector_45ref(i64 %k8P$_37wind_45stack, i64 %arg7800)       ; call prim_vector_45ref
  %cloptr9939 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9941 = getelementptr inbounds i64, i64* %cloptr9939, i64 1                    ; &eptr9941[1]
  %eptr9942 = getelementptr inbounds i64, i64* %cloptr9939, i64 2                    ; &eptr9942[2]
  %eptr9943 = getelementptr inbounds i64, i64* %cloptr9939, i64 3                    ; &eptr9943[3]
  %eptr9944 = getelementptr inbounds i64, i64* %cloptr9939, i64 4                    ; &eptr9944[4]
  store i64 %v1L$tail, i64* %eptr9941                                                ; *eptr9941 = %v1L$tail
  store i64 %YFq$new, i64* %eptr9942                                                 ; *eptr9942 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr9943                                     ; *eptr9943 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr9944                                                ; *eptr9944 = %cont7151
  %eptr9940 = getelementptr inbounds i64, i64* %cloptr9939, i64 0                    ; &cloptr9939[0]
  %f9945 = ptrtoint void(i64,i64,i64)* @lam8328 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9945, i64* %eptr9940                                                   ; store fptr
  %arg7803 = ptrtoint i64* %cloptr9939 to i64                                        ; closure cast; i64* -> i64
  %cloptr9946 = inttoptr i64 %a7057 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9946)                                         ; assert function application
  %i0ptr9947 = getelementptr inbounds i64, i64* %cloptr9946, i64 0                   ; &cloptr9946[0]
  %f9949 = load i64, i64* %i0ptr9947, align 8                                        ; load; *i0ptr9947
  %fptr9948 = inttoptr i64 %f9949 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9948(i64 %a7057, i64 %arg7803, i64 %a7058)          ; tail call
  ret void
}


define void @lam8340(i64 %env8341, i64 %cont7165, i64 %gP4$l) {
  %envptr9950 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9951 = getelementptr inbounds i64, i64* %envptr9950, i64 3                  ; &envptr9950[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr9951, align 8                         ; load; *envptr9951
  %envptr9952 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9953 = getelementptr inbounds i64, i64* %envptr9952, i64 2                  ; &envptr9952[2]
  %QZ2$f = load i64, i64* %envptr9953, align 8                                       ; load; *envptr9953
  %envptr9954 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9955 = getelementptr inbounds i64, i64* %envptr9954, i64 1                  ; &envptr9954[1]
  %v1L$tail = load i64, i64* %envptr9955, align 8                                    ; load; *envptr9955
  %a7050 = call i64 @prim_eq_63(i64 %gP4$l, i64 %v1L$tail)                           ; call prim_eq_63
  %a7051 = call i64 @prim_not(i64 %a7050)                                            ; call prim_not
  %cmp9956 = icmp eq i64 %a7051, 15                                                  ; false?
  br i1 %cmp9956, label %else9958, label %then9957                                   ; if

then9957:
  %a7052 = call i64 @prim_cdr(i64 %gP4$l)                                            ; call prim_cdr
  %arg7780 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7168 = call i64 @prim_vector_45set_33(i64 %k8P$_37wind_45stack, i64 %arg7780, i64 %a7052); call prim_vector_45set_33
  %cloptr9959 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9961 = getelementptr inbounds i64, i64* %cloptr9959, i64 1                    ; &eptr9961[1]
  %eptr9962 = getelementptr inbounds i64, i64* %cloptr9959, i64 2                    ; &eptr9962[2]
  %eptr9963 = getelementptr inbounds i64, i64* %cloptr9959, i64 3                    ; &eptr9963[3]
  store i64 %cont7165, i64* %eptr9961                                                ; *eptr9961 = %cont7165
  store i64 %QZ2$f, i64* %eptr9962                                                   ; *eptr9962 = %QZ2$f
  store i64 %gP4$l, i64* %eptr9963                                                   ; *eptr9963 = %gP4$l
  %eptr9960 = getelementptr inbounds i64, i64* %cloptr9959, i64 0                    ; &cloptr9959[0]
  %f9964 = ptrtoint void(i64,i64,i64)* @lam8336 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9964, i64* %eptr9960                                                   ; store fptr
  %arg7784 = ptrtoint i64* %cloptr9959 to i64                                        ; closure cast; i64* -> i64
  %arg7783 = add i64 0, 0                                                            ; quoted ()
  %cloptr9965 = inttoptr i64 %arg7784 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9965)                                         ; assert function application
  %i0ptr9966 = getelementptr inbounds i64, i64* %cloptr9965, i64 0                   ; &cloptr9965[0]
  %f9968 = load i64, i64* %i0ptr9966, align 8                                        ; load; *i0ptr9966
  %fptr9967 = inttoptr i64 %f9968 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9967(i64 %arg7784, i64 %arg7783, i64 %retprim7168)  ; tail call
  ret void

else9958:
  %retprim7169 = call i64 @prim_void()                                               ; call prim_void
  %arg7796 = add i64 0, 0                                                            ; quoted ()
  %cloptr9969 = inttoptr i64 %cont7165 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9969)                                         ; assert function application
  %i0ptr9970 = getelementptr inbounds i64, i64* %cloptr9969, i64 0                   ; &cloptr9969[0]
  %f9972 = load i64, i64* %i0ptr9970, align 8                                        ; load; *i0ptr9970
  %fptr9971 = inttoptr i64 %f9972 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9971(i64 %cont7165, i64 %arg7796, i64 %retprim7169) ; tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957166, i64 %aM5$_956942) {
  %envptr9973 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9974 = getelementptr inbounds i64, i64* %envptr9973, i64 3                  ; &envptr9973[3]
  %gP4$l = load i64, i64* %envptr9974, align 8                                       ; load; *envptr9974
  %envptr9975 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9976 = getelementptr inbounds i64, i64* %envptr9975, i64 2                  ; &envptr9975[2]
  %QZ2$f = load i64, i64* %envptr9976, align 8                                       ; load; *envptr9976
  %envptr9977 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9978 = getelementptr inbounds i64, i64* %envptr9977, i64 1                  ; &envptr9977[1]
  %cont7165 = load i64, i64* %envptr9978, align 8                                    ; load; *envptr9978
  %a7053 = call i64 @prim_car(i64 %gP4$l)                                            ; call prim_car
  %a7054 = call i64 @prim_cdr(i64 %a7053)                                            ; call prim_cdr
  %cloptr9979 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9981 = getelementptr inbounds i64, i64* %cloptr9979, i64 1                    ; &eptr9981[1]
  %eptr9982 = getelementptr inbounds i64, i64* %cloptr9979, i64 2                    ; &eptr9982[2]
  %eptr9983 = getelementptr inbounds i64, i64* %cloptr9979, i64 3                    ; &eptr9983[3]
  store i64 %cont7165, i64* %eptr9981                                                ; *eptr9981 = %cont7165
  store i64 %QZ2$f, i64* %eptr9982                                                   ; *eptr9982 = %QZ2$f
  store i64 %gP4$l, i64* %eptr9983                                                   ; *eptr9983 = %gP4$l
  %eptr9980 = getelementptr inbounds i64, i64* %cloptr9979, i64 0                    ; &cloptr9979[0]
  %f9984 = ptrtoint void(i64,i64,i64)* @lam8334 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9984, i64* %eptr9980                                                   ; store fptr
  %arg7787 = ptrtoint i64* %cloptr9979 to i64                                        ; closure cast; i64* -> i64
  %cloptr9985 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9985)                                         ; assert function application
  %i0ptr9986 = getelementptr inbounds i64, i64* %cloptr9985, i64 0                   ; &cloptr9985[0]
  %f9988 = load i64, i64* %i0ptr9986, align 8                                        ; load; *i0ptr9986
  %fptr9987 = inttoptr i64 %f9988 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9987(i64 %a7054, i64 %arg7787)                      ; tail call
  ret void
}


define void @lam8334(i64 %env8335, i64 %_957167, i64 %aC7$_956943) {
  %envptr9989 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9990 = getelementptr inbounds i64, i64* %envptr9989, i64 3                  ; &envptr9989[3]
  %gP4$l = load i64, i64* %envptr9990, align 8                                       ; load; *envptr9990
  %envptr9991 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9992 = getelementptr inbounds i64, i64* %envptr9991, i64 2                  ; &envptr9991[2]
  %QZ2$f = load i64, i64* %envptr9992, align 8                                       ; load; *envptr9992
  %envptr9993 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9994 = getelementptr inbounds i64, i64* %envptr9993, i64 1                  ; &envptr9993[1]
  %cont7165 = load i64, i64* %envptr9994, align 8                                    ; load; *envptr9994
  %arg7789 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %QZ2$f, i64 %arg7789)                     ; call prim_vector_45ref
  %a7056 = call i64 @prim_cdr(i64 %gP4$l)                                            ; call prim_cdr
  %cloptr9995 = inttoptr i64 %a7055 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9995)                                         ; assert function application
  %i0ptr9996 = getelementptr inbounds i64, i64* %cloptr9995, i64 0                   ; &cloptr9995[0]
  %f9998 = load i64, i64* %i0ptr9996, align 8                                        ; load; *i0ptr9996
  %fptr9997 = inttoptr i64 %f9998 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9997(i64 %a7055, i64 %cont7165, i64 %a7056)         ; tail call
  ret void
}


define void @lam8328(i64 %env8329, i64 %_957153, i64 %NRF$_956940) {
  %envptr9999 = inttoptr i64 %env8329 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr10000 = getelementptr inbounds i64, i64* %envptr9999, i64 4                 ; &envptr9999[4]
  %cont7151 = load i64, i64* %envptr10000, align 8                                   ; load; *envptr10000
  %envptr10001 = inttoptr i64 %env8329 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 3                ; &envptr10001[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10002, align 8                        ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env8329 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 2                ; &envptr10003[2]
  %YFq$new = load i64, i64* %envptr10004, align 8                                    ; load; *envptr10004
  %envptr10005 = inttoptr i64 %env8329 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10006 = getelementptr inbounds i64, i64* %envptr10005, i64 1                ; &envptr10005[1]
  %v1L$tail = load i64, i64* %envptr10006, align 8                                   ; load; *envptr10006
  %cloptr10007 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10008 = getelementptr inbounds i64, i64* %cloptr10007, i64 0                  ; &cloptr10007[0]
  %f10009 = ptrtoint void(i64,i64)* @lam8326 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10009, i64* %eptr10008                                                 ; store fptr
  %arg7806 = ptrtoint i64* %cloptr10007 to i64                                       ; closure cast; i64* -> i64
  %cloptr10010 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10012 = getelementptr inbounds i64, i64* %cloptr10010, i64 1                  ; &eptr10012[1]
  %eptr10013 = getelementptr inbounds i64, i64* %cloptr10010, i64 2                  ; &eptr10013[2]
  %eptr10014 = getelementptr inbounds i64, i64* %cloptr10010, i64 3                  ; &eptr10014[3]
  %eptr10015 = getelementptr inbounds i64, i64* %cloptr10010, i64 4                  ; &eptr10015[4]
  store i64 %v1L$tail, i64* %eptr10012                                               ; *eptr10012 = %v1L$tail
  store i64 %YFq$new, i64* %eptr10013                                                ; *eptr10013 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr10014                                    ; *eptr10014 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr10015                                               ; *eptr10015 = %cont7151
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10010, i64 0                  ; &cloptr10010[0]
  %f10016 = ptrtoint void(i64,i64,i64)* @lam8323 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10016, i64* %eptr10011                                                 ; store fptr
  %arg7805 = ptrtoint i64* %cloptr10010 to i64                                       ; closure cast; i64* -> i64
  %cloptr10017 = inttoptr i64 %arg7806 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10017)                                        ; assert function application
  %i0ptr10018 = getelementptr inbounds i64, i64* %cloptr10017, i64 0                 ; &cloptr10017[0]
  %f10020 = load i64, i64* %i0ptr10018, align 8                                      ; load; *i0ptr10018
  %fptr10019 = inttoptr i64 %f10020 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10019(i64 %arg7806, i64 %arg7805)                   ; tail call
  ret void
}


define void @lam8326(i64 %env8327, i64 %uSF$lst7163) {
  %cont7162 = call i64 @prim_car(i64 %uSF$lst7163)                                   ; call prim_car
  %uSF$lst = call i64 @prim_cdr(i64 %uSF$lst7163)                                    ; call prim_cdr
  %arg7810 = add i64 0, 0                                                            ; quoted ()
  %cloptr10021 = inttoptr i64 %cont7162 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10021)                                        ; assert function application
  %i0ptr10022 = getelementptr inbounds i64, i64* %cloptr10021, i64 0                 ; &cloptr10021[0]
  %f10024 = load i64, i64* %i0ptr10022, align 8                                      ; load; *i0ptr10022
  %fptr10023 = inttoptr i64 %f10024 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10023(i64 %cont7162, i64 %arg7810, i64 %uSF$lst)    ; tail call
  ret void
}


define void @lam8323(i64 %env8324, i64 %_957160, i64 %a7059) {
  %envptr10025 = inttoptr i64 %env8324 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10026 = getelementptr inbounds i64, i64* %envptr10025, i64 4                ; &envptr10025[4]
  %cont7151 = load i64, i64* %envptr10026, align 8                                   ; load; *envptr10026
  %envptr10027 = inttoptr i64 %env8324 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10028 = getelementptr inbounds i64, i64* %envptr10027, i64 3                ; &envptr10027[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10028, align 8                        ; load; *envptr10028
  %envptr10029 = inttoptr i64 %env8324 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10030 = getelementptr inbounds i64, i64* %envptr10029, i64 2                ; &envptr10029[2]
  %YFq$new = load i64, i64* %envptr10030, align 8                                    ; load; *envptr10030
  %envptr10031 = inttoptr i64 %env8324 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10032 = getelementptr inbounds i64, i64* %envptr10031, i64 1                ; &envptr10031[1]
  %v1L$tail = load i64, i64* %envptr10032, align 8                                   ; load; *envptr10032
  %arg7813 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7161 = call i64 @prim_make_45vector(i64 %arg7813, i64 %a7059)              ; call prim_make_45vector
  %cloptr10033 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10035 = getelementptr inbounds i64, i64* %cloptr10033, i64 1                  ; &eptr10035[1]
  %eptr10036 = getelementptr inbounds i64, i64* %cloptr10033, i64 2                  ; &eptr10036[2]
  %eptr10037 = getelementptr inbounds i64, i64* %cloptr10033, i64 3                  ; &eptr10037[3]
  %eptr10038 = getelementptr inbounds i64, i64* %cloptr10033, i64 4                  ; &eptr10038[4]
  store i64 %v1L$tail, i64* %eptr10035                                               ; *eptr10035 = %v1L$tail
  store i64 %YFq$new, i64* %eptr10036                                                ; *eptr10036 = %YFq$new
  store i64 %k8P$_37wind_45stack, i64* %eptr10037                                    ; *eptr10037 = %k8P$_37wind_45stack
  store i64 %cont7151, i64* %eptr10038                                               ; *eptr10038 = %cont7151
  %eptr10034 = getelementptr inbounds i64, i64* %cloptr10033, i64 0                  ; &cloptr10033[0]
  %f10039 = ptrtoint void(i64,i64,i64)* @lam8320 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10039, i64* %eptr10034                                                 ; store fptr
  %arg7816 = ptrtoint i64* %cloptr10033 to i64                                       ; closure cast; i64* -> i64
  %arg7815 = add i64 0, 0                                                            ; quoted ()
  %cloptr10040 = inttoptr i64 %arg7816 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10040)                                        ; assert function application
  %i0ptr10041 = getelementptr inbounds i64, i64* %cloptr10040, i64 0                 ; &cloptr10040[0]
  %f10043 = load i64, i64* %i0ptr10041, align 8                                      ; load; *i0ptr10041
  %fptr10042 = inttoptr i64 %f10043 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10042(i64 %arg7816, i64 %arg7815, i64 %retprim7161) ; tail call
  ret void
}


define void @lam8320(i64 %env8321, i64 %_957154, i64 %kZx$f) {
  %envptr10044 = inttoptr i64 %env8321 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10045 = getelementptr inbounds i64, i64* %envptr10044, i64 4                ; &envptr10044[4]
  %cont7151 = load i64, i64* %envptr10045, align 8                                   ; load; *envptr10045
  %envptr10046 = inttoptr i64 %env8321 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10047 = getelementptr inbounds i64, i64* %envptr10046, i64 3                ; &envptr10046[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10047, align 8                        ; load; *envptr10047
  %envptr10048 = inttoptr i64 %env8321 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10049 = getelementptr inbounds i64, i64* %envptr10048, i64 2                ; &envptr10048[2]
  %YFq$new = load i64, i64* %envptr10049, align 8                                    ; load; *envptr10049
  %envptr10050 = inttoptr i64 %env8321 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10051 = getelementptr inbounds i64, i64* %envptr10050, i64 1                ; &envptr10050[1]
  %v1L$tail = load i64, i64* %envptr10051, align 8                                   ; load; *envptr10051
  %arg7818 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10052 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10054 = getelementptr inbounds i64, i64* %cloptr10052, i64 1                  ; &eptr10054[1]
  %eptr10055 = getelementptr inbounds i64, i64* %cloptr10052, i64 2                  ; &eptr10055[2]
  %eptr10056 = getelementptr inbounds i64, i64* %cloptr10052, i64 3                  ; &eptr10056[3]
  store i64 %kZx$f, i64* %eptr10054                                                  ; *eptr10054 = %kZx$f
  store i64 %v1L$tail, i64* %eptr10055                                               ; *eptr10055 = %v1L$tail
  store i64 %k8P$_37wind_45stack, i64* %eptr10056                                    ; *eptr10056 = %k8P$_37wind_45stack
  %eptr10053 = getelementptr inbounds i64, i64* %cloptr10052, i64 0                  ; &cloptr10052[0]
  %f10057 = ptrtoint void(i64,i64,i64)* @lam8317 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10057, i64* %eptr10053                                                 ; store fptr
  %arg7817 = ptrtoint i64* %cloptr10052 to i64                                       ; closure cast; i64* -> i64
  %HJF$_956944 = call i64 @prim_vector_45set_33(i64 %kZx$f, i64 %arg7818, i64 %arg7817); call prim_vector_45set_33
  %arg7842 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7066 = call i64 @prim_vector_45ref(i64 %kZx$f, i64 %arg7842)                     ; call prim_vector_45ref
  %cloptr10058 = inttoptr i64 %a7066 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10058)                                        ; assert function application
  %i0ptr10059 = getelementptr inbounds i64, i64* %cloptr10058, i64 0                 ; &cloptr10058[0]
  %f10061 = load i64, i64* %i0ptr10059, align 8                                      ; load; *i0ptr10059
  %fptr10060 = inttoptr i64 %f10061 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10060(i64 %a7066, i64 %cont7151, i64 %YFq$new)      ; tail call
  ret void
}


define void @lam8317(i64 %env8318, i64 %cont7155, i64 %P41$l) {
  %envptr10062 = inttoptr i64 %env8318 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10063 = getelementptr inbounds i64, i64* %envptr10062, i64 3                ; &envptr10062[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10063, align 8                        ; load; *envptr10063
  %envptr10064 = inttoptr i64 %env8318 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10065 = getelementptr inbounds i64, i64* %envptr10064, i64 2                ; &envptr10064[2]
  %v1L$tail = load i64, i64* %envptr10065, align 8                                   ; load; *envptr10065
  %envptr10066 = inttoptr i64 %env8318 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10067 = getelementptr inbounds i64, i64* %envptr10066, i64 1                ; &envptr10066[1]
  %kZx$f = load i64, i64* %envptr10067, align 8                                      ; load; *envptr10067
  %a7060 = call i64 @prim_eq_63(i64 %P41$l, i64 %v1L$tail)                           ; call prim_eq_63
  %a7061 = call i64 @prim_not(i64 %a7060)                                            ; call prim_not
  %cmp10068 = icmp eq i64 %a7061, 15                                                 ; false?
  br i1 %cmp10068, label %else10070, label %then10069                                ; if

then10069:
  %arg7823 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7062 = call i64 @prim_vector_45ref(i64 %kZx$f, i64 %arg7823)                     ; call prim_vector_45ref
  %a7063 = call i64 @prim_cdr(i64 %P41$l)                                            ; call prim_cdr
  %cloptr10071 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10073 = getelementptr inbounds i64, i64* %cloptr10071, i64 1                  ; &eptr10073[1]
  %eptr10074 = getelementptr inbounds i64, i64* %cloptr10071, i64 2                  ; &eptr10074[2]
  %eptr10075 = getelementptr inbounds i64, i64* %cloptr10071, i64 3                  ; &eptr10075[3]
  store i64 %P41$l, i64* %eptr10073                                                  ; *eptr10073 = %P41$l
  store i64 %cont7155, i64* %eptr10074                                               ; *eptr10074 = %cont7155
  store i64 %k8P$_37wind_45stack, i64* %eptr10075                                    ; *eptr10075 = %k8P$_37wind_45stack
  %eptr10072 = getelementptr inbounds i64, i64* %cloptr10071, i64 0                  ; &cloptr10071[0]
  %f10076 = ptrtoint void(i64,i64,i64)* @lam8313 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10076, i64* %eptr10072                                                 ; store fptr
  %arg7827 = ptrtoint i64* %cloptr10071 to i64                                       ; closure cast; i64* -> i64
  %cloptr10077 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10077)                                        ; assert function application
  %i0ptr10078 = getelementptr inbounds i64, i64* %cloptr10077, i64 0                 ; &cloptr10077[0]
  %f10080 = load i64, i64* %i0ptr10078, align 8                                      ; load; *i0ptr10078
  %fptr10079 = inttoptr i64 %f10080 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10079(i64 %a7062, i64 %arg7827, i64 %a7063)         ; tail call
  ret void

else10070:
  %retprim7159 = call i64 @prim_void()                                               ; call prim_void
  %arg7840 = add i64 0, 0                                                            ; quoted ()
  %cloptr10081 = inttoptr i64 %cont7155 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10081)                                        ; assert function application
  %i0ptr10082 = getelementptr inbounds i64, i64* %cloptr10081, i64 0                 ; &cloptr10081[0]
  %f10084 = load i64, i64* %i0ptr10082, align 8                                      ; load; *i0ptr10082
  %fptr10083 = inttoptr i64 %f10084 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10083(i64 %cont7155, i64 %arg7840, i64 %retprim7159); tail call
  ret void
}


define void @lam8313(i64 %env8314, i64 %_957156, i64 %FLm$_956945) {
  %envptr10085 = inttoptr i64 %env8314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10086 = getelementptr inbounds i64, i64* %envptr10085, i64 3                ; &envptr10085[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10086, align 8                        ; load; *envptr10086
  %envptr10087 = inttoptr i64 %env8314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10088 = getelementptr inbounds i64, i64* %envptr10087, i64 2                ; &envptr10087[2]
  %cont7155 = load i64, i64* %envptr10088, align 8                                   ; load; *envptr10088
  %envptr10089 = inttoptr i64 %env8314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10090 = getelementptr inbounds i64, i64* %envptr10089, i64 1                ; &envptr10089[1]
  %P41$l = load i64, i64* %envptr10090, align 8                                      ; load; *envptr10090
  %a7064 = call i64 @prim_car(i64 %P41$l)                                            ; call prim_car
  %a7065 = call i64 @prim_car(i64 %a7064)                                            ; call prim_car
  %cloptr10091 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10093 = getelementptr inbounds i64, i64* %cloptr10091, i64 1                  ; &eptr10093[1]
  %eptr10094 = getelementptr inbounds i64, i64* %cloptr10091, i64 2                  ; &eptr10094[2]
  %eptr10095 = getelementptr inbounds i64, i64* %cloptr10091, i64 3                  ; &eptr10095[3]
  store i64 %P41$l, i64* %eptr10093                                                  ; *eptr10093 = %P41$l
  store i64 %cont7155, i64* %eptr10094                                               ; *eptr10094 = %cont7155
  store i64 %k8P$_37wind_45stack, i64* %eptr10095                                    ; *eptr10095 = %k8P$_37wind_45stack
  %eptr10092 = getelementptr inbounds i64, i64* %cloptr10091, i64 0                  ; &cloptr10091[0]
  %f10096 = ptrtoint void(i64,i64,i64)* @lam8311 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10096, i64* %eptr10092                                                 ; store fptr
  %arg7831 = ptrtoint i64* %cloptr10091 to i64                                       ; closure cast; i64* -> i64
  %cloptr10097 = inttoptr i64 %a7065 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10097)                                        ; assert function application
  %i0ptr10098 = getelementptr inbounds i64, i64* %cloptr10097, i64 0                 ; &cloptr10097[0]
  %f10100 = load i64, i64* %i0ptr10098, align 8                                      ; load; *i0ptr10098
  %fptr10099 = inttoptr i64 %f10100 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10099(i64 %a7065, i64 %arg7831)                     ; tail call
  ret void
}


define void @lam8311(i64 %env8312, i64 %_957157, i64 %Qkz$_956946) {
  %envptr10101 = inttoptr i64 %env8312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10102 = getelementptr inbounds i64, i64* %envptr10101, i64 3                ; &envptr10101[3]
  %k8P$_37wind_45stack = load i64, i64* %envptr10102, align 8                        ; load; *envptr10102
  %envptr10103 = inttoptr i64 %env8312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10104 = getelementptr inbounds i64, i64* %envptr10103, i64 2                ; &envptr10103[2]
  %cont7155 = load i64, i64* %envptr10104, align 8                                   ; load; *envptr10104
  %envptr10105 = inttoptr i64 %env8312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10106 = getelementptr inbounds i64, i64* %envptr10105, i64 1                ; &envptr10105[1]
  %P41$l = load i64, i64* %envptr10106, align 8                                      ; load; *envptr10106
  %arg7834 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7158 = call i64 @prim_vector_45set_33(i64 %k8P$_37wind_45stack, i64 %arg7834, i64 %P41$l); call prim_vector_45set_33
  %arg7837 = add i64 0, 0                                                            ; quoted ()
  %cloptr10107 = inttoptr i64 %cont7155 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10107)                                        ; assert function application
  %i0ptr10108 = getelementptr inbounds i64, i64* %cloptr10107, i64 0                 ; &cloptr10107[0]
  %f10110 = load i64, i64* %i0ptr10108, align 8                                      ; load; *i0ptr10108
  %fptr10109 = inttoptr i64 %f10110 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10109(i64 %cont7155, i64 %arg7837, i64 %retprim7158); tail call
  ret void
}


define void @lam8304(i64 %env8305, i64 %JXs$lst7180) {
  %cont7179 = call i64 @prim_car(i64 %JXs$lst7180)                                   ; call prim_car
  %JXs$lst = call i64 @prim_cdr(i64 %JXs$lst7180)                                    ; call prim_cdr
  %arg7852 = add i64 0, 0                                                            ; quoted ()
  %rva8124 = add i64 0, 0                                                            ; quoted ()
  %rva8123 = call i64 @prim_cons(i64 %JXs$lst, i64 %rva8124)                         ; call prim_cons
  %rva8122 = call i64 @prim_cons(i64 %arg7852, i64 %rva8123)                         ; call prim_cons
  %cloptr10111 = inttoptr i64 %cont7179 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10111)                                        ; assert function application
  %i0ptr10112 = getelementptr inbounds i64, i64* %cloptr10111, i64 0                 ; &cloptr10111[0]
  %f10114 = load i64, i64* %i0ptr10112, align 8                                      ; load; *i0ptr10112
  %fptr10113 = inttoptr i64 %f10114 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10113(i64 %cont7179, i64 %rva8122)                  ; tail call
  ret void
}


define void @lam8300(i64 %env8301, i64 %rvp8137) {
  %_957177 = call i64 @prim_car(i64 %rvp8137)                                        ; call prim_car
  %rvp8135 = call i64 @prim_cdr(i64 %rvp8137)                                        ; call prim_cdr
  %a7067 = call i64 @prim_car(i64 %rvp8135)                                          ; call prim_car
  %na8126 = call i64 @prim_cdr(i64 %rvp8135)                                         ; call prim_cdr
  %arg7855 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7178 = call i64 @prim_make_45vector(i64 %arg7855, i64 %a7067)              ; call prim_make_45vector
  %cloptr10115 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10116 = getelementptr inbounds i64, i64* %cloptr10115, i64 0                  ; &cloptr10115[0]
  %f10117 = ptrtoint void(i64,i64,i64)* @lam8297 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10117, i64* %eptr10116                                                 ; store fptr
  %arg7858 = ptrtoint i64* %cloptr10115 to i64                                       ; closure cast; i64* -> i64
  %arg7857 = add i64 0, 0                                                            ; quoted ()
  %cloptr10118 = inttoptr i64 %arg7858 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10118)                                        ; assert function application
  %i0ptr10119 = getelementptr inbounds i64, i64* %cloptr10118, i64 0                 ; &cloptr10118[0]
  %f10121 = load i64, i64* %i0ptr10119, align 8                                      ; load; *i0ptr10119
  %fptr10120 = inttoptr i64 %f10121 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10120(i64 %arg7858, i64 %arg7857, i64 %retprim7178) ; tail call
  ret void
}


define void @lam8297(i64 %env8298, i64 %_957174, i64 %L5i$double_95me) {
  %arg7860 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10122 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10123 = getelementptr inbounds i64, i64* %cloptr10122, i64 0                  ; &cloptr10122[0]
  %f10124 = ptrtoint void(i64,i64)* @lam8294 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10124, i64* %eptr10123                                                 ; store fptr
  %arg7859 = ptrtoint i64* %cloptr10122 to i64                                       ; closure cast; i64* -> i64
  %QgH$_956947 = call i64 @prim_vector_45set_33(i64 %L5i$double_95me, i64 %arg7860, i64 %arg7859); call prim_vector_45set_33
  %arg7867 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7068 = call i64 @prim_vector_45ref(i64 %L5i$double_95me, i64 %arg7867)           ; call prim_vector_45ref
  %cloptr10125 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10125, i64 0                  ; &cloptr10125[0]
  %f10127 = ptrtoint void(i64,i64,i64)* @lam8290 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10127, i64* %eptr10126                                                 ; store fptr
  %arg7869 = ptrtoint i64* %cloptr10125 to i64                                       ; closure cast; i64* -> i64
  %rva8134 = add i64 0, 0                                                            ; quoted ()
  %rva8133 = call i64 @prim_cons(i64 %arg7869, i64 %rva8134)                         ; call prim_cons
  %cloptr10128 = inttoptr i64 %a7068 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10128)                                        ; assert function application
  %i0ptr10129 = getelementptr inbounds i64, i64* %cloptr10128, i64 0                 ; &cloptr10128[0]
  %f10131 = load i64, i64* %i0ptr10129, align 8                                      ; load; *i0ptr10129
  %fptr10130 = inttoptr i64 %f10131 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10130(i64 %a7068, i64 %rva8133)                     ; tail call
  ret void
}


define void @lam8294(i64 %env8295, i64 %rvp8131) {
  %cont7175 = call i64 @prim_car(i64 %rvp8131)                                       ; call prim_car
  %rvp8129 = call i64 @prim_cdr(i64 %rvp8131)                                        ; call prim_cdr
  %te8$a = call i64 @prim_car(i64 %rvp8129)                                          ; call prim_car
  %na8128 = call i64 @prim_cdr(i64 %rvp8129)                                         ; call prim_cdr
  %retprim7176 = call i64 @prim__43(i64 %te8$a, i64 %te8$a)                          ; call prim__43
  %arg7865 = add i64 0, 0                                                            ; quoted ()
  %cloptr10132 = inttoptr i64 %cont7175 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10132)                                        ; assert function application
  %i0ptr10133 = getelementptr inbounds i64, i64* %cloptr10132, i64 0                 ; &cloptr10132[0]
  %f10135 = load i64, i64* %i0ptr10133, align 8                                      ; load; *i0ptr10133
  %fptr10134 = inttoptr i64 %f10135 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10134(i64 %cont7175, i64 %arg7865, i64 %retprim7176); tail call
  ret void
}


define void @lam8290(i64 %env8291, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr10136 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10136)                                        ; assert function application
  %i0ptr10137 = getelementptr inbounds i64, i64* %cloptr10136, i64 0                 ; &cloptr10136[0]
  %f10139 = load i64, i64* %i0ptr10137, align 8                                      ; load; *i0ptr10137
  %fptr10138 = inttoptr i64 %f10139 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10138(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam8281(i64 %env8282, i64 %cont7191, i64 %V74$_37foldl) {
  %envptr10140 = inttoptr i64 %env8282 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10141 = getelementptr inbounds i64, i64* %envptr10140, i64 3                ; &envptr10140[3]
  %pNx$_37foldr = load i64, i64* %envptr10141, align 8                               ; load; *envptr10141
  %envptr10142 = inttoptr i64 %env8282 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10143 = getelementptr inbounds i64, i64* %envptr10142, i64 2                ; &envptr10142[2]
  %KYJ$_37map1 = load i64, i64* %envptr10143, align 8                                ; load; *envptr10143
  %envptr10144 = inttoptr i64 %env8282 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10145 = getelementptr inbounds i64, i64* %envptr10144, i64 1                ; &envptr10144[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10145, align 8                              ; load; *envptr10145
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %cloptr10146 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10148 = getelementptr inbounds i64, i64* %cloptr10146, i64 1                  ; &eptr10148[1]
  %eptr10149 = getelementptr inbounds i64, i64* %cloptr10146, i64 2                  ; &eptr10149[2]
  %eptr10150 = getelementptr inbounds i64, i64* %cloptr10146, i64 3                  ; &eptr10150[3]
  %eptr10151 = getelementptr inbounds i64, i64* %cloptr10146, i64 4                  ; &eptr10151[4]
  store i64 %hyC$_37foldr1, i64* %eptr10148                                          ; *eptr10148 = %hyC$_37foldr1
  store i64 %KYJ$_37map1, i64* %eptr10149                                            ; *eptr10149 = %KYJ$_37map1
  store i64 %pNx$_37foldr, i64* %eptr10150                                           ; *eptr10150 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10151                                           ; *eptr10151 = %V74$_37foldl
  %eptr10147 = getelementptr inbounds i64, i64* %cloptr10146, i64 0                  ; &cloptr10146[0]
  %f10152 = ptrtoint void(i64,i64)* @lam8278 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10152, i64* %eptr10147                                                 ; store fptr
  %arg7874 = ptrtoint i64* %cloptr10146 to i64                                       ; closure cast; i64* -> i64
  %cloptr10153 = inttoptr i64 %cont7191 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10153)                                        ; assert function application
  %i0ptr10154 = getelementptr inbounds i64, i64* %cloptr10153, i64 0                 ; &cloptr10153[0]
  %f10156 = load i64, i64* %i0ptr10154, align 8                                      ; load; *i0ptr10154
  %fptr10155 = inttoptr i64 %f10156 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10155(i64 %cont7191, i64 %arg7875, i64 %arg7874)    ; tail call
  ret void
}


define void @lam8278(i64 %env8279, i64 %RMy$args7193) {
  %envptr10157 = inttoptr i64 %env8279 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10158 = getelementptr inbounds i64, i64* %envptr10157, i64 4                ; &envptr10157[4]
  %V74$_37foldl = load i64, i64* %envptr10158, align 8                               ; load; *envptr10158
  %envptr10159 = inttoptr i64 %env8279 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10160 = getelementptr inbounds i64, i64* %envptr10159, i64 3                ; &envptr10159[3]
  %pNx$_37foldr = load i64, i64* %envptr10160, align 8                               ; load; *envptr10160
  %envptr10161 = inttoptr i64 %env8279 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10162 = getelementptr inbounds i64, i64* %envptr10161, i64 2                ; &envptr10161[2]
  %KYJ$_37map1 = load i64, i64* %envptr10162, align 8                                ; load; *envptr10162
  %envptr10163 = inttoptr i64 %env8279 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10164 = getelementptr inbounds i64, i64* %envptr10163, i64 1                ; &envptr10163[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10164, align 8                              ; load; *envptr10164
  %cont7192 = call i64 @prim_car(i64 %RMy$args7193)                                  ; call prim_car
  %RMy$args = call i64 @prim_cdr(i64 %RMy$args7193)                                  ; call prim_cdr
  %zjH$f = call i64 @prim_car(i64 %RMy$args)                                         ; call prim_car
  %a6988 = call i64 @prim_cdr(i64 %RMy$args)                                         ; call prim_cdr
  %retprim7212 = call i64 @prim_car(i64 %a6988)                                      ; call prim_car
  %cloptr10165 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10167 = getelementptr inbounds i64, i64* %cloptr10165, i64 1                  ; &eptr10167[1]
  %eptr10168 = getelementptr inbounds i64, i64* %cloptr10165, i64 2                  ; &eptr10168[2]
  %eptr10169 = getelementptr inbounds i64, i64* %cloptr10165, i64 3                  ; &eptr10169[3]
  %eptr10170 = getelementptr inbounds i64, i64* %cloptr10165, i64 4                  ; &eptr10170[4]
  %eptr10171 = getelementptr inbounds i64, i64* %cloptr10165, i64 5                  ; &eptr10171[5]
  %eptr10172 = getelementptr inbounds i64, i64* %cloptr10165, i64 6                  ; &eptr10172[6]
  %eptr10173 = getelementptr inbounds i64, i64* %cloptr10165, i64 7                  ; &eptr10173[7]
  store i64 %hyC$_37foldr1, i64* %eptr10167                                          ; *eptr10167 = %hyC$_37foldr1
  store i64 %KYJ$_37map1, i64* %eptr10168                                            ; *eptr10168 = %KYJ$_37map1
  store i64 %RMy$args, i64* %eptr10169                                               ; *eptr10169 = %RMy$args
  store i64 %cont7192, i64* %eptr10170                                               ; *eptr10170 = %cont7192
  store i64 %pNx$_37foldr, i64* %eptr10171                                           ; *eptr10171 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10172                                           ; *eptr10172 = %V74$_37foldl
  store i64 %zjH$f, i64* %eptr10173                                                  ; *eptr10173 = %zjH$f
  %eptr10166 = getelementptr inbounds i64, i64* %cloptr10165, i64 0                  ; &cloptr10165[0]
  %f10174 = ptrtoint void(i64,i64,i64)* @lam8276 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10174, i64* %eptr10166                                                 ; store fptr
  %arg7884 = ptrtoint i64* %cloptr10165 to i64                                       ; closure cast; i64* -> i64
  %arg7883 = add i64 0, 0                                                            ; quoted ()
  %cloptr10175 = inttoptr i64 %arg7884 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10175)                                        ; assert function application
  %i0ptr10176 = getelementptr inbounds i64, i64* %cloptr10175, i64 0                 ; &cloptr10175[0]
  %f10178 = load i64, i64* %i0ptr10176, align 8                                      ; load; *i0ptr10176
  %fptr10177 = inttoptr i64 %f10178 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10177(i64 %arg7884, i64 %arg7883, i64 %retprim7212) ; tail call
  ret void
}


define void @lam8276(i64 %env8277, i64 %_957194, i64 %UIu$acc) {
  %envptr10179 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10180 = getelementptr inbounds i64, i64* %envptr10179, i64 7                ; &envptr10179[7]
  %zjH$f = load i64, i64* %envptr10180, align 8                                      ; load; *envptr10180
  %envptr10181 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10182 = getelementptr inbounds i64, i64* %envptr10181, i64 6                ; &envptr10181[6]
  %V74$_37foldl = load i64, i64* %envptr10182, align 8                               ; load; *envptr10182
  %envptr10183 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10184 = getelementptr inbounds i64, i64* %envptr10183, i64 5                ; &envptr10183[5]
  %pNx$_37foldr = load i64, i64* %envptr10184, align 8                               ; load; *envptr10184
  %envptr10185 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10186 = getelementptr inbounds i64, i64* %envptr10185, i64 4                ; &envptr10185[4]
  %cont7192 = load i64, i64* %envptr10186, align 8                                   ; load; *envptr10186
  %envptr10187 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10188 = getelementptr inbounds i64, i64* %envptr10187, i64 3                ; &envptr10187[3]
  %RMy$args = load i64, i64* %envptr10188, align 8                                   ; load; *envptr10188
  %envptr10189 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10190 = getelementptr inbounds i64, i64* %envptr10189, i64 2                ; &envptr10189[2]
  %KYJ$_37map1 = load i64, i64* %envptr10190, align 8                                ; load; *envptr10190
  %envptr10191 = inttoptr i64 %env8277 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10192 = getelementptr inbounds i64, i64* %envptr10191, i64 1                ; &envptr10191[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10192, align 8                              ; load; *envptr10192
  %a6989 = call i64 @prim_cdr(i64 %RMy$args)                                         ; call prim_cdr
  %retprim7211 = call i64 @prim_cdr(i64 %a6989)                                      ; call prim_cdr
  %cloptr10193 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10195 = getelementptr inbounds i64, i64* %cloptr10193, i64 1                  ; &eptr10195[1]
  %eptr10196 = getelementptr inbounds i64, i64* %cloptr10193, i64 2                  ; &eptr10196[2]
  %eptr10197 = getelementptr inbounds i64, i64* %cloptr10193, i64 3                  ; &eptr10197[3]
  %eptr10198 = getelementptr inbounds i64, i64* %cloptr10193, i64 4                  ; &eptr10198[4]
  %eptr10199 = getelementptr inbounds i64, i64* %cloptr10193, i64 5                  ; &eptr10199[5]
  %eptr10200 = getelementptr inbounds i64, i64* %cloptr10193, i64 6                  ; &eptr10200[6]
  %eptr10201 = getelementptr inbounds i64, i64* %cloptr10193, i64 7                  ; &eptr10201[7]
  store i64 %hyC$_37foldr1, i64* %eptr10195                                          ; *eptr10195 = %hyC$_37foldr1
  store i64 %KYJ$_37map1, i64* %eptr10196                                            ; *eptr10196 = %KYJ$_37map1
  store i64 %UIu$acc, i64* %eptr10197                                                ; *eptr10197 = %UIu$acc
  store i64 %cont7192, i64* %eptr10198                                               ; *eptr10198 = %cont7192
  store i64 %pNx$_37foldr, i64* %eptr10199                                           ; *eptr10199 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10200                                           ; *eptr10200 = %V74$_37foldl
  store i64 %zjH$f, i64* %eptr10201                                                  ; *eptr10201 = %zjH$f
  %eptr10194 = getelementptr inbounds i64, i64* %cloptr10193, i64 0                  ; &cloptr10193[0]
  %f10202 = ptrtoint void(i64,i64,i64)* @lam8274 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10202, i64* %eptr10194                                                 ; store fptr
  %arg7889 = ptrtoint i64* %cloptr10193 to i64                                       ; closure cast; i64* -> i64
  %arg7888 = add i64 0, 0                                                            ; quoted ()
  %cloptr10203 = inttoptr i64 %arg7889 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10203)                                        ; assert function application
  %i0ptr10204 = getelementptr inbounds i64, i64* %cloptr10203, i64 0                 ; &cloptr10203[0]
  %f10206 = load i64, i64* %i0ptr10204, align 8                                      ; load; *i0ptr10204
  %fptr10205 = inttoptr i64 %f10206 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10205(i64 %arg7889, i64 %arg7888, i64 %retprim7211) ; tail call
  ret void
}


define void @lam8274(i64 %env8275, i64 %_957195, i64 %ALz$lsts) {
  %envptr10207 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10208 = getelementptr inbounds i64, i64* %envptr10207, i64 7                ; &envptr10207[7]
  %zjH$f = load i64, i64* %envptr10208, align 8                                      ; load; *envptr10208
  %envptr10209 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10210 = getelementptr inbounds i64, i64* %envptr10209, i64 6                ; &envptr10209[6]
  %V74$_37foldl = load i64, i64* %envptr10210, align 8                               ; load; *envptr10210
  %envptr10211 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10212 = getelementptr inbounds i64, i64* %envptr10211, i64 5                ; &envptr10211[5]
  %pNx$_37foldr = load i64, i64* %envptr10212, align 8                               ; load; *envptr10212
  %envptr10213 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10214 = getelementptr inbounds i64, i64* %envptr10213, i64 4                ; &envptr10213[4]
  %cont7192 = load i64, i64* %envptr10214, align 8                                   ; load; *envptr10214
  %envptr10215 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10216 = getelementptr inbounds i64, i64* %envptr10215, i64 3                ; &envptr10215[3]
  %UIu$acc = load i64, i64* %envptr10216, align 8                                    ; load; *envptr10216
  %envptr10217 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10218 = getelementptr inbounds i64, i64* %envptr10217, i64 2                ; &envptr10217[2]
  %KYJ$_37map1 = load i64, i64* %envptr10218, align 8                                ; load; *envptr10218
  %envptr10219 = inttoptr i64 %env8275 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10220 = getelementptr inbounds i64, i64* %envptr10219, i64 1                ; &envptr10219[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10220, align 8                              ; load; *envptr10220
  %cloptr10221 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10221, i64 1                  ; &eptr10223[1]
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10221, i64 2                  ; &eptr10224[2]
  %eptr10225 = getelementptr inbounds i64, i64* %cloptr10221, i64 3                  ; &eptr10225[3]
  %eptr10226 = getelementptr inbounds i64, i64* %cloptr10221, i64 4                  ; &eptr10226[4]
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10221, i64 5                  ; &eptr10227[5]
  %eptr10228 = getelementptr inbounds i64, i64* %cloptr10221, i64 6                  ; &eptr10228[6]
  %eptr10229 = getelementptr inbounds i64, i64* %cloptr10221, i64 7                  ; &eptr10229[7]
  store i64 %ALz$lsts, i64* %eptr10223                                               ; *eptr10223 = %ALz$lsts
  store i64 %KYJ$_37map1, i64* %eptr10224                                            ; *eptr10224 = %KYJ$_37map1
  store i64 %UIu$acc, i64* %eptr10225                                                ; *eptr10225 = %UIu$acc
  store i64 %cont7192, i64* %eptr10226                                               ; *eptr10226 = %cont7192
  store i64 %pNx$_37foldr, i64* %eptr10227                                           ; *eptr10227 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10228                                           ; *eptr10228 = %V74$_37foldl
  store i64 %zjH$f, i64* %eptr10229                                                  ; *eptr10229 = %zjH$f
  %eptr10222 = getelementptr inbounds i64, i64* %cloptr10221, i64 0                  ; &cloptr10221[0]
  %f10230 = ptrtoint void(i64,i64,i64)* @lam8272 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10230, i64* %eptr10222                                                 ; store fptr
  %arg7893 = ptrtoint i64* %cloptr10221 to i64                                       ; closure cast; i64* -> i64
  %cloptr10231 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10232 = getelementptr inbounds i64, i64* %cloptr10231, i64 0                  ; &cloptr10231[0]
  %f10233 = ptrtoint void(i64,i64,i64,i64)* @lam8251 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10233, i64* %eptr10232                                                 ; store fptr
  %arg7892 = ptrtoint i64* %cloptr10231 to i64                                       ; closure cast; i64* -> i64
  %arg7891 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10234 = inttoptr i64 %hyC$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10234)                                        ; assert function application
  %i0ptr10235 = getelementptr inbounds i64, i64* %cloptr10234, i64 0                 ; &cloptr10234[0]
  %f10237 = load i64, i64* %i0ptr10235, align 8                                      ; load; *i0ptr10235
  %fptr10236 = inttoptr i64 %f10237 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10236(i64 %hyC$_37foldr1, i64 %arg7893, i64 %arg7892, i64 %arg7891, i64 %ALz$lsts); tail call
  ret void
}


define void @lam8272(i64 %env8273, i64 %_957196, i64 %a6990) {
  %envptr10238 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10239 = getelementptr inbounds i64, i64* %envptr10238, i64 7                ; &envptr10238[7]
  %zjH$f = load i64, i64* %envptr10239, align 8                                      ; load; *envptr10239
  %envptr10240 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10241 = getelementptr inbounds i64, i64* %envptr10240, i64 6                ; &envptr10240[6]
  %V74$_37foldl = load i64, i64* %envptr10241, align 8                               ; load; *envptr10241
  %envptr10242 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10243 = getelementptr inbounds i64, i64* %envptr10242, i64 5                ; &envptr10242[5]
  %pNx$_37foldr = load i64, i64* %envptr10243, align 8                               ; load; *envptr10243
  %envptr10244 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10245 = getelementptr inbounds i64, i64* %envptr10244, i64 4                ; &envptr10244[4]
  %cont7192 = load i64, i64* %envptr10245, align 8                                   ; load; *envptr10245
  %envptr10246 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10247 = getelementptr inbounds i64, i64* %envptr10246, i64 3                ; &envptr10246[3]
  %UIu$acc = load i64, i64* %envptr10247, align 8                                    ; load; *envptr10247
  %envptr10248 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10249 = getelementptr inbounds i64, i64* %envptr10248, i64 2                ; &envptr10248[2]
  %KYJ$_37map1 = load i64, i64* %envptr10249, align 8                                ; load; *envptr10249
  %envptr10250 = inttoptr i64 %env8273 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10251 = getelementptr inbounds i64, i64* %envptr10250, i64 1                ; &envptr10250[1]
  %ALz$lsts = load i64, i64* %envptr10251, align 8                                   ; load; *envptr10251
  %cmp10252 = icmp eq i64 %a6990, 15                                                 ; false?
  br i1 %cmp10252, label %else10254, label %then10253                                ; if

then10253:
  %arg7896 = add i64 0, 0                                                            ; quoted ()
  %cloptr10255 = inttoptr i64 %cont7192 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10255)                                        ; assert function application
  %i0ptr10256 = getelementptr inbounds i64, i64* %cloptr10255, i64 0                 ; &cloptr10255[0]
  %f10258 = load i64, i64* %i0ptr10256, align 8                                      ; load; *i0ptr10256
  %fptr10257 = inttoptr i64 %f10258 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10257(i64 %cont7192, i64 %arg7896, i64 %UIu$acc)    ; tail call
  ret void

else10254:
  %cloptr10259 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10261 = getelementptr inbounds i64, i64* %cloptr10259, i64 1                  ; &eptr10261[1]
  %eptr10262 = getelementptr inbounds i64, i64* %cloptr10259, i64 2                  ; &eptr10262[2]
  %eptr10263 = getelementptr inbounds i64, i64* %cloptr10259, i64 3                  ; &eptr10263[3]
  %eptr10264 = getelementptr inbounds i64, i64* %cloptr10259, i64 4                  ; &eptr10264[4]
  %eptr10265 = getelementptr inbounds i64, i64* %cloptr10259, i64 5                  ; &eptr10265[5]
  %eptr10266 = getelementptr inbounds i64, i64* %cloptr10259, i64 6                  ; &eptr10266[6]
  %eptr10267 = getelementptr inbounds i64, i64* %cloptr10259, i64 7                  ; &eptr10267[7]
  store i64 %ALz$lsts, i64* %eptr10261                                               ; *eptr10261 = %ALz$lsts
  store i64 %KYJ$_37map1, i64* %eptr10262                                            ; *eptr10262 = %KYJ$_37map1
  store i64 %UIu$acc, i64* %eptr10263                                                ; *eptr10263 = %UIu$acc
  store i64 %cont7192, i64* %eptr10264                                               ; *eptr10264 = %cont7192
  store i64 %pNx$_37foldr, i64* %eptr10265                                           ; *eptr10265 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10266                                           ; *eptr10266 = %V74$_37foldl
  store i64 %zjH$f, i64* %eptr10267                                                  ; *eptr10267 = %zjH$f
  %eptr10260 = getelementptr inbounds i64, i64* %cloptr10259, i64 0                  ; &cloptr10259[0]
  %f10268 = ptrtoint void(i64,i64,i64)* @lam8270 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10268, i64* %eptr10260                                                 ; store fptr
  %arg7900 = ptrtoint i64* %cloptr10259 to i64                                       ; closure cast; i64* -> i64
  %cloptr10269 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10270 = getelementptr inbounds i64, i64* %cloptr10269, i64 0                  ; &cloptr10269[0]
  %f10271 = ptrtoint void(i64,i64,i64)* @lam8255 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10271, i64* %eptr10270                                                 ; store fptr
  %arg7899 = ptrtoint i64* %cloptr10269 to i64                                       ; closure cast; i64* -> i64
  %cloptr10272 = inttoptr i64 %KYJ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10272)                                        ; assert function application
  %i0ptr10273 = getelementptr inbounds i64, i64* %cloptr10272, i64 0                 ; &cloptr10272[0]
  %f10275 = load i64, i64* %i0ptr10273, align 8                                      ; load; *i0ptr10273
  %fptr10274 = inttoptr i64 %f10275 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10274(i64 %KYJ$_37map1, i64 %arg7900, i64 %arg7899, i64 %ALz$lsts); tail call
  ret void
}


define void @lam8270(i64 %env8271, i64 %_957197, i64 %f9n$lsts_43) {
  %envptr10276 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10277 = getelementptr inbounds i64, i64* %envptr10276, i64 7                ; &envptr10276[7]
  %zjH$f = load i64, i64* %envptr10277, align 8                                      ; load; *envptr10277
  %envptr10278 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10279 = getelementptr inbounds i64, i64* %envptr10278, i64 6                ; &envptr10278[6]
  %V74$_37foldl = load i64, i64* %envptr10279, align 8                               ; load; *envptr10279
  %envptr10280 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10281 = getelementptr inbounds i64, i64* %envptr10280, i64 5                ; &envptr10280[5]
  %pNx$_37foldr = load i64, i64* %envptr10281, align 8                               ; load; *envptr10281
  %envptr10282 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10283 = getelementptr inbounds i64, i64* %envptr10282, i64 4                ; &envptr10282[4]
  %cont7192 = load i64, i64* %envptr10283, align 8                                   ; load; *envptr10283
  %envptr10284 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10285 = getelementptr inbounds i64, i64* %envptr10284, i64 3                ; &envptr10284[3]
  %UIu$acc = load i64, i64* %envptr10285, align 8                                    ; load; *envptr10285
  %envptr10286 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10287 = getelementptr inbounds i64, i64* %envptr10286, i64 2                ; &envptr10286[2]
  %KYJ$_37map1 = load i64, i64* %envptr10287, align 8                                ; load; *envptr10287
  %envptr10288 = inttoptr i64 %env8271 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10289 = getelementptr inbounds i64, i64* %envptr10288, i64 1                ; &envptr10288[1]
  %ALz$lsts = load i64, i64* %envptr10289, align 8                                   ; load; *envptr10289
  %cloptr10290 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10292 = getelementptr inbounds i64, i64* %cloptr10290, i64 1                  ; &eptr10292[1]
  %eptr10293 = getelementptr inbounds i64, i64* %cloptr10290, i64 2                  ; &eptr10293[2]
  %eptr10294 = getelementptr inbounds i64, i64* %cloptr10290, i64 3                  ; &eptr10294[3]
  %eptr10295 = getelementptr inbounds i64, i64* %cloptr10290, i64 4                  ; &eptr10295[4]
  %eptr10296 = getelementptr inbounds i64, i64* %cloptr10290, i64 5                  ; &eptr10296[5]
  %eptr10297 = getelementptr inbounds i64, i64* %cloptr10290, i64 6                  ; &eptr10297[6]
  store i64 %UIu$acc, i64* %eptr10292                                                ; *eptr10292 = %UIu$acc
  store i64 %cont7192, i64* %eptr10293                                               ; *eptr10293 = %cont7192
  store i64 %pNx$_37foldr, i64* %eptr10294                                           ; *eptr10294 = %pNx$_37foldr
  store i64 %V74$_37foldl, i64* %eptr10295                                           ; *eptr10295 = %V74$_37foldl
  store i64 %f9n$lsts_43, i64* %eptr10296                                            ; *eptr10296 = %f9n$lsts_43
  store i64 %zjH$f, i64* %eptr10297                                                  ; *eptr10297 = %zjH$f
  %eptr10291 = getelementptr inbounds i64, i64* %cloptr10290, i64 0                  ; &cloptr10290[0]
  %f10298 = ptrtoint void(i64,i64,i64)* @lam8268 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10298, i64* %eptr10291                                                 ; store fptr
  %arg7904 = ptrtoint i64* %cloptr10290 to i64                                       ; closure cast; i64* -> i64
  %cloptr10299 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10300 = getelementptr inbounds i64, i64* %cloptr10299, i64 0                  ; &cloptr10299[0]
  %f10301 = ptrtoint void(i64,i64,i64)* @lam8258 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10301, i64* %eptr10300                                                 ; store fptr
  %arg7903 = ptrtoint i64* %cloptr10299 to i64                                       ; closure cast; i64* -> i64
  %cloptr10302 = inttoptr i64 %KYJ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10302)                                        ; assert function application
  %i0ptr10303 = getelementptr inbounds i64, i64* %cloptr10302, i64 0                 ; &cloptr10302[0]
  %f10305 = load i64, i64* %i0ptr10303, align 8                                      ; load; *i0ptr10303
  %fptr10304 = inttoptr i64 %f10305 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10304(i64 %KYJ$_37map1, i64 %arg7904, i64 %arg7903, i64 %ALz$lsts); tail call
  ret void
}


define void @lam8268(i64 %env8269, i64 %_957198, i64 %upP$vs) {
  %envptr10306 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10307 = getelementptr inbounds i64, i64* %envptr10306, i64 6                ; &envptr10306[6]
  %zjH$f = load i64, i64* %envptr10307, align 8                                      ; load; *envptr10307
  %envptr10308 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10309 = getelementptr inbounds i64, i64* %envptr10308, i64 5                ; &envptr10308[5]
  %f9n$lsts_43 = load i64, i64* %envptr10309, align 8                                ; load; *envptr10309
  %envptr10310 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10311 = getelementptr inbounds i64, i64* %envptr10310, i64 4                ; &envptr10310[4]
  %V74$_37foldl = load i64, i64* %envptr10311, align 8                               ; load; *envptr10311
  %envptr10312 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10313 = getelementptr inbounds i64, i64* %envptr10312, i64 3                ; &envptr10312[3]
  %pNx$_37foldr = load i64, i64* %envptr10313, align 8                               ; load; *envptr10313
  %envptr10314 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10315 = getelementptr inbounds i64, i64* %envptr10314, i64 2                ; &envptr10314[2]
  %cont7192 = load i64, i64* %envptr10315, align 8                                   ; load; *envptr10315
  %envptr10316 = inttoptr i64 %env8269 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10317 = getelementptr inbounds i64, i64* %envptr10316, i64 1                ; &envptr10316[1]
  %UIu$acc = load i64, i64* %envptr10317, align 8                                    ; load; *envptr10317
  %arg7906 = add i64 0, 0                                                            ; quoted ()
  %a6991 = call i64 @prim_cons(i64 %UIu$acc, i64 %arg7906)                           ; call prim_cons
  %cloptr10318 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10320 = getelementptr inbounds i64, i64* %cloptr10318, i64 1                  ; &eptr10320[1]
  %eptr10321 = getelementptr inbounds i64, i64* %cloptr10318, i64 2                  ; &eptr10321[2]
  %eptr10322 = getelementptr inbounds i64, i64* %cloptr10318, i64 3                  ; &eptr10322[3]
  %eptr10323 = getelementptr inbounds i64, i64* %cloptr10318, i64 4                  ; &eptr10323[4]
  store i64 %cont7192, i64* %eptr10320                                               ; *eptr10320 = %cont7192
  store i64 %V74$_37foldl, i64* %eptr10321                                           ; *eptr10321 = %V74$_37foldl
  store i64 %f9n$lsts_43, i64* %eptr10322                                            ; *eptr10322 = %f9n$lsts_43
  store i64 %zjH$f, i64* %eptr10323                                                  ; *eptr10323 = %zjH$f
  %eptr10319 = getelementptr inbounds i64, i64* %cloptr10318, i64 0                  ; &cloptr10318[0]
  %f10324 = ptrtoint void(i64,i64,i64)* @lam8265 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10324, i64* %eptr10319                                                 ; store fptr
  %arg7911 = ptrtoint i64* %cloptr10318 to i64                                       ; closure cast; i64* -> i64
  %cloptr10325 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10326 = getelementptr inbounds i64, i64* %cloptr10325, i64 0                  ; &cloptr10325[0]
  %f10327 = ptrtoint void(i64,i64,i64,i64)* @lam8261 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10327, i64* %eptr10326                                                 ; store fptr
  %arg7910 = ptrtoint i64* %cloptr10325 to i64                                       ; closure cast; i64* -> i64
  %cloptr10328 = inttoptr i64 %pNx$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10328)                                        ; assert function application
  %i0ptr10329 = getelementptr inbounds i64, i64* %cloptr10328, i64 0                 ; &cloptr10328[0]
  %f10331 = load i64, i64* %i0ptr10329, align 8                                      ; load; *i0ptr10329
  %fptr10330 = inttoptr i64 %f10331 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10330(i64 %pNx$_37foldr, i64 %arg7911, i64 %arg7910, i64 %a6991, i64 %upP$vs); tail call
  ret void
}


define void @lam8265(i64 %env8266, i64 %_957201, i64 %a6992) {
  %envptr10332 = inttoptr i64 %env8266 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10333 = getelementptr inbounds i64, i64* %envptr10332, i64 4                ; &envptr10332[4]
  %zjH$f = load i64, i64* %envptr10333, align 8                                      ; load; *envptr10333
  %envptr10334 = inttoptr i64 %env8266 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10335 = getelementptr inbounds i64, i64* %envptr10334, i64 3                ; &envptr10334[3]
  %f9n$lsts_43 = load i64, i64* %envptr10335, align 8                                ; load; *envptr10335
  %envptr10336 = inttoptr i64 %env8266 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10337 = getelementptr inbounds i64, i64* %envptr10336, i64 2                ; &envptr10336[2]
  %V74$_37foldl = load i64, i64* %envptr10337, align 8                               ; load; *envptr10337
  %envptr10338 = inttoptr i64 %env8266 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10339 = getelementptr inbounds i64, i64* %envptr10338, i64 1                ; &envptr10338[1]
  %cont7192 = load i64, i64* %envptr10339, align 8                                   ; load; *envptr10339
  %cloptr10340 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10342 = getelementptr inbounds i64, i64* %cloptr10340, i64 1                  ; &eptr10342[1]
  %eptr10343 = getelementptr inbounds i64, i64* %cloptr10340, i64 2                  ; &eptr10343[2]
  %eptr10344 = getelementptr inbounds i64, i64* %cloptr10340, i64 3                  ; &eptr10344[3]
  %eptr10345 = getelementptr inbounds i64, i64* %cloptr10340, i64 4                  ; &eptr10345[4]
  store i64 %cont7192, i64* %eptr10342                                               ; *eptr10342 = %cont7192
  store i64 %V74$_37foldl, i64* %eptr10343                                           ; *eptr10343 = %V74$_37foldl
  store i64 %f9n$lsts_43, i64* %eptr10344                                            ; *eptr10344 = %f9n$lsts_43
  store i64 %zjH$f, i64* %eptr10345                                                  ; *eptr10345 = %zjH$f
  %eptr10341 = getelementptr inbounds i64, i64* %cloptr10340, i64 0                  ; &cloptr10340[0]
  %f10346 = ptrtoint void(i64,i64,i64)* @lam8263 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10346, i64* %eptr10341                                                 ; store fptr
  %arg7914 = ptrtoint i64* %cloptr10340 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7202 = call i64 @prim_cons(i64 %arg7914, i64 %a6992)                     ; call prim_cons
  %cloptr10347 = inttoptr i64 %zjH$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10347)                                        ; assert function application
  %i0ptr10348 = getelementptr inbounds i64, i64* %cloptr10347, i64 0                 ; &cloptr10347[0]
  %f10350 = load i64, i64* %i0ptr10348, align 8                                      ; load; *i0ptr10348
  %fptr10349 = inttoptr i64 %f10350 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10349(i64 %zjH$f, i64 %cps_45lst7202)               ; tail call
  ret void
}


define void @lam8263(i64 %env8264, i64 %_957199, i64 %MjC$acc_43) {
  %envptr10351 = inttoptr i64 %env8264 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10352 = getelementptr inbounds i64, i64* %envptr10351, i64 4                ; &envptr10351[4]
  %zjH$f = load i64, i64* %envptr10352, align 8                                      ; load; *envptr10352
  %envptr10353 = inttoptr i64 %env8264 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10354 = getelementptr inbounds i64, i64* %envptr10353, i64 3                ; &envptr10353[3]
  %f9n$lsts_43 = load i64, i64* %envptr10354, align 8                                ; load; *envptr10354
  %envptr10355 = inttoptr i64 %env8264 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10356 = getelementptr inbounds i64, i64* %envptr10355, i64 2                ; &envptr10355[2]
  %V74$_37foldl = load i64, i64* %envptr10356, align 8                               ; load; *envptr10356
  %envptr10357 = inttoptr i64 %env8264 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10358 = getelementptr inbounds i64, i64* %envptr10357, i64 1                ; &envptr10357[1]
  %cont7192 = load i64, i64* %envptr10358, align 8                                   ; load; *envptr10358
  %a6993 = call i64 @prim_cons(i64 %MjC$acc_43, i64 %f9n$lsts_43)                    ; call prim_cons
  %a6994 = call i64 @prim_cons(i64 %zjH$f, i64 %a6993)                               ; call prim_cons
  %cps_45lst7200 = call i64 @prim_cons(i64 %cont7192, i64 %a6994)                    ; call prim_cons
  %cloptr10359 = inttoptr i64 %V74$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10359)                                        ; assert function application
  %i0ptr10360 = getelementptr inbounds i64, i64* %cloptr10359, i64 0                 ; &cloptr10359[0]
  %f10362 = load i64, i64* %i0ptr10360, align 8                                      ; load; *i0ptr10360
  %fptr10361 = inttoptr i64 %f10362 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10361(i64 %V74$_37foldl, i64 %cps_45lst7200)        ; tail call
  ret void
}


define void @lam8261(i64 %env8262, i64 %cont7203, i64 %tQJ$a, i64 %mrj$b) {
  %retprim7204 = call i64 @prim_cons(i64 %tQJ$a, i64 %mrj$b)                         ; call prim_cons
  %arg7924 = add i64 0, 0                                                            ; quoted ()
  %cloptr10363 = inttoptr i64 %cont7203 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10363)                                        ; assert function application
  %i0ptr10364 = getelementptr inbounds i64, i64* %cloptr10363, i64 0                 ; &cloptr10363[0]
  %f10366 = load i64, i64* %i0ptr10364, align 8                                      ; load; *i0ptr10364
  %fptr10365 = inttoptr i64 %f10366 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10365(i64 %cont7203, i64 %arg7924, i64 %retprim7204); tail call
  ret void
}


define void @lam8258(i64 %env8259, i64 %cont7205, i64 %qDj$x) {
  %retprim7206 = call i64 @prim_car(i64 %qDj$x)                                      ; call prim_car
  %arg7928 = add i64 0, 0                                                            ; quoted ()
  %cloptr10367 = inttoptr i64 %cont7205 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10367)                                        ; assert function application
  %i0ptr10368 = getelementptr inbounds i64, i64* %cloptr10367, i64 0                 ; &cloptr10367[0]
  %f10370 = load i64, i64* %i0ptr10368, align 8                                      ; load; *i0ptr10368
  %fptr10369 = inttoptr i64 %f10370 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10369(i64 %cont7205, i64 %arg7928, i64 %retprim7206); tail call
  ret void
}


define void @lam8255(i64 %env8256, i64 %cont7207, i64 %urz$x) {
  %retprim7208 = call i64 @prim_cdr(i64 %urz$x)                                      ; call prim_cdr
  %arg7932 = add i64 0, 0                                                            ; quoted ()
  %cloptr10371 = inttoptr i64 %cont7207 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10371)                                        ; assert function application
  %i0ptr10372 = getelementptr inbounds i64, i64* %cloptr10371, i64 0                 ; &cloptr10371[0]
  %f10374 = load i64, i64* %i0ptr10372, align 8                                      ; load; *i0ptr10372
  %fptr10373 = inttoptr i64 %f10374 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10373(i64 %cont7207, i64 %arg7932, i64 %retprim7208); tail call
  ret void
}


define void @lam8251(i64 %env8252, i64 %cont7209, i64 %jMa$lst, i64 %KXk$b) {
  %cmp10375 = icmp eq i64 %KXk$b, 15                                                 ; false?
  br i1 %cmp10375, label %else10377, label %then10376                                ; if

then10376:
  %arg7935 = add i64 0, 0                                                            ; quoted ()
  %cloptr10378 = inttoptr i64 %cont7209 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10378)                                        ; assert function application
  %i0ptr10379 = getelementptr inbounds i64, i64* %cloptr10378, i64 0                 ; &cloptr10378[0]
  %f10381 = load i64, i64* %i0ptr10379, align 8                                      ; load; *i0ptr10379
  %fptr10380 = inttoptr i64 %f10381 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10380(i64 %cont7209, i64 %arg7935, i64 %KXk$b)      ; tail call
  ret void

else10377:
  %retprim7210 = call i64 @prim_null_63(i64 %jMa$lst)                                ; call prim_null_63
  %arg7939 = add i64 0, 0                                                            ; quoted ()
  %cloptr10382 = inttoptr i64 %cont7209 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10382)                                        ; assert function application
  %i0ptr10383 = getelementptr inbounds i64, i64* %cloptr10382, i64 0                 ; &cloptr10382[0]
  %f10385 = load i64, i64* %i0ptr10383, align 8                                      ; load; *i0ptr10383
  %fptr10384 = inttoptr i64 %f10385 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10384(i64 %cont7209, i64 %arg7939, i64 %retprim7210); tail call
  ret void
}


define void @lam8244(i64 %env8245, i64 %cont7213, i64 %vST$_37foldr) {
  %envptr10386 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10387 = getelementptr inbounds i64, i64* %envptr10386, i64 2                ; &envptr10386[2]
  %BHn$_37map1 = load i64, i64* %envptr10387, align 8                                ; load; *envptr10387
  %envptr10388 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10389 = getelementptr inbounds i64, i64* %envptr10388, i64 1                ; &envptr10388[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10389, align 8                              ; load; *envptr10389
  %arg7942 = add i64 0, 0                                                            ; quoted ()
  %cloptr10390 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10392 = getelementptr inbounds i64, i64* %cloptr10390, i64 1                  ; &eptr10392[1]
  %eptr10393 = getelementptr inbounds i64, i64* %cloptr10390, i64 2                  ; &eptr10393[2]
  %eptr10394 = getelementptr inbounds i64, i64* %cloptr10390, i64 3                  ; &eptr10394[3]
  store i64 %hyC$_37foldr1, i64* %eptr10392                                          ; *eptr10392 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10393                                           ; *eptr10393 = %vST$_37foldr
  store i64 %BHn$_37map1, i64* %eptr10394                                            ; *eptr10394 = %BHn$_37map1
  %eptr10391 = getelementptr inbounds i64, i64* %cloptr10390, i64 0                  ; &cloptr10390[0]
  %f10395 = ptrtoint void(i64,i64)* @lam8241 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10395, i64* %eptr10391                                                 ; store fptr
  %arg7941 = ptrtoint i64* %cloptr10390 to i64                                       ; closure cast; i64* -> i64
  %cloptr10396 = inttoptr i64 %cont7213 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10396)                                        ; assert function application
  %i0ptr10397 = getelementptr inbounds i64, i64* %cloptr10396, i64 0                 ; &cloptr10396[0]
  %f10399 = load i64, i64* %i0ptr10397, align 8                                      ; load; *i0ptr10397
  %fptr10398 = inttoptr i64 %f10399 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10398(i64 %cont7213, i64 %arg7942, i64 %arg7941)    ; tail call
  ret void
}


define void @lam8241(i64 %env8242, i64 %Hou$args7215) {
  %envptr10400 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10401 = getelementptr inbounds i64, i64* %envptr10400, i64 3                ; &envptr10400[3]
  %BHn$_37map1 = load i64, i64* %envptr10401, align 8                                ; load; *envptr10401
  %envptr10402 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10403 = getelementptr inbounds i64, i64* %envptr10402, i64 2                ; &envptr10402[2]
  %vST$_37foldr = load i64, i64* %envptr10403, align 8                               ; load; *envptr10403
  %envptr10404 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10405 = getelementptr inbounds i64, i64* %envptr10404, i64 1                ; &envptr10404[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10405, align 8                              ; load; *envptr10405
  %cont7214 = call i64 @prim_car(i64 %Hou$args7215)                                  ; call prim_car
  %Hou$args = call i64 @prim_cdr(i64 %Hou$args7215)                                  ; call prim_cdr
  %fVI$f = call i64 @prim_car(i64 %Hou$args)                                         ; call prim_car
  %a6974 = call i64 @prim_cdr(i64 %Hou$args)                                         ; call prim_cdr
  %retprim7234 = call i64 @prim_car(i64 %a6974)                                      ; call prim_car
  %cloptr10406 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10408 = getelementptr inbounds i64, i64* %cloptr10406, i64 1                  ; &eptr10408[1]
  %eptr10409 = getelementptr inbounds i64, i64* %cloptr10406, i64 2                  ; &eptr10409[2]
  %eptr10410 = getelementptr inbounds i64, i64* %cloptr10406, i64 3                  ; &eptr10410[3]
  %eptr10411 = getelementptr inbounds i64, i64* %cloptr10406, i64 4                  ; &eptr10411[4]
  %eptr10412 = getelementptr inbounds i64, i64* %cloptr10406, i64 5                  ; &eptr10412[5]
  %eptr10413 = getelementptr inbounds i64, i64* %cloptr10406, i64 6                  ; &eptr10413[6]
  store i64 %hyC$_37foldr1, i64* %eptr10408                                          ; *eptr10408 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10409                                           ; *eptr10409 = %vST$_37foldr
  store i64 %fVI$f, i64* %eptr10410                                                  ; *eptr10410 = %fVI$f
  store i64 %BHn$_37map1, i64* %eptr10411                                            ; *eptr10411 = %BHn$_37map1
  store i64 %Hou$args, i64* %eptr10412                                               ; *eptr10412 = %Hou$args
  store i64 %cont7214, i64* %eptr10413                                               ; *eptr10413 = %cont7214
  %eptr10407 = getelementptr inbounds i64, i64* %cloptr10406, i64 0                  ; &cloptr10406[0]
  %f10414 = ptrtoint void(i64,i64,i64)* @lam8239 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10414, i64* %eptr10407                                                 ; store fptr
  %arg7951 = ptrtoint i64* %cloptr10406 to i64                                       ; closure cast; i64* -> i64
  %arg7950 = add i64 0, 0                                                            ; quoted ()
  %cloptr10415 = inttoptr i64 %arg7951 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10415)                                        ; assert function application
  %i0ptr10416 = getelementptr inbounds i64, i64* %cloptr10415, i64 0                 ; &cloptr10415[0]
  %f10418 = load i64, i64* %i0ptr10416, align 8                                      ; load; *i0ptr10416
  %fptr10417 = inttoptr i64 %f10418 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10417(i64 %arg7951, i64 %arg7950, i64 %retprim7234) ; tail call
  ret void
}


define void @lam8239(i64 %env8240, i64 %_957216, i64 %Q9X$acc) {
  %envptr10419 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10420 = getelementptr inbounds i64, i64* %envptr10419, i64 6                ; &envptr10419[6]
  %cont7214 = load i64, i64* %envptr10420, align 8                                   ; load; *envptr10420
  %envptr10421 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10422 = getelementptr inbounds i64, i64* %envptr10421, i64 5                ; &envptr10421[5]
  %Hou$args = load i64, i64* %envptr10422, align 8                                   ; load; *envptr10422
  %envptr10423 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10424 = getelementptr inbounds i64, i64* %envptr10423, i64 4                ; &envptr10423[4]
  %BHn$_37map1 = load i64, i64* %envptr10424, align 8                                ; load; *envptr10424
  %envptr10425 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10426 = getelementptr inbounds i64, i64* %envptr10425, i64 3                ; &envptr10425[3]
  %fVI$f = load i64, i64* %envptr10426, align 8                                      ; load; *envptr10426
  %envptr10427 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10428 = getelementptr inbounds i64, i64* %envptr10427, i64 2                ; &envptr10427[2]
  %vST$_37foldr = load i64, i64* %envptr10428, align 8                               ; load; *envptr10428
  %envptr10429 = inttoptr i64 %env8240 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10430 = getelementptr inbounds i64, i64* %envptr10429, i64 1                ; &envptr10429[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10430, align 8                              ; load; *envptr10430
  %a6975 = call i64 @prim_cdr(i64 %Hou$args)                                         ; call prim_cdr
  %retprim7233 = call i64 @prim_cdr(i64 %a6975)                                      ; call prim_cdr
  %cloptr10431 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10433 = getelementptr inbounds i64, i64* %cloptr10431, i64 1                  ; &eptr10433[1]
  %eptr10434 = getelementptr inbounds i64, i64* %cloptr10431, i64 2                  ; &eptr10434[2]
  %eptr10435 = getelementptr inbounds i64, i64* %cloptr10431, i64 3                  ; &eptr10435[3]
  %eptr10436 = getelementptr inbounds i64, i64* %cloptr10431, i64 4                  ; &eptr10436[4]
  %eptr10437 = getelementptr inbounds i64, i64* %cloptr10431, i64 5                  ; &eptr10437[5]
  %eptr10438 = getelementptr inbounds i64, i64* %cloptr10431, i64 6                  ; &eptr10438[6]
  store i64 %hyC$_37foldr1, i64* %eptr10433                                          ; *eptr10433 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10434                                           ; *eptr10434 = %vST$_37foldr
  store i64 %fVI$f, i64* %eptr10435                                                  ; *eptr10435 = %fVI$f
  store i64 %BHn$_37map1, i64* %eptr10436                                            ; *eptr10436 = %BHn$_37map1
  store i64 %Q9X$acc, i64* %eptr10437                                                ; *eptr10437 = %Q9X$acc
  store i64 %cont7214, i64* %eptr10438                                               ; *eptr10438 = %cont7214
  %eptr10432 = getelementptr inbounds i64, i64* %cloptr10431, i64 0                  ; &cloptr10431[0]
  %f10439 = ptrtoint void(i64,i64,i64)* @lam8237 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10439, i64* %eptr10432                                                 ; store fptr
  %arg7956 = ptrtoint i64* %cloptr10431 to i64                                       ; closure cast; i64* -> i64
  %arg7955 = add i64 0, 0                                                            ; quoted ()
  %cloptr10440 = inttoptr i64 %arg7956 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10440)                                        ; assert function application
  %i0ptr10441 = getelementptr inbounds i64, i64* %cloptr10440, i64 0                 ; &cloptr10440[0]
  %f10443 = load i64, i64* %i0ptr10441, align 8                                      ; load; *i0ptr10441
  %fptr10442 = inttoptr i64 %f10443 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10442(i64 %arg7956, i64 %arg7955, i64 %retprim7233) ; tail call
  ret void
}


define void @lam8237(i64 %env8238, i64 %_957217, i64 %dX4$lsts) {
  %envptr10444 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10445 = getelementptr inbounds i64, i64* %envptr10444, i64 6                ; &envptr10444[6]
  %cont7214 = load i64, i64* %envptr10445, align 8                                   ; load; *envptr10445
  %envptr10446 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10447 = getelementptr inbounds i64, i64* %envptr10446, i64 5                ; &envptr10446[5]
  %Q9X$acc = load i64, i64* %envptr10447, align 8                                    ; load; *envptr10447
  %envptr10448 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10449 = getelementptr inbounds i64, i64* %envptr10448, i64 4                ; &envptr10448[4]
  %BHn$_37map1 = load i64, i64* %envptr10449, align 8                                ; load; *envptr10449
  %envptr10450 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10451 = getelementptr inbounds i64, i64* %envptr10450, i64 3                ; &envptr10450[3]
  %fVI$f = load i64, i64* %envptr10451, align 8                                      ; load; *envptr10451
  %envptr10452 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10453 = getelementptr inbounds i64, i64* %envptr10452, i64 2                ; &envptr10452[2]
  %vST$_37foldr = load i64, i64* %envptr10453, align 8                               ; load; *envptr10453
  %envptr10454 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10455 = getelementptr inbounds i64, i64* %envptr10454, i64 1                ; &envptr10454[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10455, align 8                              ; load; *envptr10455
  %cloptr10456 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10456, i64 1                  ; &eptr10458[1]
  %eptr10459 = getelementptr inbounds i64, i64* %cloptr10456, i64 2                  ; &eptr10459[2]
  %eptr10460 = getelementptr inbounds i64, i64* %cloptr10456, i64 3                  ; &eptr10460[3]
  %eptr10461 = getelementptr inbounds i64, i64* %cloptr10456, i64 4                  ; &eptr10461[4]
  %eptr10462 = getelementptr inbounds i64, i64* %cloptr10456, i64 5                  ; &eptr10462[5]
  %eptr10463 = getelementptr inbounds i64, i64* %cloptr10456, i64 6                  ; &eptr10463[6]
  %eptr10464 = getelementptr inbounds i64, i64* %cloptr10456, i64 7                  ; &eptr10464[7]
  store i64 %hyC$_37foldr1, i64* %eptr10458                                          ; *eptr10458 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10459                                           ; *eptr10459 = %vST$_37foldr
  store i64 %fVI$f, i64* %eptr10460                                                  ; *eptr10460 = %fVI$f
  store i64 %dX4$lsts, i64* %eptr10461                                               ; *eptr10461 = %dX4$lsts
  store i64 %BHn$_37map1, i64* %eptr10462                                            ; *eptr10462 = %BHn$_37map1
  store i64 %Q9X$acc, i64* %eptr10463                                                ; *eptr10463 = %Q9X$acc
  store i64 %cont7214, i64* %eptr10464                                               ; *eptr10464 = %cont7214
  %eptr10457 = getelementptr inbounds i64, i64* %cloptr10456, i64 0                  ; &cloptr10456[0]
  %f10465 = ptrtoint void(i64,i64,i64)* @lam8235 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10465, i64* %eptr10457                                                 ; store fptr
  %arg7960 = ptrtoint i64* %cloptr10456 to i64                                       ; closure cast; i64* -> i64
  %cloptr10466 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10467 = getelementptr inbounds i64, i64* %cloptr10466, i64 0                  ; &cloptr10466[0]
  %f10468 = ptrtoint void(i64,i64,i64,i64)* @lam8214 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10468, i64* %eptr10467                                                 ; store fptr
  %arg7959 = ptrtoint i64* %cloptr10466 to i64                                       ; closure cast; i64* -> i64
  %arg7958 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10469 = inttoptr i64 %hyC$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10469)                                        ; assert function application
  %i0ptr10470 = getelementptr inbounds i64, i64* %cloptr10469, i64 0                 ; &cloptr10469[0]
  %f10472 = load i64, i64* %i0ptr10470, align 8                                      ; load; *i0ptr10470
  %fptr10471 = inttoptr i64 %f10472 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10471(i64 %hyC$_37foldr1, i64 %arg7960, i64 %arg7959, i64 %arg7958, i64 %dX4$lsts); tail call
  ret void
}


define void @lam8235(i64 %env8236, i64 %_957218, i64 %a6976) {
  %envptr10473 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10474 = getelementptr inbounds i64, i64* %envptr10473, i64 7                ; &envptr10473[7]
  %cont7214 = load i64, i64* %envptr10474, align 8                                   ; load; *envptr10474
  %envptr10475 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10476 = getelementptr inbounds i64, i64* %envptr10475, i64 6                ; &envptr10475[6]
  %Q9X$acc = load i64, i64* %envptr10476, align 8                                    ; load; *envptr10476
  %envptr10477 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10478 = getelementptr inbounds i64, i64* %envptr10477, i64 5                ; &envptr10477[5]
  %BHn$_37map1 = load i64, i64* %envptr10478, align 8                                ; load; *envptr10478
  %envptr10479 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10480 = getelementptr inbounds i64, i64* %envptr10479, i64 4                ; &envptr10479[4]
  %dX4$lsts = load i64, i64* %envptr10480, align 8                                   ; load; *envptr10480
  %envptr10481 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10482 = getelementptr inbounds i64, i64* %envptr10481, i64 3                ; &envptr10481[3]
  %fVI$f = load i64, i64* %envptr10482, align 8                                      ; load; *envptr10482
  %envptr10483 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10484 = getelementptr inbounds i64, i64* %envptr10483, i64 2                ; &envptr10483[2]
  %vST$_37foldr = load i64, i64* %envptr10484, align 8                               ; load; *envptr10484
  %envptr10485 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10486 = getelementptr inbounds i64, i64* %envptr10485, i64 1                ; &envptr10485[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10486, align 8                              ; load; *envptr10486
  %cmp10487 = icmp eq i64 %a6976, 15                                                 ; false?
  br i1 %cmp10487, label %else10489, label %then10488                                ; if

then10488:
  %arg7963 = add i64 0, 0                                                            ; quoted ()
  %cloptr10490 = inttoptr i64 %cont7214 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10490)                                        ; assert function application
  %i0ptr10491 = getelementptr inbounds i64, i64* %cloptr10490, i64 0                 ; &cloptr10490[0]
  %f10493 = load i64, i64* %i0ptr10491, align 8                                      ; load; *i0ptr10491
  %fptr10492 = inttoptr i64 %f10493 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10492(i64 %cont7214, i64 %arg7963, i64 %Q9X$acc)    ; tail call
  ret void

else10489:
  %cloptr10494 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10496 = getelementptr inbounds i64, i64* %cloptr10494, i64 1                  ; &eptr10496[1]
  %eptr10497 = getelementptr inbounds i64, i64* %cloptr10494, i64 2                  ; &eptr10497[2]
  %eptr10498 = getelementptr inbounds i64, i64* %cloptr10494, i64 3                  ; &eptr10498[3]
  %eptr10499 = getelementptr inbounds i64, i64* %cloptr10494, i64 4                  ; &eptr10499[4]
  %eptr10500 = getelementptr inbounds i64, i64* %cloptr10494, i64 5                  ; &eptr10500[5]
  %eptr10501 = getelementptr inbounds i64, i64* %cloptr10494, i64 6                  ; &eptr10501[6]
  %eptr10502 = getelementptr inbounds i64, i64* %cloptr10494, i64 7                  ; &eptr10502[7]
  store i64 %hyC$_37foldr1, i64* %eptr10496                                          ; *eptr10496 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10497                                           ; *eptr10497 = %vST$_37foldr
  store i64 %fVI$f, i64* %eptr10498                                                  ; *eptr10498 = %fVI$f
  store i64 %dX4$lsts, i64* %eptr10499                                               ; *eptr10499 = %dX4$lsts
  store i64 %BHn$_37map1, i64* %eptr10500                                            ; *eptr10500 = %BHn$_37map1
  store i64 %Q9X$acc, i64* %eptr10501                                                ; *eptr10501 = %Q9X$acc
  store i64 %cont7214, i64* %eptr10502                                               ; *eptr10502 = %cont7214
  %eptr10495 = getelementptr inbounds i64, i64* %cloptr10494, i64 0                  ; &cloptr10494[0]
  %f10503 = ptrtoint void(i64,i64,i64)* @lam8233 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10503, i64* %eptr10495                                                 ; store fptr
  %arg7967 = ptrtoint i64* %cloptr10494 to i64                                       ; closure cast; i64* -> i64
  %cloptr10504 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10505 = getelementptr inbounds i64, i64* %cloptr10504, i64 0                  ; &cloptr10504[0]
  %f10506 = ptrtoint void(i64,i64,i64)* @lam8218 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10506, i64* %eptr10505                                                 ; store fptr
  %arg7966 = ptrtoint i64* %cloptr10504 to i64                                       ; closure cast; i64* -> i64
  %cloptr10507 = inttoptr i64 %BHn$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10507)                                        ; assert function application
  %i0ptr10508 = getelementptr inbounds i64, i64* %cloptr10507, i64 0                 ; &cloptr10507[0]
  %f10510 = load i64, i64* %i0ptr10508, align 8                                      ; load; *i0ptr10508
  %fptr10509 = inttoptr i64 %f10510 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10509(i64 %BHn$_37map1, i64 %arg7967, i64 %arg7966, i64 %dX4$lsts); tail call
  ret void
}


define void @lam8233(i64 %env8234, i64 %_957219, i64 %dr7$lsts_43) {
  %envptr10511 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10512 = getelementptr inbounds i64, i64* %envptr10511, i64 7                ; &envptr10511[7]
  %cont7214 = load i64, i64* %envptr10512, align 8                                   ; load; *envptr10512
  %envptr10513 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10514 = getelementptr inbounds i64, i64* %envptr10513, i64 6                ; &envptr10513[6]
  %Q9X$acc = load i64, i64* %envptr10514, align 8                                    ; load; *envptr10514
  %envptr10515 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10516 = getelementptr inbounds i64, i64* %envptr10515, i64 5                ; &envptr10515[5]
  %BHn$_37map1 = load i64, i64* %envptr10516, align 8                                ; load; *envptr10516
  %envptr10517 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10518 = getelementptr inbounds i64, i64* %envptr10517, i64 4                ; &envptr10517[4]
  %dX4$lsts = load i64, i64* %envptr10518, align 8                                   ; load; *envptr10518
  %envptr10519 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10520 = getelementptr inbounds i64, i64* %envptr10519, i64 3                ; &envptr10519[3]
  %fVI$f = load i64, i64* %envptr10520, align 8                                      ; load; *envptr10520
  %envptr10521 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10522 = getelementptr inbounds i64, i64* %envptr10521, i64 2                ; &envptr10521[2]
  %vST$_37foldr = load i64, i64* %envptr10522, align 8                               ; load; *envptr10522
  %envptr10523 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10524 = getelementptr inbounds i64, i64* %envptr10523, i64 1                ; &envptr10523[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10524, align 8                              ; load; *envptr10524
  %cloptr10525 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10527 = getelementptr inbounds i64, i64* %cloptr10525, i64 1                  ; &eptr10527[1]
  %eptr10528 = getelementptr inbounds i64, i64* %cloptr10525, i64 2                  ; &eptr10528[2]
  %eptr10529 = getelementptr inbounds i64, i64* %cloptr10525, i64 3                  ; &eptr10529[3]
  %eptr10530 = getelementptr inbounds i64, i64* %cloptr10525, i64 4                  ; &eptr10530[4]
  %eptr10531 = getelementptr inbounds i64, i64* %cloptr10525, i64 5                  ; &eptr10531[5]
  %eptr10532 = getelementptr inbounds i64, i64* %cloptr10525, i64 6                  ; &eptr10532[6]
  store i64 %hyC$_37foldr1, i64* %eptr10527                                          ; *eptr10527 = %hyC$_37foldr1
  store i64 %vST$_37foldr, i64* %eptr10528                                           ; *eptr10528 = %vST$_37foldr
  store i64 %fVI$f, i64* %eptr10529                                                  ; *eptr10529 = %fVI$f
  store i64 %dr7$lsts_43, i64* %eptr10530                                            ; *eptr10530 = %dr7$lsts_43
  store i64 %Q9X$acc, i64* %eptr10531                                                ; *eptr10531 = %Q9X$acc
  store i64 %cont7214, i64* %eptr10532                                               ; *eptr10532 = %cont7214
  %eptr10526 = getelementptr inbounds i64, i64* %cloptr10525, i64 0                  ; &cloptr10525[0]
  %f10533 = ptrtoint void(i64,i64,i64)* @lam8231 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10533, i64* %eptr10526                                                 ; store fptr
  %arg7971 = ptrtoint i64* %cloptr10525 to i64                                       ; closure cast; i64* -> i64
  %cloptr10534 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10535 = getelementptr inbounds i64, i64* %cloptr10534, i64 0                  ; &cloptr10534[0]
  %f10536 = ptrtoint void(i64,i64,i64)* @lam8221 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10536, i64* %eptr10535                                                 ; store fptr
  %arg7970 = ptrtoint i64* %cloptr10534 to i64                                       ; closure cast; i64* -> i64
  %cloptr10537 = inttoptr i64 %BHn$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10537)                                        ; assert function application
  %i0ptr10538 = getelementptr inbounds i64, i64* %cloptr10537, i64 0                 ; &cloptr10537[0]
  %f10540 = load i64, i64* %i0ptr10538, align 8                                      ; load; *i0ptr10538
  %fptr10539 = inttoptr i64 %f10540 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10539(i64 %BHn$_37map1, i64 %arg7971, i64 %arg7970, i64 %dX4$lsts); tail call
  ret void
}


define void @lam8231(i64 %env8232, i64 %_957220, i64 %lTb$vs) {
  %envptr10541 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10542 = getelementptr inbounds i64, i64* %envptr10541, i64 6                ; &envptr10541[6]
  %cont7214 = load i64, i64* %envptr10542, align 8                                   ; load; *envptr10542
  %envptr10543 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10544 = getelementptr inbounds i64, i64* %envptr10543, i64 5                ; &envptr10543[5]
  %Q9X$acc = load i64, i64* %envptr10544, align 8                                    ; load; *envptr10544
  %envptr10545 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10546 = getelementptr inbounds i64, i64* %envptr10545, i64 4                ; &envptr10545[4]
  %dr7$lsts_43 = load i64, i64* %envptr10546, align 8                                ; load; *envptr10546
  %envptr10547 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10548 = getelementptr inbounds i64, i64* %envptr10547, i64 3                ; &envptr10547[3]
  %fVI$f = load i64, i64* %envptr10548, align 8                                      ; load; *envptr10548
  %envptr10549 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10550 = getelementptr inbounds i64, i64* %envptr10549, i64 2                ; &envptr10549[2]
  %vST$_37foldr = load i64, i64* %envptr10550, align 8                               ; load; *envptr10550
  %envptr10551 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10552 = getelementptr inbounds i64, i64* %envptr10551, i64 1                ; &envptr10551[1]
  %hyC$_37foldr1 = load i64, i64* %envptr10552, align 8                              ; load; *envptr10552
  %a6977 = call i64 @prim_cons(i64 %Q9X$acc, i64 %dr7$lsts_43)                       ; call prim_cons
  %a6978 = call i64 @prim_cons(i64 %fVI$f, i64 %a6977)                               ; call prim_cons
  %cloptr10553 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10555 = getelementptr inbounds i64, i64* %cloptr10553, i64 1                  ; &eptr10555[1]
  %eptr10556 = getelementptr inbounds i64, i64* %cloptr10553, i64 2                  ; &eptr10556[2]
  %eptr10557 = getelementptr inbounds i64, i64* %cloptr10553, i64 3                  ; &eptr10557[3]
  %eptr10558 = getelementptr inbounds i64, i64* %cloptr10553, i64 4                  ; &eptr10558[4]
  store i64 %lTb$vs, i64* %eptr10555                                                 ; *eptr10555 = %lTb$vs
  store i64 %hyC$_37foldr1, i64* %eptr10556                                          ; *eptr10556 = %hyC$_37foldr1
  store i64 %fVI$f, i64* %eptr10557                                                  ; *eptr10557 = %fVI$f
  store i64 %cont7214, i64* %eptr10558                                               ; *eptr10558 = %cont7214
  %eptr10554 = getelementptr inbounds i64, i64* %cloptr10553, i64 0                  ; &cloptr10553[0]
  %f10559 = ptrtoint void(i64,i64,i64)* @lam8229 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10559, i64* %eptr10554                                                 ; store fptr
  %arg7978 = ptrtoint i64* %cloptr10553 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7226 = call i64 @prim_cons(i64 %arg7978, i64 %a6978)                     ; call prim_cons
  %cloptr10560 = inttoptr i64 %vST$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10560)                                        ; assert function application
  %i0ptr10561 = getelementptr inbounds i64, i64* %cloptr10560, i64 0                 ; &cloptr10560[0]
  %f10563 = load i64, i64* %i0ptr10561, align 8                                      ; load; *i0ptr10561
  %fptr10562 = inttoptr i64 %f10563 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10562(i64 %vST$_37foldr, i64 %cps_45lst7226)        ; tail call
  ret void
}


define void @lam8229(i64 %env8230, i64 %_957221, i64 %a6979) {
  %envptr10564 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10565 = getelementptr inbounds i64, i64* %envptr10564, i64 4                ; &envptr10564[4]
  %cont7214 = load i64, i64* %envptr10565, align 8                                   ; load; *envptr10565
  %envptr10566 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10567 = getelementptr inbounds i64, i64* %envptr10566, i64 3                ; &envptr10566[3]
  %fVI$f = load i64, i64* %envptr10567, align 8                                      ; load; *envptr10567
  %envptr10568 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10569 = getelementptr inbounds i64, i64* %envptr10568, i64 2                ; &envptr10568[2]
  %hyC$_37foldr1 = load i64, i64* %envptr10569, align 8                              ; load; *envptr10569
  %envptr10570 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10571 = getelementptr inbounds i64, i64* %envptr10570, i64 1                ; &envptr10570[1]
  %lTb$vs = load i64, i64* %envptr10571, align 8                                     ; load; *envptr10571
  %arg7979 = add i64 0, 0                                                            ; quoted ()
  %a6980 = call i64 @prim_cons(i64 %a6979, i64 %arg7979)                             ; call prim_cons
  %cloptr10572 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10574 = getelementptr inbounds i64, i64* %cloptr10572, i64 1                  ; &eptr10574[1]
  %eptr10575 = getelementptr inbounds i64, i64* %cloptr10572, i64 2                  ; &eptr10575[2]
  store i64 %fVI$f, i64* %eptr10574                                                  ; *eptr10574 = %fVI$f
  store i64 %cont7214, i64* %eptr10575                                               ; *eptr10575 = %cont7214
  %eptr10573 = getelementptr inbounds i64, i64* %cloptr10572, i64 0                  ; &cloptr10572[0]
  %f10576 = ptrtoint void(i64,i64,i64)* @lam8226 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10576, i64* %eptr10573                                                 ; store fptr
  %arg7984 = ptrtoint i64* %cloptr10572 to i64                                       ; closure cast; i64* -> i64
  %cloptr10577 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10578 = getelementptr inbounds i64, i64* %cloptr10577, i64 0                  ; &cloptr10577[0]
  %f10579 = ptrtoint void(i64,i64,i64,i64)* @lam8224 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10579, i64* %eptr10578                                                 ; store fptr
  %arg7983 = ptrtoint i64* %cloptr10577 to i64                                       ; closure cast; i64* -> i64
  %cloptr10580 = inttoptr i64 %hyC$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10580)                                        ; assert function application
  %i0ptr10581 = getelementptr inbounds i64, i64* %cloptr10580, i64 0                 ; &cloptr10580[0]
  %f10583 = load i64, i64* %i0ptr10581, align 8                                      ; load; *i0ptr10581
  %fptr10582 = inttoptr i64 %f10583 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10582(i64 %hyC$_37foldr1, i64 %arg7984, i64 %arg7983, i64 %a6980, i64 %lTb$vs); tail call
  ret void
}


define void @lam8226(i64 %env8227, i64 %_957222, i64 %a6981) {
  %envptr10584 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10585 = getelementptr inbounds i64, i64* %envptr10584, i64 2                ; &envptr10584[2]
  %cont7214 = load i64, i64* %envptr10585, align 8                                   ; load; *envptr10585
  %envptr10586 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10587 = getelementptr inbounds i64, i64* %envptr10586, i64 1                ; &envptr10586[1]
  %fVI$f = load i64, i64* %envptr10587, align 8                                      ; load; *envptr10587
  %cps_45lst7223 = call i64 @prim_cons(i64 %cont7214, i64 %a6981)                    ; call prim_cons
  %cloptr10588 = inttoptr i64 %fVI$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10588)                                        ; assert function application
  %i0ptr10589 = getelementptr inbounds i64, i64* %cloptr10588, i64 0                 ; &cloptr10588[0]
  %f10591 = load i64, i64* %i0ptr10589, align 8                                      ; load; *i0ptr10589
  %fptr10590 = inttoptr i64 %f10591 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10590(i64 %fVI$f, i64 %cps_45lst7223)               ; tail call
  ret void
}


define void @lam8224(i64 %env8225, i64 %cont7224, i64 %kZ7$a, i64 %Vdr$b) {
  %retprim7225 = call i64 @prim_cons(i64 %kZ7$a, i64 %Vdr$b)                         ; call prim_cons
  %arg7991 = add i64 0, 0                                                            ; quoted ()
  %cloptr10592 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10592)                                        ; assert function application
  %i0ptr10593 = getelementptr inbounds i64, i64* %cloptr10592, i64 0                 ; &cloptr10592[0]
  %f10595 = load i64, i64* %i0ptr10593, align 8                                      ; load; *i0ptr10593
  %fptr10594 = inttoptr i64 %f10595 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10594(i64 %cont7224, i64 %arg7991, i64 %retprim7225); tail call
  ret void
}


define void @lam8221(i64 %env8222, i64 %cont7227, i64 %Gkw$x) {
  %retprim7228 = call i64 @prim_car(i64 %Gkw$x)                                      ; call prim_car
  %arg7995 = add i64 0, 0                                                            ; quoted ()
  %cloptr10596 = inttoptr i64 %cont7227 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10596)                                        ; assert function application
  %i0ptr10597 = getelementptr inbounds i64, i64* %cloptr10596, i64 0                 ; &cloptr10596[0]
  %f10599 = load i64, i64* %i0ptr10597, align 8                                      ; load; *i0ptr10597
  %fptr10598 = inttoptr i64 %f10599 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10598(i64 %cont7227, i64 %arg7995, i64 %retprim7228); tail call
  ret void
}


define void @lam8218(i64 %env8219, i64 %cont7229, i64 %tEx$x) {
  %retprim7230 = call i64 @prim_cdr(i64 %tEx$x)                                      ; call prim_cdr
  %arg7999 = add i64 0, 0                                                            ; quoted ()
  %cloptr10600 = inttoptr i64 %cont7229 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10600)                                        ; assert function application
  %i0ptr10601 = getelementptr inbounds i64, i64* %cloptr10600, i64 0                 ; &cloptr10600[0]
  %f10603 = load i64, i64* %i0ptr10601, align 8                                      ; load; *i0ptr10601
  %fptr10602 = inttoptr i64 %f10603 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10602(i64 %cont7229, i64 %arg7999, i64 %retprim7230); tail call
  ret void
}


define void @lam8214(i64 %env8215, i64 %cont7231, i64 %xyx$lst, i64 %lZj$b) {
  %cmp10604 = icmp eq i64 %lZj$b, 15                                                 ; false?
  br i1 %cmp10604, label %else10606, label %then10605                                ; if

then10605:
  %arg8002 = add i64 0, 0                                                            ; quoted ()
  %cloptr10607 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10607)                                        ; assert function application
  %i0ptr10608 = getelementptr inbounds i64, i64* %cloptr10607, i64 0                 ; &cloptr10607[0]
  %f10610 = load i64, i64* %i0ptr10608, align 8                                      ; load; *i0ptr10608
  %fptr10609 = inttoptr i64 %f10610 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10609(i64 %cont7231, i64 %arg8002, i64 %lZj$b)      ; tail call
  ret void

else10606:
  %retprim7232 = call i64 @prim_null_63(i64 %xyx$lst)                                ; call prim_null_63
  %arg8006 = add i64 0, 0                                                            ; quoted ()
  %cloptr10611 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10611)                                        ; assert function application
  %i0ptr10612 = getelementptr inbounds i64, i64* %cloptr10611, i64 0                 ; &cloptr10611[0]
  %f10614 = load i64, i64* %i0ptr10612, align 8                                      ; load; *i0ptr10612
  %fptr10613 = inttoptr i64 %f10614 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10613(i64 %cont7231, i64 %arg8006, i64 %retprim7232); tail call
  ret void
}


define void @lam8207(i64 %env8208, i64 %cont7235, i64 %fjA$_37foldl1) {
  %arg8009 = add i64 0, 0                                                            ; quoted ()
  %cloptr10615 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10617 = getelementptr inbounds i64, i64* %cloptr10615, i64 1                  ; &eptr10617[1]
  store i64 %fjA$_37foldl1, i64* %eptr10617                                          ; *eptr10617 = %fjA$_37foldl1
  %eptr10616 = getelementptr inbounds i64, i64* %cloptr10615, i64 0                  ; &cloptr10615[0]
  %f10618 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8204 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10618, i64* %eptr10616                                                 ; store fptr
  %arg8008 = ptrtoint i64* %cloptr10615 to i64                                       ; closure cast; i64* -> i64
  %cloptr10619 = inttoptr i64 %cont7235 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10619)                                        ; assert function application
  %i0ptr10620 = getelementptr inbounds i64, i64* %cloptr10619, i64 0                 ; &cloptr10619[0]
  %f10622 = load i64, i64* %i0ptr10620, align 8                                      ; load; *i0ptr10620
  %fptr10621 = inttoptr i64 %f10622 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10621(i64 %cont7235, i64 %arg8009, i64 %arg8008)    ; tail call
  ret void
}


define void @lam8204(i64 %env8205, i64 %cont7236, i64 %zbT$f, i64 %VFX$acc, i64 %ypf$lst) {
  %envptr10623 = inttoptr i64 %env8205 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10624 = getelementptr inbounds i64, i64* %envptr10623, i64 1                ; &envptr10623[1]
  %fjA$_37foldl1 = load i64, i64* %envptr10624, align 8                              ; load; *envptr10624
  %a6968 = call i64 @prim_null_63(i64 %ypf$lst)                                      ; call prim_null_63
  %cmp10625 = icmp eq i64 %a6968, 15                                                 ; false?
  br i1 %cmp10625, label %else10627, label %then10626                                ; if

then10626:
  %arg8013 = add i64 0, 0                                                            ; quoted ()
  %cloptr10628 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10628)                                        ; assert function application
  %i0ptr10629 = getelementptr inbounds i64, i64* %cloptr10628, i64 0                 ; &cloptr10628[0]
  %f10631 = load i64, i64* %i0ptr10629, align 8                                      ; load; *i0ptr10629
  %fptr10630 = inttoptr i64 %f10631 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10630(i64 %cont7236, i64 %arg8013, i64 %VFX$acc)    ; tail call
  ret void

else10627:
  %a6969 = call i64 @prim_car(i64 %ypf$lst)                                          ; call prim_car
  %cloptr10632 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10634 = getelementptr inbounds i64, i64* %cloptr10632, i64 1                  ; &eptr10634[1]
  %eptr10635 = getelementptr inbounds i64, i64* %cloptr10632, i64 2                  ; &eptr10635[2]
  %eptr10636 = getelementptr inbounds i64, i64* %cloptr10632, i64 3                  ; &eptr10636[3]
  %eptr10637 = getelementptr inbounds i64, i64* %cloptr10632, i64 4                  ; &eptr10637[4]
  store i64 %fjA$_37foldl1, i64* %eptr10634                                          ; *eptr10634 = %fjA$_37foldl1
  store i64 %zbT$f, i64* %eptr10635                                                  ; *eptr10635 = %zbT$f
  store i64 %ypf$lst, i64* %eptr10636                                                ; *eptr10636 = %ypf$lst
  store i64 %cont7236, i64* %eptr10637                                               ; *eptr10637 = %cont7236
  %eptr10633 = getelementptr inbounds i64, i64* %cloptr10632, i64 0                  ; &cloptr10632[0]
  %f10638 = ptrtoint void(i64,i64,i64)* @lam8202 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10638, i64* %eptr10633                                                 ; store fptr
  %arg8018 = ptrtoint i64* %cloptr10632 to i64                                       ; closure cast; i64* -> i64
  %cloptr10639 = inttoptr i64 %zbT$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10639)                                        ; assert function application
  %i0ptr10640 = getelementptr inbounds i64, i64* %cloptr10639, i64 0                 ; &cloptr10639[0]
  %f10642 = load i64, i64* %i0ptr10640, align 8                                      ; load; *i0ptr10640
  %fptr10641 = inttoptr i64 %f10642 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10641(i64 %zbT$f, i64 %arg8018, i64 %a6969, i64 %VFX$acc); tail call
  ret void
}


define void @lam8202(i64 %env8203, i64 %_957237, i64 %a6970) {
  %envptr10643 = inttoptr i64 %env8203 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10644 = getelementptr inbounds i64, i64* %envptr10643, i64 4                ; &envptr10643[4]
  %cont7236 = load i64, i64* %envptr10644, align 8                                   ; load; *envptr10644
  %envptr10645 = inttoptr i64 %env8203 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10646 = getelementptr inbounds i64, i64* %envptr10645, i64 3                ; &envptr10645[3]
  %ypf$lst = load i64, i64* %envptr10646, align 8                                    ; load; *envptr10646
  %envptr10647 = inttoptr i64 %env8203 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10648 = getelementptr inbounds i64, i64* %envptr10647, i64 2                ; &envptr10647[2]
  %zbT$f = load i64, i64* %envptr10648, align 8                                      ; load; *envptr10648
  %envptr10649 = inttoptr i64 %env8203 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10650 = getelementptr inbounds i64, i64* %envptr10649, i64 1                ; &envptr10649[1]
  %fjA$_37foldl1 = load i64, i64* %envptr10650, align 8                              ; load; *envptr10650
  %a6971 = call i64 @prim_cdr(i64 %ypf$lst)                                          ; call prim_cdr
  %cloptr10651 = inttoptr i64 %fjA$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10651)                                        ; assert function application
  %i0ptr10652 = getelementptr inbounds i64, i64* %cloptr10651, i64 0                 ; &cloptr10651[0]
  %f10654 = load i64, i64* %i0ptr10652, align 8                                      ; load; *i0ptr10652
  %fptr10653 = inttoptr i64 %f10654 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10653(i64 %fjA$_37foldl1, i64 %cont7236, i64 %zbT$f, i64 %a6970, i64 %a6971); tail call
  ret void
}


define void @lam8199(i64 %env8200, i64 %cont7238, i64 %gKw$_37length) {
  %arg8027 = add i64 0, 0                                                            ; quoted ()
  %cloptr10655 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10657 = getelementptr inbounds i64, i64* %cloptr10655, i64 1                  ; &eptr10657[1]
  store i64 %gKw$_37length, i64* %eptr10657                                          ; *eptr10657 = %gKw$_37length
  %eptr10656 = getelementptr inbounds i64, i64* %cloptr10655, i64 0                  ; &cloptr10655[0]
  %f10658 = ptrtoint void(i64,i64,i64)* @lam8196 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10658, i64* %eptr10656                                                 ; store fptr
  %arg8026 = ptrtoint i64* %cloptr10655 to i64                                       ; closure cast; i64* -> i64
  %cloptr10659 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10659)                                        ; assert function application
  %i0ptr10660 = getelementptr inbounds i64, i64* %cloptr10659, i64 0                 ; &cloptr10659[0]
  %f10662 = load i64, i64* %i0ptr10660, align 8                                      ; load; *i0ptr10660
  %fptr10661 = inttoptr i64 %f10662 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10661(i64 %cont7238, i64 %arg8027, i64 %arg8026)    ; tail call
  ret void
}


define void @lam8196(i64 %env8197, i64 %cont7239, i64 %yMn$lst) {
  %envptr10663 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10664 = getelementptr inbounds i64, i64* %envptr10663, i64 1                ; &envptr10663[1]
  %gKw$_37length = load i64, i64* %envptr10664, align 8                              ; load; *envptr10664
  %a6965 = call i64 @prim_null_63(i64 %yMn$lst)                                      ; call prim_null_63
  %cmp10665 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10665, label %else10667, label %then10666                                ; if

then10666:
  %arg8031 = add i64 0, 0                                                            ; quoted ()
  %arg8030 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10668 = inttoptr i64 %cont7239 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %cont7239, i64 %arg8031, i64 %arg8030)    ; tail call
  ret void

else10667:
  %a6966 = call i64 @prim_cdr(i64 %yMn$lst)                                          ; call prim_cdr
  %cloptr10672 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10674 = getelementptr inbounds i64, i64* %cloptr10672, i64 1                  ; &eptr10674[1]
  store i64 %cont7239, i64* %eptr10674                                               ; *eptr10674 = %cont7239
  %eptr10673 = getelementptr inbounds i64, i64* %cloptr10672, i64 0                  ; &cloptr10672[0]
  %f10675 = ptrtoint void(i64,i64,i64)* @lam8194 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10675, i64* %eptr10673                                                 ; store fptr
  %arg8035 = ptrtoint i64* %cloptr10672 to i64                                       ; closure cast; i64* -> i64
  %cloptr10676 = inttoptr i64 %gKw$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10676)                                        ; assert function application
  %i0ptr10677 = getelementptr inbounds i64, i64* %cloptr10676, i64 0                 ; &cloptr10676[0]
  %f10679 = load i64, i64* %i0ptr10677, align 8                                      ; load; *i0ptr10677
  %fptr10678 = inttoptr i64 %f10679 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10678(i64 %gKw$_37length, i64 %arg8035, i64 %a6966) ; tail call
  ret void
}


define void @lam8194(i64 %env8195, i64 %_957240, i64 %a6967) {
  %envptr10680 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10681 = getelementptr inbounds i64, i64* %envptr10680, i64 1                ; &envptr10680[1]
  %cont7239 = load i64, i64* %envptr10681, align 8                                   ; load; *envptr10681
  %arg8038 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7241 = call i64 @prim__43(i64 %arg8038, i64 %a6967)                        ; call prim__43
  %arg8040 = add i64 0, 0                                                            ; quoted ()
  %cloptr10682 = inttoptr i64 %cont7239 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10682)                                        ; assert function application
  %i0ptr10683 = getelementptr inbounds i64, i64* %cloptr10682, i64 0                 ; &cloptr10682[0]
  %f10685 = load i64, i64* %i0ptr10683, align 8                                      ; load; *i0ptr10683
  %fptr10684 = inttoptr i64 %f10685 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10684(i64 %cont7239, i64 %arg8040, i64 %retprim7241); tail call
  ret void
}


define void @lam8188(i64 %env8189, i64 %cont7242, i64 %UHk$_37take) {
  %arg8043 = add i64 0, 0                                                            ; quoted ()
  %cloptr10686 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10688 = getelementptr inbounds i64, i64* %cloptr10686, i64 1                  ; &eptr10688[1]
  store i64 %UHk$_37take, i64* %eptr10688                                            ; *eptr10688 = %UHk$_37take
  %eptr10687 = getelementptr inbounds i64, i64* %cloptr10686, i64 0                  ; &cloptr10686[0]
  %f10689 = ptrtoint void(i64,i64,i64,i64)* @lam8185 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10689, i64* %eptr10687                                                 ; store fptr
  %arg8042 = ptrtoint i64* %cloptr10686 to i64                                       ; closure cast; i64* -> i64
  %cloptr10690 = inttoptr i64 %cont7242 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10690)                                        ; assert function application
  %i0ptr10691 = getelementptr inbounds i64, i64* %cloptr10690, i64 0                 ; &cloptr10690[0]
  %f10693 = load i64, i64* %i0ptr10691, align 8                                      ; load; *i0ptr10691
  %fptr10692 = inttoptr i64 %f10693 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10692(i64 %cont7242, i64 %arg8043, i64 %arg8042)    ; tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %cont7243, i64 %VuL$lst, i64 %CoA$n) {
  %envptr10694 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10695 = getelementptr inbounds i64, i64* %envptr10694, i64 1                ; &envptr10694[1]
  %UHk$_37take = load i64, i64* %envptr10695, align 8                                ; load; *envptr10695
  %arg8045 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6959 = call i64 @prim__61(i64 %CoA$n, i64 %arg8045)                              ; call prim__61
  %cmp10696 = icmp eq i64 %a6959, 15                                                 ; false?
  br i1 %cmp10696, label %else10698, label %then10697                                ; if

then10697:
  %arg8048 = add i64 0, 0                                                            ; quoted ()
  %arg8047 = add i64 0, 0                                                            ; quoted ()
  %cloptr10699 = inttoptr i64 %cont7243 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10699)                                        ; assert function application
  %i0ptr10700 = getelementptr inbounds i64, i64* %cloptr10699, i64 0                 ; &cloptr10699[0]
  %f10702 = load i64, i64* %i0ptr10700, align 8                                      ; load; *i0ptr10700
  %fptr10701 = inttoptr i64 %f10702 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10701(i64 %cont7243, i64 %arg8048, i64 %arg8047)    ; tail call
  ret void

else10698:
  %a6960 = call i64 @prim_null_63(i64 %VuL$lst)                                      ; call prim_null_63
  %cmp10703 = icmp eq i64 %a6960, 15                                                 ; false?
  br i1 %cmp10703, label %else10705, label %then10704                                ; if

then10704:
  %arg8052 = add i64 0, 0                                                            ; quoted ()
  %arg8051 = add i64 0, 0                                                            ; quoted ()
  %cloptr10706 = inttoptr i64 %cont7243 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10706)                                        ; assert function application
  %i0ptr10707 = getelementptr inbounds i64, i64* %cloptr10706, i64 0                 ; &cloptr10706[0]
  %f10709 = load i64, i64* %i0ptr10707, align 8                                      ; load; *i0ptr10707
  %fptr10708 = inttoptr i64 %f10709 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10708(i64 %cont7243, i64 %arg8052, i64 %arg8051)    ; tail call
  ret void

else10705:
  %a6961 = call i64 @prim_car(i64 %VuL$lst)                                          ; call prim_car
  %a6962 = call i64 @prim_cdr(i64 %VuL$lst)                                          ; call prim_cdr
  %arg8056 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6963 = call i64 @prim__45(i64 %CoA$n, i64 %arg8056)                              ; call prim__45
  %cloptr10710 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10712 = getelementptr inbounds i64, i64* %cloptr10710, i64 1                  ; &eptr10712[1]
  %eptr10713 = getelementptr inbounds i64, i64* %cloptr10710, i64 2                  ; &eptr10713[2]
  store i64 %a6961, i64* %eptr10712                                                  ; *eptr10712 = %a6961
  store i64 %cont7243, i64* %eptr10713                                               ; *eptr10713 = %cont7243
  %eptr10711 = getelementptr inbounds i64, i64* %cloptr10710, i64 0                  ; &cloptr10710[0]
  %f10714 = ptrtoint void(i64,i64,i64)* @lam8181 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10714, i64* %eptr10711                                                 ; store fptr
  %arg8060 = ptrtoint i64* %cloptr10710 to i64                                       ; closure cast; i64* -> i64
  %cloptr10715 = inttoptr i64 %UHk$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10715)                                        ; assert function application
  %i0ptr10716 = getelementptr inbounds i64, i64* %cloptr10715, i64 0                 ; &cloptr10715[0]
  %f10718 = load i64, i64* %i0ptr10716, align 8                                      ; load; *i0ptr10716
  %fptr10717 = inttoptr i64 %f10718 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10717(i64 %UHk$_37take, i64 %arg8060, i64 %a6962, i64 %a6963); tail call
  ret void
}


define void @lam8181(i64 %env8182, i64 %_957244, i64 %a6964) {
  %envptr10719 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10720 = getelementptr inbounds i64, i64* %envptr10719, i64 2                ; &envptr10719[2]
  %cont7243 = load i64, i64* %envptr10720, align 8                                   ; load; *envptr10720
  %envptr10721 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10722 = getelementptr inbounds i64, i64* %envptr10721, i64 1                ; &envptr10721[1]
  %a6961 = load i64, i64* %envptr10722, align 8                                      ; load; *envptr10722
  %retprim7245 = call i64 @prim_cons(i64 %a6961, i64 %a6964)                         ; call prim_cons
  %arg8065 = add i64 0, 0                                                            ; quoted ()
  %cloptr10723 = inttoptr i64 %cont7243 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10723)                                        ; assert function application
  %i0ptr10724 = getelementptr inbounds i64, i64* %cloptr10723, i64 0                 ; &cloptr10723[0]
  %f10726 = load i64, i64* %i0ptr10724, align 8                                      ; load; *i0ptr10724
  %fptr10725 = inttoptr i64 %f10726 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10725(i64 %cont7243, i64 %arg8065, i64 %retprim7245); tail call
  ret void
}


define void @lam8174(i64 %env8175, i64 %cont7246, i64 %jj7$_37map) {
  %arg8068 = add i64 0, 0                                                            ; quoted ()
  %cloptr10727 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10729 = getelementptr inbounds i64, i64* %cloptr10727, i64 1                  ; &eptr10729[1]
  store i64 %jj7$_37map, i64* %eptr10729                                             ; *eptr10729 = %jj7$_37map
  %eptr10728 = getelementptr inbounds i64, i64* %cloptr10727, i64 0                  ; &cloptr10727[0]
  %f10730 = ptrtoint void(i64,i64,i64,i64)* @lam8171 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10730, i64* %eptr10728                                                 ; store fptr
  %arg8067 = ptrtoint i64* %cloptr10727 to i64                                       ; closure cast; i64* -> i64
  %cloptr10731 = inttoptr i64 %cont7246 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10731)                                        ; assert function application
  %i0ptr10732 = getelementptr inbounds i64, i64* %cloptr10731, i64 0                 ; &cloptr10731[0]
  %f10734 = load i64, i64* %i0ptr10732, align 8                                      ; load; *i0ptr10732
  %fptr10733 = inttoptr i64 %f10734 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10733(i64 %cont7246, i64 %arg8068, i64 %arg8067)    ; tail call
  ret void
}


define void @lam8171(i64 %env8172, i64 %cont7247, i64 %xFE$f, i64 %cAO$lst) {
  %envptr10735 = inttoptr i64 %env8172 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10736 = getelementptr inbounds i64, i64* %envptr10735, i64 1                ; &envptr10735[1]
  %jj7$_37map = load i64, i64* %envptr10736, align 8                                 ; load; *envptr10736
  %a6954 = call i64 @prim_null_63(i64 %cAO$lst)                                      ; call prim_null_63
  %cmp10737 = icmp eq i64 %a6954, 15                                                 ; false?
  br i1 %cmp10737, label %else10739, label %then10738                                ; if

then10738:
  %arg8072 = add i64 0, 0                                                            ; quoted ()
  %arg8071 = add i64 0, 0                                                            ; quoted ()
  %cloptr10740 = inttoptr i64 %cont7247 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10740)                                        ; assert function application
  %i0ptr10741 = getelementptr inbounds i64, i64* %cloptr10740, i64 0                 ; &cloptr10740[0]
  %f10743 = load i64, i64* %i0ptr10741, align 8                                      ; load; *i0ptr10741
  %fptr10742 = inttoptr i64 %f10743 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10742(i64 %cont7247, i64 %arg8072, i64 %arg8071)    ; tail call
  ret void

else10739:
  %a6955 = call i64 @prim_car(i64 %cAO$lst)                                          ; call prim_car
  %cloptr10744 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10746 = getelementptr inbounds i64, i64* %cloptr10744, i64 1                  ; &eptr10746[1]
  %eptr10747 = getelementptr inbounds i64, i64* %cloptr10744, i64 2                  ; &eptr10747[2]
  %eptr10748 = getelementptr inbounds i64, i64* %cloptr10744, i64 3                  ; &eptr10748[3]
  %eptr10749 = getelementptr inbounds i64, i64* %cloptr10744, i64 4                  ; &eptr10749[4]
  store i64 %cont7247, i64* %eptr10746                                               ; *eptr10746 = %cont7247
  store i64 %jj7$_37map, i64* %eptr10747                                             ; *eptr10747 = %jj7$_37map
  store i64 %xFE$f, i64* %eptr10748                                                  ; *eptr10748 = %xFE$f
  store i64 %cAO$lst, i64* %eptr10749                                                ; *eptr10749 = %cAO$lst
  %eptr10745 = getelementptr inbounds i64, i64* %cloptr10744, i64 0                  ; &cloptr10744[0]
  %f10750 = ptrtoint void(i64,i64,i64)* @lam8169 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10750, i64* %eptr10745                                                 ; store fptr
  %arg8076 = ptrtoint i64* %cloptr10744 to i64                                       ; closure cast; i64* -> i64
  %cloptr10751 = inttoptr i64 %xFE$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10751)                                        ; assert function application
  %i0ptr10752 = getelementptr inbounds i64, i64* %cloptr10751, i64 0                 ; &cloptr10751[0]
  %f10754 = load i64, i64* %i0ptr10752, align 8                                      ; load; *i0ptr10752
  %fptr10753 = inttoptr i64 %f10754 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10753(i64 %xFE$f, i64 %arg8076, i64 %a6955)         ; tail call
  ret void
}


define void @lam8169(i64 %env8170, i64 %_957248, i64 %a6956) {
  %envptr10755 = inttoptr i64 %env8170 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10756 = getelementptr inbounds i64, i64* %envptr10755, i64 4                ; &envptr10755[4]
  %cAO$lst = load i64, i64* %envptr10756, align 8                                    ; load; *envptr10756
  %envptr10757 = inttoptr i64 %env8170 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10758 = getelementptr inbounds i64, i64* %envptr10757, i64 3                ; &envptr10757[3]
  %xFE$f = load i64, i64* %envptr10758, align 8                                      ; load; *envptr10758
  %envptr10759 = inttoptr i64 %env8170 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10760 = getelementptr inbounds i64, i64* %envptr10759, i64 2                ; &envptr10759[2]
  %jj7$_37map = load i64, i64* %envptr10760, align 8                                 ; load; *envptr10760
  %envptr10761 = inttoptr i64 %env8170 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10762 = getelementptr inbounds i64, i64* %envptr10761, i64 1                ; &envptr10761[1]
  %cont7247 = load i64, i64* %envptr10762, align 8                                   ; load; *envptr10762
  %a6957 = call i64 @prim_cdr(i64 %cAO$lst)                                          ; call prim_cdr
  %cloptr10763 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10765 = getelementptr inbounds i64, i64* %cloptr10763, i64 1                  ; &eptr10765[1]
  %eptr10766 = getelementptr inbounds i64, i64* %cloptr10763, i64 2                  ; &eptr10766[2]
  store i64 %cont7247, i64* %eptr10765                                               ; *eptr10765 = %cont7247
  store i64 %a6956, i64* %eptr10766                                                  ; *eptr10766 = %a6956
  %eptr10764 = getelementptr inbounds i64, i64* %cloptr10763, i64 0                  ; &cloptr10763[0]
  %f10767 = ptrtoint void(i64,i64,i64)* @lam8167 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10767, i64* %eptr10764                                                 ; store fptr
  %arg8081 = ptrtoint i64* %cloptr10763 to i64                                       ; closure cast; i64* -> i64
  %cloptr10768 = inttoptr i64 %jj7$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10768)                                        ; assert function application
  %i0ptr10769 = getelementptr inbounds i64, i64* %cloptr10768, i64 0                 ; &cloptr10768[0]
  %f10771 = load i64, i64* %i0ptr10769, align 8                                      ; load; *i0ptr10769
  %fptr10770 = inttoptr i64 %f10771 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10770(i64 %jj7$_37map, i64 %arg8081, i64 %xFE$f, i64 %a6957); tail call
  ret void
}


define void @lam8167(i64 %env8168, i64 %_957249, i64 %a6958) {
  %envptr10772 = inttoptr i64 %env8168 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10773 = getelementptr inbounds i64, i64* %envptr10772, i64 2                ; &envptr10772[2]
  %a6956 = load i64, i64* %envptr10773, align 8                                      ; load; *envptr10773
  %envptr10774 = inttoptr i64 %env8168 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10775 = getelementptr inbounds i64, i64* %envptr10774, i64 1                ; &envptr10774[1]
  %cont7247 = load i64, i64* %envptr10775, align 8                                   ; load; *envptr10775
  %retprim7250 = call i64 @prim_cons(i64 %a6956, i64 %a6958)                         ; call prim_cons
  %arg8086 = add i64 0, 0                                                            ; quoted ()
  %cloptr10776 = inttoptr i64 %cont7247 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10776)                                        ; assert function application
  %i0ptr10777 = getelementptr inbounds i64, i64* %cloptr10776, i64 0                 ; &cloptr10776[0]
  %f10779 = load i64, i64* %i0ptr10777, align 8                                      ; load; *i0ptr10777
  %fptr10778 = inttoptr i64 %f10779 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10778(i64 %cont7247, i64 %arg8086, i64 %retprim7250); tail call
  ret void
}


define void @lam8162(i64 %env8163, i64 %cont7251, i64 %aO0$_37foldr1) {
  %arg8089 = add i64 0, 0                                                            ; quoted ()
  %cloptr10780 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10782 = getelementptr inbounds i64, i64* %cloptr10780, i64 1                  ; &eptr10782[1]
  store i64 %aO0$_37foldr1, i64* %eptr10782                                          ; *eptr10782 = %aO0$_37foldr1
  %eptr10781 = getelementptr inbounds i64, i64* %cloptr10780, i64 0                  ; &cloptr10780[0]
  %f10783 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8159 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10783, i64* %eptr10781                                                 ; store fptr
  %arg8088 = ptrtoint i64* %cloptr10780 to i64                                       ; closure cast; i64* -> i64
  %cloptr10784 = inttoptr i64 %cont7251 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10784)                                        ; assert function application
  %i0ptr10785 = getelementptr inbounds i64, i64* %cloptr10784, i64 0                 ; &cloptr10784[0]
  %f10787 = load i64, i64* %i0ptr10785, align 8                                      ; load; *i0ptr10785
  %fptr10786 = inttoptr i64 %f10787 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10786(i64 %cont7251, i64 %arg8089, i64 %arg8088)    ; tail call
  ret void
}


define void @lam8159(i64 %env8160, i64 %cont7252, i64 %Ooz$f, i64 %Lej$acc, i64 %vJx$lst) {
  %envptr10788 = inttoptr i64 %env8160 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10789 = getelementptr inbounds i64, i64* %envptr10788, i64 1                ; &envptr10788[1]
  %aO0$_37foldr1 = load i64, i64* %envptr10789, align 8                              ; load; *envptr10789
  %a6950 = call i64 @prim_null_63(i64 %vJx$lst)                                      ; call prim_null_63
  %cmp10790 = icmp eq i64 %a6950, 15                                                 ; false?
  br i1 %cmp10790, label %else10792, label %then10791                                ; if

then10791:
  %arg8093 = add i64 0, 0                                                            ; quoted ()
  %cloptr10793 = inttoptr i64 %cont7252 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10793)                                        ; assert function application
  %i0ptr10794 = getelementptr inbounds i64, i64* %cloptr10793, i64 0                 ; &cloptr10793[0]
  %f10796 = load i64, i64* %i0ptr10794, align 8                                      ; load; *i0ptr10794
  %fptr10795 = inttoptr i64 %f10796 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10795(i64 %cont7252, i64 %arg8093, i64 %Lej$acc)    ; tail call
  ret void

else10792:
  %a6951 = call i64 @prim_car(i64 %vJx$lst)                                          ; call prim_car
  %a6952 = call i64 @prim_cdr(i64 %vJx$lst)                                          ; call prim_cdr
  %cloptr10797 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10799 = getelementptr inbounds i64, i64* %cloptr10797, i64 1                  ; &eptr10799[1]
  %eptr10800 = getelementptr inbounds i64, i64* %cloptr10797, i64 2                  ; &eptr10800[2]
  %eptr10801 = getelementptr inbounds i64, i64* %cloptr10797, i64 3                  ; &eptr10801[3]
  store i64 %Ooz$f, i64* %eptr10799                                                  ; *eptr10799 = %Ooz$f
  store i64 %cont7252, i64* %eptr10800                                               ; *eptr10800 = %cont7252
  store i64 %a6951, i64* %eptr10801                                                  ; *eptr10801 = %a6951
  %eptr10798 = getelementptr inbounds i64, i64* %cloptr10797, i64 0                  ; &cloptr10797[0]
  %f10802 = ptrtoint void(i64,i64,i64)* @lam8157 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10802, i64* %eptr10798                                                 ; store fptr
  %arg8100 = ptrtoint i64* %cloptr10797 to i64                                       ; closure cast; i64* -> i64
  %cloptr10803 = inttoptr i64 %aO0$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10803)                                        ; assert function application
  %i0ptr10804 = getelementptr inbounds i64, i64* %cloptr10803, i64 0                 ; &cloptr10803[0]
  %f10806 = load i64, i64* %i0ptr10804, align 8                                      ; load; *i0ptr10804
  %fptr10805 = inttoptr i64 %f10806 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10805(i64 %aO0$_37foldr1, i64 %arg8100, i64 %Ooz$f, i64 %Lej$acc, i64 %a6952); tail call
  ret void
}


define void @lam8157(i64 %env8158, i64 %_957253, i64 %a6953) {
  %envptr10807 = inttoptr i64 %env8158 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10808 = getelementptr inbounds i64, i64* %envptr10807, i64 3                ; &envptr10807[3]
  %a6951 = load i64, i64* %envptr10808, align 8                                      ; load; *envptr10808
  %envptr10809 = inttoptr i64 %env8158 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10810 = getelementptr inbounds i64, i64* %envptr10809, i64 2                ; &envptr10809[2]
  %cont7252 = load i64, i64* %envptr10810, align 8                                   ; load; *envptr10810
  %envptr10811 = inttoptr i64 %env8158 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10812 = getelementptr inbounds i64, i64* %envptr10811, i64 1                ; &envptr10811[1]
  %Ooz$f = load i64, i64* %envptr10812, align 8                                      ; load; *envptr10812
  %cloptr10813 = inttoptr i64 %Ooz$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10813)                                        ; assert function application
  %i0ptr10814 = getelementptr inbounds i64, i64* %cloptr10813, i64 0                 ; &cloptr10813[0]
  %f10816 = load i64, i64* %i0ptr10814, align 8                                      ; load; *i0ptr10814
  %fptr10815 = inttoptr i64 %f10816 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10815(i64 %Ooz$f, i64 %cont7252, i64 %a6951, i64 %a6953); tail call
  ret void
}


define void @lam8154(i64 %env8155, i64 %cont7255, i64 %kZU$y) {
  %arg8107 = add i64 0, 0                                                            ; quoted ()
  %cloptr10817 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10819 = getelementptr inbounds i64, i64* %cloptr10817, i64 1                  ; &eptr10819[1]
  store i64 %kZU$y, i64* %eptr10819                                                  ; *eptr10819 = %kZU$y
  %eptr10818 = getelementptr inbounds i64, i64* %cloptr10817, i64 0                  ; &cloptr10817[0]
  %f10820 = ptrtoint void(i64,i64,i64)* @lam8151 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10820, i64* %eptr10818                                                 ; store fptr
  %arg8106 = ptrtoint i64* %cloptr10817 to i64                                       ; closure cast; i64* -> i64
  %cloptr10821 = inttoptr i64 %cont7255 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10821)                                        ; assert function application
  %i0ptr10822 = getelementptr inbounds i64, i64* %cloptr10821, i64 0                 ; &cloptr10821[0]
  %f10824 = load i64, i64* %i0ptr10822, align 8                                      ; load; *i0ptr10822
  %fptr10823 = inttoptr i64 %f10824 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10823(i64 %cont7255, i64 %arg8107, i64 %arg8106)    ; tail call
  ret void
}


define void @lam8151(i64 %env8152, i64 %cont7256, i64 %st3$f) {
  %envptr10825 = inttoptr i64 %env8152 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10826 = getelementptr inbounds i64, i64* %envptr10825, i64 1                ; &envptr10825[1]
  %kZU$y = load i64, i64* %envptr10826, align 8                                      ; load; *envptr10826
  %cloptr10827 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10829 = getelementptr inbounds i64, i64* %cloptr10827, i64 1                  ; &eptr10829[1]
  %eptr10830 = getelementptr inbounds i64, i64* %cloptr10827, i64 2                  ; &eptr10830[2]
  store i64 %st3$f, i64* %eptr10829                                                  ; *eptr10829 = %st3$f
  store i64 %kZU$y, i64* %eptr10830                                                  ; *eptr10830 = %kZU$y
  %eptr10828 = getelementptr inbounds i64, i64* %cloptr10827, i64 0                  ; &cloptr10827[0]
  %f10831 = ptrtoint void(i64,i64)* @lam8149 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10831, i64* %eptr10828                                                 ; store fptr
  %arg8109 = ptrtoint i64* %cloptr10827 to i64                                       ; closure cast; i64* -> i64
  %cloptr10832 = inttoptr i64 %st3$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10832)                                        ; assert function application
  %i0ptr10833 = getelementptr inbounds i64, i64* %cloptr10832, i64 0                 ; &cloptr10832[0]
  %f10835 = load i64, i64* %i0ptr10833, align 8                                      ; load; *i0ptr10833
  %fptr10834 = inttoptr i64 %f10835 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10834(i64 %st3$f, i64 %cont7256, i64 %arg8109)      ; tail call
  ret void
}


define void @lam8149(i64 %env8150, i64 %AVW$args7258) {
  %envptr10836 = inttoptr i64 %env8150 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10837 = getelementptr inbounds i64, i64* %envptr10836, i64 2                ; &envptr10836[2]
  %kZU$y = load i64, i64* %envptr10837, align 8                                      ; load; *envptr10837
  %envptr10838 = inttoptr i64 %env8150 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10839 = getelementptr inbounds i64, i64* %envptr10838, i64 1                ; &envptr10838[1]
  %st3$f = load i64, i64* %envptr10839, align 8                                      ; load; *envptr10839
  %cont7257 = call i64 @prim_car(i64 %AVW$args7258)                                  ; call prim_car
  %AVW$args = call i64 @prim_cdr(i64 %AVW$args7258)                                  ; call prim_cdr
  %cloptr10840 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10842 = getelementptr inbounds i64, i64* %cloptr10840, i64 1                  ; &eptr10842[1]
  %eptr10843 = getelementptr inbounds i64, i64* %cloptr10840, i64 2                  ; &eptr10843[2]
  %eptr10844 = getelementptr inbounds i64, i64* %cloptr10840, i64 3                  ; &eptr10844[3]
  store i64 %AVW$args, i64* %eptr10842                                               ; *eptr10842 = %AVW$args
  store i64 %st3$f, i64* %eptr10843                                                  ; *eptr10843 = %st3$f
  store i64 %cont7257, i64* %eptr10844                                               ; *eptr10844 = %cont7257
  %eptr10841 = getelementptr inbounds i64, i64* %cloptr10840, i64 0                  ; &cloptr10840[0]
  %f10845 = ptrtoint void(i64,i64,i64)* @lam8147 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10845, i64* %eptr10841                                                 ; store fptr
  %arg8115 = ptrtoint i64* %cloptr10840 to i64                                       ; closure cast; i64* -> i64
  %cloptr10846 = inttoptr i64 %kZU$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10846)                                        ; assert function application
  %i0ptr10847 = getelementptr inbounds i64, i64* %cloptr10846, i64 0                 ; &cloptr10846[0]
  %f10849 = load i64, i64* %i0ptr10847, align 8                                      ; load; *i0ptr10847
  %fptr10848 = inttoptr i64 %f10849 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10848(i64 %kZU$y, i64 %arg8115, i64 %kZU$y)         ; tail call
  ret void
}


define void @lam8147(i64 %env8148, i64 %_957259, i64 %a6948) {
  %envptr10850 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10851 = getelementptr inbounds i64, i64* %envptr10850, i64 3                ; &envptr10850[3]
  %cont7257 = load i64, i64* %envptr10851, align 8                                   ; load; *envptr10851
  %envptr10852 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10853 = getelementptr inbounds i64, i64* %envptr10852, i64 2                ; &envptr10852[2]
  %st3$f = load i64, i64* %envptr10853, align 8                                      ; load; *envptr10853
  %envptr10854 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10855 = getelementptr inbounds i64, i64* %envptr10854, i64 1                ; &envptr10854[1]
  %AVW$args = load i64, i64* %envptr10855, align 8                                   ; load; *envptr10855
  %cloptr10856 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10858 = getelementptr inbounds i64, i64* %cloptr10856, i64 1                  ; &eptr10858[1]
  %eptr10859 = getelementptr inbounds i64, i64* %cloptr10856, i64 2                  ; &eptr10859[2]
  store i64 %AVW$args, i64* %eptr10858                                               ; *eptr10858 = %AVW$args
  store i64 %cont7257, i64* %eptr10859                                               ; *eptr10859 = %cont7257
  %eptr10857 = getelementptr inbounds i64, i64* %cloptr10856, i64 0                  ; &cloptr10856[0]
  %f10860 = ptrtoint void(i64,i64,i64)* @lam8145 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10860, i64* %eptr10857                                                 ; store fptr
  %arg8118 = ptrtoint i64* %cloptr10856 to i64                                       ; closure cast; i64* -> i64
  %cloptr10861 = inttoptr i64 %a6948 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10861)                                        ; assert function application
  %i0ptr10862 = getelementptr inbounds i64, i64* %cloptr10861, i64 0                 ; &cloptr10861[0]
  %f10864 = load i64, i64* %i0ptr10862, align 8                                      ; load; *i0ptr10862
  %fptr10863 = inttoptr i64 %f10864 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10863(i64 %a6948, i64 %arg8118, i64 %st3$f)         ; tail call
  ret void
}


define void @lam8145(i64 %env8146, i64 %_957260, i64 %a6949) {
  %envptr10865 = inttoptr i64 %env8146 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10866 = getelementptr inbounds i64, i64* %envptr10865, i64 2                ; &envptr10865[2]
  %cont7257 = load i64, i64* %envptr10866, align 8                                   ; load; *envptr10866
  %envptr10867 = inttoptr i64 %env8146 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10868 = getelementptr inbounds i64, i64* %envptr10867, i64 1                ; &envptr10867[1]
  %AVW$args = load i64, i64* %envptr10868, align 8                                   ; load; *envptr10868
  %cps_45lst7261 = call i64 @prim_cons(i64 %cont7257, i64 %AVW$args)                 ; call prim_cons
  %cloptr10869 = inttoptr i64 %a6949 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10869)                                        ; assert function application
  %i0ptr10870 = getelementptr inbounds i64, i64* %cloptr10869, i64 0                 ; &cloptr10869[0]
  %f10872 = load i64, i64* %i0ptr10870, align 8                                      ; load; *i0ptr10870
  %fptr10871 = inttoptr i64 %f10872 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10871(i64 %a6949, i64 %cps_45lst7261)               ; tail call
  ret void
}





@sym9421 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
