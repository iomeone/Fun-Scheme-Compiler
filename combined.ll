; ModuleID = 'header.cpp'
source_filename = "header.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_mem_used = global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Memory usage exceeded MEM_CAP\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Expected closure (in expect_closure). Non-function value applied.\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Too many arguments. (remaining_args)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"too_few_args: %d\0A\00", align 1
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
@.str.25 = private unnamed_addr constant [46 x i8] c"(print.. v); unrecognized value %llu int %llu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"(print v); unrecognized value %llu\00", align 1
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

; Function Attrs: ssp uwtable
define void @fatal_err(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: ssp uwtable
define i64* @alloc(i64) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @current_mem_used, align 8
  %6 = add i64 %5, %4
  store i64 %6, i64* @current_mem_used, align 8
  %7 = load i64, i64* @current_mem_used, align 8
  %8 = icmp ult i64 %7, 268435456
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i8* @malloc(i64 %10)
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %2, align 8
  br label %14

; <label>:13                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i64* null, i64** %2, align 8
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64*, i64** %2, align 8
  ret i64* %15
}

declare i8* @malloc(i64) #1

; Function Attrs: ssp uwtable
define void @print_u64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 %3)
  ret void
}

; Function Attrs: ssp uwtable
define i64 @expect_closure(i64*) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = ptrtoint i64* %3 to i64
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %1
  %9 = load i64*, i64** %2, align 8
  %10 = ptrtoint i64* %9 to i64
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @expect_args0(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %1
  ret i64 0
}

; Function Attrs: ssp uwtable
define i64 @expect_args1(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %16, %8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_cons(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_other(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 6
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @remaining_args(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, -8
  %6 = inttoptr i64 %5 to i64*
  store i64* %6, i64** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %1
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %17)
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_int(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = zext i32 %4 to i64
  %6 = shl i64 %5, 32
  %7 = or i64 %6, 2
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_null() #3 {
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_true() #3 {
  ret i64 31
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_false() #3 {
  ret i64 15
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_string(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 3
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_symbol(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 4
  ret i64 %5
}

; Function Attrs: ssp uwtable
define i64 @prim_print_aux(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  br label %136

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %135

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %134

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %43)
  br label %133

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %52)
  br label %132

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %61)
  br label %131

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print_aux(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print_aux(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %130

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = icmp eq i64 %105, 39
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %129

; <label>:109                                     ; preds = %104
  %110 = load i64, i64* %2, align 8
  %111 = icmp eq i64 %110, 15
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %128

; <label>:114                                     ; preds = %109
  %115 = load i64, i64* %2, align 8
  %116 = icmp eq i64 %115, 31
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %114
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %127

; <label>:119                                     ; preds = %114
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* %2, align 8
  %122 = trunc i64 %121 to i32
  %123 = zext i32 %122 to i64
  %124 = shl i64 %123, 32
  %125 = or i64 %124, 2
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i32 0, i32 0), i64 %120, i64 %125)
  br label %127

; <label>:127                                     ; preds = %119, %117
  br label %128

; <label>:128                                     ; preds = %127, %112
  br label %129

; <label>:129                                     ; preds = %128, %107
  br label %130

; <label>:130                                     ; preds = %129, %102
  br label %131

; <label>:131                                     ; preds = %130, %58
  br label %132

; <label>:132                                     ; preds = %131, %49
  br label %133

; <label>:133                                     ; preds = %132, %40
  br label %134

; <label>:134                                     ; preds = %133, %21
  br label %135

; <label>:135                                     ; preds = %134, %15
  br label %136

; <label>:136                                     ; preds = %135, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @prim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  br label %131

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %130

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %129

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %43)
  br label %128

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %52)
  br label %127

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* %61)
  br label %126

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %125

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = icmp eq i64 %105, 39
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %124

; <label>:109                                     ; preds = %104
  %110 = load i64, i64* %2, align 8
  %111 = icmp eq i64 %110, 15
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %123

; <label>:114                                     ; preds = %109
  %115 = load i64, i64* %2, align 8
  %116 = icmp eq i64 %115, 31
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %114
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %122

; <label>:119                                     ; preds = %114
  %120 = load i64, i64* %2, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), i64 %120)
  br label %122

; <label>:122                                     ; preds = %119, %117
  br label %123

; <label>:123                                     ; preds = %122, %112
  br label %124

; <label>:124                                     ; preds = %123, %107
  br label %125

; <label>:125                                     ; preds = %124, %102
  br label %126

; <label>:126                                     ; preds = %125, %58
  br label %127

; <label>:127                                     ; preds = %126, %49
  br label %128

; <label>:128                                     ; preds = %127, %40
  br label %129

; <label>:129                                     ; preds = %128, %21
  br label %130

; <label>:130                                     ; preds = %129, %15
  br label %131

; <label>:131                                     ; preds = %130, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_print(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_halt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @prim_print(i64 %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %8 = load i64, i64* %2, align 8
  ret i64 %8
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call i8* @malloc(i64 4096)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

; <label>:9                                       ; preds = %18, %1
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %14, 512
  br label %16

; <label>:16                                      ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @expect_cons(i64 %19, i64* %2)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 %20, i64* %24, align 8
  br label %9

; <label>:25                                      ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 %27, 8
  %29 = call i64* @alloc(i64 %28)
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 3
  %32 = or i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  store i64 0, i64* %6, align 8
  br label %35

; <label>:35                                      ; preds = %48, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

; <label>:39                                      ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64 %43, i64* %47, align 8
  br label %48

; <label>:48                                      ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %35

; <label>:51                                      ; preds = %35
  %52 = load i64*, i64** %3, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %56, label %54

; <label>:54                                      ; preds = %51
  %55 = bitcast i64* %52 to i8*
  call void @_ZdaPv(i8* %55) #6
  br label %56

; <label>:56                                      ; preds = %54, %51
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = or i64 %58, 6
  ret i64 %59
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: ssp uwtable
define i64 @prim_make_45vector(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %2
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = call i64* @alloc(i64 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 3
  %24 = or i64 %23, 1
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  store i64 1, i64* %7, align 8
  br label %27

; <label>:27                                      ; preds = %36, %12
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %35, align 8
  br label %36

; <label>:36                                      ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %27

; <label>:39                                      ; preds = %27
  %40 = load i64*, i64** %6, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = or i64 %41, 6
  ret i64 %42
}

; Function Attrs: ssp uwtable
define i64 @applyprim_make_45vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_make_45vector(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45ref(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 6
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  %34 = load i64, i64* %33, align 8
  ret i64 %34
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45ref(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_vector_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45set_33(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 7
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %11
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %24, %16
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 %32
  store i64 %26, i64* %36, align 8
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45set_33(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_vector_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eq_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eq_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eq_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eqv_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eqv_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eqv_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_number_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_number_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_number_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_integer_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_integer_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_integer_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 39
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_void_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_void_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_procedure_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_procedure_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_procedure_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_null_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_null_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_null_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_cons_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cons_63(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cons(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64* @alloc(i64 16)
  store i64* %6, i64** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = or i64 %14, 1
  ret i64 %15
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_cons(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_car(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cdr(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim__43(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__43(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__43(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__45(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = sub nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__45(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %50

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

; <label>:21                                      ; preds = %13
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %2, align 8
  br label %50

; <label>:32                                      ; preds = %13
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @applyprim__43(i64 %41)
  %43 = and i64 %42, -8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %38, %45
  %47 = zext i32 %46 to i64
  %48 = shl i64 %47, 32
  %49 = or i64 %48, 2
  store i64 %49, i64* %2, align 8
  br label %50

; <label>:50                                      ; preds = %32, %21, %7
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: ssp uwtable
define i64 @prim__42(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__42(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 4294967298, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__42(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__47(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, -8
  %8 = lshr i64 %7, 32
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %2
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 2
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %22, %18
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, -8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = sdiv i32 %27, %31
  %33 = zext i32 %32 to i64
  %34 = shl i64 %33, 32
  %35 = or i64 %34, 2
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60_61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_not(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 15
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_not(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_not(i64 %6)
  ret i64 %7
}

attributes #0 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.0.0 (clang-800.0.42.1)"}


;;;;;;

define void @proc_main() {
  %cloptr733303 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733304 = getelementptr inbounds i64, i64* %cloptr733303, i64 0                ; &cloptr733303[0]
  %f733305 = ptrtoint void(i64,i64,i64)* @lam733301 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733305, i64* %eptr733304                                               ; store fptr
  %arg732006 = ptrtoint i64* %cloptr733303 to i64                                    ; closure cast; i64* -> i64
  %cloptr733306 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733307 = getelementptr inbounds i64, i64* %cloptr733306, i64 0                ; &cloptr733306[0]
  %f733308 = ptrtoint void(i64,i64,i64)* @lam733299 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733308, i64* %eptr733307                                               ; store fptr
  %arg732005 = ptrtoint i64* %cloptr733306 to i64                                    ; closure cast; i64* -> i64
  %cloptr733309 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733310 = getelementptr inbounds i64, i64* %cloptr733309, i64 0                ; &cloptr733309[0]
  %f733311 = ptrtoint void(i64,i64,i64)* @lam732856 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733311, i64* %eptr733310                                               ; store fptr
  %arg732004 = ptrtoint i64* %cloptr733309 to i64                                    ; closure cast; i64* -> i64
  %cloptr733312 = inttoptr i64 %arg732006 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733312)                                       ; assert function application
  %i0ptr733313 = getelementptr inbounds i64, i64* %cloptr733312, i64 0               ; &cloptr733312[0]
  %f733315 = load i64, i64* %i0ptr733313, align 8                                    ; load; *i0ptr733313
  %fptr733314 = inttoptr i64 %f733315 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733314(i64 %arg732006, i64 %arg732005, i64 %arg732004); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam733301(i64 %env733302, i64 %cont731996, i64 %Zmj$yu) {
  %cloptr733316 = inttoptr i64 %Zmj$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733316)                                       ; assert function application
  %i0ptr733317 = getelementptr inbounds i64, i64* %cloptr733316, i64 0               ; &cloptr733316[0]
  %f733319 = load i64, i64* %i0ptr733317, align 8                                    ; load; *i0ptr733317
  %fptr733318 = inttoptr i64 %f733319 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733318(i64 %Zmj$yu, i64 %cont731996, i64 %Zmj$yu)   ; tail call
  ret void
}


define void @lam733299(i64 %env733300, i64 %_95731818, i64 %keS$Ycmb) {
  %cloptr733320 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733322 = getelementptr inbounds i64, i64* %cloptr733320, i64 1                ; &eptr733322[1]
  store i64 %keS$Ycmb, i64* %eptr733322                                              ; *eptr733322 = %keS$Ycmb
  %eptr733321 = getelementptr inbounds i64, i64* %cloptr733320, i64 0                ; &cloptr733320[0]
  %f733323 = ptrtoint void(i64,i64,i64)* @lam733297 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733323, i64* %eptr733321                                               ; store fptr
  %arg732011 = ptrtoint i64* %cloptr733320 to i64                                    ; closure cast; i64* -> i64
  %cloptr733324 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733325 = getelementptr inbounds i64, i64* %cloptr733324, i64 0                ; &cloptr733324[0]
  %f733326 = ptrtoint void(i64,i64,i64)* @lam732864 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733326, i64* %eptr733325                                               ; store fptr
  %arg732010 = ptrtoint i64* %cloptr733324 to i64                                    ; closure cast; i64* -> i64
  %cloptr733327 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733327)                                       ; assert function application
  %i0ptr733328 = getelementptr inbounds i64, i64* %cloptr733327, i64 0               ; &cloptr733327[0]
  %f733330 = load i64, i64* %i0ptr733328, align 8                                    ; load; *i0ptr733328
  %fptr733329 = inttoptr i64 %f733330 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733329(i64 %keS$Ycmb, i64 %arg732011, i64 %arg732010); tail call
  ret void
}


define void @lam733297(i64 %env733298, i64 %_95731819, i64 %pAn$_37foldr1) {
  %envptr733331 = inttoptr i64 %env733298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733332 = getelementptr inbounds i64, i64* %envptr733331, i64 1              ; &envptr733331[1]
  %keS$Ycmb = load i64, i64* %envptr733332, align 8                                  ; load; *envptr733332
  %cloptr733333 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733335 = getelementptr inbounds i64, i64* %cloptr733333, i64 1                ; &eptr733335[1]
  %eptr733336 = getelementptr inbounds i64, i64* %cloptr733333, i64 2                ; &eptr733336[2]
  store i64 %keS$Ycmb, i64* %eptr733335                                              ; *eptr733335 = %keS$Ycmb
  store i64 %pAn$_37foldr1, i64* %eptr733336                                         ; *eptr733336 = %pAn$_37foldr1
  %eptr733334 = getelementptr inbounds i64, i64* %cloptr733333, i64 0                ; &cloptr733333[0]
  %f733337 = ptrtoint void(i64,i64,i64)* @lam733295 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733337, i64* %eptr733334                                               ; store fptr
  %arg732014 = ptrtoint i64* %cloptr733333 to i64                                    ; closure cast; i64* -> i64
  %cloptr733338 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733339 = getelementptr inbounds i64, i64* %cloptr733338, i64 0                ; &cloptr733338[0]
  %f733340 = ptrtoint void(i64,i64,i64)* @lam732876 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733340, i64* %eptr733339                                               ; store fptr
  %arg732013 = ptrtoint i64* %cloptr733338 to i64                                    ; closure cast; i64* -> i64
  %cloptr733341 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733341)                                       ; assert function application
  %i0ptr733342 = getelementptr inbounds i64, i64* %cloptr733341, i64 0               ; &cloptr733341[0]
  %f733344 = load i64, i64* %i0ptr733342, align 8                                    ; load; *i0ptr733342
  %fptr733343 = inttoptr i64 %f733344 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733343(i64 %keS$Ycmb, i64 %arg732014, i64 %arg732013); tail call
  ret void
}


define void @lam733295(i64 %env733296, i64 %_95731820, i64 %fH6$_37map1) {
  %envptr733345 = inttoptr i64 %env733296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733346 = getelementptr inbounds i64, i64* %envptr733345, i64 2              ; &envptr733345[2]
  %pAn$_37foldr1 = load i64, i64* %envptr733346, align 8                             ; load; *envptr733346
  %envptr733347 = inttoptr i64 %env733296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733348 = getelementptr inbounds i64, i64* %envptr733347, i64 1              ; &envptr733347[1]
  %keS$Ycmb = load i64, i64* %envptr733348, align 8                                  ; load; *envptr733348
  %cloptr733349 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733351 = getelementptr inbounds i64, i64* %cloptr733349, i64 1                ; &eptr733351[1]
  %eptr733352 = getelementptr inbounds i64, i64* %cloptr733349, i64 2                ; &eptr733352[2]
  %eptr733353 = getelementptr inbounds i64, i64* %cloptr733349, i64 3                ; &eptr733353[3]
  store i64 %fH6$_37map1, i64* %eptr733351                                           ; *eptr733351 = %fH6$_37map1
  store i64 %keS$Ycmb, i64* %eptr733352                                              ; *eptr733352 = %keS$Ycmb
  store i64 %pAn$_37foldr1, i64* %eptr733353                                         ; *eptr733353 = %pAn$_37foldr1
  %eptr733350 = getelementptr inbounds i64, i64* %cloptr733349, i64 0                ; &cloptr733349[0]
  %f733354 = ptrtoint void(i64,i64,i64)* @lam733293 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733354, i64* %eptr733350                                               ; store fptr
  %arg732017 = ptrtoint i64* %cloptr733349 to i64                                    ; closure cast; i64* -> i64
  %cloptr733355 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733356 = getelementptr inbounds i64, i64* %cloptr733355, i64 0                ; &cloptr733355[0]
  %f733357 = ptrtoint void(i64,i64,i64)* @lam732890 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733357, i64* %eptr733356                                               ; store fptr
  %arg732016 = ptrtoint i64* %cloptr733355 to i64                                    ; closure cast; i64* -> i64
  %cloptr733358 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733358)                                       ; assert function application
  %i0ptr733359 = getelementptr inbounds i64, i64* %cloptr733358, i64 0               ; &cloptr733358[0]
  %f733361 = load i64, i64* %i0ptr733359, align 8                                    ; load; *i0ptr733359
  %fptr733360 = inttoptr i64 %f733361 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733360(i64 %keS$Ycmb, i64 %arg732017, i64 %arg732016); tail call
  ret void
}


define void @lam733293(i64 %env733294, i64 %_95731821, i64 %WjK$_37take) {
  %envptr733362 = inttoptr i64 %env733294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733363 = getelementptr inbounds i64, i64* %envptr733362, i64 3              ; &envptr733362[3]
  %pAn$_37foldr1 = load i64, i64* %envptr733363, align 8                             ; load; *envptr733363
  %envptr733364 = inttoptr i64 %env733294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733365 = getelementptr inbounds i64, i64* %envptr733364, i64 2              ; &envptr733364[2]
  %keS$Ycmb = load i64, i64* %envptr733365, align 8                                  ; load; *envptr733365
  %envptr733366 = inttoptr i64 %env733294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733367 = getelementptr inbounds i64, i64* %envptr733366, i64 1              ; &envptr733366[1]
  %fH6$_37map1 = load i64, i64* %envptr733367, align 8                               ; load; *envptr733367
  %cloptr733368 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr733370 = getelementptr inbounds i64, i64* %cloptr733368, i64 1                ; &eptr733370[1]
  %eptr733371 = getelementptr inbounds i64, i64* %cloptr733368, i64 2                ; &eptr733371[2]
  %eptr733372 = getelementptr inbounds i64, i64* %cloptr733368, i64 3                ; &eptr733372[3]
  %eptr733373 = getelementptr inbounds i64, i64* %cloptr733368, i64 4                ; &eptr733373[4]
  store i64 %WjK$_37take, i64* %eptr733370                                           ; *eptr733370 = %WjK$_37take
  store i64 %fH6$_37map1, i64* %eptr733371                                           ; *eptr733371 = %fH6$_37map1
  store i64 %keS$Ycmb, i64* %eptr733372                                              ; *eptr733372 = %keS$Ycmb
  store i64 %pAn$_37foldr1, i64* %eptr733373                                         ; *eptr733373 = %pAn$_37foldr1
  %eptr733369 = getelementptr inbounds i64, i64* %cloptr733368, i64 0                ; &cloptr733368[0]
  %f733374 = ptrtoint void(i64,i64,i64)* @lam733291 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733374, i64* %eptr733369                                               ; store fptr
  %arg732020 = ptrtoint i64* %cloptr733368 to i64                                    ; closure cast; i64* -> i64
  %cloptr733375 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733376 = getelementptr inbounds i64, i64* %cloptr733375, i64 0                ; &cloptr733375[0]
  %f733377 = ptrtoint void(i64,i64,i64)* @lam732901 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733377, i64* %eptr733376                                               ; store fptr
  %arg732019 = ptrtoint i64* %cloptr733375 to i64                                    ; closure cast; i64* -> i64
  %cloptr733378 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733378)                                       ; assert function application
  %i0ptr733379 = getelementptr inbounds i64, i64* %cloptr733378, i64 0               ; &cloptr733378[0]
  %f733381 = load i64, i64* %i0ptr733379, align 8                                    ; load; *i0ptr733379
  %fptr733380 = inttoptr i64 %f733381 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733380(i64 %keS$Ycmb, i64 %arg732020, i64 %arg732019); tail call
  ret void
}


define void @lam733291(i64 %env733292, i64 %_95731822, i64 %RPh$_37length) {
  %envptr733382 = inttoptr i64 %env733292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733383 = getelementptr inbounds i64, i64* %envptr733382, i64 4              ; &envptr733382[4]
  %pAn$_37foldr1 = load i64, i64* %envptr733383, align 8                             ; load; *envptr733383
  %envptr733384 = inttoptr i64 %env733292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733385 = getelementptr inbounds i64, i64* %envptr733384, i64 3              ; &envptr733384[3]
  %keS$Ycmb = load i64, i64* %envptr733385, align 8                                  ; load; *envptr733385
  %envptr733386 = inttoptr i64 %env733292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733387 = getelementptr inbounds i64, i64* %envptr733386, i64 2              ; &envptr733386[2]
  %fH6$_37map1 = load i64, i64* %envptr733387, align 8                               ; load; *envptr733387
  %envptr733388 = inttoptr i64 %env733292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733389 = getelementptr inbounds i64, i64* %envptr733388, i64 1              ; &envptr733388[1]
  %WjK$_37take = load i64, i64* %envptr733389, align 8                               ; load; *envptr733389
  %cloptr733390 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr733392 = getelementptr inbounds i64, i64* %cloptr733390, i64 1                ; &eptr733392[1]
  %eptr733393 = getelementptr inbounds i64, i64* %cloptr733390, i64 2                ; &eptr733393[2]
  %eptr733394 = getelementptr inbounds i64, i64* %cloptr733390, i64 3                ; &eptr733394[3]
  %eptr733395 = getelementptr inbounds i64, i64* %cloptr733390, i64 4                ; &eptr733395[4]
  %eptr733396 = getelementptr inbounds i64, i64* %cloptr733390, i64 5                ; &eptr733396[5]
  store i64 %WjK$_37take, i64* %eptr733392                                           ; *eptr733392 = %WjK$_37take
  store i64 %fH6$_37map1, i64* %eptr733393                                           ; *eptr733393 = %fH6$_37map1
  store i64 %keS$Ycmb, i64* %eptr733394                                              ; *eptr733394 = %keS$Ycmb
  store i64 %pAn$_37foldr1, i64* %eptr733395                                         ; *eptr733395 = %pAn$_37foldr1
  store i64 %RPh$_37length, i64* %eptr733396                                         ; *eptr733396 = %RPh$_37length
  %eptr733391 = getelementptr inbounds i64, i64* %cloptr733390, i64 0                ; &cloptr733390[0]
  %f733397 = ptrtoint void(i64,i64,i64)* @lam733289 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733397, i64* %eptr733391                                               ; store fptr
  %arg732023 = ptrtoint i64* %cloptr733390 to i64                                    ; closure cast; i64* -> i64
  %cloptr733398 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733399 = getelementptr inbounds i64, i64* %cloptr733398, i64 0                ; &cloptr733398[0]
  %f733400 = ptrtoint void(i64,i64,i64)* @lam732909 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733400, i64* %eptr733399                                               ; store fptr
  %arg732022 = ptrtoint i64* %cloptr733398 to i64                                    ; closure cast; i64* -> i64
  %cloptr733401 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733401)                                       ; assert function application
  %i0ptr733402 = getelementptr inbounds i64, i64* %cloptr733401, i64 0               ; &cloptr733401[0]
  %f733404 = load i64, i64* %i0ptr733402, align 8                                    ; load; *i0ptr733402
  %fptr733403 = inttoptr i64 %f733404 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733403(i64 %keS$Ycmb, i64 %arg732023, i64 %arg732022); tail call
  ret void
}


define void @lam733289(i64 %env733290, i64 %_95731823, i64 %VIC$_37foldl1) {
  %envptr733405 = inttoptr i64 %env733290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733406 = getelementptr inbounds i64, i64* %envptr733405, i64 5              ; &envptr733405[5]
  %RPh$_37length = load i64, i64* %envptr733406, align 8                             ; load; *envptr733406
  %envptr733407 = inttoptr i64 %env733290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733408 = getelementptr inbounds i64, i64* %envptr733407, i64 4              ; &envptr733407[4]
  %pAn$_37foldr1 = load i64, i64* %envptr733408, align 8                             ; load; *envptr733408
  %envptr733409 = inttoptr i64 %env733290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733410 = getelementptr inbounds i64, i64* %envptr733409, i64 3              ; &envptr733409[3]
  %keS$Ycmb = load i64, i64* %envptr733410, align 8                                  ; load; *envptr733410
  %envptr733411 = inttoptr i64 %env733290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733412 = getelementptr inbounds i64, i64* %envptr733411, i64 2              ; &envptr733411[2]
  %fH6$_37map1 = load i64, i64* %envptr733412, align 8                               ; load; *envptr733412
  %envptr733413 = inttoptr i64 %env733290 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733414 = getelementptr inbounds i64, i64* %envptr733413, i64 1              ; &envptr733413[1]
  %WjK$_37take = load i64, i64* %envptr733414, align 8                               ; load; *envptr733414
  %cloptr733415 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733417 = getelementptr inbounds i64, i64* %cloptr733415, i64 1                ; &eptr733417[1]
  store i64 %VIC$_37foldl1, i64* %eptr733417                                         ; *eptr733417 = %VIC$_37foldl1
  %eptr733416 = getelementptr inbounds i64, i64* %cloptr733415, i64 0                ; &cloptr733415[0]
  %f733418 = ptrtoint void(i64,i64,i64)* @lam733287 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733418, i64* %eptr733416                                               ; store fptr
  %Gcb$_37last = ptrtoint i64* %cloptr733415 to i64                                  ; closure cast; i64* -> i64
  %cloptr733419 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733421 = getelementptr inbounds i64, i64* %cloptr733419, i64 1                ; &eptr733421[1]
  %eptr733422 = getelementptr inbounds i64, i64* %cloptr733419, i64 2                ; &eptr733422[2]
  store i64 %WjK$_37take, i64* %eptr733421                                           ; *eptr733421 = %WjK$_37take
  store i64 %RPh$_37length, i64* %eptr733422                                         ; *eptr733422 = %RPh$_37length
  %eptr733420 = getelementptr inbounds i64, i64* %cloptr733419, i64 0                ; &cloptr733419[0]
  %f733423 = ptrtoint void(i64,i64,i64,i64)* @lam733281 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733423, i64* %eptr733420                                               ; store fptr
  %myM$_37drop_45right = ptrtoint i64* %cloptr733419 to i64                          ; closure cast; i64* -> i64
  %cloptr733424 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr733426 = getelementptr inbounds i64, i64* %cloptr733424, i64 1                ; &eptr733426[1]
  %eptr733427 = getelementptr inbounds i64, i64* %cloptr733424, i64 2                ; &eptr733427[2]
  %eptr733428 = getelementptr inbounds i64, i64* %cloptr733424, i64 3                ; &eptr733428[3]
  %eptr733429 = getelementptr inbounds i64, i64* %cloptr733424, i64 4                ; &eptr733429[4]
  %eptr733430 = getelementptr inbounds i64, i64* %cloptr733424, i64 5                ; &eptr733430[5]
  %eptr733431 = getelementptr inbounds i64, i64* %cloptr733424, i64 6                ; &eptr733431[6]
  store i64 %VIC$_37foldl1, i64* %eptr733426                                         ; *eptr733426 = %VIC$_37foldl1
  store i64 %Gcb$_37last, i64* %eptr733427                                           ; *eptr733427 = %Gcb$_37last
  store i64 %myM$_37drop_45right, i64* %eptr733428                                   ; *eptr733428 = %myM$_37drop_45right
  store i64 %keS$Ycmb, i64* %eptr733429                                              ; *eptr733429 = %keS$Ycmb
  store i64 %pAn$_37foldr1, i64* %eptr733430                                         ; *eptr733430 = %pAn$_37foldr1
  store i64 %RPh$_37length, i64* %eptr733431                                         ; *eptr733431 = %RPh$_37length
  %eptr733425 = getelementptr inbounds i64, i64* %cloptr733424, i64 0                ; &cloptr733424[0]
  %f733432 = ptrtoint void(i64,i64,i64)* @lam733277 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733432, i64* %eptr733425                                               ; store fptr
  %arg732043 = ptrtoint i64* %cloptr733424 to i64                                    ; closure cast; i64* -> i64
  %cloptr733433 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733435 = getelementptr inbounds i64, i64* %cloptr733433, i64 1                ; &eptr733435[1]
  %eptr733436 = getelementptr inbounds i64, i64* %cloptr733433, i64 2                ; &eptr733436[2]
  store i64 %fH6$_37map1, i64* %eptr733435                                           ; *eptr733435 = %fH6$_37map1
  store i64 %pAn$_37foldr1, i64* %eptr733436                                         ; *eptr733436 = %pAn$_37foldr1
  %eptr733434 = getelementptr inbounds i64, i64* %cloptr733433, i64 0                ; &cloptr733433[0]
  %f733437 = ptrtoint void(i64,i64,i64)* @lam732946 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733437, i64* %eptr733434                                               ; store fptr
  %arg732042 = ptrtoint i64* %cloptr733433 to i64                                    ; closure cast; i64* -> i64
  %cloptr733438 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733438)                                       ; assert function application
  %i0ptr733439 = getelementptr inbounds i64, i64* %cloptr733438, i64 0               ; &cloptr733438[0]
  %f733441 = load i64, i64* %i0ptr733439, align 8                                    ; load; *i0ptr733439
  %fptr733440 = inttoptr i64 %f733441 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733440(i64 %keS$Ycmb, i64 %arg732043, i64 %arg732042); tail call
  ret void
}


define void @lam733287(i64 %env733288, i64 %cont731824, i64 %ekj$lst) {
  %envptr733442 = inttoptr i64 %env733288 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733443 = getelementptr inbounds i64, i64* %envptr733442, i64 1              ; &envptr733442[1]
  %VIC$_37foldl1 = load i64, i64* %envptr733443, align 8                             ; load; *envptr733443
  %cloptr733444 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733445 = getelementptr inbounds i64, i64* %cloptr733444, i64 0                ; &cloptr733444[0]
  %f733446 = ptrtoint void(i64,i64,i64,i64)* @lam733285 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733446, i64* %eptr733445                                               ; store fptr
  %arg732027 = ptrtoint i64* %cloptr733444 to i64                                    ; closure cast; i64* -> i64
  %arg732026 = add i64 0, 0                                                          ; quoted ()
  %cloptr733447 = inttoptr i64 %VIC$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733447)                                       ; assert function application
  %i0ptr733448 = getelementptr inbounds i64, i64* %cloptr733447, i64 0               ; &cloptr733447[0]
  %f733450 = load i64, i64* %i0ptr733448, align 8                                    ; load; *i0ptr733448
  %fptr733449 = inttoptr i64 %f733450 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733449(i64 %VIC$_37foldl1, i64 %cont731824, i64 %arg732027, i64 %arg732026, i64 %ekj$lst); tail call
  ret void
}


define void @lam733285(i64 %env733286, i64 %cont731825, i64 %WSU$x, i64 %VUH$y) {
  %arg732031 = add i64 0, 0                                                          ; quoted ()
  %cloptr733451 = inttoptr i64 %cont731825 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733451)                                       ; assert function application
  %i0ptr733452 = getelementptr inbounds i64, i64* %cloptr733451, i64 0               ; &cloptr733451[0]
  %f733454 = load i64, i64* %i0ptr733452, align 8                                    ; load; *i0ptr733452
  %fptr733453 = inttoptr i64 %f733454 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733453(i64 %cont731825, i64 %arg732031, i64 %WSU$x) ; tail call
  ret void
}


define void @lam733281(i64 %env733282, i64 %cont731826, i64 %Xfi$lst, i64 %RrF$n) {
  %envptr733455 = inttoptr i64 %env733282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733456 = getelementptr inbounds i64, i64* %envptr733455, i64 2              ; &envptr733455[2]
  %RPh$_37length = load i64, i64* %envptr733456, align 8                             ; load; *envptr733456
  %envptr733457 = inttoptr i64 %env733282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733458 = getelementptr inbounds i64, i64* %envptr733457, i64 1              ; &envptr733457[1]
  %WjK$_37take = load i64, i64* %envptr733458, align 8                               ; load; *envptr733458
  %cloptr733459 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr733461 = getelementptr inbounds i64, i64* %cloptr733459, i64 1                ; &eptr733461[1]
  %eptr733462 = getelementptr inbounds i64, i64* %cloptr733459, i64 2                ; &eptr733462[2]
  %eptr733463 = getelementptr inbounds i64, i64* %cloptr733459, i64 3                ; &eptr733463[3]
  %eptr733464 = getelementptr inbounds i64, i64* %cloptr733459, i64 4                ; &eptr733464[4]
  store i64 %WjK$_37take, i64* %eptr733461                                           ; *eptr733461 = %WjK$_37take
  store i64 %cont731826, i64* %eptr733462                                            ; *eptr733462 = %cont731826
  store i64 %RrF$n, i64* %eptr733463                                                 ; *eptr733463 = %RrF$n
  store i64 %Xfi$lst, i64* %eptr733464                                               ; *eptr733464 = %Xfi$lst
  %eptr733460 = getelementptr inbounds i64, i64* %cloptr733459, i64 0                ; &cloptr733459[0]
  %f733465 = ptrtoint void(i64,i64,i64)* @lam733279 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733465, i64* %eptr733460                                               ; store fptr
  %arg732034 = ptrtoint i64* %cloptr733459 to i64                                    ; closure cast; i64* -> i64
  %cloptr733466 = inttoptr i64 %RPh$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733466)                                       ; assert function application
  %i0ptr733467 = getelementptr inbounds i64, i64* %cloptr733466, i64 0               ; &cloptr733466[0]
  %f733469 = load i64, i64* %i0ptr733467, align 8                                    ; load; *i0ptr733467
  %fptr733468 = inttoptr i64 %f733469 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733468(i64 %RPh$_37length, i64 %arg732034, i64 %Xfi$lst); tail call
  ret void
}


define void @lam733279(i64 %env733280, i64 %_95731827, i64 %a731723) {
  %envptr733470 = inttoptr i64 %env733280 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733471 = getelementptr inbounds i64, i64* %envptr733470, i64 4              ; &envptr733470[4]
  %Xfi$lst = load i64, i64* %envptr733471, align 8                                   ; load; *envptr733471
  %envptr733472 = inttoptr i64 %env733280 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733473 = getelementptr inbounds i64, i64* %envptr733472, i64 3              ; &envptr733472[3]
  %RrF$n = load i64, i64* %envptr733473, align 8                                     ; load; *envptr733473
  %envptr733474 = inttoptr i64 %env733280 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733475 = getelementptr inbounds i64, i64* %envptr733474, i64 2              ; &envptr733474[2]
  %cont731826 = load i64, i64* %envptr733475, align 8                                ; load; *envptr733475
  %envptr733476 = inttoptr i64 %env733280 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733477 = getelementptr inbounds i64, i64* %envptr733476, i64 1              ; &envptr733476[1]
  %WjK$_37take = load i64, i64* %envptr733477, align 8                               ; load; *envptr733477
  %a731724 = call i64 @prim__45(i64 %a731723, i64 %RrF$n)                            ; call prim__45
  %cloptr733478 = inttoptr i64 %WjK$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733478)                                       ; assert function application
  %i0ptr733479 = getelementptr inbounds i64, i64* %cloptr733478, i64 0               ; &cloptr733478[0]
  %f733481 = load i64, i64* %i0ptr733479, align 8                                    ; load; *i0ptr733479
  %fptr733480 = inttoptr i64 %f733481 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733480(i64 %WjK$_37take, i64 %cont731826, i64 %Xfi$lst, i64 %a731724); tail call
  ret void
}


define void @lam733277(i64 %env733278, i64 %_95731828, i64 %NYG$_37foldr) {
  %envptr733482 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733483 = getelementptr inbounds i64, i64* %envptr733482, i64 6              ; &envptr733482[6]
  %RPh$_37length = load i64, i64* %envptr733483, align 8                             ; load; *envptr733483
  %envptr733484 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733485 = getelementptr inbounds i64, i64* %envptr733484, i64 5              ; &envptr733484[5]
  %pAn$_37foldr1 = load i64, i64* %envptr733485, align 8                             ; load; *envptr733485
  %envptr733486 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733487 = getelementptr inbounds i64, i64* %envptr733486, i64 4              ; &envptr733486[4]
  %keS$Ycmb = load i64, i64* %envptr733487, align 8                                  ; load; *envptr733487
  %envptr733488 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733489 = getelementptr inbounds i64, i64* %envptr733488, i64 3              ; &envptr733488[3]
  %myM$_37drop_45right = load i64, i64* %envptr733489, align 8                       ; load; *envptr733489
  %envptr733490 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733491 = getelementptr inbounds i64, i64* %envptr733490, i64 2              ; &envptr733490[2]
  %Gcb$_37last = load i64, i64* %envptr733491, align 8                               ; load; *envptr733491
  %envptr733492 = inttoptr i64 %env733278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733493 = getelementptr inbounds i64, i64* %envptr733492, i64 1              ; &envptr733492[1]
  %VIC$_37foldl1 = load i64, i64* %envptr733493, align 8                             ; load; *envptr733493
  %cloptr733494 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733496 = getelementptr inbounds i64, i64* %cloptr733494, i64 1                ; &eptr733496[1]
  store i64 %pAn$_37foldr1, i64* %eptr733496                                         ; *eptr733496 = %pAn$_37foldr1
  %eptr733495 = getelementptr inbounds i64, i64* %cloptr733494, i64 0                ; &cloptr733494[0]
  %f733497 = ptrtoint void(i64,i64,i64,i64)* @lam733275 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733497, i64* %eptr733495                                               ; store fptr
  %DYb$_37map1 = ptrtoint i64* %cloptr733494 to i64                                  ; closure cast; i64* -> i64
  %cloptr733498 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733500 = getelementptr inbounds i64, i64* %cloptr733498, i64 1                ; &eptr733500[1]
  %eptr733501 = getelementptr inbounds i64, i64* %cloptr733498, i64 2                ; &eptr733501[2]
  %eptr733502 = getelementptr inbounds i64, i64* %cloptr733498, i64 3                ; &eptr733502[3]
  store i64 %NYG$_37foldr, i64* %eptr733500                                          ; *eptr733500 = %NYG$_37foldr
  store i64 %Gcb$_37last, i64* %eptr733501                                           ; *eptr733501 = %Gcb$_37last
  store i64 %myM$_37drop_45right, i64* %eptr733502                                   ; *eptr733502 = %myM$_37drop_45right
  %eptr733499 = getelementptr inbounds i64, i64* %cloptr733498, i64 0                ; &cloptr733498[0]
  %f733503 = ptrtoint void(i64,i64)* @lam733267 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f733503, i64* %eptr733499                                               ; store fptr
  %syR$_37map = ptrtoint i64* %cloptr733498 to i64                                   ; closure cast; i64* -> i64
  %cloptr733504 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733506 = getelementptr inbounds i64, i64* %cloptr733504, i64 1                ; &eptr733506[1]
  %eptr733507 = getelementptr inbounds i64, i64* %cloptr733504, i64 2                ; &eptr733507[2]
  store i64 %VIC$_37foldl1, i64* %eptr733506                                         ; *eptr733506 = %VIC$_37foldl1
  store i64 %RPh$_37length, i64* %eptr733507                                         ; *eptr733507 = %RPh$_37length
  %eptr733505 = getelementptr inbounds i64, i64* %cloptr733504, i64 0                ; &cloptr733504[0]
  %f733508 = ptrtoint void(i64,i64,i64)* @lam733254 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733508, i64* %eptr733505                                               ; store fptr
  %arg732085 = ptrtoint i64* %cloptr733504 to i64                                    ; closure cast; i64* -> i64
  %cloptr733509 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733511 = getelementptr inbounds i64, i64* %cloptr733509, i64 1                ; &eptr733511[1]
  %eptr733512 = getelementptr inbounds i64, i64* %cloptr733509, i64 2                ; &eptr733512[2]
  %eptr733513 = getelementptr inbounds i64, i64* %cloptr733509, i64 3                ; &eptr733513[3]
  store i64 %NYG$_37foldr, i64* %eptr733511                                          ; *eptr733511 = %NYG$_37foldr
  store i64 %DYb$_37map1, i64* %eptr733512                                           ; *eptr733512 = %DYb$_37map1
  store i64 %pAn$_37foldr1, i64* %eptr733513                                         ; *eptr733513 = %pAn$_37foldr1
  %eptr733510 = getelementptr inbounds i64, i64* %cloptr733509, i64 0                ; &cloptr733509[0]
  %f733514 = ptrtoint void(i64,i64,i64)* @lam732983 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733514, i64* %eptr733510                                               ; store fptr
  %arg732084 = ptrtoint i64* %cloptr733509 to i64                                    ; closure cast; i64* -> i64
  %cloptr733515 = inttoptr i64 %keS$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733515)                                       ; assert function application
  %i0ptr733516 = getelementptr inbounds i64, i64* %cloptr733515, i64 0               ; &cloptr733515[0]
  %f733518 = load i64, i64* %i0ptr733516, align 8                                    ; load; *i0ptr733516
  %fptr733517 = inttoptr i64 %f733518 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733517(i64 %keS$Ycmb, i64 %arg732085, i64 %arg732084); tail call
  ret void
}


define void @lam733275(i64 %env733276, i64 %cont731829, i64 %T5L$f, i64 %LTT$lst) {
  %envptr733519 = inttoptr i64 %env733276 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733520 = getelementptr inbounds i64, i64* %envptr733519, i64 1              ; &envptr733519[1]
  %pAn$_37foldr1 = load i64, i64* %envptr733520, align 8                             ; load; *envptr733520
  %cloptr733521 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733523 = getelementptr inbounds i64, i64* %cloptr733521, i64 1                ; &eptr733523[1]
  store i64 %T5L$f, i64* %eptr733523                                                 ; *eptr733523 = %T5L$f
  %eptr733522 = getelementptr inbounds i64, i64* %cloptr733521, i64 0                ; &cloptr733521[0]
  %f733524 = ptrtoint void(i64,i64,i64,i64)* @lam733273 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733524, i64* %eptr733522                                               ; store fptr
  %arg732047 = ptrtoint i64* %cloptr733521 to i64                                    ; closure cast; i64* -> i64
  %arg732046 = add i64 0, 0                                                          ; quoted ()
  %cloptr733525 = inttoptr i64 %pAn$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733525)                                       ; assert function application
  %i0ptr733526 = getelementptr inbounds i64, i64* %cloptr733525, i64 0               ; &cloptr733525[0]
  %f733528 = load i64, i64* %i0ptr733526, align 8                                    ; load; *i0ptr733526
  %fptr733527 = inttoptr i64 %f733528 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733527(i64 %pAn$_37foldr1, i64 %cont731829, i64 %arg732047, i64 %arg732046, i64 %LTT$lst); tail call
  ret void
}


define void @lam733273(i64 %env733274, i64 %cont731830, i64 %znb$v, i64 %ibK$r) {
  %envptr733529 = inttoptr i64 %env733274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733530 = getelementptr inbounds i64, i64* %envptr733529, i64 1              ; &envptr733529[1]
  %T5L$f = load i64, i64* %envptr733530, align 8                                     ; load; *envptr733530
  %cloptr733531 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733533 = getelementptr inbounds i64, i64* %cloptr733531, i64 1                ; &eptr733533[1]
  %eptr733534 = getelementptr inbounds i64, i64* %cloptr733531, i64 2                ; &eptr733534[2]
  store i64 %ibK$r, i64* %eptr733533                                                 ; *eptr733533 = %ibK$r
  store i64 %cont731830, i64* %eptr733534                                            ; *eptr733534 = %cont731830
  %eptr733532 = getelementptr inbounds i64, i64* %cloptr733531, i64 0                ; &cloptr733531[0]
  %f733535 = ptrtoint void(i64,i64,i64)* @lam733271 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733535, i64* %eptr733532                                               ; store fptr
  %arg732051 = ptrtoint i64* %cloptr733531 to i64                                    ; closure cast; i64* -> i64
  %cloptr733536 = inttoptr i64 %T5L$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733536)                                       ; assert function application
  %i0ptr733537 = getelementptr inbounds i64, i64* %cloptr733536, i64 0               ; &cloptr733536[0]
  %f733539 = load i64, i64* %i0ptr733537, align 8                                    ; load; *i0ptr733537
  %fptr733538 = inttoptr i64 %f733539 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733538(i64 %T5L$f, i64 %arg732051, i64 %znb$v)      ; tail call
  ret void
}


define void @lam733271(i64 %env733272, i64 %_95731831, i64 %a731733) {
  %envptr733540 = inttoptr i64 %env733272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733541 = getelementptr inbounds i64, i64* %envptr733540, i64 2              ; &envptr733540[2]
  %cont731830 = load i64, i64* %envptr733541, align 8                                ; load; *envptr733541
  %envptr733542 = inttoptr i64 %env733272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733543 = getelementptr inbounds i64, i64* %envptr733542, i64 1              ; &envptr733542[1]
  %ibK$r = load i64, i64* %envptr733543, align 8                                     ; load; *envptr733543
  %retprim731832 = call i64 @prim_cons(i64 %a731733, i64 %ibK$r)                     ; call prim_cons
  %arg732056 = add i64 0, 0                                                          ; quoted ()
  %cloptr733544 = inttoptr i64 %cont731830 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733544)                                       ; assert function application
  %i0ptr733545 = getelementptr inbounds i64, i64* %cloptr733544, i64 0               ; &cloptr733544[0]
  %f733547 = load i64, i64* %i0ptr733545, align 8                                    ; load; *i0ptr733545
  %fptr733546 = inttoptr i64 %f733547 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733546(i64 %cont731830, i64 %arg732056, i64 %retprim731832); tail call
  ret void
}


define void @lam733267(i64 %env733268, i64 %DoE$args731834) {
  %envptr733548 = inttoptr i64 %env733268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733549 = getelementptr inbounds i64, i64* %envptr733548, i64 3              ; &envptr733548[3]
  %myM$_37drop_45right = load i64, i64* %envptr733549, align 8                       ; load; *envptr733549
  %envptr733550 = inttoptr i64 %env733268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733551 = getelementptr inbounds i64, i64* %envptr733550, i64 2              ; &envptr733550[2]
  %Gcb$_37last = load i64, i64* %envptr733551, align 8                               ; load; *envptr733551
  %envptr733552 = inttoptr i64 %env733268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733553 = getelementptr inbounds i64, i64* %envptr733552, i64 1              ; &envptr733552[1]
  %NYG$_37foldr = load i64, i64* %envptr733553, align 8                              ; load; *envptr733553
  %cont731833 = call i64 @prim_car(i64 %DoE$args731834)                              ; call prim_car
  %DoE$args = call i64 @prim_cdr(i64 %DoE$args731834)                                ; call prim_cdr
  %l9w$f = call i64 @prim_car(i64 %DoE$args)                                         ; call prim_car
  %TxS$lsts = call i64 @prim_cdr(i64 %DoE$args)                                      ; call prim_cdr
  %arg732063 = add i64 0, 0                                                          ; quoted ()
  %a731737 = call i64 @prim_cons(i64 %arg732063, i64 %TxS$lsts)                      ; call prim_cons
  %cloptr733554 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733556 = getelementptr inbounds i64, i64* %cloptr733554, i64 1                ; &eptr733556[1]
  %eptr733557 = getelementptr inbounds i64, i64* %cloptr733554, i64 2                ; &eptr733557[2]
  %eptr733558 = getelementptr inbounds i64, i64* %cloptr733554, i64 3                ; &eptr733558[3]
  store i64 %Gcb$_37last, i64* %eptr733556                                           ; *eptr733556 = %Gcb$_37last
  store i64 %myM$_37drop_45right, i64* %eptr733557                                   ; *eptr733557 = %myM$_37drop_45right
  store i64 %l9w$f, i64* %eptr733558                                                 ; *eptr733558 = %l9w$f
  %eptr733555 = getelementptr inbounds i64, i64* %cloptr733554, i64 0                ; &cloptr733554[0]
  %f733559 = ptrtoint void(i64,i64)* @lam733264 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f733559, i64* %eptr733555                                               ; store fptr
  %arg732065 = ptrtoint i64* %cloptr733554 to i64                                    ; closure cast; i64* -> i64
  %a731738 = call i64 @prim_cons(i64 %arg732065, i64 %a731737)                       ; call prim_cons
  %cps_45lst731842 = call i64 @prim_cons(i64 %cont731833, i64 %a731738)              ; call prim_cons
  %cloptr733560 = inttoptr i64 %NYG$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733560)                                       ; assert function application
  %i0ptr733561 = getelementptr inbounds i64, i64* %cloptr733560, i64 0               ; &cloptr733560[0]
  %f733563 = load i64, i64* %i0ptr733561, align 8                                    ; load; *i0ptr733561
  %fptr733562 = inttoptr i64 %f733563 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733562(i64 %NYG$_37foldr, i64 %cps_45lst731842)     ; tail call
  ret void
}


define void @lam733264(i64 %env733265, i64 %eNi$fargs731836) {
  %envptr733564 = inttoptr i64 %env733265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733565 = getelementptr inbounds i64, i64* %envptr733564, i64 3              ; &envptr733564[3]
  %l9w$f = load i64, i64* %envptr733565, align 8                                     ; load; *envptr733565
  %envptr733566 = inttoptr i64 %env733265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733567 = getelementptr inbounds i64, i64* %envptr733566, i64 2              ; &envptr733566[2]
  %myM$_37drop_45right = load i64, i64* %envptr733567, align 8                       ; load; *envptr733567
  %envptr733568 = inttoptr i64 %env733265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733569 = getelementptr inbounds i64, i64* %envptr733568, i64 1              ; &envptr733568[1]
  %Gcb$_37last = load i64, i64* %envptr733569, align 8                               ; load; *envptr733569
  %cont731835 = call i64 @prim_car(i64 %eNi$fargs731836)                             ; call prim_car
  %eNi$fargs = call i64 @prim_cdr(i64 %eNi$fargs731836)                              ; call prim_cdr
  %cloptr733570 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr733572 = getelementptr inbounds i64, i64* %cloptr733570, i64 1                ; &eptr733572[1]
  %eptr733573 = getelementptr inbounds i64, i64* %cloptr733570, i64 2                ; &eptr733573[2]
  %eptr733574 = getelementptr inbounds i64, i64* %cloptr733570, i64 3                ; &eptr733574[3]
  %eptr733575 = getelementptr inbounds i64, i64* %cloptr733570, i64 4                ; &eptr733575[4]
  store i64 %eNi$fargs, i64* %eptr733572                                             ; *eptr733572 = %eNi$fargs
  store i64 %Gcb$_37last, i64* %eptr733573                                           ; *eptr733573 = %Gcb$_37last
  store i64 %cont731835, i64* %eptr733574                                            ; *eptr733574 = %cont731835
  store i64 %l9w$f, i64* %eptr733575                                                 ; *eptr733575 = %l9w$f
  %eptr733571 = getelementptr inbounds i64, i64* %cloptr733570, i64 0                ; &cloptr733570[0]
  %f733576 = ptrtoint void(i64,i64,i64)* @lam733262 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733576, i64* %eptr733571                                               ; store fptr
  %arg732070 = ptrtoint i64* %cloptr733570 to i64                                    ; closure cast; i64* -> i64
  %arg732068 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr733577 = inttoptr i64 %myM$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733577)                                       ; assert function application
  %i0ptr733578 = getelementptr inbounds i64, i64* %cloptr733577, i64 0               ; &cloptr733577[0]
  %f733580 = load i64, i64* %i0ptr733578, align 8                                    ; load; *i0ptr733578
  %fptr733579 = inttoptr i64 %f733580 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733579(i64 %myM$_37drop_45right, i64 %arg732070, i64 %eNi$fargs, i64 %arg732068); tail call
  ret void
}


define void @lam733262(i64 %env733263, i64 %_95731837, i64 %a731734) {
  %envptr733581 = inttoptr i64 %env733263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733582 = getelementptr inbounds i64, i64* %envptr733581, i64 4              ; &envptr733581[4]
  %l9w$f = load i64, i64* %envptr733582, align 8                                     ; load; *envptr733582
  %envptr733583 = inttoptr i64 %env733263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733584 = getelementptr inbounds i64, i64* %envptr733583, i64 3              ; &envptr733583[3]
  %cont731835 = load i64, i64* %envptr733584, align 8                                ; load; *envptr733584
  %envptr733585 = inttoptr i64 %env733263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733586 = getelementptr inbounds i64, i64* %envptr733585, i64 2              ; &envptr733585[2]
  %Gcb$_37last = load i64, i64* %envptr733586, align 8                               ; load; *envptr733586
  %envptr733587 = inttoptr i64 %env733263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733588 = getelementptr inbounds i64, i64* %envptr733587, i64 1              ; &envptr733587[1]
  %eNi$fargs = load i64, i64* %envptr733588, align 8                                 ; load; *envptr733588
  %cloptr733589 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733591 = getelementptr inbounds i64, i64* %cloptr733589, i64 1                ; &eptr733591[1]
  %eptr733592 = getelementptr inbounds i64, i64* %cloptr733589, i64 2                ; &eptr733592[2]
  %eptr733593 = getelementptr inbounds i64, i64* %cloptr733589, i64 3                ; &eptr733593[3]
  store i64 %eNi$fargs, i64* %eptr733591                                             ; *eptr733591 = %eNi$fargs
  store i64 %Gcb$_37last, i64* %eptr733592                                           ; *eptr733592 = %Gcb$_37last
  store i64 %cont731835, i64* %eptr733593                                            ; *eptr733593 = %cont731835
  %eptr733590 = getelementptr inbounds i64, i64* %cloptr733589, i64 0                ; &cloptr733589[0]
  %f733594 = ptrtoint void(i64,i64,i64)* @lam733260 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733594, i64* %eptr733590                                               ; store fptr
  %arg732073 = ptrtoint i64* %cloptr733589 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst731841 = call i64 @prim_cons(i64 %arg732073, i64 %a731734)               ; call prim_cons
  %cloptr733595 = inttoptr i64 %l9w$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733595)                                       ; assert function application
  %i0ptr733596 = getelementptr inbounds i64, i64* %cloptr733595, i64 0               ; &cloptr733595[0]
  %f733598 = load i64, i64* %i0ptr733596, align 8                                    ; load; *i0ptr733596
  %fptr733597 = inttoptr i64 %f733598 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733597(i64 %l9w$f, i64 %cps_45lst731841)            ; tail call
  ret void
}


define void @lam733260(i64 %env733261, i64 %_95731838, i64 %a731735) {
  %envptr733599 = inttoptr i64 %env733261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733600 = getelementptr inbounds i64, i64* %envptr733599, i64 3              ; &envptr733599[3]
  %cont731835 = load i64, i64* %envptr733600, align 8                                ; load; *envptr733600
  %envptr733601 = inttoptr i64 %env733261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733602 = getelementptr inbounds i64, i64* %envptr733601, i64 2              ; &envptr733601[2]
  %Gcb$_37last = load i64, i64* %envptr733602, align 8                               ; load; *envptr733602
  %envptr733603 = inttoptr i64 %env733261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733604 = getelementptr inbounds i64, i64* %envptr733603, i64 1              ; &envptr733603[1]
  %eNi$fargs = load i64, i64* %envptr733604, align 8                                 ; load; *envptr733604
  %cloptr733605 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733607 = getelementptr inbounds i64, i64* %cloptr733605, i64 1                ; &eptr733607[1]
  %eptr733608 = getelementptr inbounds i64, i64* %cloptr733605, i64 2                ; &eptr733608[2]
  store i64 %a731735, i64* %eptr733607                                               ; *eptr733607 = %a731735
  store i64 %cont731835, i64* %eptr733608                                            ; *eptr733608 = %cont731835
  %eptr733606 = getelementptr inbounds i64, i64* %cloptr733605, i64 0                ; &cloptr733605[0]
  %f733609 = ptrtoint void(i64,i64,i64)* @lam733258 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733609, i64* %eptr733606                                               ; store fptr
  %arg732075 = ptrtoint i64* %cloptr733605 to i64                                    ; closure cast; i64* -> i64
  %cloptr733610 = inttoptr i64 %Gcb$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733610)                                       ; assert function application
  %i0ptr733611 = getelementptr inbounds i64, i64* %cloptr733610, i64 0               ; &cloptr733610[0]
  %f733613 = load i64, i64* %i0ptr733611, align 8                                    ; load; *i0ptr733611
  %fptr733612 = inttoptr i64 %f733613 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733612(i64 %Gcb$_37last, i64 %arg732075, i64 %eNi$fargs); tail call
  ret void
}


define void @lam733258(i64 %env733259, i64 %_95731839, i64 %a731736) {
  %envptr733614 = inttoptr i64 %env733259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733615 = getelementptr inbounds i64, i64* %envptr733614, i64 2              ; &envptr733614[2]
  %cont731835 = load i64, i64* %envptr733615, align 8                                ; load; *envptr733615
  %envptr733616 = inttoptr i64 %env733259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733617 = getelementptr inbounds i64, i64* %envptr733616, i64 1              ; &envptr733616[1]
  %a731735 = load i64, i64* %envptr733617, align 8                                   ; load; *envptr733617
  %retprim731840 = call i64 @prim_cons(i64 %a731735, i64 %a731736)                   ; call prim_cons
  %arg732080 = add i64 0, 0                                                          ; quoted ()
  %cloptr733618 = inttoptr i64 %cont731835 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733618)                                       ; assert function application
  %i0ptr733619 = getelementptr inbounds i64, i64* %cloptr733618, i64 0               ; &cloptr733618[0]
  %f733621 = load i64, i64* %i0ptr733619, align 8                                    ; load; *i0ptr733619
  %fptr733620 = inttoptr i64 %f733621 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733620(i64 %cont731835, i64 %arg732080, i64 %retprim731840); tail call
  ret void
}


define void @lam733254(i64 %env733255, i64 %_95731843, i64 %Ksh$_37foldl) {
  %envptr733622 = inttoptr i64 %env733255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733623 = getelementptr inbounds i64, i64* %envptr733622, i64 2              ; &envptr733622[2]
  %RPh$_37length = load i64, i64* %envptr733623, align 8                             ; load; *envptr733623
  %envptr733624 = inttoptr i64 %env733255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733625 = getelementptr inbounds i64, i64* %envptr733624, i64 1              ; &envptr733624[1]
  %VIC$_37foldl1 = load i64, i64* %envptr733625, align 8                             ; load; *envptr733625
  %cloptr733626 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733627 = getelementptr inbounds i64, i64* %cloptr733626, i64 0                ; &cloptr733626[0]
  %f733628 = ptrtoint void(i64,i64,i64,i64)* @lam733252 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733628, i64* %eptr733627                                               ; store fptr
  %xq2$_37_62 = ptrtoint i64* %cloptr733626 to i64                                   ; closure cast; i64* -> i64
  %cloptr733629 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733630 = getelementptr inbounds i64, i64* %cloptr733629, i64 0                ; &cloptr733629[0]
  %f733631 = ptrtoint void(i64,i64,i64,i64)* @lam733249 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733631, i64* %eptr733630                                               ; store fptr
  %rpR$_37_62_61 = ptrtoint i64* %cloptr733629 to i64                                ; closure cast; i64* -> i64
  %arg732100 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg732099 = add i64 0, 0                                                          ; quoted ()
  %y8t$_37append = call i64 @prim_make_45vector(i64 %arg732100, i64 %arg732099)      ; call prim_make_45vector
  %arg732102 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr733632 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733634 = getelementptr inbounds i64, i64* %cloptr733632, i64 1                ; &eptr733634[1]
  store i64 %y8t$_37append, i64* %eptr733634                                         ; *eptr733634 = %y8t$_37append
  %eptr733633 = getelementptr inbounds i64, i64* %cloptr733632, i64 0                ; &cloptr733632[0]
  %f733635 = ptrtoint void(i64,i64,i64,i64)* @lam733243 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733635, i64* %eptr733633                                               ; store fptr
  %arg732101 = ptrtoint i64* %cloptr733632 to i64                                    ; closure cast; i64* -> i64
  %hoE$_950 = call i64 @prim_vector_45set_33(i64 %y8t$_37append, i64 %arg732102, i64 %arg732101); call prim_vector_45set_33
  %arg732121 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731932 = call i64 @prim_vector_45ref(i64 %y8t$_37append, i64 %arg732121)   ; call prim_vector_45ref
  %cloptr733636 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733638 = getelementptr inbounds i64, i64* %cloptr733636, i64 1                ; &eptr733638[1]
  %eptr733639 = getelementptr inbounds i64, i64* %cloptr733636, i64 2                ; &eptr733639[2]
  %eptr733640 = getelementptr inbounds i64, i64* %cloptr733636, i64 3                ; &eptr733640[3]
  store i64 %VIC$_37foldl1, i64* %eptr733638                                         ; *eptr733638 = %VIC$_37foldl1
  store i64 %RPh$_37length, i64* %eptr733639                                         ; *eptr733639 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr733640                                            ; *eptr733640 = %xq2$_37_62
  %eptr733637 = getelementptr inbounds i64, i64* %cloptr733636, i64 0                ; &cloptr733636[0]
  %f733641 = ptrtoint void(i64,i64,i64)* @lam733235 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733641, i64* %eptr733637                                               ; store fptr
  %arg732125 = ptrtoint i64* %cloptr733636 to i64                                    ; closure cast; i64* -> i64
  %arg732124 = add i64 0, 0                                                          ; quoted ()
  %cloptr733642 = inttoptr i64 %arg732125 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733642)                                       ; assert function application
  %i0ptr733643 = getelementptr inbounds i64, i64* %cloptr733642, i64 0               ; &cloptr733642[0]
  %f733645 = load i64, i64* %i0ptr733643, align 8                                    ; load; *i0ptr733643
  %fptr733644 = inttoptr i64 %f733645 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733644(i64 %arg732125, i64 %arg732124, i64 %retprim731932); tail call
  ret void
}


define void @lam733252(i64 %env733253, i64 %cont731844, i64 %MRU$a, i64 %BmK$b) {
  %a731746 = call i64 @prim__60_61(i64 %MRU$a, i64 %BmK$b)                           ; call prim__60_61
  %retprim731845 = call i64 @prim_not(i64 %a731746)                                  ; call prim_not
  %arg732091 = add i64 0, 0                                                          ; quoted ()
  %cloptr733646 = inttoptr i64 %cont731844 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733646)                                       ; assert function application
  %i0ptr733647 = getelementptr inbounds i64, i64* %cloptr733646, i64 0               ; &cloptr733646[0]
  %f733649 = load i64, i64* %i0ptr733647, align 8                                    ; load; *i0ptr733647
  %fptr733648 = inttoptr i64 %f733649 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733648(i64 %cont731844, i64 %arg732091, i64 %retprim731845); tail call
  ret void
}


define void @lam733249(i64 %env733250, i64 %cont731846, i64 %gWt$a, i64 %z4p$b) {
  %a731747 = call i64 @prim__60(i64 %gWt$a, i64 %z4p$b)                              ; call prim__60
  %retprim731847 = call i64 @prim_not(i64 %a731747)                                  ; call prim_not
  %arg732097 = add i64 0, 0                                                          ; quoted ()
  %cloptr733650 = inttoptr i64 %cont731846 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733650)                                       ; assert function application
  %i0ptr733651 = getelementptr inbounds i64, i64* %cloptr733650, i64 0               ; &cloptr733650[0]
  %f733653 = load i64, i64* %i0ptr733651, align 8                                    ; load; *i0ptr733651
  %fptr733652 = inttoptr i64 %f733653 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733652(i64 %cont731846, i64 %arg732097, i64 %retprim731847); tail call
  ret void
}


define void @lam733243(i64 %env733244, i64 %cont731929, i64 %hRA$ls0, i64 %qbT$ls1) {
  %envptr733654 = inttoptr i64 %env733244 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733655 = getelementptr inbounds i64, i64* %envptr733654, i64 1              ; &envptr733654[1]
  %y8t$_37append = load i64, i64* %envptr733655, align 8                             ; load; *envptr733655
  %a731748 = call i64 @prim_null_63(i64 %hRA$ls0)                                    ; call prim_null_63
  %cmp733656 = icmp eq i64 %a731748, 15                                              ; false?
  br i1 %cmp733656, label %else733658, label %then733657                             ; if

then733657:
  %arg732106 = add i64 0, 0                                                          ; quoted ()
  %cloptr733659 = inttoptr i64 %cont731929 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733659)                                       ; assert function application
  %i0ptr733660 = getelementptr inbounds i64, i64* %cloptr733659, i64 0               ; &cloptr733659[0]
  %f733662 = load i64, i64* %i0ptr733660, align 8                                    ; load; *i0ptr733660
  %fptr733661 = inttoptr i64 %f733662 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733661(i64 %cont731929, i64 %arg732106, i64 %qbT$ls1); tail call
  ret void

else733658:
  %a731749 = call i64 @prim_car(i64 %hRA$ls0)                                        ; call prim_car
  %arg732109 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731750 = call i64 @prim_vector_45ref(i64 %y8t$_37append, i64 %arg732109)         ; call prim_vector_45ref
  %a731751 = call i64 @prim_cdr(i64 %hRA$ls0)                                        ; call prim_cdr
  %cloptr733663 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733665 = getelementptr inbounds i64, i64* %cloptr733663, i64 1                ; &eptr733665[1]
  %eptr733666 = getelementptr inbounds i64, i64* %cloptr733663, i64 2                ; &eptr733666[2]
  store i64 %cont731929, i64* %eptr733665                                            ; *eptr733665 = %cont731929
  store i64 %a731749, i64* %eptr733666                                               ; *eptr733666 = %a731749
  %eptr733664 = getelementptr inbounds i64, i64* %cloptr733663, i64 0                ; &cloptr733663[0]
  %f733667 = ptrtoint void(i64,i64,i64)* @lam733240 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733667, i64* %eptr733664                                               ; store fptr
  %arg732114 = ptrtoint i64* %cloptr733663 to i64                                    ; closure cast; i64* -> i64
  %cloptr733668 = inttoptr i64 %a731750 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733668)                                       ; assert function application
  %i0ptr733669 = getelementptr inbounds i64, i64* %cloptr733668, i64 0               ; &cloptr733668[0]
  %f733671 = load i64, i64* %i0ptr733669, align 8                                    ; load; *i0ptr733669
  %fptr733670 = inttoptr i64 %f733671 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733670(i64 %a731750, i64 %arg732114, i64 %a731751, i64 %qbT$ls1); tail call
  ret void
}


define void @lam733240(i64 %env733241, i64 %_95731930, i64 %a731752) {
  %envptr733672 = inttoptr i64 %env733241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733673 = getelementptr inbounds i64, i64* %envptr733672, i64 2              ; &envptr733672[2]
  %a731749 = load i64, i64* %envptr733673, align 8                                   ; load; *envptr733673
  %envptr733674 = inttoptr i64 %env733241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733675 = getelementptr inbounds i64, i64* %envptr733674, i64 1              ; &envptr733674[1]
  %cont731929 = load i64, i64* %envptr733675, align 8                                ; load; *envptr733675
  %retprim731931 = call i64 @prim_cons(i64 %a731749, i64 %a731752)                   ; call prim_cons
  %arg732119 = add i64 0, 0                                                          ; quoted ()
  %cloptr733676 = inttoptr i64 %cont731929 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733676)                                       ; assert function application
  %i0ptr733677 = getelementptr inbounds i64, i64* %cloptr733676, i64 0               ; &cloptr733676[0]
  %f733679 = load i64, i64* %i0ptr733677, align 8                                    ; load; *i0ptr733677
  %fptr733678 = inttoptr i64 %f733679 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733678(i64 %cont731929, i64 %arg732119, i64 %retprim731931); tail call
  ret void
}


define void @lam733235(i64 %env733236, i64 %_95731848, i64 %AIP$_37append) {
  %envptr733680 = inttoptr i64 %env733236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733681 = getelementptr inbounds i64, i64* %envptr733680, i64 3              ; &envptr733680[3]
  %xq2$_37_62 = load i64, i64* %envptr733681, align 8                                ; load; *envptr733681
  %envptr733682 = inttoptr i64 %env733236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733683 = getelementptr inbounds i64, i64* %envptr733682, i64 2              ; &envptr733682[2]
  %RPh$_37length = load i64, i64* %envptr733683, align 8                             ; load; *envptr733683
  %envptr733684 = inttoptr i64 %env733236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733685 = getelementptr inbounds i64, i64* %envptr733684, i64 1              ; &envptr733684[1]
  %VIC$_37foldl1 = load i64, i64* %envptr733685, align 8                             ; load; *envptr733685
  %cloptr733686 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733687 = getelementptr inbounds i64, i64* %cloptr733686, i64 0                ; &cloptr733686[0]
  %f733688 = ptrtoint void(i64,i64,i64)* @lam733233 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733688, i64* %eptr733687                                               ; store fptr
  %b6p$_37list_63 = ptrtoint i64* %cloptr733686 to i64                               ; closure cast; i64* -> i64
  %cloptr733689 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733690 = getelementptr inbounds i64, i64* %cloptr733689, i64 0                ; &cloptr733689[0]
  %f733691 = ptrtoint void(i64,i64,i64,i64)* @lam733193 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733691, i64* %eptr733690                                               ; store fptr
  %sF9$_37drop = ptrtoint i64* %cloptr733689 to i64                                  ; closure cast; i64* -> i64
  %cloptr733692 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733693 = getelementptr inbounds i64, i64* %cloptr733692, i64 0                ; &cloptr733692[0]
  %f733694 = ptrtoint void(i64,i64,i64,i64)* @lam733153 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f733694, i64* %eptr733693                                               ; store fptr
  %Qsh$_37memv = ptrtoint i64* %cloptr733692 to i64                                  ; closure cast; i64* -> i64
  %cloptr733695 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr733697 = getelementptr inbounds i64, i64* %cloptr733695, i64 1                ; &eptr733697[1]
  store i64 %VIC$_37foldl1, i64* %eptr733697                                         ; *eptr733697 = %VIC$_37foldl1
  %eptr733696 = getelementptr inbounds i64, i64* %cloptr733695, i64 0                ; &cloptr733695[0]
  %f733698 = ptrtoint void(i64,i64)* @lam733122 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f733698, i64* %eptr733696                                               ; store fptr
  %Zit$_37_47 = ptrtoint i64* %cloptr733695 to i64                                   ; closure cast; i64* -> i64
  %cloptr733699 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733700 = getelementptr inbounds i64, i64* %cloptr733699, i64 0                ; &cloptr733699[0]
  %f733701 = ptrtoint void(i64,i64,i64)* @lam733114 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733701, i64* %eptr733700                                               ; store fptr
  %psn$_37first = ptrtoint i64* %cloptr733699 to i64                                 ; closure cast; i64* -> i64
  %cloptr733702 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733703 = getelementptr inbounds i64, i64* %cloptr733702, i64 0                ; &cloptr733702[0]
  %f733704 = ptrtoint void(i64,i64,i64)* @lam733111 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733704, i64* %eptr733703                                               ; store fptr
  %pfB$_37second = ptrtoint i64* %cloptr733702 to i64                                ; closure cast; i64* -> i64
  %cloptr733705 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733706 = getelementptr inbounds i64, i64* %cloptr733705, i64 0                ; &cloptr733705[0]
  %f733707 = ptrtoint void(i64,i64,i64)* @lam733108 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733707, i64* %eptr733706                                               ; store fptr
  %WtM$_37third = ptrtoint i64* %cloptr733705 to i64                                 ; closure cast; i64* -> i64
  %cloptr733708 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733709 = getelementptr inbounds i64, i64* %cloptr733708, i64 0                ; &cloptr733708[0]
  %f733710 = ptrtoint void(i64,i64,i64)* @lam733105 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733710, i64* %eptr733709                                               ; store fptr
  %xdB$_37fourth = ptrtoint i64* %cloptr733708 to i64                                ; closure cast; i64* -> i64
  %cloptr733711 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733712 = getelementptr inbounds i64, i64* %cloptr733711, i64 0                ; &cloptr733711[0]
  %f733713 = ptrtoint void(i64,i64,i64)* @lam733102 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733713, i64* %eptr733712                                               ; store fptr
  %Amb$promise_63 = ptrtoint i64* %cloptr733711 to i64                               ; closure cast; i64* -> i64
  %cloptr733714 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733715 = getelementptr inbounds i64, i64* %cloptr733714, i64 0                ; &cloptr733714[0]
  %f733716 = ptrtoint void(i64,i64)* @lam733096 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f733716, i64* %eptr733715                                               ; store fptr
  %arg732387 = ptrtoint i64* %cloptr733714 to i64                                    ; closure cast; i64* -> i64
  %cloptr733717 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733719 = getelementptr inbounds i64, i64* %cloptr733717, i64 1                ; &eptr733719[1]
  %eptr733720 = getelementptr inbounds i64, i64* %cloptr733717, i64 2                ; &eptr733720[2]
  %eptr733721 = getelementptr inbounds i64, i64* %cloptr733717, i64 3                ; &eptr733721[3]
  store i64 %sF9$_37drop, i64* %eptr733719                                           ; *eptr733719 = %sF9$_37drop
  store i64 %RPh$_37length, i64* %eptr733720                                         ; *eptr733720 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr733721                                            ; *eptr733721 = %xq2$_37_62
  %eptr733718 = getelementptr inbounds i64, i64* %cloptr733717, i64 0                ; &cloptr733717[0]
  %f733722 = ptrtoint void(i64,i64,i64)* @lam733093 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733722, i64* %eptr733718                                               ; store fptr
  %arg732386 = ptrtoint i64* %cloptr733717 to i64                                    ; closure cast; i64* -> i64
  %rva732846 = add i64 0, 0                                                          ; quoted ()
  %rva732845 = call i64 @prim_cons(i64 %arg732386, i64 %rva732846)                   ; call prim_cons
  %cloptr733723 = inttoptr i64 %arg732387 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733723)                                       ; assert function application
  %i0ptr733724 = getelementptr inbounds i64, i64* %cloptr733723, i64 0               ; &cloptr733723[0]
  %f733726 = load i64, i64* %i0ptr733724, align 8                                    ; load; *i0ptr733724
  %fptr733725 = inttoptr i64 %f733726 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733725(i64 %arg732387, i64 %rva732845)              ; tail call
  ret void
}


define void @lam733233(i64 %env733234, i64 %cont731849, i64 %YNF$a) {
  %arg732127 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %oTT$a = call i64 @prim_make_45vector(i64 %arg732127, i64 %YNF$a)                  ; call prim_make_45vector
  %cloptr733727 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733728 = getelementptr inbounds i64, i64* %cloptr733727, i64 0                ; &cloptr733727[0]
  %f733729 = ptrtoint void(i64,i64,i64)* @lam733230 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733729, i64* %eptr733728                                               ; store fptr
  %arg732130 = ptrtoint i64* %cloptr733727 to i64                                    ; closure cast; i64* -> i64
  %cloptr733730 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733732 = getelementptr inbounds i64, i64* %cloptr733730, i64 1                ; &eptr733732[1]
  %eptr733733 = getelementptr inbounds i64, i64* %cloptr733730, i64 2                ; &eptr733733[2]
  store i64 %cont731849, i64* %eptr733732                                            ; *eptr733732 = %cont731849
  store i64 %oTT$a, i64* %eptr733733                                                 ; *eptr733733 = %oTT$a
  %eptr733731 = getelementptr inbounds i64, i64* %cloptr733730, i64 0                ; &cloptr733730[0]
  %f733734 = ptrtoint void(i64,i64,i64)* @lam733227 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733734, i64* %eptr733731                                               ; store fptr
  %arg732129 = ptrtoint i64* %cloptr733730 to i64                                    ; closure cast; i64* -> i64
  %cloptr733735 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733737 = getelementptr inbounds i64, i64* %cloptr733735, i64 1                ; &eptr733737[1]
  %eptr733738 = getelementptr inbounds i64, i64* %cloptr733735, i64 2                ; &eptr733738[2]
  store i64 %cont731849, i64* %eptr733737                                            ; *eptr733737 = %cont731849
  store i64 %oTT$a, i64* %eptr733738                                                 ; *eptr733738 = %oTT$a
  %eptr733736 = getelementptr inbounds i64, i64* %cloptr733735, i64 0                ; &cloptr733735[0]
  %f733739 = ptrtoint void(i64,i64,i64)* @lam733210 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733739, i64* %eptr733736                                               ; store fptr
  %arg732128 = ptrtoint i64* %cloptr733735 to i64                                    ; closure cast; i64* -> i64
  %cloptr733740 = inttoptr i64 %arg732130 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733740)                                       ; assert function application
  %i0ptr733741 = getelementptr inbounds i64, i64* %cloptr733740, i64 0               ; &cloptr733740[0]
  %f733743 = load i64, i64* %i0ptr733741, align 8                                    ; load; *i0ptr733741
  %fptr733742 = inttoptr i64 %f733743 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733742(i64 %arg732130, i64 %arg732129, i64 %arg732128); tail call
  ret void
}


define void @lam733230(i64 %env733231, i64 %cont731855, i64 %O9Z$k) {
  %arg732132 = add i64 0, 0                                                          ; quoted ()
  %cloptr733744 = inttoptr i64 %cont731855 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733744)                                       ; assert function application
  %i0ptr733745 = getelementptr inbounds i64, i64* %cloptr733744, i64 0               ; &cloptr733744[0]
  %f733747 = load i64, i64* %i0ptr733745, align 8                                    ; load; *i0ptr733745
  %fptr733746 = inttoptr i64 %f733747 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733746(i64 %cont731855, i64 %arg732132, i64 %O9Z$k) ; tail call
  ret void
}


define void @lam733227(i64 %env733228, i64 %_95731850, i64 %zj1$cc) {
  %envptr733748 = inttoptr i64 %env733228 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733749 = getelementptr inbounds i64, i64* %envptr733748, i64 2              ; &envptr733748[2]
  %oTT$a = load i64, i64* %envptr733749, align 8                                     ; load; *envptr733749
  %envptr733750 = inttoptr i64 %env733228 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733751 = getelementptr inbounds i64, i64* %envptr733750, i64 1              ; &envptr733750[1]
  %cont731849 = load i64, i64* %envptr733751, align 8                                ; load; *envptr733751
  %arg732134 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731753 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732134)                 ; call prim_vector_45ref
  %a731754 = call i64 @prim_null_63(i64 %a731753)                                    ; call prim_null_63
  %cmp733752 = icmp eq i64 %a731754, 15                                              ; false?
  br i1 %cmp733752, label %else733754, label %then733753                             ; if

then733753:
  %arg732138 = add i64 0, 0                                                          ; quoted ()
  %arg732137 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr733755 = inttoptr i64 %cont731849 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733755)                                       ; assert function application
  %i0ptr733756 = getelementptr inbounds i64, i64* %cloptr733755, i64 0               ; &cloptr733755[0]
  %f733758 = load i64, i64* %i0ptr733756, align 8                                    ; load; *i0ptr733756
  %fptr733757 = inttoptr i64 %f733758 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733757(i64 %cont731849, i64 %arg732138, i64 %arg732137); tail call
  ret void

else733754:
  %arg732140 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731755 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732140)                 ; call prim_vector_45ref
  %a731756 = call i64 @prim_cons_63(i64 %a731755)                                    ; call prim_cons_63
  %cmp733759 = icmp eq i64 %a731756, 15                                              ; false?
  br i1 %cmp733759, label %else733761, label %then733760                             ; if

then733760:
  %arg732143 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731757 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732143)                 ; call prim_vector_45ref
  %retprim731854 = call i64 @prim_cdr(i64 %a731757)                                  ; call prim_cdr
  %cloptr733762 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733764 = getelementptr inbounds i64, i64* %cloptr733762, i64 1                ; &eptr733764[1]
  %eptr733765 = getelementptr inbounds i64, i64* %cloptr733762, i64 2                ; &eptr733765[2]
  %eptr733766 = getelementptr inbounds i64, i64* %cloptr733762, i64 3                ; &eptr733766[3]
  store i64 %zj1$cc, i64* %eptr733764                                                ; *eptr733764 = %zj1$cc
  store i64 %cont731849, i64* %eptr733765                                            ; *eptr733765 = %cont731849
  store i64 %oTT$a, i64* %eptr733766                                                 ; *eptr733766 = %oTT$a
  %eptr733763 = getelementptr inbounds i64, i64* %cloptr733762, i64 0                ; &cloptr733762[0]
  %f733767 = ptrtoint void(i64,i64,i64)* @lam733220 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733767, i64* %eptr733763                                               ; store fptr
  %arg732148 = ptrtoint i64* %cloptr733762 to i64                                    ; closure cast; i64* -> i64
  %arg732147 = add i64 0, 0                                                          ; quoted ()
  %cloptr733768 = inttoptr i64 %arg732148 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733768)                                       ; assert function application
  %i0ptr733769 = getelementptr inbounds i64, i64* %cloptr733768, i64 0               ; &cloptr733768[0]
  %f733771 = load i64, i64* %i0ptr733769, align 8                                    ; load; *i0ptr733769
  %fptr733770 = inttoptr i64 %f733771 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733770(i64 %arg732148, i64 %arg732147, i64 %retprim731854); tail call
  ret void

else733761:
  %arg732162 = add i64 0, 0                                                          ; quoted ()
  %arg732161 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr733772 = inttoptr i64 %cont731849 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733772)                                       ; assert function application
  %i0ptr733773 = getelementptr inbounds i64, i64* %cloptr733772, i64 0               ; &cloptr733772[0]
  %f733775 = load i64, i64* %i0ptr733773, align 8                                    ; load; *i0ptr733773
  %fptr733774 = inttoptr i64 %f733775 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733774(i64 %cont731849, i64 %arg732162, i64 %arg732161); tail call
  ret void
}


define void @lam733220(i64 %env733221, i64 %_95731851, i64 %RNZ$b) {
  %envptr733776 = inttoptr i64 %env733221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733777 = getelementptr inbounds i64, i64* %envptr733776, i64 3              ; &envptr733776[3]
  %oTT$a = load i64, i64* %envptr733777, align 8                                     ; load; *envptr733777
  %envptr733778 = inttoptr i64 %env733221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733779 = getelementptr inbounds i64, i64* %envptr733778, i64 2              ; &envptr733778[2]
  %cont731849 = load i64, i64* %envptr733779, align 8                                ; load; *envptr733779
  %envptr733780 = inttoptr i64 %env733221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733781 = getelementptr inbounds i64, i64* %envptr733780, i64 1              ; &envptr733780[1]
  %zj1$cc = load i64, i64* %envptr733781, align 8                                    ; load; *envptr733781
  %arg732149 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731758 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732149)                 ; call prim_vector_45ref
  %a731759 = call i64 @prim_cdr(i64 %a731758)                                        ; call prim_cdr
  %arg732153 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731853 = call i64 @prim_vector_45set_33(i64 %oTT$a, i64 %arg732153, i64 %a731759); call prim_vector_45set_33
  %cloptr733782 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733784 = getelementptr inbounds i64, i64* %cloptr733782, i64 1                ; &eptr733784[1]
  %eptr733785 = getelementptr inbounds i64, i64* %cloptr733782, i64 2                ; &eptr733785[2]
  store i64 %zj1$cc, i64* %eptr733784                                                ; *eptr733784 = %zj1$cc
  store i64 %cont731849, i64* %eptr733785                                            ; *eptr733785 = %cont731849
  %eptr733783 = getelementptr inbounds i64, i64* %cloptr733782, i64 0                ; &cloptr733782[0]
  %f733786 = ptrtoint void(i64,i64,i64)* @lam733216 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733786, i64* %eptr733783                                               ; store fptr
  %arg732157 = ptrtoint i64* %cloptr733782 to i64                                    ; closure cast; i64* -> i64
  %arg732156 = add i64 0, 0                                                          ; quoted ()
  %cloptr733787 = inttoptr i64 %arg732157 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733787)                                       ; assert function application
  %i0ptr733788 = getelementptr inbounds i64, i64* %cloptr733787, i64 0               ; &cloptr733787[0]
  %f733790 = load i64, i64* %i0ptr733788, align 8                                    ; load; *i0ptr733788
  %fptr733789 = inttoptr i64 %f733790 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733789(i64 %arg732157, i64 %arg732156, i64 %retprim731853); tail call
  ret void
}


define void @lam733216(i64 %env733217, i64 %_95731852, i64 %pxk$_950) {
  %envptr733791 = inttoptr i64 %env733217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733792 = getelementptr inbounds i64, i64* %envptr733791, i64 2              ; &envptr733791[2]
  %cont731849 = load i64, i64* %envptr733792, align 8                                ; load; *envptr733792
  %envptr733793 = inttoptr i64 %env733217 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733794 = getelementptr inbounds i64, i64* %envptr733793, i64 1              ; &envptr733793[1]
  %zj1$cc = load i64, i64* %envptr733794, align 8                                    ; load; *envptr733794
  %cloptr733795 = inttoptr i64 %zj1$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733795)                                       ; assert function application
  %i0ptr733796 = getelementptr inbounds i64, i64* %cloptr733795, i64 0               ; &cloptr733795[0]
  %f733798 = load i64, i64* %i0ptr733796, align 8                                    ; load; *i0ptr733796
  %fptr733797 = inttoptr i64 %f733798 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733797(i64 %zj1$cc, i64 %cont731849, i64 %zj1$cc)   ; tail call
  ret void
}


define void @lam733210(i64 %env733211, i64 %_95731850, i64 %zj1$cc) {
  %envptr733799 = inttoptr i64 %env733211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733800 = getelementptr inbounds i64, i64* %envptr733799, i64 2              ; &envptr733799[2]
  %oTT$a = load i64, i64* %envptr733800, align 8                                     ; load; *envptr733800
  %envptr733801 = inttoptr i64 %env733211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733802 = getelementptr inbounds i64, i64* %envptr733801, i64 1              ; &envptr733801[1]
  %cont731849 = load i64, i64* %envptr733802, align 8                                ; load; *envptr733802
  %arg732164 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731753 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732164)                 ; call prim_vector_45ref
  %a731754 = call i64 @prim_null_63(i64 %a731753)                                    ; call prim_null_63
  %cmp733803 = icmp eq i64 %a731754, 15                                              ; false?
  br i1 %cmp733803, label %else733805, label %then733804                             ; if

then733804:
  %arg732168 = add i64 0, 0                                                          ; quoted ()
  %arg732167 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr733806 = inttoptr i64 %cont731849 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733806)                                       ; assert function application
  %i0ptr733807 = getelementptr inbounds i64, i64* %cloptr733806, i64 0               ; &cloptr733806[0]
  %f733809 = load i64, i64* %i0ptr733807, align 8                                    ; load; *i0ptr733807
  %fptr733808 = inttoptr i64 %f733809 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733808(i64 %cont731849, i64 %arg732168, i64 %arg732167); tail call
  ret void

else733805:
  %arg732170 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731755 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732170)                 ; call prim_vector_45ref
  %a731756 = call i64 @prim_cons_63(i64 %a731755)                                    ; call prim_cons_63
  %cmp733810 = icmp eq i64 %a731756, 15                                              ; false?
  br i1 %cmp733810, label %else733812, label %then733811                             ; if

then733811:
  %arg732173 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731757 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732173)                 ; call prim_vector_45ref
  %retprim731854 = call i64 @prim_cdr(i64 %a731757)                                  ; call prim_cdr
  %cloptr733813 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733815 = getelementptr inbounds i64, i64* %cloptr733813, i64 1                ; &eptr733815[1]
  %eptr733816 = getelementptr inbounds i64, i64* %cloptr733813, i64 2                ; &eptr733816[2]
  %eptr733817 = getelementptr inbounds i64, i64* %cloptr733813, i64 3                ; &eptr733817[3]
  store i64 %zj1$cc, i64* %eptr733815                                                ; *eptr733815 = %zj1$cc
  store i64 %cont731849, i64* %eptr733816                                            ; *eptr733816 = %cont731849
  store i64 %oTT$a, i64* %eptr733817                                                 ; *eptr733817 = %oTT$a
  %eptr733814 = getelementptr inbounds i64, i64* %cloptr733813, i64 0                ; &cloptr733813[0]
  %f733818 = ptrtoint void(i64,i64,i64)* @lam733203 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733818, i64* %eptr733814                                               ; store fptr
  %arg732178 = ptrtoint i64* %cloptr733813 to i64                                    ; closure cast; i64* -> i64
  %arg732177 = add i64 0, 0                                                          ; quoted ()
  %cloptr733819 = inttoptr i64 %arg732178 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733819)                                       ; assert function application
  %i0ptr733820 = getelementptr inbounds i64, i64* %cloptr733819, i64 0               ; &cloptr733819[0]
  %f733822 = load i64, i64* %i0ptr733820, align 8                                    ; load; *i0ptr733820
  %fptr733821 = inttoptr i64 %f733822 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733821(i64 %arg732178, i64 %arg732177, i64 %retprim731854); tail call
  ret void

else733812:
  %arg732192 = add i64 0, 0                                                          ; quoted ()
  %arg732191 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr733823 = inttoptr i64 %cont731849 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733823)                                       ; assert function application
  %i0ptr733824 = getelementptr inbounds i64, i64* %cloptr733823, i64 0               ; &cloptr733823[0]
  %f733826 = load i64, i64* %i0ptr733824, align 8                                    ; load; *i0ptr733824
  %fptr733825 = inttoptr i64 %f733826 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733825(i64 %cont731849, i64 %arg732192, i64 %arg732191); tail call
  ret void
}


define void @lam733203(i64 %env733204, i64 %_95731851, i64 %RNZ$b) {
  %envptr733827 = inttoptr i64 %env733204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733828 = getelementptr inbounds i64, i64* %envptr733827, i64 3              ; &envptr733827[3]
  %oTT$a = load i64, i64* %envptr733828, align 8                                     ; load; *envptr733828
  %envptr733829 = inttoptr i64 %env733204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733830 = getelementptr inbounds i64, i64* %envptr733829, i64 2              ; &envptr733829[2]
  %cont731849 = load i64, i64* %envptr733830, align 8                                ; load; *envptr733830
  %envptr733831 = inttoptr i64 %env733204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733832 = getelementptr inbounds i64, i64* %envptr733831, i64 1              ; &envptr733831[1]
  %zj1$cc = load i64, i64* %envptr733832, align 8                                    ; load; *envptr733832
  %arg732179 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731758 = call i64 @prim_vector_45ref(i64 %oTT$a, i64 %arg732179)                 ; call prim_vector_45ref
  %a731759 = call i64 @prim_cdr(i64 %a731758)                                        ; call prim_cdr
  %arg732183 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731853 = call i64 @prim_vector_45set_33(i64 %oTT$a, i64 %arg732183, i64 %a731759); call prim_vector_45set_33
  %cloptr733833 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733835 = getelementptr inbounds i64, i64* %cloptr733833, i64 1                ; &eptr733835[1]
  %eptr733836 = getelementptr inbounds i64, i64* %cloptr733833, i64 2                ; &eptr733836[2]
  store i64 %zj1$cc, i64* %eptr733835                                                ; *eptr733835 = %zj1$cc
  store i64 %cont731849, i64* %eptr733836                                            ; *eptr733836 = %cont731849
  %eptr733834 = getelementptr inbounds i64, i64* %cloptr733833, i64 0                ; &cloptr733833[0]
  %f733837 = ptrtoint void(i64,i64,i64)* @lam733199 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733837, i64* %eptr733834                                               ; store fptr
  %arg732187 = ptrtoint i64* %cloptr733833 to i64                                    ; closure cast; i64* -> i64
  %arg732186 = add i64 0, 0                                                          ; quoted ()
  %cloptr733838 = inttoptr i64 %arg732187 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733838)                                       ; assert function application
  %i0ptr733839 = getelementptr inbounds i64, i64* %cloptr733838, i64 0               ; &cloptr733838[0]
  %f733841 = load i64, i64* %i0ptr733839, align 8                                    ; load; *i0ptr733839
  %fptr733840 = inttoptr i64 %f733841 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733840(i64 %arg732187, i64 %arg732186, i64 %retprim731853); tail call
  ret void
}


define void @lam733199(i64 %env733200, i64 %_95731852, i64 %pxk$_950) {
  %envptr733842 = inttoptr i64 %env733200 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733843 = getelementptr inbounds i64, i64* %envptr733842, i64 2              ; &envptr733842[2]
  %cont731849 = load i64, i64* %envptr733843, align 8                                ; load; *envptr733843
  %envptr733844 = inttoptr i64 %env733200 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733845 = getelementptr inbounds i64, i64* %envptr733844, i64 1              ; &envptr733844[1]
  %zj1$cc = load i64, i64* %envptr733845, align 8                                    ; load; *envptr733845
  %cloptr733846 = inttoptr i64 %zj1$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733846)                                       ; assert function application
  %i0ptr733847 = getelementptr inbounds i64, i64* %cloptr733846, i64 0               ; &cloptr733846[0]
  %f733849 = load i64, i64* %i0ptr733847, align 8                                    ; load; *i0ptr733847
  %fptr733848 = inttoptr i64 %f733849 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733848(i64 %zj1$cc, i64 %cont731849, i64 %zj1$cc)   ; tail call
  ret void
}


define void @lam733193(i64 %env733194, i64 %cont731856, i64 %ooO$lst, i64 %ctl$n) {
  %arg732195 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %gbv$lst = call i64 @prim_make_45vector(i64 %arg732195, i64 %ooO$lst)              ; call prim_make_45vector
  %arg732197 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %VUR$n = call i64 @prim_make_45vector(i64 %arg732197, i64 %ctl$n)                  ; call prim_make_45vector
  %cloptr733850 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733851 = getelementptr inbounds i64, i64* %cloptr733850, i64 0                ; &cloptr733850[0]
  %f733852 = ptrtoint void(i64,i64,i64)* @lam733189 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733852, i64* %eptr733851                                               ; store fptr
  %arg732200 = ptrtoint i64* %cloptr733850 to i64                                    ; closure cast; i64* -> i64
  %cloptr733853 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733855 = getelementptr inbounds i64, i64* %cloptr733853, i64 1                ; &eptr733855[1]
  %eptr733856 = getelementptr inbounds i64, i64* %cloptr733853, i64 2                ; &eptr733856[2]
  %eptr733857 = getelementptr inbounds i64, i64* %cloptr733853, i64 3                ; &eptr733857[3]
  store i64 %gbv$lst, i64* %eptr733855                                               ; *eptr733855 = %gbv$lst
  store i64 %VUR$n, i64* %eptr733856                                                 ; *eptr733856 = %VUR$n
  store i64 %cont731856, i64* %eptr733857                                            ; *eptr733857 = %cont731856
  %eptr733854 = getelementptr inbounds i64, i64* %cloptr733853, i64 0                ; &cloptr733853[0]
  %f733858 = ptrtoint void(i64,i64,i64)* @lam733187 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733858, i64* %eptr733854                                               ; store fptr
  %arg732199 = ptrtoint i64* %cloptr733853 to i64                                    ; closure cast; i64* -> i64
  %cloptr733859 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733861 = getelementptr inbounds i64, i64* %cloptr733859, i64 1                ; &eptr733861[1]
  %eptr733862 = getelementptr inbounds i64, i64* %cloptr733859, i64 2                ; &eptr733862[2]
  %eptr733863 = getelementptr inbounds i64, i64* %cloptr733859, i64 3                ; &eptr733863[3]
  store i64 %gbv$lst, i64* %eptr733861                                               ; *eptr733861 = %gbv$lst
  store i64 %VUR$n, i64* %eptr733862                                                 ; *eptr733862 = %VUR$n
  store i64 %cont731856, i64* %eptr733863                                            ; *eptr733863 = %cont731856
  %eptr733860 = getelementptr inbounds i64, i64* %cloptr733859, i64 0                ; &cloptr733859[0]
  %f733864 = ptrtoint void(i64,i64,i64)* @lam733170 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733864, i64* %eptr733860                                               ; store fptr
  %arg732198 = ptrtoint i64* %cloptr733859 to i64                                    ; closure cast; i64* -> i64
  %cloptr733865 = inttoptr i64 %arg732200 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733865)                                       ; assert function application
  %i0ptr733866 = getelementptr inbounds i64, i64* %cloptr733865, i64 0               ; &cloptr733865[0]
  %f733868 = load i64, i64* %i0ptr733866, align 8                                    ; load; *i0ptr733866
  %fptr733867 = inttoptr i64 %f733868 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733867(i64 %arg732200, i64 %arg732199, i64 %arg732198); tail call
  ret void
}


define void @lam733189(i64 %env733190, i64 %cont731863, i64 %sag$u) {
  %cloptr733869 = inttoptr i64 %sag$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733869)                                       ; assert function application
  %i0ptr733870 = getelementptr inbounds i64, i64* %cloptr733869, i64 0               ; &cloptr733869[0]
  %f733872 = load i64, i64* %i0ptr733870, align 8                                    ; load; *i0ptr733870
  %fptr733871 = inttoptr i64 %f733872 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733871(i64 %sag$u, i64 %cont731863, i64 %sag$u)     ; tail call
  ret void
}


define void @lam733187(i64 %env733188, i64 %_95731857, i64 %kAr$cc) {
  %envptr733873 = inttoptr i64 %env733188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733874 = getelementptr inbounds i64, i64* %envptr733873, i64 3              ; &envptr733873[3]
  %cont731856 = load i64, i64* %envptr733874, align 8                                ; load; *envptr733874
  %envptr733875 = inttoptr i64 %env733188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733876 = getelementptr inbounds i64, i64* %envptr733875, i64 2              ; &envptr733875[2]
  %VUR$n = load i64, i64* %envptr733876, align 8                                     ; load; *envptr733876
  %envptr733877 = inttoptr i64 %env733188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733878 = getelementptr inbounds i64, i64* %envptr733877, i64 1              ; &envptr733877[1]
  %gbv$lst = load i64, i64* %envptr733878, align 8                                   ; load; *envptr733878
  %arg732204 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731760 = call i64 @prim_vector_45ref(i64 %VUR$n, i64 %arg732204)                 ; call prim_vector_45ref
  %arg732207 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731761 = call i64 @prim__61(i64 %arg732207, i64 %a731760)                        ; call prim__61
  %cmp733879 = icmp eq i64 %a731761, 15                                              ; false?
  br i1 %cmp733879, label %else733881, label %then733880                             ; if

then733880:
  %arg732208 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731858 = call i64 @prim_vector_45ref(i64 %gbv$lst, i64 %arg732208)         ; call prim_vector_45ref
  %arg732211 = add i64 0, 0                                                          ; quoted ()
  %cloptr733882 = inttoptr i64 %cont731856 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733882)                                       ; assert function application
  %i0ptr733883 = getelementptr inbounds i64, i64* %cloptr733882, i64 0               ; &cloptr733882[0]
  %f733885 = load i64, i64* %i0ptr733883, align 8                                    ; load; *i0ptr733883
  %fptr733884 = inttoptr i64 %f733885 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733884(i64 %cont731856, i64 %arg732211, i64 %retprim731858); tail call
  ret void

else733881:
  %arg732213 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731762 = call i64 @prim_vector_45ref(i64 %gbv$lst, i64 %arg732213)               ; call prim_vector_45ref
  %a731763 = call i64 @prim_cdr(i64 %a731762)                                        ; call prim_cdr
  %arg732217 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731862 = call i64 @prim_vector_45set_33(i64 %gbv$lst, i64 %arg732217, i64 %a731763); call prim_vector_45set_33
  %cloptr733886 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733888 = getelementptr inbounds i64, i64* %cloptr733886, i64 1                ; &eptr733888[1]
  %eptr733889 = getelementptr inbounds i64, i64* %cloptr733886, i64 2                ; &eptr733889[2]
  %eptr733890 = getelementptr inbounds i64, i64* %cloptr733886, i64 3                ; &eptr733890[3]
  store i64 %kAr$cc, i64* %eptr733888                                                ; *eptr733888 = %kAr$cc
  store i64 %VUR$n, i64* %eptr733889                                                 ; *eptr733889 = %VUR$n
  store i64 %cont731856, i64* %eptr733890                                            ; *eptr733890 = %cont731856
  %eptr733887 = getelementptr inbounds i64, i64* %cloptr733886, i64 0                ; &cloptr733886[0]
  %f733891 = ptrtoint void(i64,i64,i64)* @lam733181 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733891, i64* %eptr733887                                               ; store fptr
  %arg732221 = ptrtoint i64* %cloptr733886 to i64                                    ; closure cast; i64* -> i64
  %arg732220 = add i64 0, 0                                                          ; quoted ()
  %cloptr733892 = inttoptr i64 %arg732221 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733892)                                       ; assert function application
  %i0ptr733893 = getelementptr inbounds i64, i64* %cloptr733892, i64 0               ; &cloptr733892[0]
  %f733895 = load i64, i64* %i0ptr733893, align 8                                    ; load; *i0ptr733893
  %fptr733894 = inttoptr i64 %f733895 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733894(i64 %arg732221, i64 %arg732220, i64 %retprim731862); tail call
  ret void
}


define void @lam733181(i64 %env733182, i64 %_95731859, i64 %qCp$_950) {
  %envptr733896 = inttoptr i64 %env733182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733897 = getelementptr inbounds i64, i64* %envptr733896, i64 3              ; &envptr733896[3]
  %cont731856 = load i64, i64* %envptr733897, align 8                                ; load; *envptr733897
  %envptr733898 = inttoptr i64 %env733182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733899 = getelementptr inbounds i64, i64* %envptr733898, i64 2              ; &envptr733898[2]
  %VUR$n = load i64, i64* %envptr733899, align 8                                     ; load; *envptr733899
  %envptr733900 = inttoptr i64 %env733182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733901 = getelementptr inbounds i64, i64* %envptr733900, i64 1              ; &envptr733900[1]
  %kAr$cc = load i64, i64* %envptr733901, align 8                                    ; load; *envptr733901
  %arg732222 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731764 = call i64 @prim_vector_45ref(i64 %VUR$n, i64 %arg732222)                 ; call prim_vector_45ref
  %arg732224 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a731765 = call i64 @prim__45(i64 %a731764, i64 %arg732224)                        ; call prim__45
  %arg732227 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731861 = call i64 @prim_vector_45set_33(i64 %VUR$n, i64 %arg732227, i64 %a731765); call prim_vector_45set_33
  %cloptr733902 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733904 = getelementptr inbounds i64, i64* %cloptr733902, i64 1                ; &eptr733904[1]
  %eptr733905 = getelementptr inbounds i64, i64* %cloptr733902, i64 2                ; &eptr733905[2]
  store i64 %kAr$cc, i64* %eptr733904                                                ; *eptr733904 = %kAr$cc
  store i64 %cont731856, i64* %eptr733905                                            ; *eptr733905 = %cont731856
  %eptr733903 = getelementptr inbounds i64, i64* %cloptr733902, i64 0                ; &cloptr733902[0]
  %f733906 = ptrtoint void(i64,i64,i64)* @lam733176 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733906, i64* %eptr733903                                               ; store fptr
  %arg732231 = ptrtoint i64* %cloptr733902 to i64                                    ; closure cast; i64* -> i64
  %arg732230 = add i64 0, 0                                                          ; quoted ()
  %cloptr733907 = inttoptr i64 %arg732231 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733907)                                       ; assert function application
  %i0ptr733908 = getelementptr inbounds i64, i64* %cloptr733907, i64 0               ; &cloptr733907[0]
  %f733910 = load i64, i64* %i0ptr733908, align 8                                    ; load; *i0ptr733908
  %fptr733909 = inttoptr i64 %f733910 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733909(i64 %arg732231, i64 %arg732230, i64 %retprim731861); tail call
  ret void
}


define void @lam733176(i64 %env733177, i64 %_95731860, i64 %IJS$_951) {
  %envptr733911 = inttoptr i64 %env733177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733912 = getelementptr inbounds i64, i64* %envptr733911, i64 2              ; &envptr733911[2]
  %cont731856 = load i64, i64* %envptr733912, align 8                                ; load; *envptr733912
  %envptr733913 = inttoptr i64 %env733177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733914 = getelementptr inbounds i64, i64* %envptr733913, i64 1              ; &envptr733913[1]
  %kAr$cc = load i64, i64* %envptr733914, align 8                                    ; load; *envptr733914
  %cloptr733915 = inttoptr i64 %kAr$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733915)                                       ; assert function application
  %i0ptr733916 = getelementptr inbounds i64, i64* %cloptr733915, i64 0               ; &cloptr733915[0]
  %f733918 = load i64, i64* %i0ptr733916, align 8                                    ; load; *i0ptr733916
  %fptr733917 = inttoptr i64 %f733918 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733917(i64 %kAr$cc, i64 %cont731856, i64 %kAr$cc)   ; tail call
  ret void
}


define void @lam733170(i64 %env733171, i64 %_95731857, i64 %kAr$cc) {
  %envptr733919 = inttoptr i64 %env733171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733920 = getelementptr inbounds i64, i64* %envptr733919, i64 3              ; &envptr733919[3]
  %cont731856 = load i64, i64* %envptr733920, align 8                                ; load; *envptr733920
  %envptr733921 = inttoptr i64 %env733171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733922 = getelementptr inbounds i64, i64* %envptr733921, i64 2              ; &envptr733921[2]
  %VUR$n = load i64, i64* %envptr733922, align 8                                     ; load; *envptr733922
  %envptr733923 = inttoptr i64 %env733171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733924 = getelementptr inbounds i64, i64* %envptr733923, i64 1              ; &envptr733923[1]
  %gbv$lst = load i64, i64* %envptr733924, align 8                                   ; load; *envptr733924
  %arg732235 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731760 = call i64 @prim_vector_45ref(i64 %VUR$n, i64 %arg732235)                 ; call prim_vector_45ref
  %arg732238 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731761 = call i64 @prim__61(i64 %arg732238, i64 %a731760)                        ; call prim__61
  %cmp733925 = icmp eq i64 %a731761, 15                                              ; false?
  br i1 %cmp733925, label %else733927, label %then733926                             ; if

then733926:
  %arg732239 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731858 = call i64 @prim_vector_45ref(i64 %gbv$lst, i64 %arg732239)         ; call prim_vector_45ref
  %arg732242 = add i64 0, 0                                                          ; quoted ()
  %cloptr733928 = inttoptr i64 %cont731856 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733928)                                       ; assert function application
  %i0ptr733929 = getelementptr inbounds i64, i64* %cloptr733928, i64 0               ; &cloptr733928[0]
  %f733931 = load i64, i64* %i0ptr733929, align 8                                    ; load; *i0ptr733929
  %fptr733930 = inttoptr i64 %f733931 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733930(i64 %cont731856, i64 %arg732242, i64 %retprim731858); tail call
  ret void

else733927:
  %arg732244 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731762 = call i64 @prim_vector_45ref(i64 %gbv$lst, i64 %arg732244)               ; call prim_vector_45ref
  %a731763 = call i64 @prim_cdr(i64 %a731762)                                        ; call prim_cdr
  %arg732248 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731862 = call i64 @prim_vector_45set_33(i64 %gbv$lst, i64 %arg732248, i64 %a731763); call prim_vector_45set_33
  %cloptr733932 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733934 = getelementptr inbounds i64, i64* %cloptr733932, i64 1                ; &eptr733934[1]
  %eptr733935 = getelementptr inbounds i64, i64* %cloptr733932, i64 2                ; &eptr733935[2]
  %eptr733936 = getelementptr inbounds i64, i64* %cloptr733932, i64 3                ; &eptr733936[3]
  store i64 %kAr$cc, i64* %eptr733934                                                ; *eptr733934 = %kAr$cc
  store i64 %VUR$n, i64* %eptr733935                                                 ; *eptr733935 = %VUR$n
  store i64 %cont731856, i64* %eptr733936                                            ; *eptr733936 = %cont731856
  %eptr733933 = getelementptr inbounds i64, i64* %cloptr733932, i64 0                ; &cloptr733932[0]
  %f733937 = ptrtoint void(i64,i64,i64)* @lam733164 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733937, i64* %eptr733933                                               ; store fptr
  %arg732252 = ptrtoint i64* %cloptr733932 to i64                                    ; closure cast; i64* -> i64
  %arg732251 = add i64 0, 0                                                          ; quoted ()
  %cloptr733938 = inttoptr i64 %arg732252 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733938)                                       ; assert function application
  %i0ptr733939 = getelementptr inbounds i64, i64* %cloptr733938, i64 0               ; &cloptr733938[0]
  %f733941 = load i64, i64* %i0ptr733939, align 8                                    ; load; *i0ptr733939
  %fptr733940 = inttoptr i64 %f733941 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733940(i64 %arg732252, i64 %arg732251, i64 %retprim731862); tail call
  ret void
}


define void @lam733164(i64 %env733165, i64 %_95731859, i64 %qCp$_950) {
  %envptr733942 = inttoptr i64 %env733165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733943 = getelementptr inbounds i64, i64* %envptr733942, i64 3              ; &envptr733942[3]
  %cont731856 = load i64, i64* %envptr733943, align 8                                ; load; *envptr733943
  %envptr733944 = inttoptr i64 %env733165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733945 = getelementptr inbounds i64, i64* %envptr733944, i64 2              ; &envptr733944[2]
  %VUR$n = load i64, i64* %envptr733945, align 8                                     ; load; *envptr733945
  %envptr733946 = inttoptr i64 %env733165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733947 = getelementptr inbounds i64, i64* %envptr733946, i64 1              ; &envptr733946[1]
  %kAr$cc = load i64, i64* %envptr733947, align 8                                    ; load; *envptr733947
  %arg732253 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731764 = call i64 @prim_vector_45ref(i64 %VUR$n, i64 %arg732253)                 ; call prim_vector_45ref
  %arg732255 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a731765 = call i64 @prim__45(i64 %a731764, i64 %arg732255)                        ; call prim__45
  %arg732258 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731861 = call i64 @prim_vector_45set_33(i64 %VUR$n, i64 %arg732258, i64 %a731765); call prim_vector_45set_33
  %cloptr733948 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr733950 = getelementptr inbounds i64, i64* %cloptr733948, i64 1                ; &eptr733950[1]
  %eptr733951 = getelementptr inbounds i64, i64* %cloptr733948, i64 2                ; &eptr733951[2]
  store i64 %kAr$cc, i64* %eptr733950                                                ; *eptr733950 = %kAr$cc
  store i64 %cont731856, i64* %eptr733951                                            ; *eptr733951 = %cont731856
  %eptr733949 = getelementptr inbounds i64, i64* %cloptr733948, i64 0                ; &cloptr733948[0]
  %f733952 = ptrtoint void(i64,i64,i64)* @lam733159 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733952, i64* %eptr733949                                               ; store fptr
  %arg732262 = ptrtoint i64* %cloptr733948 to i64                                    ; closure cast; i64* -> i64
  %arg732261 = add i64 0, 0                                                          ; quoted ()
  %cloptr733953 = inttoptr i64 %arg732262 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733953)                                       ; assert function application
  %i0ptr733954 = getelementptr inbounds i64, i64* %cloptr733953, i64 0               ; &cloptr733953[0]
  %f733956 = load i64, i64* %i0ptr733954, align 8                                    ; load; *i0ptr733954
  %fptr733955 = inttoptr i64 %f733956 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733955(i64 %arg732262, i64 %arg732261, i64 %retprim731861); tail call
  ret void
}


define void @lam733159(i64 %env733160, i64 %_95731860, i64 %IJS$_951) {
  %envptr733957 = inttoptr i64 %env733160 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733958 = getelementptr inbounds i64, i64* %envptr733957, i64 2              ; &envptr733957[2]
  %cont731856 = load i64, i64* %envptr733958, align 8                                ; load; *envptr733958
  %envptr733959 = inttoptr i64 %env733160 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733960 = getelementptr inbounds i64, i64* %envptr733959, i64 1              ; &envptr733959[1]
  %kAr$cc = load i64, i64* %envptr733960, align 8                                    ; load; *envptr733960
  %cloptr733961 = inttoptr i64 %kAr$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733961)                                       ; assert function application
  %i0ptr733962 = getelementptr inbounds i64, i64* %cloptr733961, i64 0               ; &cloptr733961[0]
  %f733964 = load i64, i64* %i0ptr733962, align 8                                    ; load; *i0ptr733962
  %fptr733963 = inttoptr i64 %f733964 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733963(i64 %kAr$cc, i64 %cont731856, i64 %kAr$cc)   ; tail call
  ret void
}


define void @lam733153(i64 %env733154, i64 %cont731864, i64 %u43$v, i64 %yOQ$lst) {
  %arg732267 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %nJg$lst = call i64 @prim_make_45vector(i64 %arg732267, i64 %yOQ$lst)              ; call prim_make_45vector
  %cloptr733965 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr733966 = getelementptr inbounds i64, i64* %cloptr733965, i64 0                ; &cloptr733965[0]
  %f733967 = ptrtoint void(i64,i64,i64)* @lam733150 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733967, i64* %eptr733966                                               ; store fptr
  %arg732270 = ptrtoint i64* %cloptr733965 to i64                                    ; closure cast; i64* -> i64
  %cloptr733968 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733970 = getelementptr inbounds i64, i64* %cloptr733968, i64 1                ; &eptr733970[1]
  %eptr733971 = getelementptr inbounds i64, i64* %cloptr733968, i64 2                ; &eptr733971[2]
  %eptr733972 = getelementptr inbounds i64, i64* %cloptr733968, i64 3                ; &eptr733972[3]
  store i64 %u43$v, i64* %eptr733970                                                 ; *eptr733970 = %u43$v
  store i64 %cont731864, i64* %eptr733971                                            ; *eptr733971 = %cont731864
  store i64 %nJg$lst, i64* %eptr733972                                               ; *eptr733972 = %nJg$lst
  %eptr733969 = getelementptr inbounds i64, i64* %cloptr733968, i64 0                ; &cloptr733968[0]
  %f733973 = ptrtoint void(i64,i64,i64)* @lam733148 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733973, i64* %eptr733969                                               ; store fptr
  %arg732269 = ptrtoint i64* %cloptr733968 to i64                                    ; closure cast; i64* -> i64
  %cloptr733974 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr733976 = getelementptr inbounds i64, i64* %cloptr733974, i64 1                ; &eptr733976[1]
  %eptr733977 = getelementptr inbounds i64, i64* %cloptr733974, i64 2                ; &eptr733977[2]
  %eptr733978 = getelementptr inbounds i64, i64* %cloptr733974, i64 3                ; &eptr733978[3]
  store i64 %u43$v, i64* %eptr733976                                                 ; *eptr733976 = %u43$v
  store i64 %cont731864, i64* %eptr733977                                            ; *eptr733977 = %cont731864
  store i64 %nJg$lst, i64* %eptr733978                                               ; *eptr733978 = %nJg$lst
  %eptr733975 = getelementptr inbounds i64, i64* %cloptr733974, i64 0                ; &cloptr733974[0]
  %f733979 = ptrtoint void(i64,i64,i64)* @lam733135 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f733979, i64* %eptr733975                                               ; store fptr
  %arg732268 = ptrtoint i64* %cloptr733974 to i64                                    ; closure cast; i64* -> i64
  %cloptr733980 = inttoptr i64 %arg732270 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733980)                                       ; assert function application
  %i0ptr733981 = getelementptr inbounds i64, i64* %cloptr733980, i64 0               ; &cloptr733980[0]
  %f733983 = load i64, i64* %i0ptr733981, align 8                                    ; load; *i0ptr733981
  %fptr733982 = inttoptr i64 %f733983 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733982(i64 %arg732270, i64 %arg732269, i64 %arg732268); tail call
  ret void
}


define void @lam733150(i64 %env733151, i64 %cont731869, i64 %DsF$u) {
  %cloptr733984 = inttoptr i64 %DsF$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733984)                                       ; assert function application
  %i0ptr733985 = getelementptr inbounds i64, i64* %cloptr733984, i64 0               ; &cloptr733984[0]
  %f733987 = load i64, i64* %i0ptr733985, align 8                                    ; load; *i0ptr733985
  %fptr733986 = inttoptr i64 %f733987 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733986(i64 %DsF$u, i64 %cont731869, i64 %DsF$u)     ; tail call
  ret void
}


define void @lam733148(i64 %env733149, i64 %_95731865, i64 %rXQ$cc) {
  %envptr733988 = inttoptr i64 %env733149 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733989 = getelementptr inbounds i64, i64* %envptr733988, i64 3              ; &envptr733988[3]
  %nJg$lst = load i64, i64* %envptr733989, align 8                                   ; load; *envptr733989
  %envptr733990 = inttoptr i64 %env733149 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733991 = getelementptr inbounds i64, i64* %envptr733990, i64 2              ; &envptr733990[2]
  %cont731864 = load i64, i64* %envptr733991, align 8                                ; load; *envptr733991
  %envptr733992 = inttoptr i64 %env733149 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr733993 = getelementptr inbounds i64, i64* %envptr733992, i64 1              ; &envptr733992[1]
  %u43$v = load i64, i64* %envptr733993, align 8                                     ; load; *envptr733993
  %arg732274 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731766 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732274)               ; call prim_vector_45ref
  %a731767 = call i64 @prim_null_63(i64 %a731766)                                    ; call prim_null_63
  %cmp733994 = icmp eq i64 %a731767, 15                                              ; false?
  br i1 %cmp733994, label %else733996, label %then733995                             ; if

then733995:
  %arg732278 = add i64 0, 0                                                          ; quoted ()
  %arg732277 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr733997 = inttoptr i64 %cont731864 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr733997)                                       ; assert function application
  %i0ptr733998 = getelementptr inbounds i64, i64* %cloptr733997, i64 0               ; &cloptr733997[0]
  %f734000 = load i64, i64* %i0ptr733998, align 8                                    ; load; *i0ptr733998
  %fptr733999 = inttoptr i64 %f734000 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr733999(i64 %cont731864, i64 %arg732278, i64 %arg732277); tail call
  ret void

else733996:
  %arg732280 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731768 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732280)               ; call prim_vector_45ref
  %a731769 = call i64 @prim_car(i64 %a731768)                                        ; call prim_car
  %a731770 = call i64 @prim_eqv_63(i64 %a731769, i64 %u43$v)                         ; call prim_eqv_63
  %cmp734001 = icmp eq i64 %a731770, 15                                              ; false?
  br i1 %cmp734001, label %else734003, label %then734002                             ; if

then734002:
  %arg732285 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731866 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732285)         ; call prim_vector_45ref
  %arg732288 = add i64 0, 0                                                          ; quoted ()
  %cloptr734004 = inttoptr i64 %cont731864 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734004)                                       ; assert function application
  %i0ptr734005 = getelementptr inbounds i64, i64* %cloptr734004, i64 0               ; &cloptr734004[0]
  %f734007 = load i64, i64* %i0ptr734005, align 8                                    ; load; *i0ptr734005
  %fptr734006 = inttoptr i64 %f734007 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734006(i64 %cont731864, i64 %arg732288, i64 %retprim731866); tail call
  ret void

else734003:
  %arg732290 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731771 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732290)               ; call prim_vector_45ref
  %a731772 = call i64 @prim_cdr(i64 %a731771)                                        ; call prim_cdr
  %arg732294 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731868 = call i64 @prim_vector_45set_33(i64 %nJg$lst, i64 %arg732294, i64 %a731772); call prim_vector_45set_33
  %cloptr734008 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr734010 = getelementptr inbounds i64, i64* %cloptr734008, i64 1                ; &eptr734010[1]
  %eptr734011 = getelementptr inbounds i64, i64* %cloptr734008, i64 2                ; &eptr734011[2]
  store i64 %cont731864, i64* %eptr734010                                            ; *eptr734010 = %cont731864
  store i64 %rXQ$cc, i64* %eptr734011                                                ; *eptr734011 = %rXQ$cc
  %eptr734009 = getelementptr inbounds i64, i64* %cloptr734008, i64 0                ; &cloptr734008[0]
  %f734012 = ptrtoint void(i64,i64,i64)* @lam733142 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734012, i64* %eptr734009                                               ; store fptr
  %arg732298 = ptrtoint i64* %cloptr734008 to i64                                    ; closure cast; i64* -> i64
  %arg732297 = add i64 0, 0                                                          ; quoted ()
  %cloptr734013 = inttoptr i64 %arg732298 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734013)                                       ; assert function application
  %i0ptr734014 = getelementptr inbounds i64, i64* %cloptr734013, i64 0               ; &cloptr734013[0]
  %f734016 = load i64, i64* %i0ptr734014, align 8                                    ; load; *i0ptr734014
  %fptr734015 = inttoptr i64 %f734016 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734015(i64 %arg732298, i64 %arg732297, i64 %retprim731868); tail call
  ret void
}


define void @lam733142(i64 %env733143, i64 %_95731867, i64 %dFn$_950) {
  %envptr734017 = inttoptr i64 %env733143 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734018 = getelementptr inbounds i64, i64* %envptr734017, i64 2              ; &envptr734017[2]
  %rXQ$cc = load i64, i64* %envptr734018, align 8                                    ; load; *envptr734018
  %envptr734019 = inttoptr i64 %env733143 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734020 = getelementptr inbounds i64, i64* %envptr734019, i64 1              ; &envptr734019[1]
  %cont731864 = load i64, i64* %envptr734020, align 8                                ; load; *envptr734020
  %cloptr734021 = inttoptr i64 %rXQ$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734021)                                       ; assert function application
  %i0ptr734022 = getelementptr inbounds i64, i64* %cloptr734021, i64 0               ; &cloptr734021[0]
  %f734024 = load i64, i64* %i0ptr734022, align 8                                    ; load; *i0ptr734022
  %fptr734023 = inttoptr i64 %f734024 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734023(i64 %rXQ$cc, i64 %cont731864, i64 %rXQ$cc)   ; tail call
  ret void
}


define void @lam733135(i64 %env733136, i64 %_95731865, i64 %rXQ$cc) {
  %envptr734025 = inttoptr i64 %env733136 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734026 = getelementptr inbounds i64, i64* %envptr734025, i64 3              ; &envptr734025[3]
  %nJg$lst = load i64, i64* %envptr734026, align 8                                   ; load; *envptr734026
  %envptr734027 = inttoptr i64 %env733136 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734028 = getelementptr inbounds i64, i64* %envptr734027, i64 2              ; &envptr734027[2]
  %cont731864 = load i64, i64* %envptr734028, align 8                                ; load; *envptr734028
  %envptr734029 = inttoptr i64 %env733136 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734030 = getelementptr inbounds i64, i64* %envptr734029, i64 1              ; &envptr734029[1]
  %u43$v = load i64, i64* %envptr734030, align 8                                     ; load; *envptr734030
  %arg732302 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731766 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732302)               ; call prim_vector_45ref
  %a731767 = call i64 @prim_null_63(i64 %a731766)                                    ; call prim_null_63
  %cmp734031 = icmp eq i64 %a731767, 15                                              ; false?
  br i1 %cmp734031, label %else734033, label %then734032                             ; if

then734032:
  %arg732306 = add i64 0, 0                                                          ; quoted ()
  %arg732305 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr734034 = inttoptr i64 %cont731864 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734034)                                       ; assert function application
  %i0ptr734035 = getelementptr inbounds i64, i64* %cloptr734034, i64 0               ; &cloptr734034[0]
  %f734037 = load i64, i64* %i0ptr734035, align 8                                    ; load; *i0ptr734035
  %fptr734036 = inttoptr i64 %f734037 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734036(i64 %cont731864, i64 %arg732306, i64 %arg732305); tail call
  ret void

else734033:
  %arg732308 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731768 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732308)               ; call prim_vector_45ref
  %a731769 = call i64 @prim_car(i64 %a731768)                                        ; call prim_car
  %a731770 = call i64 @prim_eqv_63(i64 %a731769, i64 %u43$v)                         ; call prim_eqv_63
  %cmp734038 = icmp eq i64 %a731770, 15                                              ; false?
  br i1 %cmp734038, label %else734040, label %then734039                             ; if

then734039:
  %arg732313 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731866 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732313)         ; call prim_vector_45ref
  %arg732316 = add i64 0, 0                                                          ; quoted ()
  %cloptr734041 = inttoptr i64 %cont731864 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734041)                                       ; assert function application
  %i0ptr734042 = getelementptr inbounds i64, i64* %cloptr734041, i64 0               ; &cloptr734041[0]
  %f734044 = load i64, i64* %i0ptr734042, align 8                                    ; load; *i0ptr734042
  %fptr734043 = inttoptr i64 %f734044 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734043(i64 %cont731864, i64 %arg732316, i64 %retprim731866); tail call
  ret void

else734040:
  %arg732318 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731771 = call i64 @prim_vector_45ref(i64 %nJg$lst, i64 %arg732318)               ; call prim_vector_45ref
  %a731772 = call i64 @prim_cdr(i64 %a731771)                                        ; call prim_cdr
  %arg732322 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731868 = call i64 @prim_vector_45set_33(i64 %nJg$lst, i64 %arg732322, i64 %a731772); call prim_vector_45set_33
  %cloptr734045 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr734047 = getelementptr inbounds i64, i64* %cloptr734045, i64 1                ; &eptr734047[1]
  %eptr734048 = getelementptr inbounds i64, i64* %cloptr734045, i64 2                ; &eptr734048[2]
  store i64 %cont731864, i64* %eptr734047                                            ; *eptr734047 = %cont731864
  store i64 %rXQ$cc, i64* %eptr734048                                                ; *eptr734048 = %rXQ$cc
  %eptr734046 = getelementptr inbounds i64, i64* %cloptr734045, i64 0                ; &cloptr734045[0]
  %f734049 = ptrtoint void(i64,i64,i64)* @lam733129 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734049, i64* %eptr734046                                               ; store fptr
  %arg732326 = ptrtoint i64* %cloptr734045 to i64                                    ; closure cast; i64* -> i64
  %arg732325 = add i64 0, 0                                                          ; quoted ()
  %cloptr734050 = inttoptr i64 %arg732326 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734050)                                       ; assert function application
  %i0ptr734051 = getelementptr inbounds i64, i64* %cloptr734050, i64 0               ; &cloptr734050[0]
  %f734053 = load i64, i64* %i0ptr734051, align 8                                    ; load; *i0ptr734051
  %fptr734052 = inttoptr i64 %f734053 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734052(i64 %arg732326, i64 %arg732325, i64 %retprim731868); tail call
  ret void
}


define void @lam733129(i64 %env733130, i64 %_95731867, i64 %dFn$_950) {
  %envptr734054 = inttoptr i64 %env733130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734055 = getelementptr inbounds i64, i64* %envptr734054, i64 2              ; &envptr734054[2]
  %rXQ$cc = load i64, i64* %envptr734055, align 8                                    ; load; *envptr734055
  %envptr734056 = inttoptr i64 %env733130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734057 = getelementptr inbounds i64, i64* %envptr734056, i64 1              ; &envptr734056[1]
  %cont731864 = load i64, i64* %envptr734057, align 8                                ; load; *envptr734057
  %cloptr734058 = inttoptr i64 %rXQ$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734058)                                       ; assert function application
  %i0ptr734059 = getelementptr inbounds i64, i64* %cloptr734058, i64 0               ; &cloptr734058[0]
  %f734061 = load i64, i64* %i0ptr734059, align 8                                    ; load; *i0ptr734059
  %fptr734060 = inttoptr i64 %f734061 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734060(i64 %rXQ$cc, i64 %cont731864, i64 %rXQ$cc)   ; tail call
  ret void
}


define void @lam733122(i64 %env733123, i64 %a9C$args731871) {
  %envptr734062 = inttoptr i64 %env733123 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734063 = getelementptr inbounds i64, i64* %envptr734062, i64 1              ; &envptr734062[1]
  %VIC$_37foldl1 = load i64, i64* %envptr734063, align 8                             ; load; *envptr734063
  %cont731870 = call i64 @prim_car(i64 %a9C$args731871)                              ; call prim_car
  %a9C$args = call i64 @prim_cdr(i64 %a9C$args731871)                                ; call prim_cdr
  %a731773 = call i64 @prim_null_63(i64 %a9C$args)                                   ; call prim_null_63
  %cmp734064 = icmp eq i64 %a731773, 15                                              ; false?
  br i1 %cmp734064, label %else734066, label %then734065                             ; if

then734065:
  %arg732334 = add i64 0, 0                                                          ; quoted ()
  %arg732333 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr734067 = inttoptr i64 %cont731870 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734067)                                       ; assert function application
  %i0ptr734068 = getelementptr inbounds i64, i64* %cloptr734067, i64 0               ; &cloptr734067[0]
  %f734070 = load i64, i64* %i0ptr734068, align 8                                    ; load; *i0ptr734068
  %fptr734069 = inttoptr i64 %f734070 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734069(i64 %cont731870, i64 %arg732334, i64 %arg732333); tail call
  ret void

else734066:
  %a731774 = call i64 @prim_cdr(i64 %a9C$args)                                       ; call prim_cdr
  %a731775 = call i64 @prim_null_63(i64 %a731774)                                    ; call prim_null_63
  %cmp734071 = icmp eq i64 %a731775, 15                                              ; false?
  br i1 %cmp734071, label %else734073, label %then734072                             ; if

then734072:
  %retprim731872 = call i64 @prim_car(i64 %a9C$args)                                 ; call prim_car
  %arg732340 = add i64 0, 0                                                          ; quoted ()
  %cloptr734074 = inttoptr i64 %cont731870 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734074)                                       ; assert function application
  %i0ptr734075 = getelementptr inbounds i64, i64* %cloptr734074, i64 0               ; &cloptr734074[0]
  %f734077 = load i64, i64* %i0ptr734075, align 8                                    ; load; *i0ptr734075
  %fptr734076 = inttoptr i64 %f734077 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734076(i64 %cont731870, i64 %arg732340, i64 %retprim731872); tail call
  ret void

else734073:
  %a731776 = call i64 @prim_car(i64 %a9C$args)                                       ; call prim_car
  %a731777 = call i64 @prim_cdr(i64 %a9C$args)                                       ; call prim_cdr
  %cloptr734078 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734079 = getelementptr inbounds i64, i64* %cloptr734078, i64 0                ; &cloptr734078[0]
  %f734080 = ptrtoint void(i64,i64,i64,i64)* @lam733120 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f734080, i64* %eptr734079                                               ; store fptr
  %arg732346 = ptrtoint i64* %cloptr734078 to i64                                    ; closure cast; i64* -> i64
  %cloptr734081 = inttoptr i64 %VIC$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734081)                                       ; assert function application
  %i0ptr734082 = getelementptr inbounds i64, i64* %cloptr734081, i64 0               ; &cloptr734081[0]
  %f734084 = load i64, i64* %i0ptr734082, align 8                                    ; load; *i0ptr734082
  %fptr734083 = inttoptr i64 %f734084 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734083(i64 %VIC$_37foldl1, i64 %cont731870, i64 %arg732346, i64 %a731776, i64 %a731777); tail call
  ret void
}


define void @lam733120(i64 %env733121, i64 %cont731873, i64 %f79$n, i64 %ccL$v) {
  %retprim731874 = call i64 @prim__47(i64 %ccL$v, i64 %f79$n)                        ; call prim__47
  %arg732352 = add i64 0, 0                                                          ; quoted ()
  %cloptr734085 = inttoptr i64 %cont731873 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734085)                                       ; assert function application
  %i0ptr734086 = getelementptr inbounds i64, i64* %cloptr734085, i64 0               ; &cloptr734085[0]
  %f734088 = load i64, i64* %i0ptr734086, align 8                                    ; load; *i0ptr734086
  %fptr734087 = inttoptr i64 %f734088 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734087(i64 %cont731873, i64 %arg732352, i64 %retprim731874); tail call
  ret void
}


define void @lam733114(i64 %env733115, i64 %cont731875, i64 %rEa$x) {
  %retprim731876 = call i64 @prim_car(i64 %rEa$x)                                    ; call prim_car
  %arg732356 = add i64 0, 0                                                          ; quoted ()
  %cloptr734089 = inttoptr i64 %cont731875 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734089)                                       ; assert function application
  %i0ptr734090 = getelementptr inbounds i64, i64* %cloptr734089, i64 0               ; &cloptr734089[0]
  %f734092 = load i64, i64* %i0ptr734090, align 8                                    ; load; *i0ptr734090
  %fptr734091 = inttoptr i64 %f734092 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734091(i64 %cont731875, i64 %arg732356, i64 %retprim731876); tail call
  ret void
}


define void @lam733111(i64 %env733112, i64 %cont731877, i64 %m0B$x) {
  %a731778 = call i64 @prim_cdr(i64 %m0B$x)                                          ; call prim_cdr
  %retprim731878 = call i64 @prim_car(i64 %a731778)                                  ; call prim_car
  %arg732361 = add i64 0, 0                                                          ; quoted ()
  %cloptr734093 = inttoptr i64 %cont731877 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734093)                                       ; assert function application
  %i0ptr734094 = getelementptr inbounds i64, i64* %cloptr734093, i64 0               ; &cloptr734093[0]
  %f734096 = load i64, i64* %i0ptr734094, align 8                                    ; load; *i0ptr734094
  %fptr734095 = inttoptr i64 %f734096 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734095(i64 %cont731877, i64 %arg732361, i64 %retprim731878); tail call
  ret void
}


define void @lam733108(i64 %env733109, i64 %cont731879, i64 %flP$x) {
  %a731779 = call i64 @prim_cdr(i64 %flP$x)                                          ; call prim_cdr
  %a731780 = call i64 @prim_cdr(i64 %a731779)                                        ; call prim_cdr
  %retprim731880 = call i64 @prim_car(i64 %a731780)                                  ; call prim_car
  %arg732367 = add i64 0, 0                                                          ; quoted ()
  %cloptr734097 = inttoptr i64 %cont731879 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734097)                                       ; assert function application
  %i0ptr734098 = getelementptr inbounds i64, i64* %cloptr734097, i64 0               ; &cloptr734097[0]
  %f734100 = load i64, i64* %i0ptr734098, align 8                                    ; load; *i0ptr734098
  %fptr734099 = inttoptr i64 %f734100 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734099(i64 %cont731879, i64 %arg732367, i64 %retprim731880); tail call
  ret void
}


define void @lam733105(i64 %env733106, i64 %cont731881, i64 %CHS$x) {
  %a731781 = call i64 @prim_cdr(i64 %CHS$x)                                          ; call prim_cdr
  %a731782 = call i64 @prim_cdr(i64 %a731781)                                        ; call prim_cdr
  %a731783 = call i64 @prim_cdr(i64 %a731782)                                        ; call prim_cdr
  %retprim731882 = call i64 @prim_car(i64 %a731783)                                  ; call prim_car
  %arg732374 = add i64 0, 0                                                          ; quoted ()
  %cloptr734101 = inttoptr i64 %cont731881 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734101)                                       ; assert function application
  %i0ptr734102 = getelementptr inbounds i64, i64* %cloptr734101, i64 0               ; &cloptr734101[0]
  %f734104 = load i64, i64* %i0ptr734102, align 8                                    ; load; *i0ptr734102
  %fptr734103 = inttoptr i64 %f734104 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734103(i64 %cont731881, i64 %arg732374, i64 %retprim731882); tail call
  ret void
}


define void @lam733102(i64 %env733103, i64 %cont731883, i64 %mcD$p) {
  %a731784 = call i64 @prim_cons_63(i64 %mcD$p)                                      ; call prim_cons_63
  %cmp734105 = icmp eq i64 %a731784, 15                                              ; false?
  br i1 %cmp734105, label %else734107, label %then734106                             ; if

then734106:
  %a731785 = call i64 @prim_car(i64 %mcD$p)                                          ; call prim_car
  %arg732378 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym734108, i32 0, i32 0)); quoted string
  %retprim731884 = call i64 @prim_eq_63(i64 %a731785, i64 %arg732378)                ; call prim_eq_63
  %arg732381 = add i64 0, 0                                                          ; quoted ()
  %cloptr734109 = inttoptr i64 %cont731883 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734109)                                       ; assert function application
  %i0ptr734110 = getelementptr inbounds i64, i64* %cloptr734109, i64 0               ; &cloptr734109[0]
  %f734112 = load i64, i64* %i0ptr734110, align 8                                    ; load; *i0ptr734110
  %fptr734111 = inttoptr i64 %f734112 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734111(i64 %cont731883, i64 %arg732381, i64 %retprim731884); tail call
  ret void

else734107:
  %arg732384 = add i64 0, 0                                                          ; quoted ()
  %arg732383 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr734113 = inttoptr i64 %cont731883 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734113)                                       ; assert function application
  %i0ptr734114 = getelementptr inbounds i64, i64* %cloptr734113, i64 0               ; &cloptr734113[0]
  %f734116 = load i64, i64* %i0ptr734114, align 8                                    ; load; *i0ptr734114
  %fptr734115 = inttoptr i64 %f734116 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734115(i64 %cont731883, i64 %arg732384, i64 %arg732383); tail call
  ret void
}


define void @lam733096(i64 %env733097, i64 %HgO$lst731928) {
  %cont731927 = call i64 @prim_car(i64 %HgO$lst731928)                               ; call prim_car
  %HgO$lst = call i64 @prim_cdr(i64 %HgO$lst731928)                                  ; call prim_cdr
  %arg732391 = add i64 0, 0                                                          ; quoted ()
  %cloptr734117 = inttoptr i64 %cont731927 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734117)                                       ; assert function application
  %i0ptr734118 = getelementptr inbounds i64, i64* %cloptr734117, i64 0               ; &cloptr734117[0]
  %f734120 = load i64, i64* %i0ptr734118, align 8                                    ; load; *i0ptr734118
  %fptr734119 = inttoptr i64 %f734120 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734119(i64 %cont731927, i64 %arg732391, i64 %HgO$lst); tail call
  ret void
}


define void @lam733093(i64 %env733094, i64 %_95731885, i64 %CqK$_37raise_45handler) {
  %envptr734121 = inttoptr i64 %env733094 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734122 = getelementptr inbounds i64, i64* %envptr734121, i64 3              ; &envptr734121[3]
  %xq2$_37_62 = load i64, i64* %envptr734122, align 8                                ; load; *envptr734122
  %envptr734123 = inttoptr i64 %env733094 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734124 = getelementptr inbounds i64, i64* %envptr734123, i64 2              ; &envptr734123[2]
  %RPh$_37length = load i64, i64* %envptr734124, align 8                             ; load; *envptr734124
  %envptr734125 = inttoptr i64 %env733094 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734126 = getelementptr inbounds i64, i64* %envptr734125, i64 1              ; &envptr734125[1]
  %sF9$_37drop = load i64, i64* %envptr734126, align 8                               ; load; *envptr734126
  %cloptr734127 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734128 = getelementptr inbounds i64, i64* %cloptr734127, i64 0                ; &cloptr734127[0]
  %f734129 = ptrtoint void(i64,i64)* @lam733091 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f734129, i64* %eptr734128                                               ; store fptr
  %arg732394 = ptrtoint i64* %cloptr734127 to i64                                    ; closure cast; i64* -> i64
  %cloptr734130 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734132 = getelementptr inbounds i64, i64* %cloptr734130, i64 1                ; &eptr734132[1]
  %eptr734133 = getelementptr inbounds i64, i64* %cloptr734130, i64 2                ; &eptr734133[2]
  %eptr734134 = getelementptr inbounds i64, i64* %cloptr734130, i64 3                ; &eptr734134[3]
  store i64 %sF9$_37drop, i64* %eptr734132                                           ; *eptr734132 = %sF9$_37drop
  store i64 %RPh$_37length, i64* %eptr734133                                         ; *eptr734133 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr734134                                            ; *eptr734134 = %xq2$_37_62
  %eptr734131 = getelementptr inbounds i64, i64* %cloptr734130, i64 0                ; &cloptr734130[0]
  %f734135 = ptrtoint void(i64,i64,i64)* @lam733088 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734135, i64* %eptr734131                                               ; store fptr
  %arg732393 = ptrtoint i64* %cloptr734130 to i64                                    ; closure cast; i64* -> i64
  %rva732844 = add i64 0, 0                                                          ; quoted ()
  %rva732843 = call i64 @prim_cons(i64 %arg732393, i64 %rva732844)                   ; call prim_cons
  %cloptr734136 = inttoptr i64 %arg732394 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734136)                                       ; assert function application
  %i0ptr734137 = getelementptr inbounds i64, i64* %cloptr734136, i64 0               ; &cloptr734136[0]
  %f734139 = load i64, i64* %i0ptr734137, align 8                                    ; load; *i0ptr734137
  %fptr734138 = inttoptr i64 %f734139 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734138(i64 %arg732394, i64 %rva732843)              ; tail call
  ret void
}


define void @lam733091(i64 %env733092, i64 %KZm$lst731926) {
  %cont731925 = call i64 @prim_car(i64 %KZm$lst731926)                               ; call prim_car
  %KZm$lst = call i64 @prim_cdr(i64 %KZm$lst731926)                                  ; call prim_cdr
  %arg732398 = add i64 0, 0                                                          ; quoted ()
  %cloptr734140 = inttoptr i64 %cont731925 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734140)                                       ; assert function application
  %i0ptr734141 = getelementptr inbounds i64, i64* %cloptr734140, i64 0               ; &cloptr734140[0]
  %f734143 = load i64, i64* %i0ptr734141, align 8                                    ; load; *i0ptr734141
  %fptr734142 = inttoptr i64 %f734143 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734142(i64 %cont731925, i64 %arg732398, i64 %KZm$lst); tail call
  ret void
}


define void @lam733088(i64 %env733089, i64 %_95731923, i64 %a731786) {
  %envptr734144 = inttoptr i64 %env733089 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734145 = getelementptr inbounds i64, i64* %envptr734144, i64 3              ; &envptr734144[3]
  %xq2$_37_62 = load i64, i64* %envptr734145, align 8                                ; load; *envptr734145
  %envptr734146 = inttoptr i64 %env733089 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734147 = getelementptr inbounds i64, i64* %envptr734146, i64 2              ; &envptr734146[2]
  %RPh$_37length = load i64, i64* %envptr734147, align 8                             ; load; *envptr734147
  %envptr734148 = inttoptr i64 %env733089 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734149 = getelementptr inbounds i64, i64* %envptr734148, i64 1              ; &envptr734148[1]
  %sF9$_37drop = load i64, i64* %envptr734149, align 8                               ; load; *envptr734149
  %arg732401 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim731924 = call i64 @prim_make_45vector(i64 %arg732401, i64 %a731786)        ; call prim_make_45vector
  %cloptr734150 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734152 = getelementptr inbounds i64, i64* %cloptr734150, i64 1                ; &eptr734152[1]
  %eptr734153 = getelementptr inbounds i64, i64* %cloptr734150, i64 2                ; &eptr734153[2]
  %eptr734154 = getelementptr inbounds i64, i64* %cloptr734150, i64 3                ; &eptr734154[3]
  store i64 %sF9$_37drop, i64* %eptr734152                                           ; *eptr734152 = %sF9$_37drop
  store i64 %RPh$_37length, i64* %eptr734153                                         ; *eptr734153 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr734154                                            ; *eptr734154 = %xq2$_37_62
  %eptr734151 = getelementptr inbounds i64, i64* %cloptr734150, i64 0                ; &cloptr734150[0]
  %f734155 = ptrtoint void(i64,i64,i64)* @lam733085 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734155, i64* %eptr734151                                               ; store fptr
  %arg732404 = ptrtoint i64* %cloptr734150 to i64                                    ; closure cast; i64* -> i64
  %arg732403 = add i64 0, 0                                                          ; quoted ()
  %cloptr734156 = inttoptr i64 %arg732404 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734156)                                       ; assert function application
  %i0ptr734157 = getelementptr inbounds i64, i64* %cloptr734156, i64 0               ; &cloptr734156[0]
  %f734159 = load i64, i64* %i0ptr734157, align 8                                    ; load; *i0ptr734157
  %fptr734158 = inttoptr i64 %f734159 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734158(i64 %arg732404, i64 %arg732403, i64 %retprim731924); tail call
  ret void
}


define void @lam733085(i64 %env733086, i64 %_95731886, i64 %T96$_37wind_45stack) {
  %envptr734160 = inttoptr i64 %env733086 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734161 = getelementptr inbounds i64, i64* %envptr734160, i64 3              ; &envptr734160[3]
  %xq2$_37_62 = load i64, i64* %envptr734161, align 8                                ; load; *envptr734161
  %envptr734162 = inttoptr i64 %env733086 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734163 = getelementptr inbounds i64, i64* %envptr734162, i64 2              ; &envptr734162[2]
  %RPh$_37length = load i64, i64* %envptr734163, align 8                             ; load; *envptr734163
  %envptr734164 = inttoptr i64 %env733086 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734165 = getelementptr inbounds i64, i64* %envptr734164, i64 1              ; &envptr734164[1]
  %sF9$_37drop = load i64, i64* %envptr734165, align 8                               ; load; *envptr734165
  %cloptr734166 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734168 = getelementptr inbounds i64, i64* %cloptr734166, i64 1                ; &eptr734168[1]
  %eptr734169 = getelementptr inbounds i64, i64* %cloptr734166, i64 2                ; &eptr734169[2]
  %eptr734170 = getelementptr inbounds i64, i64* %cloptr734166, i64 3                ; &eptr734170[3]
  store i64 %sF9$_37drop, i64* %eptr734168                                           ; *eptr734168 = %sF9$_37drop
  store i64 %RPh$_37length, i64* %eptr734169                                         ; *eptr734169 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr734170                                            ; *eptr734170 = %xq2$_37_62
  %eptr734167 = getelementptr inbounds i64, i64* %cloptr734166, i64 0                ; &cloptr734166[0]
  %f734171 = ptrtoint void(i64,i64,i64,i64)* @lam733083 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f734171, i64* %eptr734167                                               ; store fptr
  %wl7$_37common_45tail = ptrtoint i64* %cloptr734166 to i64                         ; closure cast; i64* -> i64
  %cloptr734172 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr734174 = getelementptr inbounds i64, i64* %cloptr734172, i64 1                ; &eptr734174[1]
  %eptr734175 = getelementptr inbounds i64, i64* %cloptr734172, i64 2                ; &eptr734175[2]
  store i64 %wl7$_37common_45tail, i64* %eptr734174                                  ; *eptr734174 = %wl7$_37common_45tail
  store i64 %T96$_37wind_45stack, i64* %eptr734175                                   ; *eptr734175 = %T96$_37wind_45stack
  %eptr734173 = getelementptr inbounds i64, i64* %cloptr734172, i64 0                ; &cloptr734172[0]
  %f734176 = ptrtoint void(i64,i64,i64)* @lam733041 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734176, i64* %eptr734173                                               ; store fptr
  %Zfr$_37do_45wind = ptrtoint i64* %cloptr734172 to i64                             ; closure cast; i64* -> i64
  %cloptr734177 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734178 = getelementptr inbounds i64, i64* %cloptr734177, i64 0                ; &cloptr734177[0]
  %f734179 = ptrtoint void(i64,i64,i64)* @lam732991 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734179, i64* %eptr734178                                               ; store fptr
  %arg732591 = ptrtoint i64* %cloptr734177 to i64                                    ; closure cast; i64* -> i64
  %arg732590 = add i64 0, 0                                                          ; quoted ()
  %arg732589 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr734180 = inttoptr i64 %arg732591 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734180)                                       ; assert function application
  %i0ptr734181 = getelementptr inbounds i64, i64* %cloptr734180, i64 0               ; &cloptr734180[0]
  %f734183 = load i64, i64* %i0ptr734181, align 8                                    ; load; *i0ptr734181
  %fptr734182 = inttoptr i64 %f734183 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734182(i64 %arg732591, i64 %arg732590, i64 %arg732589); tail call
  ret void
}


define void @lam733083(i64 %env733084, i64 %cont731887, i64 %YE7$x, i64 %vdm$y) {
  %envptr734184 = inttoptr i64 %env733084 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734185 = getelementptr inbounds i64, i64* %envptr734184, i64 3              ; &envptr734184[3]
  %xq2$_37_62 = load i64, i64* %envptr734185, align 8                                ; load; *envptr734185
  %envptr734186 = inttoptr i64 %env733084 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734187 = getelementptr inbounds i64, i64* %envptr734186, i64 2              ; &envptr734186[2]
  %RPh$_37length = load i64, i64* %envptr734187, align 8                             ; load; *envptr734187
  %envptr734188 = inttoptr i64 %env733084 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734189 = getelementptr inbounds i64, i64* %envptr734188, i64 1              ; &envptr734188[1]
  %sF9$_37drop = load i64, i64* %envptr734189, align 8                               ; load; *envptr734189
  %cloptr734190 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr734192 = getelementptr inbounds i64, i64* %cloptr734190, i64 1                ; &eptr734192[1]
  %eptr734193 = getelementptr inbounds i64, i64* %cloptr734190, i64 2                ; &eptr734193[2]
  %eptr734194 = getelementptr inbounds i64, i64* %cloptr734190, i64 3                ; &eptr734194[3]
  %eptr734195 = getelementptr inbounds i64, i64* %cloptr734190, i64 4                ; &eptr734195[4]
  %eptr734196 = getelementptr inbounds i64, i64* %cloptr734190, i64 5                ; &eptr734196[5]
  %eptr734197 = getelementptr inbounds i64, i64* %cloptr734190, i64 6                ; &eptr734197[6]
  store i64 %vdm$y, i64* %eptr734192                                                 ; *eptr734192 = %vdm$y
  store i64 %YE7$x, i64* %eptr734193                                                 ; *eptr734193 = %YE7$x
  store i64 %cont731887, i64* %eptr734194                                            ; *eptr734194 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734195                                           ; *eptr734195 = %sF9$_37drop
  store i64 %RPh$_37length, i64* %eptr734196                                         ; *eptr734196 = %RPh$_37length
  store i64 %xq2$_37_62, i64* %eptr734197                                            ; *eptr734197 = %xq2$_37_62
  %eptr734191 = getelementptr inbounds i64, i64* %cloptr734190, i64 0                ; &cloptr734190[0]
  %f734198 = ptrtoint void(i64,i64,i64)* @lam733081 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734198, i64* %eptr734191                                               ; store fptr
  %arg732406 = ptrtoint i64* %cloptr734190 to i64                                    ; closure cast; i64* -> i64
  %cloptr734199 = inttoptr i64 %RPh$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734199)                                       ; assert function application
  %i0ptr734200 = getelementptr inbounds i64, i64* %cloptr734199, i64 0               ; &cloptr734199[0]
  %f734202 = load i64, i64* %i0ptr734200, align 8                                    ; load; *i0ptr734200
  %fptr734201 = inttoptr i64 %f734202 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734201(i64 %RPh$_37length, i64 %arg732406, i64 %YE7$x); tail call
  ret void
}


define void @lam733081(i64 %env733082, i64 %_95731888, i64 %w8K$lx) {
  %envptr734203 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734204 = getelementptr inbounds i64, i64* %envptr734203, i64 6              ; &envptr734203[6]
  %xq2$_37_62 = load i64, i64* %envptr734204, align 8                                ; load; *envptr734204
  %envptr734205 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734206 = getelementptr inbounds i64, i64* %envptr734205, i64 5              ; &envptr734205[5]
  %RPh$_37length = load i64, i64* %envptr734206, align 8                             ; load; *envptr734206
  %envptr734207 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734208 = getelementptr inbounds i64, i64* %envptr734207, i64 4              ; &envptr734207[4]
  %sF9$_37drop = load i64, i64* %envptr734208, align 8                               ; load; *envptr734208
  %envptr734209 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734210 = getelementptr inbounds i64, i64* %envptr734209, i64 3              ; &envptr734209[3]
  %cont731887 = load i64, i64* %envptr734210, align 8                                ; load; *envptr734210
  %envptr734211 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734212 = getelementptr inbounds i64, i64* %envptr734211, i64 2              ; &envptr734211[2]
  %YE7$x = load i64, i64* %envptr734212, align 8                                     ; load; *envptr734212
  %envptr734213 = inttoptr i64 %env733082 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734214 = getelementptr inbounds i64, i64* %envptr734213, i64 1              ; &envptr734213[1]
  %vdm$y = load i64, i64* %envptr734214, align 8                                     ; load; *envptr734214
  %cloptr734215 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr734217 = getelementptr inbounds i64, i64* %cloptr734215, i64 1                ; &eptr734217[1]
  %eptr734218 = getelementptr inbounds i64, i64* %cloptr734215, i64 2                ; &eptr734218[2]
  %eptr734219 = getelementptr inbounds i64, i64* %cloptr734215, i64 3                ; &eptr734219[3]
  %eptr734220 = getelementptr inbounds i64, i64* %cloptr734215, i64 4                ; &eptr734220[4]
  %eptr734221 = getelementptr inbounds i64, i64* %cloptr734215, i64 5                ; &eptr734221[5]
  %eptr734222 = getelementptr inbounds i64, i64* %cloptr734215, i64 6                ; &eptr734222[6]
  store i64 %w8K$lx, i64* %eptr734217                                                ; *eptr734217 = %w8K$lx
  store i64 %vdm$y, i64* %eptr734218                                                 ; *eptr734218 = %vdm$y
  store i64 %YE7$x, i64* %eptr734219                                                 ; *eptr734219 = %YE7$x
  store i64 %cont731887, i64* %eptr734220                                            ; *eptr734220 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734221                                           ; *eptr734221 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734222                                            ; *eptr734222 = %xq2$_37_62
  %eptr734216 = getelementptr inbounds i64, i64* %cloptr734215, i64 0                ; &cloptr734215[0]
  %f734223 = ptrtoint void(i64,i64,i64)* @lam733079 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734223, i64* %eptr734216                                               ; store fptr
  %arg732409 = ptrtoint i64* %cloptr734215 to i64                                    ; closure cast; i64* -> i64
  %cloptr734224 = inttoptr i64 %RPh$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734224)                                       ; assert function application
  %i0ptr734225 = getelementptr inbounds i64, i64* %cloptr734224, i64 0               ; &cloptr734224[0]
  %f734227 = load i64, i64* %i0ptr734225, align 8                                    ; load; *i0ptr734225
  %fptr734226 = inttoptr i64 %f734227 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734226(i64 %RPh$_37length, i64 %arg732409, i64 %vdm$y); tail call
  ret void
}


define void @lam733079(i64 %env733080, i64 %_95731889, i64 %XdV$ly) {
  %envptr734228 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734229 = getelementptr inbounds i64, i64* %envptr734228, i64 6              ; &envptr734228[6]
  %xq2$_37_62 = load i64, i64* %envptr734229, align 8                                ; load; *envptr734229
  %envptr734230 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734231 = getelementptr inbounds i64, i64* %envptr734230, i64 5              ; &envptr734230[5]
  %sF9$_37drop = load i64, i64* %envptr734231, align 8                               ; load; *envptr734231
  %envptr734232 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734233 = getelementptr inbounds i64, i64* %envptr734232, i64 4              ; &envptr734232[4]
  %cont731887 = load i64, i64* %envptr734233, align 8                                ; load; *envptr734233
  %envptr734234 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734235 = getelementptr inbounds i64, i64* %envptr734234, i64 3              ; &envptr734234[3]
  %YE7$x = load i64, i64* %envptr734235, align 8                                     ; load; *envptr734235
  %envptr734236 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734237 = getelementptr inbounds i64, i64* %envptr734236, i64 2              ; &envptr734236[2]
  %vdm$y = load i64, i64* %envptr734237, align 8                                     ; load; *envptr734237
  %envptr734238 = inttoptr i64 %env733080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734239 = getelementptr inbounds i64, i64* %envptr734238, i64 1              ; &envptr734238[1]
  %w8K$lx = load i64, i64* %envptr734239, align 8                                    ; load; *envptr734239
  %cloptr734240 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734241 = getelementptr inbounds i64, i64* %cloptr734240, i64 0                ; &cloptr734240[0]
  %f734242 = ptrtoint void(i64,i64)* @lam733077 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f734242, i64* %eptr734241                                               ; store fptr
  %arg732412 = ptrtoint i64* %cloptr734240 to i64                                    ; closure cast; i64* -> i64
  %cloptr734243 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734245 = getelementptr inbounds i64, i64* %cloptr734243, i64 1                ; &eptr734245[1]
  %eptr734246 = getelementptr inbounds i64, i64* %cloptr734243, i64 2                ; &eptr734246[2]
  %eptr734247 = getelementptr inbounds i64, i64* %cloptr734243, i64 3                ; &eptr734247[3]
  %eptr734248 = getelementptr inbounds i64, i64* %cloptr734243, i64 4                ; &eptr734248[4]
  %eptr734249 = getelementptr inbounds i64, i64* %cloptr734243, i64 5                ; &eptr734249[5]
  %eptr734250 = getelementptr inbounds i64, i64* %cloptr734243, i64 6                ; &eptr734250[6]
  %eptr734251 = getelementptr inbounds i64, i64* %cloptr734243, i64 7                ; &eptr734251[7]
  store i64 %w8K$lx, i64* %eptr734245                                                ; *eptr734245 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734246                                                ; *eptr734246 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734247                                                 ; *eptr734247 = %vdm$y
  store i64 %YE7$x, i64* %eptr734248                                                 ; *eptr734248 = %YE7$x
  store i64 %cont731887, i64* %eptr734249                                            ; *eptr734249 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734250                                           ; *eptr734250 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734251                                            ; *eptr734251 = %xq2$_37_62
  %eptr734244 = getelementptr inbounds i64, i64* %cloptr734243, i64 0                ; &cloptr734243[0]
  %f734252 = ptrtoint void(i64,i64,i64)* @lam733074 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734252, i64* %eptr734244                                               ; store fptr
  %arg732411 = ptrtoint i64* %cloptr734243 to i64                                    ; closure cast; i64* -> i64
  %cloptr734253 = inttoptr i64 %arg732412 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734253)                                       ; assert function application
  %i0ptr734254 = getelementptr inbounds i64, i64* %cloptr734253, i64 0               ; &cloptr734253[0]
  %f734256 = load i64, i64* %i0ptr734254, align 8                                    ; load; *i0ptr734254
  %fptr734255 = inttoptr i64 %f734256 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734255(i64 %arg732412, i64 %arg732411)              ; tail call
  ret void
}


define void @lam733077(i64 %env733078, i64 %vbF$lst731899) {
  %cont731898 = call i64 @prim_car(i64 %vbF$lst731899)                               ; call prim_car
  %vbF$lst = call i64 @prim_cdr(i64 %vbF$lst731899)                                  ; call prim_cdr
  %arg732416 = add i64 0, 0                                                          ; quoted ()
  %cloptr734257 = inttoptr i64 %cont731898 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734257)                                       ; assert function application
  %i0ptr734258 = getelementptr inbounds i64, i64* %cloptr734257, i64 0               ; &cloptr734257[0]
  %f734260 = load i64, i64* %i0ptr734258, align 8                                    ; load; *i0ptr734258
  %fptr734259 = inttoptr i64 %f734260 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734259(i64 %cont731898, i64 %arg732416, i64 %vbF$lst); tail call
  ret void
}


define void @lam733074(i64 %env733075, i64 %_95731896, i64 %a731787) {
  %envptr734261 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734262 = getelementptr inbounds i64, i64* %envptr734261, i64 7              ; &envptr734261[7]
  %xq2$_37_62 = load i64, i64* %envptr734262, align 8                                ; load; *envptr734262
  %envptr734263 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734264 = getelementptr inbounds i64, i64* %envptr734263, i64 6              ; &envptr734263[6]
  %sF9$_37drop = load i64, i64* %envptr734264, align 8                               ; load; *envptr734264
  %envptr734265 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734266 = getelementptr inbounds i64, i64* %envptr734265, i64 5              ; &envptr734265[5]
  %cont731887 = load i64, i64* %envptr734266, align 8                                ; load; *envptr734266
  %envptr734267 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734268 = getelementptr inbounds i64, i64* %envptr734267, i64 4              ; &envptr734267[4]
  %YE7$x = load i64, i64* %envptr734268, align 8                                     ; load; *envptr734268
  %envptr734269 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734270 = getelementptr inbounds i64, i64* %envptr734269, i64 3              ; &envptr734269[3]
  %vdm$y = load i64, i64* %envptr734270, align 8                                     ; load; *envptr734270
  %envptr734271 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734272 = getelementptr inbounds i64, i64* %envptr734271, i64 2              ; &envptr734271[2]
  %XdV$ly = load i64, i64* %envptr734272, align 8                                    ; load; *envptr734272
  %envptr734273 = inttoptr i64 %env733075 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734274 = getelementptr inbounds i64, i64* %envptr734273, i64 1              ; &envptr734273[1]
  %w8K$lx = load i64, i64* %envptr734274, align 8                                    ; load; *envptr734274
  %arg732419 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim731897 = call i64 @prim_make_45vector(i64 %arg732419, i64 %a731787)        ; call prim_make_45vector
  %cloptr734275 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734277 = getelementptr inbounds i64, i64* %cloptr734275, i64 1                ; &eptr734277[1]
  %eptr734278 = getelementptr inbounds i64, i64* %cloptr734275, i64 2                ; &eptr734278[2]
  %eptr734279 = getelementptr inbounds i64, i64* %cloptr734275, i64 3                ; &eptr734279[3]
  %eptr734280 = getelementptr inbounds i64, i64* %cloptr734275, i64 4                ; &eptr734280[4]
  %eptr734281 = getelementptr inbounds i64, i64* %cloptr734275, i64 5                ; &eptr734281[5]
  %eptr734282 = getelementptr inbounds i64, i64* %cloptr734275, i64 6                ; &eptr734282[6]
  %eptr734283 = getelementptr inbounds i64, i64* %cloptr734275, i64 7                ; &eptr734283[7]
  store i64 %w8K$lx, i64* %eptr734277                                                ; *eptr734277 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734278                                                ; *eptr734278 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734279                                                 ; *eptr734279 = %vdm$y
  store i64 %YE7$x, i64* %eptr734280                                                 ; *eptr734280 = %YE7$x
  store i64 %cont731887, i64* %eptr734281                                            ; *eptr734281 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734282                                           ; *eptr734282 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734283                                            ; *eptr734283 = %xq2$_37_62
  %eptr734276 = getelementptr inbounds i64, i64* %cloptr734275, i64 0                ; &cloptr734275[0]
  %f734284 = ptrtoint void(i64,i64,i64)* @lam733071 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734284, i64* %eptr734276                                               ; store fptr
  %arg732422 = ptrtoint i64* %cloptr734275 to i64                                    ; closure cast; i64* -> i64
  %arg732421 = add i64 0, 0                                                          ; quoted ()
  %cloptr734285 = inttoptr i64 %arg732422 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734285)                                       ; assert function application
  %i0ptr734286 = getelementptr inbounds i64, i64* %cloptr734285, i64 0               ; &cloptr734285[0]
  %f734288 = load i64, i64* %i0ptr734286, align 8                                    ; load; *i0ptr734286
  %fptr734287 = inttoptr i64 %f734288 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734287(i64 %arg732422, i64 %arg732421, i64 %retprim731897); tail call
  ret void
}


define void @lam733071(i64 %env733072, i64 %_95731890, i64 %bql$loop) {
  %envptr734289 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734290 = getelementptr inbounds i64, i64* %envptr734289, i64 7              ; &envptr734289[7]
  %xq2$_37_62 = load i64, i64* %envptr734290, align 8                                ; load; *envptr734290
  %envptr734291 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734292 = getelementptr inbounds i64, i64* %envptr734291, i64 6              ; &envptr734291[6]
  %sF9$_37drop = load i64, i64* %envptr734292, align 8                               ; load; *envptr734292
  %envptr734293 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734294 = getelementptr inbounds i64, i64* %envptr734293, i64 5              ; &envptr734293[5]
  %cont731887 = load i64, i64* %envptr734294, align 8                                ; load; *envptr734294
  %envptr734295 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734296 = getelementptr inbounds i64, i64* %envptr734295, i64 4              ; &envptr734295[4]
  %YE7$x = load i64, i64* %envptr734296, align 8                                     ; load; *envptr734296
  %envptr734297 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734298 = getelementptr inbounds i64, i64* %envptr734297, i64 3              ; &envptr734297[3]
  %vdm$y = load i64, i64* %envptr734298, align 8                                     ; load; *envptr734298
  %envptr734299 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734300 = getelementptr inbounds i64, i64* %envptr734299, i64 2              ; &envptr734299[2]
  %XdV$ly = load i64, i64* %envptr734300, align 8                                    ; load; *envptr734300
  %envptr734301 = inttoptr i64 %env733072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734302 = getelementptr inbounds i64, i64* %envptr734301, i64 1              ; &envptr734301[1]
  %w8K$lx = load i64, i64* %envptr734302, align 8                                    ; load; *envptr734302
  %arg732424 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr734303 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr734305 = getelementptr inbounds i64, i64* %cloptr734303, i64 1                ; &eptr734305[1]
  store i64 %bql$loop, i64* %eptr734305                                              ; *eptr734305 = %bql$loop
  %eptr734304 = getelementptr inbounds i64, i64* %cloptr734303, i64 0                ; &cloptr734303[0]
  %f734306 = ptrtoint void(i64,i64,i64,i64)* @lam733068 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f734306, i64* %eptr734304                                               ; store fptr
  %arg732423 = ptrtoint i64* %cloptr734303 to i64                                    ; closure cast; i64* -> i64
  %bIh$_95731691 = call i64 @prim_vector_45set_33(i64 %bql$loop, i64 %arg732424, i64 %arg732423); call prim_vector_45set_33
  %arg732439 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731792 = call i64 @prim_vector_45ref(i64 %bql$loop, i64 %arg732439)              ; call prim_vector_45ref
  %cloptr734307 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr734309 = getelementptr inbounds i64, i64* %cloptr734307, i64 1                ; &eptr734309[1]
  %eptr734310 = getelementptr inbounds i64, i64* %cloptr734307, i64 2                ; &eptr734310[2]
  %eptr734311 = getelementptr inbounds i64, i64* %cloptr734307, i64 3                ; &eptr734311[3]
  %eptr734312 = getelementptr inbounds i64, i64* %cloptr734307, i64 4                ; &eptr734312[4]
  %eptr734313 = getelementptr inbounds i64, i64* %cloptr734307, i64 5                ; &eptr734313[5]
  %eptr734314 = getelementptr inbounds i64, i64* %cloptr734307, i64 6                ; &eptr734314[6]
  %eptr734315 = getelementptr inbounds i64, i64* %cloptr734307, i64 7                ; &eptr734315[7]
  %eptr734316 = getelementptr inbounds i64, i64* %cloptr734307, i64 8                ; &eptr734316[8]
  store i64 %w8K$lx, i64* %eptr734309                                                ; *eptr734309 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734310                                                ; *eptr734310 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734311                                                 ; *eptr734311 = %vdm$y
  store i64 %YE7$x, i64* %eptr734312                                                 ; *eptr734312 = %YE7$x
  store i64 %cont731887, i64* %eptr734313                                            ; *eptr734313 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734314                                           ; *eptr734314 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734315                                            ; *eptr734315 = %xq2$_37_62
  store i64 %a731792, i64* %eptr734316                                               ; *eptr734316 = %a731792
  %eptr734308 = getelementptr inbounds i64, i64* %cloptr734307, i64 0                ; &cloptr734307[0]
  %f734317 = ptrtoint void(i64,i64,i64)* @lam733063 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734317, i64* %eptr734308                                               ; store fptr
  %arg732443 = ptrtoint i64* %cloptr734307 to i64                                    ; closure cast; i64* -> i64
  %cloptr734318 = inttoptr i64 %xq2$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734318)                                       ; assert function application
  %i0ptr734319 = getelementptr inbounds i64, i64* %cloptr734318, i64 0               ; &cloptr734318[0]
  %f734321 = load i64, i64* %i0ptr734319, align 8                                    ; load; *i0ptr734319
  %fptr734320 = inttoptr i64 %f734321 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734320(i64 %xq2$_37_62, i64 %arg732443, i64 %w8K$lx, i64 %XdV$ly); tail call
  ret void
}


define void @lam733068(i64 %env733069, i64 %cont731891, i64 %AnA$x, i64 %apB$y) {
  %envptr734322 = inttoptr i64 %env733069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734323 = getelementptr inbounds i64, i64* %envptr734322, i64 1              ; &envptr734322[1]
  %bql$loop = load i64, i64* %envptr734323, align 8                                  ; load; *envptr734323
  %a731788 = call i64 @prim_eq_63(i64 %AnA$x, i64 %apB$y)                            ; call prim_eq_63
  %cmp734324 = icmp eq i64 %a731788, 15                                              ; false?
  br i1 %cmp734324, label %else734326, label %then734325                             ; if

then734325:
  %arg732429 = add i64 0, 0                                                          ; quoted ()
  %cloptr734327 = inttoptr i64 %cont731891 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734327)                                       ; assert function application
  %i0ptr734328 = getelementptr inbounds i64, i64* %cloptr734327, i64 0               ; &cloptr734327[0]
  %f734330 = load i64, i64* %i0ptr734328, align 8                                    ; load; *i0ptr734328
  %fptr734329 = inttoptr i64 %f734330 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734329(i64 %cont731891, i64 %arg732429, i64 %AnA$x) ; tail call
  ret void

else734326:
  %arg732431 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731789 = call i64 @prim_vector_45ref(i64 %bql$loop, i64 %arg732431)              ; call prim_vector_45ref
  %a731790 = call i64 @prim_cdr(i64 %AnA$x)                                          ; call prim_cdr
  %a731791 = call i64 @prim_cdr(i64 %apB$y)                                          ; call prim_cdr
  %cloptr734331 = inttoptr i64 %a731789 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734331)                                       ; assert function application
  %i0ptr734332 = getelementptr inbounds i64, i64* %cloptr734331, i64 0               ; &cloptr734331[0]
  %f734334 = load i64, i64* %i0ptr734332, align 8                                    ; load; *i0ptr734332
  %fptr734333 = inttoptr i64 %f734334 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734333(i64 %a731789, i64 %cont731891, i64 %a731790, i64 %a731791); tail call
  ret void
}


define void @lam733063(i64 %env733064, i64 %_95731892, i64 %a731793) {
  %envptr734335 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734336 = getelementptr inbounds i64, i64* %envptr734335, i64 8              ; &envptr734335[8]
  %a731792 = load i64, i64* %envptr734336, align 8                                   ; load; *envptr734336
  %envptr734337 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734338 = getelementptr inbounds i64, i64* %envptr734337, i64 7              ; &envptr734337[7]
  %xq2$_37_62 = load i64, i64* %envptr734338, align 8                                ; load; *envptr734338
  %envptr734339 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734340 = getelementptr inbounds i64, i64* %envptr734339, i64 6              ; &envptr734339[6]
  %sF9$_37drop = load i64, i64* %envptr734340, align 8                               ; load; *envptr734340
  %envptr734341 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734342 = getelementptr inbounds i64, i64* %envptr734341, i64 5              ; &envptr734341[5]
  %cont731887 = load i64, i64* %envptr734342, align 8                                ; load; *envptr734342
  %envptr734343 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734344 = getelementptr inbounds i64, i64* %envptr734343, i64 4              ; &envptr734343[4]
  %YE7$x = load i64, i64* %envptr734344, align 8                                     ; load; *envptr734344
  %envptr734345 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734346 = getelementptr inbounds i64, i64* %envptr734345, i64 3              ; &envptr734345[3]
  %vdm$y = load i64, i64* %envptr734346, align 8                                     ; load; *envptr734346
  %envptr734347 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734348 = getelementptr inbounds i64, i64* %envptr734347, i64 2              ; &envptr734347[2]
  %XdV$ly = load i64, i64* %envptr734348, align 8                                    ; load; *envptr734348
  %envptr734349 = inttoptr i64 %env733064 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734350 = getelementptr inbounds i64, i64* %envptr734349, i64 1              ; &envptr734349[1]
  %w8K$lx = load i64, i64* %envptr734350, align 8                                    ; load; *envptr734350
  %cmp734351 = icmp eq i64 %a731793, 15                                              ; false?
  br i1 %cmp734351, label %else734353, label %then734352                             ; if

then734352:
  %a731794 = call i64 @prim__45(i64 %w8K$lx, i64 %XdV$ly)                            ; call prim__45
  %cloptr734354 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734356 = getelementptr inbounds i64, i64* %cloptr734354, i64 1                ; &eptr734356[1]
  %eptr734357 = getelementptr inbounds i64, i64* %cloptr734354, i64 2                ; &eptr734357[2]
  %eptr734358 = getelementptr inbounds i64, i64* %cloptr734354, i64 3                ; &eptr734358[3]
  %eptr734359 = getelementptr inbounds i64, i64* %cloptr734354, i64 4                ; &eptr734359[4]
  %eptr734360 = getelementptr inbounds i64, i64* %cloptr734354, i64 5                ; &eptr734360[5]
  %eptr734361 = getelementptr inbounds i64, i64* %cloptr734354, i64 6                ; &eptr734361[6]
  %eptr734362 = getelementptr inbounds i64, i64* %cloptr734354, i64 7                ; &eptr734362[7]
  store i64 %w8K$lx, i64* %eptr734356                                                ; *eptr734356 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734357                                                ; *eptr734357 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734358                                                 ; *eptr734358 = %vdm$y
  store i64 %cont731887, i64* %eptr734359                                            ; *eptr734359 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734360                                           ; *eptr734360 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734361                                            ; *eptr734361 = %xq2$_37_62
  store i64 %a731792, i64* %eptr734362                                               ; *eptr734362 = %a731792
  %eptr734355 = getelementptr inbounds i64, i64* %cloptr734354, i64 0                ; &cloptr734354[0]
  %f734363 = ptrtoint void(i64,i64,i64)* @lam733051 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734363, i64* %eptr734355                                               ; store fptr
  %arg732449 = ptrtoint i64* %cloptr734354 to i64                                    ; closure cast; i64* -> i64
  %cloptr734364 = inttoptr i64 %sF9$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734364)                                       ; assert function application
  %i0ptr734365 = getelementptr inbounds i64, i64* %cloptr734364, i64 0               ; &cloptr734364[0]
  %f734367 = load i64, i64* %i0ptr734365, align 8                                    ; load; *i0ptr734365
  %fptr734366 = inttoptr i64 %f734367 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734366(i64 %sF9$_37drop, i64 %arg732449, i64 %YE7$x, i64 %a731794); tail call
  ret void

else734353:
  %cloptr734368 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734370 = getelementptr inbounds i64, i64* %cloptr734368, i64 1                ; &eptr734370[1]
  %eptr734371 = getelementptr inbounds i64, i64* %cloptr734368, i64 2                ; &eptr734371[2]
  %eptr734372 = getelementptr inbounds i64, i64* %cloptr734368, i64 3                ; &eptr734372[3]
  %eptr734373 = getelementptr inbounds i64, i64* %cloptr734368, i64 4                ; &eptr734373[4]
  %eptr734374 = getelementptr inbounds i64, i64* %cloptr734368, i64 5                ; &eptr734374[5]
  %eptr734375 = getelementptr inbounds i64, i64* %cloptr734368, i64 6                ; &eptr734375[6]
  %eptr734376 = getelementptr inbounds i64, i64* %cloptr734368, i64 7                ; &eptr734376[7]
  store i64 %w8K$lx, i64* %eptr734370                                                ; *eptr734370 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734371                                                ; *eptr734371 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734372                                                 ; *eptr734372 = %vdm$y
  store i64 %cont731887, i64* %eptr734373                                            ; *eptr734373 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734374                                           ; *eptr734374 = %sF9$_37drop
  store i64 %xq2$_37_62, i64* %eptr734375                                            ; *eptr734375 = %xq2$_37_62
  store i64 %a731792, i64* %eptr734376                                               ; *eptr734376 = %a731792
  %eptr734369 = getelementptr inbounds i64, i64* %cloptr734368, i64 0                ; &cloptr734368[0]
  %f734377 = ptrtoint void(i64,i64,i64)* @lam733061 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734377, i64* %eptr734369                                               ; store fptr
  %arg732474 = ptrtoint i64* %cloptr734368 to i64                                    ; closure cast; i64* -> i64
  %arg732473 = add i64 0, 0                                                          ; quoted ()
  %cloptr734378 = inttoptr i64 %arg732474 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734378)                                       ; assert function application
  %i0ptr734379 = getelementptr inbounds i64, i64* %cloptr734378, i64 0               ; &cloptr734378[0]
  %f734381 = load i64, i64* %i0ptr734379, align 8                                    ; load; *i0ptr734379
  %fptr734380 = inttoptr i64 %f734381 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734380(i64 %arg732474, i64 %arg732473, i64 %YE7$x)  ; tail call
  ret void
}


define void @lam733061(i64 %env733062, i64 %_95731893, i64 %a731795) {
  %envptr734382 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734383 = getelementptr inbounds i64, i64* %envptr734382, i64 7              ; &envptr734382[7]
  %a731792 = load i64, i64* %envptr734383, align 8                                   ; load; *envptr734383
  %envptr734384 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734385 = getelementptr inbounds i64, i64* %envptr734384, i64 6              ; &envptr734384[6]
  %xq2$_37_62 = load i64, i64* %envptr734385, align 8                                ; load; *envptr734385
  %envptr734386 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734387 = getelementptr inbounds i64, i64* %envptr734386, i64 5              ; &envptr734386[5]
  %sF9$_37drop = load i64, i64* %envptr734387, align 8                               ; load; *envptr734387
  %envptr734388 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734389 = getelementptr inbounds i64, i64* %envptr734388, i64 4              ; &envptr734388[4]
  %cont731887 = load i64, i64* %envptr734389, align 8                                ; load; *envptr734389
  %envptr734390 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734391 = getelementptr inbounds i64, i64* %envptr734390, i64 3              ; &envptr734390[3]
  %vdm$y = load i64, i64* %envptr734391, align 8                                     ; load; *envptr734391
  %envptr734392 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734393 = getelementptr inbounds i64, i64* %envptr734392, i64 2              ; &envptr734392[2]
  %XdV$ly = load i64, i64* %envptr734393, align 8                                    ; load; *envptr734393
  %envptr734394 = inttoptr i64 %env733062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734395 = getelementptr inbounds i64, i64* %envptr734394, i64 1              ; &envptr734394[1]
  %w8K$lx = load i64, i64* %envptr734395, align 8                                    ; load; *envptr734395
  %cloptr734396 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734398 = getelementptr inbounds i64, i64* %cloptr734396, i64 1                ; &eptr734398[1]
  %eptr734399 = getelementptr inbounds i64, i64* %cloptr734396, i64 2                ; &eptr734399[2]
  %eptr734400 = getelementptr inbounds i64, i64* %cloptr734396, i64 3                ; &eptr734400[3]
  %eptr734401 = getelementptr inbounds i64, i64* %cloptr734396, i64 4                ; &eptr734401[4]
  %eptr734402 = getelementptr inbounds i64, i64* %cloptr734396, i64 5                ; &eptr734402[5]
  %eptr734403 = getelementptr inbounds i64, i64* %cloptr734396, i64 6                ; &eptr734403[6]
  %eptr734404 = getelementptr inbounds i64, i64* %cloptr734396, i64 7                ; &eptr734404[7]
  store i64 %w8K$lx, i64* %eptr734398                                                ; *eptr734398 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734399                                                ; *eptr734399 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734400                                                 ; *eptr734400 = %vdm$y
  store i64 %a731795, i64* %eptr734401                                               ; *eptr734401 = %a731795
  store i64 %cont731887, i64* %eptr734402                                            ; *eptr734402 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734403                                           ; *eptr734403 = %sF9$_37drop
  store i64 %a731792, i64* %eptr734404                                               ; *eptr734404 = %a731792
  %eptr734397 = getelementptr inbounds i64, i64* %cloptr734396, i64 0                ; &cloptr734396[0]
  %f734405 = ptrtoint void(i64,i64,i64)* @lam733059 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734405, i64* %eptr734397                                               ; store fptr
  %arg732477 = ptrtoint i64* %cloptr734396 to i64                                    ; closure cast; i64* -> i64
  %cloptr734406 = inttoptr i64 %xq2$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734406)                                       ; assert function application
  %i0ptr734407 = getelementptr inbounds i64, i64* %cloptr734406, i64 0               ; &cloptr734406[0]
  %f734409 = load i64, i64* %i0ptr734407, align 8                                    ; load; *i0ptr734407
  %fptr734408 = inttoptr i64 %f734409 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734408(i64 %xq2$_37_62, i64 %arg732477, i64 %XdV$ly, i64 %w8K$lx); tail call
  ret void
}


define void @lam733059(i64 %env733060, i64 %_95731894, i64 %a731796) {
  %envptr734410 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734411 = getelementptr inbounds i64, i64* %envptr734410, i64 7              ; &envptr734410[7]
  %a731792 = load i64, i64* %envptr734411, align 8                                   ; load; *envptr734411
  %envptr734412 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734413 = getelementptr inbounds i64, i64* %envptr734412, i64 6              ; &envptr734412[6]
  %sF9$_37drop = load i64, i64* %envptr734413, align 8                               ; load; *envptr734413
  %envptr734414 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734415 = getelementptr inbounds i64, i64* %envptr734414, i64 5              ; &envptr734414[5]
  %cont731887 = load i64, i64* %envptr734415, align 8                                ; load; *envptr734415
  %envptr734416 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734417 = getelementptr inbounds i64, i64* %envptr734416, i64 4              ; &envptr734416[4]
  %a731795 = load i64, i64* %envptr734417, align 8                                   ; load; *envptr734417
  %envptr734418 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734419 = getelementptr inbounds i64, i64* %envptr734418, i64 3              ; &envptr734418[3]
  %vdm$y = load i64, i64* %envptr734419, align 8                                     ; load; *envptr734419
  %envptr734420 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734421 = getelementptr inbounds i64, i64* %envptr734420, i64 2              ; &envptr734420[2]
  %XdV$ly = load i64, i64* %envptr734421, align 8                                    ; load; *envptr734421
  %envptr734422 = inttoptr i64 %env733060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734423 = getelementptr inbounds i64, i64* %envptr734422, i64 1              ; &envptr734422[1]
  %w8K$lx = load i64, i64* %envptr734423, align 8                                    ; load; *envptr734423
  %cmp734424 = icmp eq i64 %a731796, 15                                              ; false?
  br i1 %cmp734424, label %else734426, label %then734425                             ; if

then734425:
  %a731797 = call i64 @prim__45(i64 %XdV$ly, i64 %w8K$lx)                            ; call prim__45
  %cloptr734427 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734429 = getelementptr inbounds i64, i64* %cloptr734427, i64 1                ; &eptr734429[1]
  %eptr734430 = getelementptr inbounds i64, i64* %cloptr734427, i64 2                ; &eptr734430[2]
  %eptr734431 = getelementptr inbounds i64, i64* %cloptr734427, i64 3                ; &eptr734431[3]
  store i64 %a731795, i64* %eptr734429                                               ; *eptr734429 = %a731795
  store i64 %cont731887, i64* %eptr734430                                            ; *eptr734430 = %cont731887
  store i64 %a731792, i64* %eptr734431                                               ; *eptr734431 = %a731792
  %eptr734428 = getelementptr inbounds i64, i64* %cloptr734427, i64 0                ; &cloptr734427[0]
  %f734432 = ptrtoint void(i64,i64,i64)* @lam733054 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734432, i64* %eptr734428                                               ; store fptr
  %arg732483 = ptrtoint i64* %cloptr734427 to i64                                    ; closure cast; i64* -> i64
  %cloptr734433 = inttoptr i64 %sF9$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734433)                                       ; assert function application
  %i0ptr734434 = getelementptr inbounds i64, i64* %cloptr734433, i64 0               ; &cloptr734433[0]
  %f734436 = load i64, i64* %i0ptr734434, align 8                                    ; load; *i0ptr734434
  %fptr734435 = inttoptr i64 %f734436 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734435(i64 %sF9$_37drop, i64 %arg732483, i64 %vdm$y, i64 %a731797); tail call
  ret void

else734426:
  %cloptr734437 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734439 = getelementptr inbounds i64, i64* %cloptr734437, i64 1                ; &eptr734439[1]
  %eptr734440 = getelementptr inbounds i64, i64* %cloptr734437, i64 2                ; &eptr734440[2]
  %eptr734441 = getelementptr inbounds i64, i64* %cloptr734437, i64 3                ; &eptr734441[3]
  store i64 %a731795, i64* %eptr734439                                               ; *eptr734439 = %a731795
  store i64 %cont731887, i64* %eptr734440                                            ; *eptr734440 = %cont731887
  store i64 %a731792, i64* %eptr734441                                               ; *eptr734441 = %a731792
  %eptr734438 = getelementptr inbounds i64, i64* %cloptr734437, i64 0                ; &cloptr734437[0]
  %f734442 = ptrtoint void(i64,i64,i64)* @lam733057 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734442, i64* %eptr734438                                               ; store fptr
  %arg732491 = ptrtoint i64* %cloptr734437 to i64                                    ; closure cast; i64* -> i64
  %arg732490 = add i64 0, 0                                                          ; quoted ()
  %cloptr734443 = inttoptr i64 %arg732491 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734443)                                       ; assert function application
  %i0ptr734444 = getelementptr inbounds i64, i64* %cloptr734443, i64 0               ; &cloptr734443[0]
  %f734446 = load i64, i64* %i0ptr734444, align 8                                    ; load; *i0ptr734444
  %fptr734445 = inttoptr i64 %f734446 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734445(i64 %arg732491, i64 %arg732490, i64 %vdm$y)  ; tail call
  ret void
}


define void @lam733057(i64 %env733058, i64 %_95731895, i64 %a731798) {
  %envptr734447 = inttoptr i64 %env733058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734448 = getelementptr inbounds i64, i64* %envptr734447, i64 3              ; &envptr734447[3]
  %a731792 = load i64, i64* %envptr734448, align 8                                   ; load; *envptr734448
  %envptr734449 = inttoptr i64 %env733058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734450 = getelementptr inbounds i64, i64* %envptr734449, i64 2              ; &envptr734449[2]
  %cont731887 = load i64, i64* %envptr734450, align 8                                ; load; *envptr734450
  %envptr734451 = inttoptr i64 %env733058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734452 = getelementptr inbounds i64, i64* %envptr734451, i64 1              ; &envptr734451[1]
  %a731795 = load i64, i64* %envptr734452, align 8                                   ; load; *envptr734452
  %cloptr734453 = inttoptr i64 %a731792 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734453)                                       ; assert function application
  %i0ptr734454 = getelementptr inbounds i64, i64* %cloptr734453, i64 0               ; &cloptr734453[0]
  %f734456 = load i64, i64* %i0ptr734454, align 8                                    ; load; *i0ptr734454
  %fptr734455 = inttoptr i64 %f734456 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734455(i64 %a731792, i64 %cont731887, i64 %a731795, i64 %a731798); tail call
  ret void
}


define void @lam733054(i64 %env733055, i64 %_95731895, i64 %a731798) {
  %envptr734457 = inttoptr i64 %env733055 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734458 = getelementptr inbounds i64, i64* %envptr734457, i64 3              ; &envptr734457[3]
  %a731792 = load i64, i64* %envptr734458, align 8                                   ; load; *envptr734458
  %envptr734459 = inttoptr i64 %env733055 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734460 = getelementptr inbounds i64, i64* %envptr734459, i64 2              ; &envptr734459[2]
  %cont731887 = load i64, i64* %envptr734460, align 8                                ; load; *envptr734460
  %envptr734461 = inttoptr i64 %env733055 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734462 = getelementptr inbounds i64, i64* %envptr734461, i64 1              ; &envptr734461[1]
  %a731795 = load i64, i64* %envptr734462, align 8                                   ; load; *envptr734462
  %cloptr734463 = inttoptr i64 %a731792 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734463)                                       ; assert function application
  %i0ptr734464 = getelementptr inbounds i64, i64* %cloptr734463, i64 0               ; &cloptr734463[0]
  %f734466 = load i64, i64* %i0ptr734464, align 8                                    ; load; *i0ptr734464
  %fptr734465 = inttoptr i64 %f734466 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734465(i64 %a731792, i64 %cont731887, i64 %a731795, i64 %a731798); tail call
  ret void
}


define void @lam733051(i64 %env733052, i64 %_95731893, i64 %a731795) {
  %envptr734467 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734468 = getelementptr inbounds i64, i64* %envptr734467, i64 7              ; &envptr734467[7]
  %a731792 = load i64, i64* %envptr734468, align 8                                   ; load; *envptr734468
  %envptr734469 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734470 = getelementptr inbounds i64, i64* %envptr734469, i64 6              ; &envptr734469[6]
  %xq2$_37_62 = load i64, i64* %envptr734470, align 8                                ; load; *envptr734470
  %envptr734471 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734472 = getelementptr inbounds i64, i64* %envptr734471, i64 5              ; &envptr734471[5]
  %sF9$_37drop = load i64, i64* %envptr734472, align 8                               ; load; *envptr734472
  %envptr734473 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734474 = getelementptr inbounds i64, i64* %envptr734473, i64 4              ; &envptr734473[4]
  %cont731887 = load i64, i64* %envptr734474, align 8                                ; load; *envptr734474
  %envptr734475 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734476 = getelementptr inbounds i64, i64* %envptr734475, i64 3              ; &envptr734475[3]
  %vdm$y = load i64, i64* %envptr734476, align 8                                     ; load; *envptr734476
  %envptr734477 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734478 = getelementptr inbounds i64, i64* %envptr734477, i64 2              ; &envptr734477[2]
  %XdV$ly = load i64, i64* %envptr734478, align 8                                    ; load; *envptr734478
  %envptr734479 = inttoptr i64 %env733052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734480 = getelementptr inbounds i64, i64* %envptr734479, i64 1              ; &envptr734479[1]
  %w8K$lx = load i64, i64* %envptr734480, align 8                                    ; load; *envptr734480
  %cloptr734481 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734483 = getelementptr inbounds i64, i64* %cloptr734481, i64 1                ; &eptr734483[1]
  %eptr734484 = getelementptr inbounds i64, i64* %cloptr734481, i64 2                ; &eptr734484[2]
  %eptr734485 = getelementptr inbounds i64, i64* %cloptr734481, i64 3                ; &eptr734485[3]
  %eptr734486 = getelementptr inbounds i64, i64* %cloptr734481, i64 4                ; &eptr734486[4]
  %eptr734487 = getelementptr inbounds i64, i64* %cloptr734481, i64 5                ; &eptr734487[5]
  %eptr734488 = getelementptr inbounds i64, i64* %cloptr734481, i64 6                ; &eptr734488[6]
  %eptr734489 = getelementptr inbounds i64, i64* %cloptr734481, i64 7                ; &eptr734489[7]
  store i64 %w8K$lx, i64* %eptr734483                                                ; *eptr734483 = %w8K$lx
  store i64 %XdV$ly, i64* %eptr734484                                                ; *eptr734484 = %XdV$ly
  store i64 %vdm$y, i64* %eptr734485                                                 ; *eptr734485 = %vdm$y
  store i64 %a731795, i64* %eptr734486                                               ; *eptr734486 = %a731795
  store i64 %cont731887, i64* %eptr734487                                            ; *eptr734487 = %cont731887
  store i64 %sF9$_37drop, i64* %eptr734488                                           ; *eptr734488 = %sF9$_37drop
  store i64 %a731792, i64* %eptr734489                                               ; *eptr734489 = %a731792
  %eptr734482 = getelementptr inbounds i64, i64* %cloptr734481, i64 0                ; &cloptr734481[0]
  %f734490 = ptrtoint void(i64,i64,i64)* @lam733049 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734490, i64* %eptr734482                                               ; store fptr
  %arg732453 = ptrtoint i64* %cloptr734481 to i64                                    ; closure cast; i64* -> i64
  %cloptr734491 = inttoptr i64 %xq2$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734491)                                       ; assert function application
  %i0ptr734492 = getelementptr inbounds i64, i64* %cloptr734491, i64 0               ; &cloptr734491[0]
  %f734494 = load i64, i64* %i0ptr734492, align 8                                    ; load; *i0ptr734492
  %fptr734493 = inttoptr i64 %f734494 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734493(i64 %xq2$_37_62, i64 %arg732453, i64 %XdV$ly, i64 %w8K$lx); tail call
  ret void
}


define void @lam733049(i64 %env733050, i64 %_95731894, i64 %a731796) {
  %envptr734495 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734496 = getelementptr inbounds i64, i64* %envptr734495, i64 7              ; &envptr734495[7]
  %a731792 = load i64, i64* %envptr734496, align 8                                   ; load; *envptr734496
  %envptr734497 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734498 = getelementptr inbounds i64, i64* %envptr734497, i64 6              ; &envptr734497[6]
  %sF9$_37drop = load i64, i64* %envptr734498, align 8                               ; load; *envptr734498
  %envptr734499 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734500 = getelementptr inbounds i64, i64* %envptr734499, i64 5              ; &envptr734499[5]
  %cont731887 = load i64, i64* %envptr734500, align 8                                ; load; *envptr734500
  %envptr734501 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734502 = getelementptr inbounds i64, i64* %envptr734501, i64 4              ; &envptr734501[4]
  %a731795 = load i64, i64* %envptr734502, align 8                                   ; load; *envptr734502
  %envptr734503 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734504 = getelementptr inbounds i64, i64* %envptr734503, i64 3              ; &envptr734503[3]
  %vdm$y = load i64, i64* %envptr734504, align 8                                     ; load; *envptr734504
  %envptr734505 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734506 = getelementptr inbounds i64, i64* %envptr734505, i64 2              ; &envptr734505[2]
  %XdV$ly = load i64, i64* %envptr734506, align 8                                    ; load; *envptr734506
  %envptr734507 = inttoptr i64 %env733050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734508 = getelementptr inbounds i64, i64* %envptr734507, i64 1              ; &envptr734507[1]
  %w8K$lx = load i64, i64* %envptr734508, align 8                                    ; load; *envptr734508
  %cmp734509 = icmp eq i64 %a731796, 15                                              ; false?
  br i1 %cmp734509, label %else734511, label %then734510                             ; if

then734510:
  %a731797 = call i64 @prim__45(i64 %XdV$ly, i64 %w8K$lx)                            ; call prim__45
  %cloptr734512 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734514 = getelementptr inbounds i64, i64* %cloptr734512, i64 1                ; &eptr734514[1]
  %eptr734515 = getelementptr inbounds i64, i64* %cloptr734512, i64 2                ; &eptr734515[2]
  %eptr734516 = getelementptr inbounds i64, i64* %cloptr734512, i64 3                ; &eptr734516[3]
  store i64 %a731795, i64* %eptr734514                                               ; *eptr734514 = %a731795
  store i64 %cont731887, i64* %eptr734515                                            ; *eptr734515 = %cont731887
  store i64 %a731792, i64* %eptr734516                                               ; *eptr734516 = %a731792
  %eptr734513 = getelementptr inbounds i64, i64* %cloptr734512, i64 0                ; &cloptr734512[0]
  %f734517 = ptrtoint void(i64,i64,i64)* @lam733044 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734517, i64* %eptr734513                                               ; store fptr
  %arg732459 = ptrtoint i64* %cloptr734512 to i64                                    ; closure cast; i64* -> i64
  %cloptr734518 = inttoptr i64 %sF9$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734518)                                       ; assert function application
  %i0ptr734519 = getelementptr inbounds i64, i64* %cloptr734518, i64 0               ; &cloptr734518[0]
  %f734521 = load i64, i64* %i0ptr734519, align 8                                    ; load; *i0ptr734519
  %fptr734520 = inttoptr i64 %f734521 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734520(i64 %sF9$_37drop, i64 %arg732459, i64 %vdm$y, i64 %a731797); tail call
  ret void

else734511:
  %cloptr734522 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734524 = getelementptr inbounds i64, i64* %cloptr734522, i64 1                ; &eptr734524[1]
  %eptr734525 = getelementptr inbounds i64, i64* %cloptr734522, i64 2                ; &eptr734525[2]
  %eptr734526 = getelementptr inbounds i64, i64* %cloptr734522, i64 3                ; &eptr734526[3]
  store i64 %a731795, i64* %eptr734524                                               ; *eptr734524 = %a731795
  store i64 %cont731887, i64* %eptr734525                                            ; *eptr734525 = %cont731887
  store i64 %a731792, i64* %eptr734526                                               ; *eptr734526 = %a731792
  %eptr734523 = getelementptr inbounds i64, i64* %cloptr734522, i64 0                ; &cloptr734522[0]
  %f734527 = ptrtoint void(i64,i64,i64)* @lam733047 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734527, i64* %eptr734523                                               ; store fptr
  %arg732467 = ptrtoint i64* %cloptr734522 to i64                                    ; closure cast; i64* -> i64
  %arg732466 = add i64 0, 0                                                          ; quoted ()
  %cloptr734528 = inttoptr i64 %arg732467 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734528)                                       ; assert function application
  %i0ptr734529 = getelementptr inbounds i64, i64* %cloptr734528, i64 0               ; &cloptr734528[0]
  %f734531 = load i64, i64* %i0ptr734529, align 8                                    ; load; *i0ptr734529
  %fptr734530 = inttoptr i64 %f734531 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734530(i64 %arg732467, i64 %arg732466, i64 %vdm$y)  ; tail call
  ret void
}


define void @lam733047(i64 %env733048, i64 %_95731895, i64 %a731798) {
  %envptr734532 = inttoptr i64 %env733048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734533 = getelementptr inbounds i64, i64* %envptr734532, i64 3              ; &envptr734532[3]
  %a731792 = load i64, i64* %envptr734533, align 8                                   ; load; *envptr734533
  %envptr734534 = inttoptr i64 %env733048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734535 = getelementptr inbounds i64, i64* %envptr734534, i64 2              ; &envptr734534[2]
  %cont731887 = load i64, i64* %envptr734535, align 8                                ; load; *envptr734535
  %envptr734536 = inttoptr i64 %env733048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734537 = getelementptr inbounds i64, i64* %envptr734536, i64 1              ; &envptr734536[1]
  %a731795 = load i64, i64* %envptr734537, align 8                                   ; load; *envptr734537
  %cloptr734538 = inttoptr i64 %a731792 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734538)                                       ; assert function application
  %i0ptr734539 = getelementptr inbounds i64, i64* %cloptr734538, i64 0               ; &cloptr734538[0]
  %f734541 = load i64, i64* %i0ptr734539, align 8                                    ; load; *i0ptr734539
  %fptr734540 = inttoptr i64 %f734541 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734540(i64 %a731792, i64 %cont731887, i64 %a731795, i64 %a731798); tail call
  ret void
}


define void @lam733044(i64 %env733045, i64 %_95731895, i64 %a731798) {
  %envptr734542 = inttoptr i64 %env733045 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734543 = getelementptr inbounds i64, i64* %envptr734542, i64 3              ; &envptr734542[3]
  %a731792 = load i64, i64* %envptr734543, align 8                                   ; load; *envptr734543
  %envptr734544 = inttoptr i64 %env733045 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734545 = getelementptr inbounds i64, i64* %envptr734544, i64 2              ; &envptr734544[2]
  %cont731887 = load i64, i64* %envptr734545, align 8                                ; load; *envptr734545
  %envptr734546 = inttoptr i64 %env733045 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734547 = getelementptr inbounds i64, i64* %envptr734546, i64 1              ; &envptr734546[1]
  %a731795 = load i64, i64* %envptr734547, align 8                                   ; load; *envptr734547
  %cloptr734548 = inttoptr i64 %a731792 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734548)                                       ; assert function application
  %i0ptr734549 = getelementptr inbounds i64, i64* %cloptr734548, i64 0               ; &cloptr734548[0]
  %f734551 = load i64, i64* %i0ptr734549, align 8                                    ; load; *i0ptr734549
  %fptr734550 = inttoptr i64 %f734551 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734550(i64 %a731792, i64 %cont731887, i64 %a731795, i64 %a731798); tail call
  ret void
}


define void @lam733041(i64 %env733042, i64 %cont731900, i64 %M7O$new) {
  %envptr734552 = inttoptr i64 %env733042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734553 = getelementptr inbounds i64, i64* %envptr734552, i64 2              ; &envptr734552[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734553, align 8                       ; load; *envptr734553
  %envptr734554 = inttoptr i64 %env733042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734555 = getelementptr inbounds i64, i64* %envptr734554, i64 1              ; &envptr734554[1]
  %wl7$_37common_45tail = load i64, i64* %envptr734555, align 8                      ; load; *envptr734555
  %arg732496 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731799 = call i64 @prim_vector_45ref(i64 %T96$_37wind_45stack, i64 %arg732496)   ; call prim_vector_45ref
  %cloptr734556 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734558 = getelementptr inbounds i64, i64* %cloptr734556, i64 1                ; &eptr734558[1]
  %eptr734559 = getelementptr inbounds i64, i64* %cloptr734556, i64 2                ; &eptr734559[2]
  %eptr734560 = getelementptr inbounds i64, i64* %cloptr734556, i64 3                ; &eptr734560[3]
  store i64 %T96$_37wind_45stack, i64* %eptr734558                                   ; *eptr734558 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734559                                               ; *eptr734559 = %M7O$new
  store i64 %cont731900, i64* %eptr734560                                            ; *eptr734560 = %cont731900
  %eptr734557 = getelementptr inbounds i64, i64* %cloptr734556, i64 0                ; &cloptr734556[0]
  %f734561 = ptrtoint void(i64,i64,i64)* @lam733038 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734561, i64* %eptr734557                                               ; store fptr
  %arg732500 = ptrtoint i64* %cloptr734556 to i64                                    ; closure cast; i64* -> i64
  %cloptr734562 = inttoptr i64 %wl7$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734562)                                       ; assert function application
  %i0ptr734563 = getelementptr inbounds i64, i64* %cloptr734562, i64 0               ; &cloptr734562[0]
  %f734565 = load i64, i64* %i0ptr734563, align 8                                    ; load; *i0ptr734563
  %fptr734564 = inttoptr i64 %f734565 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734564(i64 %wl7$_37common_45tail, i64 %arg732500, i64 %M7O$new, i64 %a731799); tail call
  ret void
}


define void @lam733038(i64 %env733039, i64 %_95731901, i64 %egW$tail) {
  %envptr734566 = inttoptr i64 %env733039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734567 = getelementptr inbounds i64, i64* %envptr734566, i64 3              ; &envptr734566[3]
  %cont731900 = load i64, i64* %envptr734567, align 8                                ; load; *envptr734567
  %envptr734568 = inttoptr i64 %env733039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734569 = getelementptr inbounds i64, i64* %envptr734568, i64 2              ; &envptr734568[2]
  %M7O$new = load i64, i64* %envptr734569, align 8                                   ; load; *envptr734569
  %envptr734570 = inttoptr i64 %env733039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734571 = getelementptr inbounds i64, i64* %envptr734570, i64 1              ; &envptr734570[1]
  %T96$_37wind_45stack = load i64, i64* %envptr734571, align 8                       ; load; *envptr734571
  %cloptr734572 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734573 = getelementptr inbounds i64, i64* %cloptr734572, i64 0                ; &cloptr734572[0]
  %f734574 = ptrtoint void(i64,i64)* @lam733036 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f734574, i64* %eptr734573                                               ; store fptr
  %arg732503 = ptrtoint i64* %cloptr734572 to i64                                    ; closure cast; i64* -> i64
  %cloptr734575 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734577 = getelementptr inbounds i64, i64* %cloptr734575, i64 1                ; &eptr734577[1]
  %eptr734578 = getelementptr inbounds i64, i64* %cloptr734575, i64 2                ; &eptr734578[2]
  %eptr734579 = getelementptr inbounds i64, i64* %cloptr734575, i64 3                ; &eptr734579[3]
  %eptr734580 = getelementptr inbounds i64, i64* %cloptr734575, i64 4                ; &eptr734580[4]
  store i64 %egW$tail, i64* %eptr734577                                              ; *eptr734577 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734578                                   ; *eptr734578 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734579                                               ; *eptr734579 = %M7O$new
  store i64 %cont731900, i64* %eptr734580                                            ; *eptr734580 = %cont731900
  %eptr734576 = getelementptr inbounds i64, i64* %cloptr734575, i64 0                ; &cloptr734575[0]
  %f734581 = ptrtoint void(i64,i64,i64)* @lam733033 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734581, i64* %eptr734576                                               ; store fptr
  %arg732502 = ptrtoint i64* %cloptr734575 to i64                                    ; closure cast; i64* -> i64
  %cloptr734582 = inttoptr i64 %arg732503 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734582)                                       ; assert function application
  %i0ptr734583 = getelementptr inbounds i64, i64* %cloptr734582, i64 0               ; &cloptr734582[0]
  %f734585 = load i64, i64* %i0ptr734583, align 8                                    ; load; *i0ptr734583
  %fptr734584 = inttoptr i64 %f734585 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734584(i64 %arg732503, i64 %arg732502)              ; tail call
  ret void
}


define void @lam733036(i64 %env733037, i64 %lPz$lst731922) {
  %cont731921 = call i64 @prim_car(i64 %lPz$lst731922)                               ; call prim_car
  %lPz$lst = call i64 @prim_cdr(i64 %lPz$lst731922)                                  ; call prim_cdr
  %arg732507 = add i64 0, 0                                                          ; quoted ()
  %cloptr734586 = inttoptr i64 %cont731921 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734586)                                       ; assert function application
  %i0ptr734587 = getelementptr inbounds i64, i64* %cloptr734586, i64 0               ; &cloptr734586[0]
  %f734589 = load i64, i64* %i0ptr734587, align 8                                    ; load; *i0ptr734587
  %fptr734588 = inttoptr i64 %f734589 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734588(i64 %cont731921, i64 %arg732507, i64 %lPz$lst); tail call
  ret void
}


define void @lam733033(i64 %env733034, i64 %_95731919, i64 %a731800) {
  %envptr734590 = inttoptr i64 %env733034 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734591 = getelementptr inbounds i64, i64* %envptr734590, i64 4              ; &envptr734590[4]
  %cont731900 = load i64, i64* %envptr734591, align 8                                ; load; *envptr734591
  %envptr734592 = inttoptr i64 %env733034 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734593 = getelementptr inbounds i64, i64* %envptr734592, i64 3              ; &envptr734592[3]
  %M7O$new = load i64, i64* %envptr734593, align 8                                   ; load; *envptr734593
  %envptr734594 = inttoptr i64 %env733034 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734595 = getelementptr inbounds i64, i64* %envptr734594, i64 2              ; &envptr734594[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734595, align 8                       ; load; *envptr734595
  %envptr734596 = inttoptr i64 %env733034 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734597 = getelementptr inbounds i64, i64* %envptr734596, i64 1              ; &envptr734596[1]
  %egW$tail = load i64, i64* %envptr734597, align 8                                  ; load; *envptr734597
  %arg732510 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim731920 = call i64 @prim_make_45vector(i64 %arg732510, i64 %a731800)        ; call prim_make_45vector
  %cloptr734598 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734600 = getelementptr inbounds i64, i64* %cloptr734598, i64 1                ; &eptr734600[1]
  %eptr734601 = getelementptr inbounds i64, i64* %cloptr734598, i64 2                ; &eptr734601[2]
  %eptr734602 = getelementptr inbounds i64, i64* %cloptr734598, i64 3                ; &eptr734602[3]
  %eptr734603 = getelementptr inbounds i64, i64* %cloptr734598, i64 4                ; &eptr734603[4]
  store i64 %egW$tail, i64* %eptr734600                                              ; *eptr734600 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734601                                   ; *eptr734601 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734602                                               ; *eptr734602 = %M7O$new
  store i64 %cont731900, i64* %eptr734603                                            ; *eptr734603 = %cont731900
  %eptr734599 = getelementptr inbounds i64, i64* %cloptr734598, i64 0                ; &cloptr734598[0]
  %f734604 = ptrtoint void(i64,i64,i64)* @lam733030 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734604, i64* %eptr734599                                               ; store fptr
  %arg732513 = ptrtoint i64* %cloptr734598 to i64                                    ; closure cast; i64* -> i64
  %arg732512 = add i64 0, 0                                                          ; quoted ()
  %cloptr734605 = inttoptr i64 %arg732513 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734605)                                       ; assert function application
  %i0ptr734606 = getelementptr inbounds i64, i64* %cloptr734605, i64 0               ; &cloptr734605[0]
  %f734608 = load i64, i64* %i0ptr734606, align 8                                    ; load; *i0ptr734606
  %fptr734607 = inttoptr i64 %f734608 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734607(i64 %arg732513, i64 %arg732512, i64 %retprim731920); tail call
  ret void
}


define void @lam733030(i64 %env733031, i64 %_95731913, i64 %pmC$f) {
  %envptr734609 = inttoptr i64 %env733031 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734610 = getelementptr inbounds i64, i64* %envptr734609, i64 4              ; &envptr734609[4]
  %cont731900 = load i64, i64* %envptr734610, align 8                                ; load; *envptr734610
  %envptr734611 = inttoptr i64 %env733031 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734612 = getelementptr inbounds i64, i64* %envptr734611, i64 3              ; &envptr734611[3]
  %M7O$new = load i64, i64* %envptr734612, align 8                                   ; load; *envptr734612
  %envptr734613 = inttoptr i64 %env733031 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734614 = getelementptr inbounds i64, i64* %envptr734613, i64 2              ; &envptr734613[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734614, align 8                       ; load; *envptr734614
  %envptr734615 = inttoptr i64 %env733031 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734616 = getelementptr inbounds i64, i64* %envptr734615, i64 1              ; &envptr734615[1]
  %egW$tail = load i64, i64* %envptr734616, align 8                                  ; load; *envptr734616
  %arg732515 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr734617 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734619 = getelementptr inbounds i64, i64* %cloptr734617, i64 1                ; &eptr734619[1]
  %eptr734620 = getelementptr inbounds i64, i64* %cloptr734617, i64 2                ; &eptr734620[2]
  %eptr734621 = getelementptr inbounds i64, i64* %cloptr734617, i64 3                ; &eptr734621[3]
  store i64 %egW$tail, i64* %eptr734619                                              ; *eptr734619 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734620                                   ; *eptr734620 = %T96$_37wind_45stack
  store i64 %pmC$f, i64* %eptr734621                                                 ; *eptr734621 = %pmC$f
  %eptr734618 = getelementptr inbounds i64, i64* %cloptr734617, i64 0                ; &cloptr734617[0]
  %f734622 = ptrtoint void(i64,i64,i64)* @lam733027 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734622, i64* %eptr734618                                               ; store fptr
  %arg732514 = ptrtoint i64* %cloptr734617 to i64                                    ; closure cast; i64* -> i64
  %DCP$_95731693 = call i64 @prim_vector_45set_33(i64 %pmC$f, i64 %arg732515, i64 %arg732514); call prim_vector_45set_33
  %arg732540 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731808 = call i64 @prim_vector_45ref(i64 %pmC$f, i64 %arg732540)                 ; call prim_vector_45ref
  %arg732542 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731809 = call i64 @prim_vector_45ref(i64 %T96$_37wind_45stack, i64 %arg732542)   ; call prim_vector_45ref
  %cloptr734623 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734625 = getelementptr inbounds i64, i64* %cloptr734623, i64 1                ; &eptr734625[1]
  %eptr734626 = getelementptr inbounds i64, i64* %cloptr734623, i64 2                ; &eptr734626[2]
  %eptr734627 = getelementptr inbounds i64, i64* %cloptr734623, i64 3                ; &eptr734627[3]
  %eptr734628 = getelementptr inbounds i64, i64* %cloptr734623, i64 4                ; &eptr734628[4]
  store i64 %egW$tail, i64* %eptr734625                                              ; *eptr734625 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734626                                   ; *eptr734626 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734627                                               ; *eptr734627 = %M7O$new
  store i64 %cont731900, i64* %eptr734628                                            ; *eptr734628 = %cont731900
  %eptr734624 = getelementptr inbounds i64, i64* %cloptr734623, i64 0                ; &cloptr734623[0]
  %f734629 = ptrtoint void(i64,i64,i64)* @lam733015 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734629, i64* %eptr734624                                               ; store fptr
  %arg732545 = ptrtoint i64* %cloptr734623 to i64                                    ; closure cast; i64* -> i64
  %cloptr734630 = inttoptr i64 %a731808 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734630)                                       ; assert function application
  %i0ptr734631 = getelementptr inbounds i64, i64* %cloptr734630, i64 0               ; &cloptr734630[0]
  %f734633 = load i64, i64* %i0ptr734631, align 8                                    ; load; *i0ptr734631
  %fptr734632 = inttoptr i64 %f734633 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734632(i64 %a731808, i64 %arg732545, i64 %a731809)  ; tail call
  ret void
}


define void @lam733027(i64 %env733028, i64 %cont731914, i64 %U18$l) {
  %envptr734634 = inttoptr i64 %env733028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734635 = getelementptr inbounds i64, i64* %envptr734634, i64 3              ; &envptr734634[3]
  %pmC$f = load i64, i64* %envptr734635, align 8                                     ; load; *envptr734635
  %envptr734636 = inttoptr i64 %env733028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734637 = getelementptr inbounds i64, i64* %envptr734636, i64 2              ; &envptr734636[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734637, align 8                       ; load; *envptr734637
  %envptr734638 = inttoptr i64 %env733028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734639 = getelementptr inbounds i64, i64* %envptr734638, i64 1              ; &envptr734638[1]
  %egW$tail = load i64, i64* %envptr734639, align 8                                  ; load; *envptr734639
  %a731801 = call i64 @prim_eq_63(i64 %U18$l, i64 %egW$tail)                         ; call prim_eq_63
  %a731802 = call i64 @prim_not(i64 %a731801)                                        ; call prim_not
  %cmp734640 = icmp eq i64 %a731802, 15                                              ; false?
  br i1 %cmp734640, label %else734642, label %then734641                             ; if

then734641:
  %a731803 = call i64 @prim_cdr(i64 %U18$l)                                          ; call prim_cdr
  %arg732522 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731917 = call i64 @prim_vector_45set_33(i64 %T96$_37wind_45stack, i64 %arg732522, i64 %a731803); call prim_vector_45set_33
  %cloptr734643 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734645 = getelementptr inbounds i64, i64* %cloptr734643, i64 1                ; &eptr734645[1]
  %eptr734646 = getelementptr inbounds i64, i64* %cloptr734643, i64 2                ; &eptr734646[2]
  %eptr734647 = getelementptr inbounds i64, i64* %cloptr734643, i64 3                ; &eptr734647[3]
  store i64 %U18$l, i64* %eptr734645                                                 ; *eptr734645 = %U18$l
  store i64 %cont731914, i64* %eptr734646                                            ; *eptr734646 = %cont731914
  store i64 %pmC$f, i64* %eptr734647                                                 ; *eptr734647 = %pmC$f
  %eptr734644 = getelementptr inbounds i64, i64* %cloptr734643, i64 0                ; &cloptr734643[0]
  %f734648 = ptrtoint void(i64,i64,i64)* @lam733023 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734648, i64* %eptr734644                                               ; store fptr
  %arg732526 = ptrtoint i64* %cloptr734643 to i64                                    ; closure cast; i64* -> i64
  %arg732525 = add i64 0, 0                                                          ; quoted ()
  %cloptr734649 = inttoptr i64 %arg732526 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734649)                                       ; assert function application
  %i0ptr734650 = getelementptr inbounds i64, i64* %cloptr734649, i64 0               ; &cloptr734649[0]
  %f734652 = load i64, i64* %i0ptr734650, align 8                                    ; load; *i0ptr734650
  %fptr734651 = inttoptr i64 %f734652 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734651(i64 %arg732526, i64 %arg732525, i64 %retprim731917); tail call
  ret void

else734642:
  %retprim731918 = call i64 @prim_void()                                             ; call prim_void
  %arg732538 = add i64 0, 0                                                          ; quoted ()
  %cloptr734653 = inttoptr i64 %cont731914 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734653)                                       ; assert function application
  %i0ptr734654 = getelementptr inbounds i64, i64* %cloptr734653, i64 0               ; &cloptr734653[0]
  %f734656 = load i64, i64* %i0ptr734654, align 8                                    ; load; *i0ptr734654
  %fptr734655 = inttoptr i64 %f734656 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734655(i64 %cont731914, i64 %arg732538, i64 %retprim731918); tail call
  ret void
}


define void @lam733023(i64 %env733024, i64 %_95731915, i64 %kHv$_95731694) {
  %envptr734657 = inttoptr i64 %env733024 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734658 = getelementptr inbounds i64, i64* %envptr734657, i64 3              ; &envptr734657[3]
  %pmC$f = load i64, i64* %envptr734658, align 8                                     ; load; *envptr734658
  %envptr734659 = inttoptr i64 %env733024 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734660 = getelementptr inbounds i64, i64* %envptr734659, i64 2              ; &envptr734659[2]
  %cont731914 = load i64, i64* %envptr734660, align 8                                ; load; *envptr734660
  %envptr734661 = inttoptr i64 %env733024 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734662 = getelementptr inbounds i64, i64* %envptr734661, i64 1              ; &envptr734661[1]
  %U18$l = load i64, i64* %envptr734662, align 8                                     ; load; *envptr734662
  %a731804 = call i64 @prim_car(i64 %U18$l)                                          ; call prim_car
  %a731805 = call i64 @prim_cdr(i64 %a731804)                                        ; call prim_cdr
  %cloptr734663 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734665 = getelementptr inbounds i64, i64* %cloptr734663, i64 1                ; &eptr734665[1]
  %eptr734666 = getelementptr inbounds i64, i64* %cloptr734663, i64 2                ; &eptr734666[2]
  %eptr734667 = getelementptr inbounds i64, i64* %cloptr734663, i64 3                ; &eptr734667[3]
  store i64 %U18$l, i64* %eptr734665                                                 ; *eptr734665 = %U18$l
  store i64 %cont731914, i64* %eptr734666                                            ; *eptr734666 = %cont731914
  store i64 %pmC$f, i64* %eptr734667                                                 ; *eptr734667 = %pmC$f
  %eptr734664 = getelementptr inbounds i64, i64* %cloptr734663, i64 0                ; &cloptr734663[0]
  %f734668 = ptrtoint void(i64,i64,i64)* @lam733021 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734668, i64* %eptr734664                                               ; store fptr
  %arg732529 = ptrtoint i64* %cloptr734663 to i64                                    ; closure cast; i64* -> i64
  %cloptr734669 = inttoptr i64 %a731805 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734669)                                       ; assert function application
  %i0ptr734670 = getelementptr inbounds i64, i64* %cloptr734669, i64 0               ; &cloptr734669[0]
  %f734672 = load i64, i64* %i0ptr734670, align 8                                    ; load; *i0ptr734670
  %fptr734671 = inttoptr i64 %f734672 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734671(i64 %a731805, i64 %arg732529)                ; tail call
  ret void
}


define void @lam733021(i64 %env733022, i64 %_95731916, i64 %AHL$_95731695) {
  %envptr734673 = inttoptr i64 %env733022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734674 = getelementptr inbounds i64, i64* %envptr734673, i64 3              ; &envptr734673[3]
  %pmC$f = load i64, i64* %envptr734674, align 8                                     ; load; *envptr734674
  %envptr734675 = inttoptr i64 %env733022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734676 = getelementptr inbounds i64, i64* %envptr734675, i64 2              ; &envptr734675[2]
  %cont731914 = load i64, i64* %envptr734676, align 8                                ; load; *envptr734676
  %envptr734677 = inttoptr i64 %env733022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734678 = getelementptr inbounds i64, i64* %envptr734677, i64 1              ; &envptr734677[1]
  %U18$l = load i64, i64* %envptr734678, align 8                                     ; load; *envptr734678
  %arg732531 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731806 = call i64 @prim_vector_45ref(i64 %pmC$f, i64 %arg732531)                 ; call prim_vector_45ref
  %a731807 = call i64 @prim_cdr(i64 %U18$l)                                          ; call prim_cdr
  %cloptr734679 = inttoptr i64 %a731806 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734679)                                       ; assert function application
  %i0ptr734680 = getelementptr inbounds i64, i64* %cloptr734679, i64 0               ; &cloptr734679[0]
  %f734682 = load i64, i64* %i0ptr734680, align 8                                    ; load; *i0ptr734680
  %fptr734681 = inttoptr i64 %f734682 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734681(i64 %a731806, i64 %cont731914, i64 %a731807) ; tail call
  ret void
}


define void @lam733015(i64 %env733016, i64 %_95731902, i64 %Ovd$_95731692) {
  %envptr734683 = inttoptr i64 %env733016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734684 = getelementptr inbounds i64, i64* %envptr734683, i64 4              ; &envptr734683[4]
  %cont731900 = load i64, i64* %envptr734684, align 8                                ; load; *envptr734684
  %envptr734685 = inttoptr i64 %env733016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734686 = getelementptr inbounds i64, i64* %envptr734685, i64 3              ; &envptr734685[3]
  %M7O$new = load i64, i64* %envptr734686, align 8                                   ; load; *envptr734686
  %envptr734687 = inttoptr i64 %env733016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734688 = getelementptr inbounds i64, i64* %envptr734687, i64 2              ; &envptr734687[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734688, align 8                       ; load; *envptr734688
  %envptr734689 = inttoptr i64 %env733016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734690 = getelementptr inbounds i64, i64* %envptr734689, i64 1              ; &envptr734689[1]
  %egW$tail = load i64, i64* %envptr734690, align 8                                  ; load; *envptr734690
  %cloptr734691 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734692 = getelementptr inbounds i64, i64* %cloptr734691, i64 0                ; &cloptr734691[0]
  %f734693 = ptrtoint void(i64,i64)* @lam733013 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f734693, i64* %eptr734692                                               ; store fptr
  %arg732548 = ptrtoint i64* %cloptr734691 to i64                                    ; closure cast; i64* -> i64
  %cloptr734694 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734696 = getelementptr inbounds i64, i64* %cloptr734694, i64 1                ; &eptr734696[1]
  %eptr734697 = getelementptr inbounds i64, i64* %cloptr734694, i64 2                ; &eptr734697[2]
  %eptr734698 = getelementptr inbounds i64, i64* %cloptr734694, i64 3                ; &eptr734698[3]
  %eptr734699 = getelementptr inbounds i64, i64* %cloptr734694, i64 4                ; &eptr734699[4]
  store i64 %egW$tail, i64* %eptr734696                                              ; *eptr734696 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734697                                   ; *eptr734697 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734698                                               ; *eptr734698 = %M7O$new
  store i64 %cont731900, i64* %eptr734699                                            ; *eptr734699 = %cont731900
  %eptr734695 = getelementptr inbounds i64, i64* %cloptr734694, i64 0                ; &cloptr734694[0]
  %f734700 = ptrtoint void(i64,i64,i64)* @lam733010 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734700, i64* %eptr734695                                               ; store fptr
  %arg732547 = ptrtoint i64* %cloptr734694 to i64                                    ; closure cast; i64* -> i64
  %cloptr734701 = inttoptr i64 %arg732548 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734701)                                       ; assert function application
  %i0ptr734702 = getelementptr inbounds i64, i64* %cloptr734701, i64 0               ; &cloptr734701[0]
  %f734704 = load i64, i64* %i0ptr734702, align 8                                    ; load; *i0ptr734702
  %fptr734703 = inttoptr i64 %f734704 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734703(i64 %arg732548, i64 %arg732547)              ; tail call
  ret void
}


define void @lam733013(i64 %env733014, i64 %tKZ$lst731912) {
  %cont731911 = call i64 @prim_car(i64 %tKZ$lst731912)                               ; call prim_car
  %tKZ$lst = call i64 @prim_cdr(i64 %tKZ$lst731912)                                  ; call prim_cdr
  %arg732552 = add i64 0, 0                                                          ; quoted ()
  %cloptr734705 = inttoptr i64 %cont731911 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734705)                                       ; assert function application
  %i0ptr734706 = getelementptr inbounds i64, i64* %cloptr734705, i64 0               ; &cloptr734705[0]
  %f734708 = load i64, i64* %i0ptr734706, align 8                                    ; load; *i0ptr734706
  %fptr734707 = inttoptr i64 %f734708 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734707(i64 %cont731911, i64 %arg732552, i64 %tKZ$lst); tail call
  ret void
}


define void @lam733010(i64 %env733011, i64 %_95731909, i64 %a731810) {
  %envptr734709 = inttoptr i64 %env733011 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734710 = getelementptr inbounds i64, i64* %envptr734709, i64 4              ; &envptr734709[4]
  %cont731900 = load i64, i64* %envptr734710, align 8                                ; load; *envptr734710
  %envptr734711 = inttoptr i64 %env733011 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734712 = getelementptr inbounds i64, i64* %envptr734711, i64 3              ; &envptr734711[3]
  %M7O$new = load i64, i64* %envptr734712, align 8                                   ; load; *envptr734712
  %envptr734713 = inttoptr i64 %env733011 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734714 = getelementptr inbounds i64, i64* %envptr734713, i64 2              ; &envptr734713[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734714, align 8                       ; load; *envptr734714
  %envptr734715 = inttoptr i64 %env733011 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734716 = getelementptr inbounds i64, i64* %envptr734715, i64 1              ; &envptr734715[1]
  %egW$tail = load i64, i64* %envptr734716, align 8                                  ; load; *envptr734716
  %arg732555 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim731910 = call i64 @prim_make_45vector(i64 %arg732555, i64 %a731810)        ; call prim_make_45vector
  %cloptr734717 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734719 = getelementptr inbounds i64, i64* %cloptr734717, i64 1                ; &eptr734719[1]
  %eptr734720 = getelementptr inbounds i64, i64* %cloptr734717, i64 2                ; &eptr734720[2]
  %eptr734721 = getelementptr inbounds i64, i64* %cloptr734717, i64 3                ; &eptr734721[3]
  %eptr734722 = getelementptr inbounds i64, i64* %cloptr734717, i64 4                ; &eptr734722[4]
  store i64 %egW$tail, i64* %eptr734719                                              ; *eptr734719 = %egW$tail
  store i64 %T96$_37wind_45stack, i64* %eptr734720                                   ; *eptr734720 = %T96$_37wind_45stack
  store i64 %M7O$new, i64* %eptr734721                                               ; *eptr734721 = %M7O$new
  store i64 %cont731900, i64* %eptr734722                                            ; *eptr734722 = %cont731900
  %eptr734718 = getelementptr inbounds i64, i64* %cloptr734717, i64 0                ; &cloptr734717[0]
  %f734723 = ptrtoint void(i64,i64,i64)* @lam733007 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734723, i64* %eptr734718                                               ; store fptr
  %arg732558 = ptrtoint i64* %cloptr734717 to i64                                    ; closure cast; i64* -> i64
  %arg732557 = add i64 0, 0                                                          ; quoted ()
  %cloptr734724 = inttoptr i64 %arg732558 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734724)                                       ; assert function application
  %i0ptr734725 = getelementptr inbounds i64, i64* %cloptr734724, i64 0               ; &cloptr734724[0]
  %f734727 = load i64, i64* %i0ptr734725, align 8                                    ; load; *i0ptr734725
  %fptr734726 = inttoptr i64 %f734727 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734726(i64 %arg732558, i64 %arg732557, i64 %retprim731910); tail call
  ret void
}


define void @lam733007(i64 %env733008, i64 %_95731903, i64 %vxM$f) {
  %envptr734728 = inttoptr i64 %env733008 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734729 = getelementptr inbounds i64, i64* %envptr734728, i64 4              ; &envptr734728[4]
  %cont731900 = load i64, i64* %envptr734729, align 8                                ; load; *envptr734729
  %envptr734730 = inttoptr i64 %env733008 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734731 = getelementptr inbounds i64, i64* %envptr734730, i64 3              ; &envptr734730[3]
  %M7O$new = load i64, i64* %envptr734731, align 8                                   ; load; *envptr734731
  %envptr734732 = inttoptr i64 %env733008 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734733 = getelementptr inbounds i64, i64* %envptr734732, i64 2              ; &envptr734732[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734733, align 8                       ; load; *envptr734733
  %envptr734734 = inttoptr i64 %env733008 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734735 = getelementptr inbounds i64, i64* %envptr734734, i64 1              ; &envptr734734[1]
  %egW$tail = load i64, i64* %envptr734735, align 8                                  ; load; *envptr734735
  %arg732560 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr734736 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734738 = getelementptr inbounds i64, i64* %cloptr734736, i64 1                ; &eptr734738[1]
  %eptr734739 = getelementptr inbounds i64, i64* %cloptr734736, i64 2                ; &eptr734739[2]
  %eptr734740 = getelementptr inbounds i64, i64* %cloptr734736, i64 3                ; &eptr734740[3]
  store i64 %egW$tail, i64* %eptr734738                                              ; *eptr734738 = %egW$tail
  store i64 %vxM$f, i64* %eptr734739                                                 ; *eptr734739 = %vxM$f
  store i64 %T96$_37wind_45stack, i64* %eptr734740                                   ; *eptr734740 = %T96$_37wind_45stack
  %eptr734737 = getelementptr inbounds i64, i64* %cloptr734736, i64 0                ; &cloptr734736[0]
  %f734741 = ptrtoint void(i64,i64,i64)* @lam733004 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734741, i64* %eptr734737                                               ; store fptr
  %arg732559 = ptrtoint i64* %cloptr734736 to i64                                    ; closure cast; i64* -> i64
  %zhS$_95731696 = call i64 @prim_vector_45set_33(i64 %vxM$f, i64 %arg732560, i64 %arg732559); call prim_vector_45set_33
  %arg732584 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731817 = call i64 @prim_vector_45ref(i64 %vxM$f, i64 %arg732584)                 ; call prim_vector_45ref
  %cloptr734742 = inttoptr i64 %a731817 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734742)                                       ; assert function application
  %i0ptr734743 = getelementptr inbounds i64, i64* %cloptr734742, i64 0               ; &cloptr734742[0]
  %f734745 = load i64, i64* %i0ptr734743, align 8                                    ; load; *i0ptr734743
  %fptr734744 = inttoptr i64 %f734745 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734744(i64 %a731817, i64 %cont731900, i64 %M7O$new) ; tail call
  ret void
}


define void @lam733004(i64 %env733005, i64 %cont731904, i64 %zpc$l) {
  %envptr734746 = inttoptr i64 %env733005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734747 = getelementptr inbounds i64, i64* %envptr734746, i64 3              ; &envptr734746[3]
  %T96$_37wind_45stack = load i64, i64* %envptr734747, align 8                       ; load; *envptr734747
  %envptr734748 = inttoptr i64 %env733005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734749 = getelementptr inbounds i64, i64* %envptr734748, i64 2              ; &envptr734748[2]
  %vxM$f = load i64, i64* %envptr734749, align 8                                     ; load; *envptr734749
  %envptr734750 = inttoptr i64 %env733005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734751 = getelementptr inbounds i64, i64* %envptr734750, i64 1              ; &envptr734750[1]
  %egW$tail = load i64, i64* %envptr734751, align 8                                  ; load; *envptr734751
  %a731811 = call i64 @prim_eq_63(i64 %zpc$l, i64 %egW$tail)                         ; call prim_eq_63
  %a731812 = call i64 @prim_not(i64 %a731811)                                        ; call prim_not
  %cmp734752 = icmp eq i64 %a731812, 15                                              ; false?
  br i1 %cmp734752, label %else734754, label %then734753                             ; if

then734753:
  %arg732565 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731813 = call i64 @prim_vector_45ref(i64 %vxM$f, i64 %arg732565)                 ; call prim_vector_45ref
  %a731814 = call i64 @prim_cdr(i64 %zpc$l)                                          ; call prim_cdr
  %cloptr734755 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734757 = getelementptr inbounds i64, i64* %cloptr734755, i64 1                ; &eptr734757[1]
  %eptr734758 = getelementptr inbounds i64, i64* %cloptr734755, i64 2                ; &eptr734758[2]
  %eptr734759 = getelementptr inbounds i64, i64* %cloptr734755, i64 3                ; &eptr734759[3]
  store i64 %cont731904, i64* %eptr734757                                            ; *eptr734757 = %cont731904
  store i64 %T96$_37wind_45stack, i64* %eptr734758                                   ; *eptr734758 = %T96$_37wind_45stack
  store i64 %zpc$l, i64* %eptr734759                                                 ; *eptr734759 = %zpc$l
  %eptr734756 = getelementptr inbounds i64, i64* %cloptr734755, i64 0                ; &cloptr734755[0]
  %f734760 = ptrtoint void(i64,i64,i64)* @lam733000 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734760, i64* %eptr734756                                               ; store fptr
  %arg732569 = ptrtoint i64* %cloptr734755 to i64                                    ; closure cast; i64* -> i64
  %cloptr734761 = inttoptr i64 %a731813 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734761)                                       ; assert function application
  %i0ptr734762 = getelementptr inbounds i64, i64* %cloptr734761, i64 0               ; &cloptr734761[0]
  %f734764 = load i64, i64* %i0ptr734762, align 8                                    ; load; *i0ptr734762
  %fptr734763 = inttoptr i64 %f734764 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734763(i64 %a731813, i64 %arg732569, i64 %a731814)  ; tail call
  ret void

else734754:
  %retprim731908 = call i64 @prim_void()                                             ; call prim_void
  %arg732582 = add i64 0, 0                                                          ; quoted ()
  %cloptr734765 = inttoptr i64 %cont731904 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734765)                                       ; assert function application
  %i0ptr734766 = getelementptr inbounds i64, i64* %cloptr734765, i64 0               ; &cloptr734765[0]
  %f734768 = load i64, i64* %i0ptr734766, align 8                                    ; load; *i0ptr734766
  %fptr734767 = inttoptr i64 %f734768 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734767(i64 %cont731904, i64 %arg732582, i64 %retprim731908); tail call
  ret void
}


define void @lam733000(i64 %env733001, i64 %_95731905, i64 %Bqj$_95731697) {
  %envptr734769 = inttoptr i64 %env733001 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734770 = getelementptr inbounds i64, i64* %envptr734769, i64 3              ; &envptr734769[3]
  %zpc$l = load i64, i64* %envptr734770, align 8                                     ; load; *envptr734770
  %envptr734771 = inttoptr i64 %env733001 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734772 = getelementptr inbounds i64, i64* %envptr734771, i64 2              ; &envptr734771[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734772, align 8                       ; load; *envptr734772
  %envptr734773 = inttoptr i64 %env733001 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734774 = getelementptr inbounds i64, i64* %envptr734773, i64 1              ; &envptr734773[1]
  %cont731904 = load i64, i64* %envptr734774, align 8                                ; load; *envptr734774
  %a731815 = call i64 @prim_car(i64 %zpc$l)                                          ; call prim_car
  %a731816 = call i64 @prim_car(i64 %a731815)                                        ; call prim_car
  %cloptr734775 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr734777 = getelementptr inbounds i64, i64* %cloptr734775, i64 1                ; &eptr734777[1]
  %eptr734778 = getelementptr inbounds i64, i64* %cloptr734775, i64 2                ; &eptr734778[2]
  %eptr734779 = getelementptr inbounds i64, i64* %cloptr734775, i64 3                ; &eptr734779[3]
  store i64 %cont731904, i64* %eptr734777                                            ; *eptr734777 = %cont731904
  store i64 %T96$_37wind_45stack, i64* %eptr734778                                   ; *eptr734778 = %T96$_37wind_45stack
  store i64 %zpc$l, i64* %eptr734779                                                 ; *eptr734779 = %zpc$l
  %eptr734776 = getelementptr inbounds i64, i64* %cloptr734775, i64 0                ; &cloptr734775[0]
  %f734780 = ptrtoint void(i64,i64,i64)* @lam732998 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734780, i64* %eptr734776                                               ; store fptr
  %arg732573 = ptrtoint i64* %cloptr734775 to i64                                    ; closure cast; i64* -> i64
  %cloptr734781 = inttoptr i64 %a731816 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734781)                                       ; assert function application
  %i0ptr734782 = getelementptr inbounds i64, i64* %cloptr734781, i64 0               ; &cloptr734781[0]
  %f734784 = load i64, i64* %i0ptr734782, align 8                                    ; load; *i0ptr734782
  %fptr734783 = inttoptr i64 %f734784 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734783(i64 %a731816, i64 %arg732573)                ; tail call
  ret void
}


define void @lam732998(i64 %env732999, i64 %_95731906, i64 %p7D$_95731698) {
  %envptr734785 = inttoptr i64 %env732999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734786 = getelementptr inbounds i64, i64* %envptr734785, i64 3              ; &envptr734785[3]
  %zpc$l = load i64, i64* %envptr734786, align 8                                     ; load; *envptr734786
  %envptr734787 = inttoptr i64 %env732999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734788 = getelementptr inbounds i64, i64* %envptr734787, i64 2              ; &envptr734787[2]
  %T96$_37wind_45stack = load i64, i64* %envptr734788, align 8                       ; load; *envptr734788
  %envptr734789 = inttoptr i64 %env732999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734790 = getelementptr inbounds i64, i64* %envptr734789, i64 1              ; &envptr734789[1]
  %cont731904 = load i64, i64* %envptr734790, align 8                                ; load; *envptr734790
  %arg732576 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim731907 = call i64 @prim_vector_45set_33(i64 %T96$_37wind_45stack, i64 %arg732576, i64 %zpc$l); call prim_vector_45set_33
  %arg732579 = add i64 0, 0                                                          ; quoted ()
  %cloptr734791 = inttoptr i64 %cont731904 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734791)                                       ; assert function application
  %i0ptr734792 = getelementptr inbounds i64, i64* %cloptr734791, i64 0               ; &cloptr734791[0]
  %f734794 = load i64, i64* %i0ptr734792, align 8                                    ; load; *i0ptr734792
  %fptr734793 = inttoptr i64 %f734794 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734793(i64 %cont731904, i64 %arg732579, i64 %retprim731907); tail call
  ret void
}


define void @lam732991(i64 %env732992, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr734795 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734795)                                       ; assert function application
  %i0ptr734796 = getelementptr inbounds i64, i64* %cloptr734795, i64 0               ; &cloptr734795[0]
  %f734798 = load i64, i64* %i0ptr734796, align 8                                    ; load; *i0ptr734796
  %fptr734797 = inttoptr i64 %f734798 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734797(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam732983(i64 %env732984, i64 %cont731933, i64 %gqN$_37foldl) {
  %envptr734799 = inttoptr i64 %env732984 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734800 = getelementptr inbounds i64, i64* %envptr734799, i64 3              ; &envptr734799[3]
  %pAn$_37foldr1 = load i64, i64* %envptr734800, align 8                             ; load; *envptr734800
  %envptr734801 = inttoptr i64 %env732984 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734802 = getelementptr inbounds i64, i64* %envptr734801, i64 2              ; &envptr734801[2]
  %DYb$_37map1 = load i64, i64* %envptr734802, align 8                               ; load; *envptr734802
  %envptr734803 = inttoptr i64 %env732984 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734804 = getelementptr inbounds i64, i64* %envptr734803, i64 1              ; &envptr734803[1]
  %NYG$_37foldr = load i64, i64* %envptr734804, align 8                              ; load; *envptr734804
  %arg732596 = add i64 0, 0                                                          ; quoted ()
  %cloptr734805 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734807 = getelementptr inbounds i64, i64* %cloptr734805, i64 1                ; &eptr734807[1]
  %eptr734808 = getelementptr inbounds i64, i64* %cloptr734805, i64 2                ; &eptr734808[2]
  %eptr734809 = getelementptr inbounds i64, i64* %cloptr734805, i64 3                ; &eptr734809[3]
  %eptr734810 = getelementptr inbounds i64, i64* %cloptr734805, i64 4                ; &eptr734810[4]
  store i64 %NYG$_37foldr, i64* %eptr734807                                          ; *eptr734807 = %NYG$_37foldr
  store i64 %gqN$_37foldl, i64* %eptr734808                                          ; *eptr734808 = %gqN$_37foldl
  store i64 %DYb$_37map1, i64* %eptr734809                                           ; *eptr734809 = %DYb$_37map1
  store i64 %pAn$_37foldr1, i64* %eptr734810                                         ; *eptr734810 = %pAn$_37foldr1
  %eptr734806 = getelementptr inbounds i64, i64* %cloptr734805, i64 0                ; &cloptr734805[0]
  %f734811 = ptrtoint void(i64,i64)* @lam732980 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f734811, i64* %eptr734806                                               ; store fptr
  %arg732595 = ptrtoint i64* %cloptr734805 to i64                                    ; closure cast; i64* -> i64
  %cloptr734812 = inttoptr i64 %cont731933 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734812)                                       ; assert function application
  %i0ptr734813 = getelementptr inbounds i64, i64* %cloptr734812, i64 0               ; &cloptr734812[0]
  %f734815 = load i64, i64* %i0ptr734813, align 8                                    ; load; *i0ptr734813
  %fptr734814 = inttoptr i64 %f734815 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734814(i64 %cont731933, i64 %arg732596, i64 %arg732595); tail call
  ret void
}


define void @lam732980(i64 %env732981, i64 %YQH$args731935) {
  %envptr734816 = inttoptr i64 %env732981 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734817 = getelementptr inbounds i64, i64* %envptr734816, i64 4              ; &envptr734816[4]
  %pAn$_37foldr1 = load i64, i64* %envptr734817, align 8                             ; load; *envptr734817
  %envptr734818 = inttoptr i64 %env732981 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734819 = getelementptr inbounds i64, i64* %envptr734818, i64 3              ; &envptr734818[3]
  %DYb$_37map1 = load i64, i64* %envptr734819, align 8                               ; load; *envptr734819
  %envptr734820 = inttoptr i64 %env732981 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734821 = getelementptr inbounds i64, i64* %envptr734820, i64 2              ; &envptr734820[2]
  %gqN$_37foldl = load i64, i64* %envptr734821, align 8                              ; load; *envptr734821
  %envptr734822 = inttoptr i64 %env732981 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734823 = getelementptr inbounds i64, i64* %envptr734822, i64 1              ; &envptr734822[1]
  %NYG$_37foldr = load i64, i64* %envptr734823, align 8                              ; load; *envptr734823
  %cont731934 = call i64 @prim_car(i64 %YQH$args731935)                              ; call prim_car
  %YQH$args = call i64 @prim_cdr(i64 %YQH$args731935)                                ; call prim_cdr
  %z5v$f = call i64 @prim_car(i64 %YQH$args)                                         ; call prim_car
  %a731739 = call i64 @prim_cdr(i64 %YQH$args)                                       ; call prim_cdr
  %retprim731954 = call i64 @prim_car(i64 %a731739)                                  ; call prim_car
  %cloptr734824 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734826 = getelementptr inbounds i64, i64* %cloptr734824, i64 1                ; &eptr734826[1]
  %eptr734827 = getelementptr inbounds i64, i64* %cloptr734824, i64 2                ; &eptr734827[2]
  %eptr734828 = getelementptr inbounds i64, i64* %cloptr734824, i64 3                ; &eptr734828[3]
  %eptr734829 = getelementptr inbounds i64, i64* %cloptr734824, i64 4                ; &eptr734829[4]
  %eptr734830 = getelementptr inbounds i64, i64* %cloptr734824, i64 5                ; &eptr734830[5]
  %eptr734831 = getelementptr inbounds i64, i64* %cloptr734824, i64 6                ; &eptr734831[6]
  %eptr734832 = getelementptr inbounds i64, i64* %cloptr734824, i64 7                ; &eptr734832[7]
  store i64 %NYG$_37foldr, i64* %eptr734826                                          ; *eptr734826 = %NYG$_37foldr
  store i64 %z5v$f, i64* %eptr734827                                                 ; *eptr734827 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734828                                          ; *eptr734828 = %gqN$_37foldl
  store i64 %DYb$_37map1, i64* %eptr734829                                           ; *eptr734829 = %DYb$_37map1
  store i64 %YQH$args, i64* %eptr734830                                              ; *eptr734830 = %YQH$args
  store i64 %pAn$_37foldr1, i64* %eptr734831                                         ; *eptr734831 = %pAn$_37foldr1
  store i64 %cont731934, i64* %eptr734832                                            ; *eptr734832 = %cont731934
  %eptr734825 = getelementptr inbounds i64, i64* %cloptr734824, i64 0                ; &cloptr734824[0]
  %f734833 = ptrtoint void(i64,i64,i64)* @lam732978 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734833, i64* %eptr734825                                               ; store fptr
  %arg732605 = ptrtoint i64* %cloptr734824 to i64                                    ; closure cast; i64* -> i64
  %arg732604 = add i64 0, 0                                                          ; quoted ()
  %cloptr734834 = inttoptr i64 %arg732605 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734834)                                       ; assert function application
  %i0ptr734835 = getelementptr inbounds i64, i64* %cloptr734834, i64 0               ; &cloptr734834[0]
  %f734837 = load i64, i64* %i0ptr734835, align 8                                    ; load; *i0ptr734835
  %fptr734836 = inttoptr i64 %f734837 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734836(i64 %arg732605, i64 %arg732604, i64 %retprim731954); tail call
  ret void
}


define void @lam732978(i64 %env732979, i64 %_95731936, i64 %wcB$acc) {
  %envptr734838 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734839 = getelementptr inbounds i64, i64* %envptr734838, i64 7              ; &envptr734838[7]
  %cont731934 = load i64, i64* %envptr734839, align 8                                ; load; *envptr734839
  %envptr734840 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734841 = getelementptr inbounds i64, i64* %envptr734840, i64 6              ; &envptr734840[6]
  %pAn$_37foldr1 = load i64, i64* %envptr734841, align 8                             ; load; *envptr734841
  %envptr734842 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734843 = getelementptr inbounds i64, i64* %envptr734842, i64 5              ; &envptr734842[5]
  %YQH$args = load i64, i64* %envptr734843, align 8                                  ; load; *envptr734843
  %envptr734844 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734845 = getelementptr inbounds i64, i64* %envptr734844, i64 4              ; &envptr734844[4]
  %DYb$_37map1 = load i64, i64* %envptr734845, align 8                               ; load; *envptr734845
  %envptr734846 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734847 = getelementptr inbounds i64, i64* %envptr734846, i64 3              ; &envptr734846[3]
  %gqN$_37foldl = load i64, i64* %envptr734847, align 8                              ; load; *envptr734847
  %envptr734848 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734849 = getelementptr inbounds i64, i64* %envptr734848, i64 2              ; &envptr734848[2]
  %z5v$f = load i64, i64* %envptr734849, align 8                                     ; load; *envptr734849
  %envptr734850 = inttoptr i64 %env732979 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734851 = getelementptr inbounds i64, i64* %envptr734850, i64 1              ; &envptr734850[1]
  %NYG$_37foldr = load i64, i64* %envptr734851, align 8                              ; load; *envptr734851
  %a731740 = call i64 @prim_cdr(i64 %YQH$args)                                       ; call prim_cdr
  %retprim731953 = call i64 @prim_cdr(i64 %a731740)                                  ; call prim_cdr
  %cloptr734852 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734854 = getelementptr inbounds i64, i64* %cloptr734852, i64 1                ; &eptr734854[1]
  %eptr734855 = getelementptr inbounds i64, i64* %cloptr734852, i64 2                ; &eptr734855[2]
  %eptr734856 = getelementptr inbounds i64, i64* %cloptr734852, i64 3                ; &eptr734856[3]
  %eptr734857 = getelementptr inbounds i64, i64* %cloptr734852, i64 4                ; &eptr734857[4]
  %eptr734858 = getelementptr inbounds i64, i64* %cloptr734852, i64 5                ; &eptr734858[5]
  %eptr734859 = getelementptr inbounds i64, i64* %cloptr734852, i64 6                ; &eptr734859[6]
  %eptr734860 = getelementptr inbounds i64, i64* %cloptr734852, i64 7                ; &eptr734860[7]
  store i64 %NYG$_37foldr, i64* %eptr734854                                          ; *eptr734854 = %NYG$_37foldr
  store i64 %z5v$f, i64* %eptr734855                                                 ; *eptr734855 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734856                                          ; *eptr734856 = %gqN$_37foldl
  store i64 %DYb$_37map1, i64* %eptr734857                                           ; *eptr734857 = %DYb$_37map1
  store i64 %wcB$acc, i64* %eptr734858                                               ; *eptr734858 = %wcB$acc
  store i64 %pAn$_37foldr1, i64* %eptr734859                                         ; *eptr734859 = %pAn$_37foldr1
  store i64 %cont731934, i64* %eptr734860                                            ; *eptr734860 = %cont731934
  %eptr734853 = getelementptr inbounds i64, i64* %cloptr734852, i64 0                ; &cloptr734852[0]
  %f734861 = ptrtoint void(i64,i64,i64)* @lam732976 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734861, i64* %eptr734853                                               ; store fptr
  %arg732610 = ptrtoint i64* %cloptr734852 to i64                                    ; closure cast; i64* -> i64
  %arg732609 = add i64 0, 0                                                          ; quoted ()
  %cloptr734862 = inttoptr i64 %arg732610 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734862)                                       ; assert function application
  %i0ptr734863 = getelementptr inbounds i64, i64* %cloptr734862, i64 0               ; &cloptr734862[0]
  %f734865 = load i64, i64* %i0ptr734863, align 8                                    ; load; *i0ptr734863
  %fptr734864 = inttoptr i64 %f734865 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734864(i64 %arg732610, i64 %arg732609, i64 %retprim731953); tail call
  ret void
}


define void @lam732976(i64 %env732977, i64 %_95731937, i64 %RWZ$lsts) {
  %envptr734866 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734867 = getelementptr inbounds i64, i64* %envptr734866, i64 7              ; &envptr734866[7]
  %cont731934 = load i64, i64* %envptr734867, align 8                                ; load; *envptr734867
  %envptr734868 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734869 = getelementptr inbounds i64, i64* %envptr734868, i64 6              ; &envptr734868[6]
  %pAn$_37foldr1 = load i64, i64* %envptr734869, align 8                             ; load; *envptr734869
  %envptr734870 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734871 = getelementptr inbounds i64, i64* %envptr734870, i64 5              ; &envptr734870[5]
  %wcB$acc = load i64, i64* %envptr734871, align 8                                   ; load; *envptr734871
  %envptr734872 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734873 = getelementptr inbounds i64, i64* %envptr734872, i64 4              ; &envptr734872[4]
  %DYb$_37map1 = load i64, i64* %envptr734873, align 8                               ; load; *envptr734873
  %envptr734874 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734875 = getelementptr inbounds i64, i64* %envptr734874, i64 3              ; &envptr734874[3]
  %gqN$_37foldl = load i64, i64* %envptr734875, align 8                              ; load; *envptr734875
  %envptr734876 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734877 = getelementptr inbounds i64, i64* %envptr734876, i64 2              ; &envptr734876[2]
  %z5v$f = load i64, i64* %envptr734877, align 8                                     ; load; *envptr734877
  %envptr734878 = inttoptr i64 %env732977 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734879 = getelementptr inbounds i64, i64* %envptr734878, i64 1              ; &envptr734878[1]
  %NYG$_37foldr = load i64, i64* %envptr734879, align 8                              ; load; *envptr734879
  %cloptr734880 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734882 = getelementptr inbounds i64, i64* %cloptr734880, i64 1                ; &eptr734882[1]
  %eptr734883 = getelementptr inbounds i64, i64* %cloptr734880, i64 2                ; &eptr734883[2]
  %eptr734884 = getelementptr inbounds i64, i64* %cloptr734880, i64 3                ; &eptr734884[3]
  %eptr734885 = getelementptr inbounds i64, i64* %cloptr734880, i64 4                ; &eptr734885[4]
  %eptr734886 = getelementptr inbounds i64, i64* %cloptr734880, i64 5                ; &eptr734886[5]
  %eptr734887 = getelementptr inbounds i64, i64* %cloptr734880, i64 6                ; &eptr734887[6]
  %eptr734888 = getelementptr inbounds i64, i64* %cloptr734880, i64 7                ; &eptr734888[7]
  store i64 %NYG$_37foldr, i64* %eptr734882                                          ; *eptr734882 = %NYG$_37foldr
  store i64 %RWZ$lsts, i64* %eptr734883                                              ; *eptr734883 = %RWZ$lsts
  store i64 %z5v$f, i64* %eptr734884                                                 ; *eptr734884 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734885                                          ; *eptr734885 = %gqN$_37foldl
  store i64 %DYb$_37map1, i64* %eptr734886                                           ; *eptr734886 = %DYb$_37map1
  store i64 %wcB$acc, i64* %eptr734887                                               ; *eptr734887 = %wcB$acc
  store i64 %cont731934, i64* %eptr734888                                            ; *eptr734888 = %cont731934
  %eptr734881 = getelementptr inbounds i64, i64* %cloptr734880, i64 0                ; &cloptr734880[0]
  %f734889 = ptrtoint void(i64,i64,i64)* @lam732974 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734889, i64* %eptr734881                                               ; store fptr
  %arg732614 = ptrtoint i64* %cloptr734880 to i64                                    ; closure cast; i64* -> i64
  %cloptr734890 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734891 = getelementptr inbounds i64, i64* %cloptr734890, i64 0                ; &cloptr734890[0]
  %f734892 = ptrtoint void(i64,i64,i64,i64)* @lam732953 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f734892, i64* %eptr734891                                               ; store fptr
  %arg732613 = ptrtoint i64* %cloptr734890 to i64                                    ; closure cast; i64* -> i64
  %arg732612 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr734893 = inttoptr i64 %pAn$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734893)                                       ; assert function application
  %i0ptr734894 = getelementptr inbounds i64, i64* %cloptr734893, i64 0               ; &cloptr734893[0]
  %f734896 = load i64, i64* %i0ptr734894, align 8                                    ; load; *i0ptr734894
  %fptr734895 = inttoptr i64 %f734896 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734895(i64 %pAn$_37foldr1, i64 %arg732614, i64 %arg732613, i64 %arg732612, i64 %RWZ$lsts); tail call
  ret void
}


define void @lam732974(i64 %env732975, i64 %_95731938, i64 %a731741) {
  %envptr734897 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734898 = getelementptr inbounds i64, i64* %envptr734897, i64 7              ; &envptr734897[7]
  %cont731934 = load i64, i64* %envptr734898, align 8                                ; load; *envptr734898
  %envptr734899 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734900 = getelementptr inbounds i64, i64* %envptr734899, i64 6              ; &envptr734899[6]
  %wcB$acc = load i64, i64* %envptr734900, align 8                                   ; load; *envptr734900
  %envptr734901 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734902 = getelementptr inbounds i64, i64* %envptr734901, i64 5              ; &envptr734901[5]
  %DYb$_37map1 = load i64, i64* %envptr734902, align 8                               ; load; *envptr734902
  %envptr734903 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734904 = getelementptr inbounds i64, i64* %envptr734903, i64 4              ; &envptr734903[4]
  %gqN$_37foldl = load i64, i64* %envptr734904, align 8                              ; load; *envptr734904
  %envptr734905 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734906 = getelementptr inbounds i64, i64* %envptr734905, i64 3              ; &envptr734905[3]
  %z5v$f = load i64, i64* %envptr734906, align 8                                     ; load; *envptr734906
  %envptr734907 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734908 = getelementptr inbounds i64, i64* %envptr734907, i64 2              ; &envptr734907[2]
  %RWZ$lsts = load i64, i64* %envptr734908, align 8                                  ; load; *envptr734908
  %envptr734909 = inttoptr i64 %env732975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734910 = getelementptr inbounds i64, i64* %envptr734909, i64 1              ; &envptr734909[1]
  %NYG$_37foldr = load i64, i64* %envptr734910, align 8                              ; load; *envptr734910
  %cmp734911 = icmp eq i64 %a731741, 15                                              ; false?
  br i1 %cmp734911, label %else734913, label %then734912                             ; if

then734912:
  %arg732617 = add i64 0, 0                                                          ; quoted ()
  %cloptr734914 = inttoptr i64 %cont731934 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734914)                                       ; assert function application
  %i0ptr734915 = getelementptr inbounds i64, i64* %cloptr734914, i64 0               ; &cloptr734914[0]
  %f734917 = load i64, i64* %i0ptr734915, align 8                                    ; load; *i0ptr734915
  %fptr734916 = inttoptr i64 %f734917 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734916(i64 %cont731934, i64 %arg732617, i64 %wcB$acc); tail call
  ret void

else734913:
  %cloptr734918 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr734920 = getelementptr inbounds i64, i64* %cloptr734918, i64 1                ; &eptr734920[1]
  %eptr734921 = getelementptr inbounds i64, i64* %cloptr734918, i64 2                ; &eptr734921[2]
  %eptr734922 = getelementptr inbounds i64, i64* %cloptr734918, i64 3                ; &eptr734922[3]
  %eptr734923 = getelementptr inbounds i64, i64* %cloptr734918, i64 4                ; &eptr734923[4]
  %eptr734924 = getelementptr inbounds i64, i64* %cloptr734918, i64 5                ; &eptr734924[5]
  %eptr734925 = getelementptr inbounds i64, i64* %cloptr734918, i64 6                ; &eptr734925[6]
  %eptr734926 = getelementptr inbounds i64, i64* %cloptr734918, i64 7                ; &eptr734926[7]
  store i64 %NYG$_37foldr, i64* %eptr734920                                          ; *eptr734920 = %NYG$_37foldr
  store i64 %RWZ$lsts, i64* %eptr734921                                              ; *eptr734921 = %RWZ$lsts
  store i64 %z5v$f, i64* %eptr734922                                                 ; *eptr734922 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734923                                          ; *eptr734923 = %gqN$_37foldl
  store i64 %DYb$_37map1, i64* %eptr734924                                           ; *eptr734924 = %DYb$_37map1
  store i64 %wcB$acc, i64* %eptr734925                                               ; *eptr734925 = %wcB$acc
  store i64 %cont731934, i64* %eptr734926                                            ; *eptr734926 = %cont731934
  %eptr734919 = getelementptr inbounds i64, i64* %cloptr734918, i64 0                ; &cloptr734918[0]
  %f734927 = ptrtoint void(i64,i64,i64)* @lam732972 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734927, i64* %eptr734919                                               ; store fptr
  %arg732621 = ptrtoint i64* %cloptr734918 to i64                                    ; closure cast; i64* -> i64
  %cloptr734928 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734929 = getelementptr inbounds i64, i64* %cloptr734928, i64 0                ; &cloptr734928[0]
  %f734930 = ptrtoint void(i64,i64,i64)* @lam732957 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734930, i64* %eptr734929                                               ; store fptr
  %arg732620 = ptrtoint i64* %cloptr734928 to i64                                    ; closure cast; i64* -> i64
  %cloptr734931 = inttoptr i64 %DYb$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734931)                                       ; assert function application
  %i0ptr734932 = getelementptr inbounds i64, i64* %cloptr734931, i64 0               ; &cloptr734931[0]
  %f734934 = load i64, i64* %i0ptr734932, align 8                                    ; load; *i0ptr734932
  %fptr734933 = inttoptr i64 %f734934 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734933(i64 %DYb$_37map1, i64 %arg732621, i64 %arg732620, i64 %RWZ$lsts); tail call
  ret void
}


define void @lam732972(i64 %env732973, i64 %_95731939, i64 %Rn7$lsts_43) {
  %envptr734935 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734936 = getelementptr inbounds i64, i64* %envptr734935, i64 7              ; &envptr734935[7]
  %cont731934 = load i64, i64* %envptr734936, align 8                                ; load; *envptr734936
  %envptr734937 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734938 = getelementptr inbounds i64, i64* %envptr734937, i64 6              ; &envptr734937[6]
  %wcB$acc = load i64, i64* %envptr734938, align 8                                   ; load; *envptr734938
  %envptr734939 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734940 = getelementptr inbounds i64, i64* %envptr734939, i64 5              ; &envptr734939[5]
  %DYb$_37map1 = load i64, i64* %envptr734940, align 8                               ; load; *envptr734940
  %envptr734941 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734942 = getelementptr inbounds i64, i64* %envptr734941, i64 4              ; &envptr734941[4]
  %gqN$_37foldl = load i64, i64* %envptr734942, align 8                              ; load; *envptr734942
  %envptr734943 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734944 = getelementptr inbounds i64, i64* %envptr734943, i64 3              ; &envptr734943[3]
  %z5v$f = load i64, i64* %envptr734944, align 8                                     ; load; *envptr734944
  %envptr734945 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734946 = getelementptr inbounds i64, i64* %envptr734945, i64 2              ; &envptr734945[2]
  %RWZ$lsts = load i64, i64* %envptr734946, align 8                                  ; load; *envptr734946
  %envptr734947 = inttoptr i64 %env732973 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734948 = getelementptr inbounds i64, i64* %envptr734947, i64 1              ; &envptr734947[1]
  %NYG$_37foldr = load i64, i64* %envptr734948, align 8                              ; load; *envptr734948
  %cloptr734949 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr734951 = getelementptr inbounds i64, i64* %cloptr734949, i64 1                ; &eptr734951[1]
  %eptr734952 = getelementptr inbounds i64, i64* %cloptr734949, i64 2                ; &eptr734952[2]
  %eptr734953 = getelementptr inbounds i64, i64* %cloptr734949, i64 3                ; &eptr734953[3]
  %eptr734954 = getelementptr inbounds i64, i64* %cloptr734949, i64 4                ; &eptr734954[4]
  %eptr734955 = getelementptr inbounds i64, i64* %cloptr734949, i64 5                ; &eptr734955[5]
  %eptr734956 = getelementptr inbounds i64, i64* %cloptr734949, i64 6                ; &eptr734956[6]
  store i64 %NYG$_37foldr, i64* %eptr734951                                          ; *eptr734951 = %NYG$_37foldr
  store i64 %z5v$f, i64* %eptr734952                                                 ; *eptr734952 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734953                                          ; *eptr734953 = %gqN$_37foldl
  store i64 %wcB$acc, i64* %eptr734954                                               ; *eptr734954 = %wcB$acc
  store i64 %Rn7$lsts_43, i64* %eptr734955                                           ; *eptr734955 = %Rn7$lsts_43
  store i64 %cont731934, i64* %eptr734956                                            ; *eptr734956 = %cont731934
  %eptr734950 = getelementptr inbounds i64, i64* %cloptr734949, i64 0                ; &cloptr734949[0]
  %f734957 = ptrtoint void(i64,i64,i64)* @lam732970 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734957, i64* %eptr734950                                               ; store fptr
  %arg732625 = ptrtoint i64* %cloptr734949 to i64                                    ; closure cast; i64* -> i64
  %cloptr734958 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734959 = getelementptr inbounds i64, i64* %cloptr734958, i64 0                ; &cloptr734958[0]
  %f734960 = ptrtoint void(i64,i64,i64)* @lam732960 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734960, i64* %eptr734959                                               ; store fptr
  %arg732624 = ptrtoint i64* %cloptr734958 to i64                                    ; closure cast; i64* -> i64
  %cloptr734961 = inttoptr i64 %DYb$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734961)                                       ; assert function application
  %i0ptr734962 = getelementptr inbounds i64, i64* %cloptr734961, i64 0               ; &cloptr734961[0]
  %f734964 = load i64, i64* %i0ptr734962, align 8                                    ; load; *i0ptr734962
  %fptr734963 = inttoptr i64 %f734964 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734963(i64 %DYb$_37map1, i64 %arg732625, i64 %arg732624, i64 %RWZ$lsts); tail call
  ret void
}


define void @lam732970(i64 %env732971, i64 %_95731940, i64 %qNi$vs) {
  %envptr734965 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734966 = getelementptr inbounds i64, i64* %envptr734965, i64 6              ; &envptr734965[6]
  %cont731934 = load i64, i64* %envptr734966, align 8                                ; load; *envptr734966
  %envptr734967 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734968 = getelementptr inbounds i64, i64* %envptr734967, i64 5              ; &envptr734967[5]
  %Rn7$lsts_43 = load i64, i64* %envptr734968, align 8                               ; load; *envptr734968
  %envptr734969 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734970 = getelementptr inbounds i64, i64* %envptr734969, i64 4              ; &envptr734969[4]
  %wcB$acc = load i64, i64* %envptr734970, align 8                                   ; load; *envptr734970
  %envptr734971 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734972 = getelementptr inbounds i64, i64* %envptr734971, i64 3              ; &envptr734971[3]
  %gqN$_37foldl = load i64, i64* %envptr734972, align 8                              ; load; *envptr734972
  %envptr734973 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734974 = getelementptr inbounds i64, i64* %envptr734973, i64 2              ; &envptr734973[2]
  %z5v$f = load i64, i64* %envptr734974, align 8                                     ; load; *envptr734974
  %envptr734975 = inttoptr i64 %env732971 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734976 = getelementptr inbounds i64, i64* %envptr734975, i64 1              ; &envptr734975[1]
  %NYG$_37foldr = load i64, i64* %envptr734976, align 8                              ; load; *envptr734976
  %arg732627 = add i64 0, 0                                                          ; quoted ()
  %a731742 = call i64 @prim_cons(i64 %wcB$acc, i64 %arg732627)                       ; call prim_cons
  %cloptr734977 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr734979 = getelementptr inbounds i64, i64* %cloptr734977, i64 1                ; &eptr734979[1]
  %eptr734980 = getelementptr inbounds i64, i64* %cloptr734977, i64 2                ; &eptr734980[2]
  %eptr734981 = getelementptr inbounds i64, i64* %cloptr734977, i64 3                ; &eptr734981[3]
  %eptr734982 = getelementptr inbounds i64, i64* %cloptr734977, i64 4                ; &eptr734982[4]
  store i64 %z5v$f, i64* %eptr734979                                                 ; *eptr734979 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr734980                                          ; *eptr734980 = %gqN$_37foldl
  store i64 %Rn7$lsts_43, i64* %eptr734981                                           ; *eptr734981 = %Rn7$lsts_43
  store i64 %cont731934, i64* %eptr734982                                            ; *eptr734982 = %cont731934
  %eptr734978 = getelementptr inbounds i64, i64* %cloptr734977, i64 0                ; &cloptr734977[0]
  %f734983 = ptrtoint void(i64,i64,i64)* @lam732967 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f734983, i64* %eptr734978                                               ; store fptr
  %arg732632 = ptrtoint i64* %cloptr734977 to i64                                    ; closure cast; i64* -> i64
  %cloptr734984 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr734985 = getelementptr inbounds i64, i64* %cloptr734984, i64 0                ; &cloptr734984[0]
  %f734986 = ptrtoint void(i64,i64,i64,i64)* @lam732963 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f734986, i64* %eptr734985                                               ; store fptr
  %arg732631 = ptrtoint i64* %cloptr734984 to i64                                    ; closure cast; i64* -> i64
  %cloptr734987 = inttoptr i64 %NYG$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr734987)                                       ; assert function application
  %i0ptr734988 = getelementptr inbounds i64, i64* %cloptr734987, i64 0               ; &cloptr734987[0]
  %f734990 = load i64, i64* %i0ptr734988, align 8                                    ; load; *i0ptr734988
  %fptr734989 = inttoptr i64 %f734990 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr734989(i64 %NYG$_37foldr, i64 %arg732632, i64 %arg732631, i64 %a731742, i64 %qNi$vs); tail call
  ret void
}


define void @lam732967(i64 %env732968, i64 %_95731943, i64 %a731743) {
  %envptr734991 = inttoptr i64 %env732968 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734992 = getelementptr inbounds i64, i64* %envptr734991, i64 4              ; &envptr734991[4]
  %cont731934 = load i64, i64* %envptr734992, align 8                                ; load; *envptr734992
  %envptr734993 = inttoptr i64 %env732968 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734994 = getelementptr inbounds i64, i64* %envptr734993, i64 3              ; &envptr734993[3]
  %Rn7$lsts_43 = load i64, i64* %envptr734994, align 8                               ; load; *envptr734994
  %envptr734995 = inttoptr i64 %env732968 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734996 = getelementptr inbounds i64, i64* %envptr734995, i64 2              ; &envptr734995[2]
  %gqN$_37foldl = load i64, i64* %envptr734996, align 8                              ; load; *envptr734996
  %envptr734997 = inttoptr i64 %env732968 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr734998 = getelementptr inbounds i64, i64* %envptr734997, i64 1              ; &envptr734997[1]
  %z5v$f = load i64, i64* %envptr734998, align 8                                     ; load; *envptr734998
  %cloptr734999 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr735001 = getelementptr inbounds i64, i64* %cloptr734999, i64 1                ; &eptr735001[1]
  %eptr735002 = getelementptr inbounds i64, i64* %cloptr734999, i64 2                ; &eptr735002[2]
  %eptr735003 = getelementptr inbounds i64, i64* %cloptr734999, i64 3                ; &eptr735003[3]
  %eptr735004 = getelementptr inbounds i64, i64* %cloptr734999, i64 4                ; &eptr735004[4]
  store i64 %z5v$f, i64* %eptr735001                                                 ; *eptr735001 = %z5v$f
  store i64 %gqN$_37foldl, i64* %eptr735002                                          ; *eptr735002 = %gqN$_37foldl
  store i64 %Rn7$lsts_43, i64* %eptr735003                                           ; *eptr735003 = %Rn7$lsts_43
  store i64 %cont731934, i64* %eptr735004                                            ; *eptr735004 = %cont731934
  %eptr735000 = getelementptr inbounds i64, i64* %cloptr734999, i64 0                ; &cloptr734999[0]
  %f735005 = ptrtoint void(i64,i64,i64)* @lam732965 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735005, i64* %eptr735000                                               ; store fptr
  %arg732635 = ptrtoint i64* %cloptr734999 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst731944 = call i64 @prim_cons(i64 %arg732635, i64 %a731743)               ; call prim_cons
  %cloptr735006 = inttoptr i64 %z5v$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735006)                                       ; assert function application
  %i0ptr735007 = getelementptr inbounds i64, i64* %cloptr735006, i64 0               ; &cloptr735006[0]
  %f735009 = load i64, i64* %i0ptr735007, align 8                                    ; load; *i0ptr735007
  %fptr735008 = inttoptr i64 %f735009 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735008(i64 %z5v$f, i64 %cps_45lst731944)            ; tail call
  ret void
}


define void @lam732965(i64 %env732966, i64 %_95731941, i64 %ZKf$acc_43) {
  %envptr735010 = inttoptr i64 %env732966 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735011 = getelementptr inbounds i64, i64* %envptr735010, i64 4              ; &envptr735010[4]
  %cont731934 = load i64, i64* %envptr735011, align 8                                ; load; *envptr735011
  %envptr735012 = inttoptr i64 %env732966 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735013 = getelementptr inbounds i64, i64* %envptr735012, i64 3              ; &envptr735012[3]
  %Rn7$lsts_43 = load i64, i64* %envptr735013, align 8                               ; load; *envptr735013
  %envptr735014 = inttoptr i64 %env732966 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735015 = getelementptr inbounds i64, i64* %envptr735014, i64 2              ; &envptr735014[2]
  %gqN$_37foldl = load i64, i64* %envptr735015, align 8                              ; load; *envptr735015
  %envptr735016 = inttoptr i64 %env732966 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735017 = getelementptr inbounds i64, i64* %envptr735016, i64 1              ; &envptr735016[1]
  %z5v$f = load i64, i64* %envptr735017, align 8                                     ; load; *envptr735017
  %a731744 = call i64 @prim_cons(i64 %ZKf$acc_43, i64 %Rn7$lsts_43)                  ; call prim_cons
  %a731745 = call i64 @prim_cons(i64 %z5v$f, i64 %a731744)                           ; call prim_cons
  %cps_45lst731942 = call i64 @prim_cons(i64 %cont731934, i64 %a731745)              ; call prim_cons
  %cloptr735018 = inttoptr i64 %gqN$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735018)                                       ; assert function application
  %i0ptr735019 = getelementptr inbounds i64, i64* %cloptr735018, i64 0               ; &cloptr735018[0]
  %f735021 = load i64, i64* %i0ptr735019, align 8                                    ; load; *i0ptr735019
  %fptr735020 = inttoptr i64 %f735021 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735020(i64 %gqN$_37foldl, i64 %cps_45lst731942)     ; tail call
  ret void
}


define void @lam732963(i64 %env732964, i64 %cont731945, i64 %D4V$a, i64 %Jv7$b) {
  %retprim731946 = call i64 @prim_cons(i64 %D4V$a, i64 %Jv7$b)                       ; call prim_cons
  %arg732645 = add i64 0, 0                                                          ; quoted ()
  %cloptr735022 = inttoptr i64 %cont731945 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735022)                                       ; assert function application
  %i0ptr735023 = getelementptr inbounds i64, i64* %cloptr735022, i64 0               ; &cloptr735022[0]
  %f735025 = load i64, i64* %i0ptr735023, align 8                                    ; load; *i0ptr735023
  %fptr735024 = inttoptr i64 %f735025 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735024(i64 %cont731945, i64 %arg732645, i64 %retprim731946); tail call
  ret void
}


define void @lam732960(i64 %env732961, i64 %cont731947, i64 %jG5$x) {
  %retprim731948 = call i64 @prim_car(i64 %jG5$x)                                    ; call prim_car
  %arg732649 = add i64 0, 0                                                          ; quoted ()
  %cloptr735026 = inttoptr i64 %cont731947 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735026)                                       ; assert function application
  %i0ptr735027 = getelementptr inbounds i64, i64* %cloptr735026, i64 0               ; &cloptr735026[0]
  %f735029 = load i64, i64* %i0ptr735027, align 8                                    ; load; *i0ptr735027
  %fptr735028 = inttoptr i64 %f735029 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735028(i64 %cont731947, i64 %arg732649, i64 %retprim731948); tail call
  ret void
}


define void @lam732957(i64 %env732958, i64 %cont731949, i64 %hta$x) {
  %retprim731950 = call i64 @prim_cdr(i64 %hta$x)                                    ; call prim_cdr
  %arg732653 = add i64 0, 0                                                          ; quoted ()
  %cloptr735030 = inttoptr i64 %cont731949 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735030)                                       ; assert function application
  %i0ptr735031 = getelementptr inbounds i64, i64* %cloptr735030, i64 0               ; &cloptr735030[0]
  %f735033 = load i64, i64* %i0ptr735031, align 8                                    ; load; *i0ptr735031
  %fptr735032 = inttoptr i64 %f735033 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735032(i64 %cont731949, i64 %arg732653, i64 %retprim731950); tail call
  ret void
}


define void @lam732953(i64 %env732954, i64 %cont731951, i64 %rob$lst, i64 %WE7$b) {
  %cmp735034 = icmp eq i64 %WE7$b, 15                                                ; false?
  br i1 %cmp735034, label %else735036, label %then735035                             ; if

then735035:
  %arg732656 = add i64 0, 0                                                          ; quoted ()
  %cloptr735037 = inttoptr i64 %cont731951 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735037)                                       ; assert function application
  %i0ptr735038 = getelementptr inbounds i64, i64* %cloptr735037, i64 0               ; &cloptr735037[0]
  %f735040 = load i64, i64* %i0ptr735038, align 8                                    ; load; *i0ptr735038
  %fptr735039 = inttoptr i64 %f735040 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735039(i64 %cont731951, i64 %arg732656, i64 %WE7$b) ; tail call
  ret void

else735036:
  %retprim731952 = call i64 @prim_null_63(i64 %rob$lst)                              ; call prim_null_63
  %arg732660 = add i64 0, 0                                                          ; quoted ()
  %cloptr735041 = inttoptr i64 %cont731951 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735041)                                       ; assert function application
  %i0ptr735042 = getelementptr inbounds i64, i64* %cloptr735041, i64 0               ; &cloptr735041[0]
  %f735044 = load i64, i64* %i0ptr735042, align 8                                    ; load; *i0ptr735042
  %fptr735043 = inttoptr i64 %f735044 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735043(i64 %cont731951, i64 %arg732660, i64 %retprim731952); tail call
  ret void
}


define void @lam732946(i64 %env732947, i64 %cont731955, i64 %Yvg$_37foldr) {
  %envptr735045 = inttoptr i64 %env732947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735046 = getelementptr inbounds i64, i64* %envptr735045, i64 2              ; &envptr735045[2]
  %pAn$_37foldr1 = load i64, i64* %envptr735046, align 8                             ; load; *envptr735046
  %envptr735047 = inttoptr i64 %env732947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735048 = getelementptr inbounds i64, i64* %envptr735047, i64 1              ; &envptr735047[1]
  %fH6$_37map1 = load i64, i64* %envptr735048, align 8                               ; load; *envptr735048
  %arg732663 = add i64 0, 0                                                          ; quoted ()
  %cloptr735049 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr735051 = getelementptr inbounds i64, i64* %cloptr735049, i64 1                ; &eptr735051[1]
  %eptr735052 = getelementptr inbounds i64, i64* %cloptr735049, i64 2                ; &eptr735052[2]
  %eptr735053 = getelementptr inbounds i64, i64* %cloptr735049, i64 3                ; &eptr735053[3]
  store i64 %fH6$_37map1, i64* %eptr735051                                           ; *eptr735051 = %fH6$_37map1
  store i64 %Yvg$_37foldr, i64* %eptr735052                                          ; *eptr735052 = %Yvg$_37foldr
  store i64 %pAn$_37foldr1, i64* %eptr735053                                         ; *eptr735053 = %pAn$_37foldr1
  %eptr735050 = getelementptr inbounds i64, i64* %cloptr735049, i64 0                ; &cloptr735049[0]
  %f735054 = ptrtoint void(i64,i64)* @lam732943 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f735054, i64* %eptr735050                                               ; store fptr
  %arg732662 = ptrtoint i64* %cloptr735049 to i64                                    ; closure cast; i64* -> i64
  %cloptr735055 = inttoptr i64 %cont731955 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735055)                                       ; assert function application
  %i0ptr735056 = getelementptr inbounds i64, i64* %cloptr735055, i64 0               ; &cloptr735055[0]
  %f735058 = load i64, i64* %i0ptr735056, align 8                                    ; load; *i0ptr735056
  %fptr735057 = inttoptr i64 %f735058 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735057(i64 %cont731955, i64 %arg732663, i64 %arg732662); tail call
  ret void
}


define void @lam732943(i64 %env732944, i64 %k7P$args731957) {
  %envptr735059 = inttoptr i64 %env732944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735060 = getelementptr inbounds i64, i64* %envptr735059, i64 3              ; &envptr735059[3]
  %pAn$_37foldr1 = load i64, i64* %envptr735060, align 8                             ; load; *envptr735060
  %envptr735061 = inttoptr i64 %env732944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735062 = getelementptr inbounds i64, i64* %envptr735061, i64 2              ; &envptr735061[2]
  %Yvg$_37foldr = load i64, i64* %envptr735062, align 8                              ; load; *envptr735062
  %envptr735063 = inttoptr i64 %env732944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735064 = getelementptr inbounds i64, i64* %envptr735063, i64 1              ; &envptr735063[1]
  %fH6$_37map1 = load i64, i64* %envptr735064, align 8                               ; load; *envptr735064
  %cont731956 = call i64 @prim_car(i64 %k7P$args731957)                              ; call prim_car
  %k7P$args = call i64 @prim_cdr(i64 %k7P$args731957)                                ; call prim_cdr
  %VLx$f = call i64 @prim_car(i64 %k7P$args)                                         ; call prim_car
  %a731725 = call i64 @prim_cdr(i64 %k7P$args)                                       ; call prim_cdr
  %retprim731976 = call i64 @prim_car(i64 %a731725)                                  ; call prim_car
  %cloptr735065 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr735067 = getelementptr inbounds i64, i64* %cloptr735065, i64 1                ; &eptr735067[1]
  %eptr735068 = getelementptr inbounds i64, i64* %cloptr735065, i64 2                ; &eptr735068[2]
  %eptr735069 = getelementptr inbounds i64, i64* %cloptr735065, i64 3                ; &eptr735069[3]
  %eptr735070 = getelementptr inbounds i64, i64* %cloptr735065, i64 4                ; &eptr735070[4]
  %eptr735071 = getelementptr inbounds i64, i64* %cloptr735065, i64 5                ; &eptr735071[5]
  %eptr735072 = getelementptr inbounds i64, i64* %cloptr735065, i64 6                ; &eptr735072[6]
  store i64 %fH6$_37map1, i64* %eptr735067                                           ; *eptr735067 = %fH6$_37map1
  store i64 %cont731956, i64* %eptr735068                                            ; *eptr735068 = %cont731956
  store i64 %Yvg$_37foldr, i64* %eptr735069                                          ; *eptr735069 = %Yvg$_37foldr
  store i64 %VLx$f, i64* %eptr735070                                                 ; *eptr735070 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735071                                         ; *eptr735071 = %pAn$_37foldr1
  store i64 %k7P$args, i64* %eptr735072                                              ; *eptr735072 = %k7P$args
  %eptr735066 = getelementptr inbounds i64, i64* %cloptr735065, i64 0                ; &cloptr735065[0]
  %f735073 = ptrtoint void(i64,i64,i64)* @lam732941 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735073, i64* %eptr735066                                               ; store fptr
  %arg732672 = ptrtoint i64* %cloptr735065 to i64                                    ; closure cast; i64* -> i64
  %arg732671 = add i64 0, 0                                                          ; quoted ()
  %cloptr735074 = inttoptr i64 %arg732672 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735074)                                       ; assert function application
  %i0ptr735075 = getelementptr inbounds i64, i64* %cloptr735074, i64 0               ; &cloptr735074[0]
  %f735077 = load i64, i64* %i0ptr735075, align 8                                    ; load; *i0ptr735075
  %fptr735076 = inttoptr i64 %f735077 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735076(i64 %arg732672, i64 %arg732671, i64 %retprim731976); tail call
  ret void
}


define void @lam732941(i64 %env732942, i64 %_95731958, i64 %s5b$acc) {
  %envptr735078 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735079 = getelementptr inbounds i64, i64* %envptr735078, i64 6              ; &envptr735078[6]
  %k7P$args = load i64, i64* %envptr735079, align 8                                  ; load; *envptr735079
  %envptr735080 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735081 = getelementptr inbounds i64, i64* %envptr735080, i64 5              ; &envptr735080[5]
  %pAn$_37foldr1 = load i64, i64* %envptr735081, align 8                             ; load; *envptr735081
  %envptr735082 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735083 = getelementptr inbounds i64, i64* %envptr735082, i64 4              ; &envptr735082[4]
  %VLx$f = load i64, i64* %envptr735083, align 8                                     ; load; *envptr735083
  %envptr735084 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735085 = getelementptr inbounds i64, i64* %envptr735084, i64 3              ; &envptr735084[3]
  %Yvg$_37foldr = load i64, i64* %envptr735085, align 8                              ; load; *envptr735085
  %envptr735086 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735087 = getelementptr inbounds i64, i64* %envptr735086, i64 2              ; &envptr735086[2]
  %cont731956 = load i64, i64* %envptr735087, align 8                                ; load; *envptr735087
  %envptr735088 = inttoptr i64 %env732942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735089 = getelementptr inbounds i64, i64* %envptr735088, i64 1              ; &envptr735088[1]
  %fH6$_37map1 = load i64, i64* %envptr735089, align 8                               ; load; *envptr735089
  %a731726 = call i64 @prim_cdr(i64 %k7P$args)                                       ; call prim_cdr
  %retprim731975 = call i64 @prim_cdr(i64 %a731726)                                  ; call prim_cdr
  %cloptr735090 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr735092 = getelementptr inbounds i64, i64* %cloptr735090, i64 1                ; &eptr735092[1]
  %eptr735093 = getelementptr inbounds i64, i64* %cloptr735090, i64 2                ; &eptr735093[2]
  %eptr735094 = getelementptr inbounds i64, i64* %cloptr735090, i64 3                ; &eptr735094[3]
  %eptr735095 = getelementptr inbounds i64, i64* %cloptr735090, i64 4                ; &eptr735095[4]
  %eptr735096 = getelementptr inbounds i64, i64* %cloptr735090, i64 5                ; &eptr735096[5]
  %eptr735097 = getelementptr inbounds i64, i64* %cloptr735090, i64 6                ; &eptr735097[6]
  store i64 %fH6$_37map1, i64* %eptr735092                                           ; *eptr735092 = %fH6$_37map1
  store i64 %cont731956, i64* %eptr735093                                            ; *eptr735093 = %cont731956
  store i64 %Yvg$_37foldr, i64* %eptr735094                                          ; *eptr735094 = %Yvg$_37foldr
  store i64 %VLx$f, i64* %eptr735095                                                 ; *eptr735095 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735096                                         ; *eptr735096 = %pAn$_37foldr1
  store i64 %s5b$acc, i64* %eptr735097                                               ; *eptr735097 = %s5b$acc
  %eptr735091 = getelementptr inbounds i64, i64* %cloptr735090, i64 0                ; &cloptr735090[0]
  %f735098 = ptrtoint void(i64,i64,i64)* @lam732939 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735098, i64* %eptr735091                                               ; store fptr
  %arg732677 = ptrtoint i64* %cloptr735090 to i64                                    ; closure cast; i64* -> i64
  %arg732676 = add i64 0, 0                                                          ; quoted ()
  %cloptr735099 = inttoptr i64 %arg732677 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735099)                                       ; assert function application
  %i0ptr735100 = getelementptr inbounds i64, i64* %cloptr735099, i64 0               ; &cloptr735099[0]
  %f735102 = load i64, i64* %i0ptr735100, align 8                                    ; load; *i0ptr735100
  %fptr735101 = inttoptr i64 %f735102 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735101(i64 %arg732677, i64 %arg732676, i64 %retprim731975); tail call
  ret void
}


define void @lam732939(i64 %env732940, i64 %_95731959, i64 %dXp$lsts) {
  %envptr735103 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735104 = getelementptr inbounds i64, i64* %envptr735103, i64 6              ; &envptr735103[6]
  %s5b$acc = load i64, i64* %envptr735104, align 8                                   ; load; *envptr735104
  %envptr735105 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735106 = getelementptr inbounds i64, i64* %envptr735105, i64 5              ; &envptr735105[5]
  %pAn$_37foldr1 = load i64, i64* %envptr735106, align 8                             ; load; *envptr735106
  %envptr735107 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735108 = getelementptr inbounds i64, i64* %envptr735107, i64 4              ; &envptr735107[4]
  %VLx$f = load i64, i64* %envptr735108, align 8                                     ; load; *envptr735108
  %envptr735109 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735110 = getelementptr inbounds i64, i64* %envptr735109, i64 3              ; &envptr735109[3]
  %Yvg$_37foldr = load i64, i64* %envptr735110, align 8                              ; load; *envptr735110
  %envptr735111 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735112 = getelementptr inbounds i64, i64* %envptr735111, i64 2              ; &envptr735111[2]
  %cont731956 = load i64, i64* %envptr735112, align 8                                ; load; *envptr735112
  %envptr735113 = inttoptr i64 %env732940 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735114 = getelementptr inbounds i64, i64* %envptr735113, i64 1              ; &envptr735113[1]
  %fH6$_37map1 = load i64, i64* %envptr735114, align 8                               ; load; *envptr735114
  %cloptr735115 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr735117 = getelementptr inbounds i64, i64* %cloptr735115, i64 1                ; &eptr735117[1]
  %eptr735118 = getelementptr inbounds i64, i64* %cloptr735115, i64 2                ; &eptr735118[2]
  %eptr735119 = getelementptr inbounds i64, i64* %cloptr735115, i64 3                ; &eptr735119[3]
  %eptr735120 = getelementptr inbounds i64, i64* %cloptr735115, i64 4                ; &eptr735120[4]
  %eptr735121 = getelementptr inbounds i64, i64* %cloptr735115, i64 5                ; &eptr735121[5]
  %eptr735122 = getelementptr inbounds i64, i64* %cloptr735115, i64 6                ; &eptr735122[6]
  %eptr735123 = getelementptr inbounds i64, i64* %cloptr735115, i64 7                ; &eptr735123[7]
  store i64 %fH6$_37map1, i64* %eptr735117                                           ; *eptr735117 = %fH6$_37map1
  store i64 %dXp$lsts, i64* %eptr735118                                              ; *eptr735118 = %dXp$lsts
  store i64 %cont731956, i64* %eptr735119                                            ; *eptr735119 = %cont731956
  store i64 %Yvg$_37foldr, i64* %eptr735120                                          ; *eptr735120 = %Yvg$_37foldr
  store i64 %VLx$f, i64* %eptr735121                                                 ; *eptr735121 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735122                                         ; *eptr735122 = %pAn$_37foldr1
  store i64 %s5b$acc, i64* %eptr735123                                               ; *eptr735123 = %s5b$acc
  %eptr735116 = getelementptr inbounds i64, i64* %cloptr735115, i64 0                ; &cloptr735115[0]
  %f735124 = ptrtoint void(i64,i64,i64)* @lam732937 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735124, i64* %eptr735116                                               ; store fptr
  %arg732681 = ptrtoint i64* %cloptr735115 to i64                                    ; closure cast; i64* -> i64
  %cloptr735125 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr735126 = getelementptr inbounds i64, i64* %cloptr735125, i64 0                ; &cloptr735125[0]
  %f735127 = ptrtoint void(i64,i64,i64,i64)* @lam732916 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f735127, i64* %eptr735126                                               ; store fptr
  %arg732680 = ptrtoint i64* %cloptr735125 to i64                                    ; closure cast; i64* -> i64
  %arg732679 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr735128 = inttoptr i64 %pAn$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735128)                                       ; assert function application
  %i0ptr735129 = getelementptr inbounds i64, i64* %cloptr735128, i64 0               ; &cloptr735128[0]
  %f735131 = load i64, i64* %i0ptr735129, align 8                                    ; load; *i0ptr735129
  %fptr735130 = inttoptr i64 %f735131 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735130(i64 %pAn$_37foldr1, i64 %arg732681, i64 %arg732680, i64 %arg732679, i64 %dXp$lsts); tail call
  ret void
}


define void @lam732937(i64 %env732938, i64 %_95731960, i64 %a731727) {
  %envptr735132 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735133 = getelementptr inbounds i64, i64* %envptr735132, i64 7              ; &envptr735132[7]
  %s5b$acc = load i64, i64* %envptr735133, align 8                                   ; load; *envptr735133
  %envptr735134 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735135 = getelementptr inbounds i64, i64* %envptr735134, i64 6              ; &envptr735134[6]
  %pAn$_37foldr1 = load i64, i64* %envptr735135, align 8                             ; load; *envptr735135
  %envptr735136 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735137 = getelementptr inbounds i64, i64* %envptr735136, i64 5              ; &envptr735136[5]
  %VLx$f = load i64, i64* %envptr735137, align 8                                     ; load; *envptr735137
  %envptr735138 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735139 = getelementptr inbounds i64, i64* %envptr735138, i64 4              ; &envptr735138[4]
  %Yvg$_37foldr = load i64, i64* %envptr735139, align 8                              ; load; *envptr735139
  %envptr735140 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735141 = getelementptr inbounds i64, i64* %envptr735140, i64 3              ; &envptr735140[3]
  %cont731956 = load i64, i64* %envptr735141, align 8                                ; load; *envptr735141
  %envptr735142 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735143 = getelementptr inbounds i64, i64* %envptr735142, i64 2              ; &envptr735142[2]
  %dXp$lsts = load i64, i64* %envptr735143, align 8                                  ; load; *envptr735143
  %envptr735144 = inttoptr i64 %env732938 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735145 = getelementptr inbounds i64, i64* %envptr735144, i64 1              ; &envptr735144[1]
  %fH6$_37map1 = load i64, i64* %envptr735145, align 8                               ; load; *envptr735145
  %cmp735146 = icmp eq i64 %a731727, 15                                              ; false?
  br i1 %cmp735146, label %else735148, label %then735147                             ; if

then735147:
  %arg732684 = add i64 0, 0                                                          ; quoted ()
  %cloptr735149 = inttoptr i64 %cont731956 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735149)                                       ; assert function application
  %i0ptr735150 = getelementptr inbounds i64, i64* %cloptr735149, i64 0               ; &cloptr735149[0]
  %f735152 = load i64, i64* %i0ptr735150, align 8                                    ; load; *i0ptr735150
  %fptr735151 = inttoptr i64 %f735152 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735151(i64 %cont731956, i64 %arg732684, i64 %s5b$acc); tail call
  ret void

else735148:
  %cloptr735153 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr735155 = getelementptr inbounds i64, i64* %cloptr735153, i64 1                ; &eptr735155[1]
  %eptr735156 = getelementptr inbounds i64, i64* %cloptr735153, i64 2                ; &eptr735156[2]
  %eptr735157 = getelementptr inbounds i64, i64* %cloptr735153, i64 3                ; &eptr735157[3]
  %eptr735158 = getelementptr inbounds i64, i64* %cloptr735153, i64 4                ; &eptr735158[4]
  %eptr735159 = getelementptr inbounds i64, i64* %cloptr735153, i64 5                ; &eptr735159[5]
  %eptr735160 = getelementptr inbounds i64, i64* %cloptr735153, i64 6                ; &eptr735160[6]
  %eptr735161 = getelementptr inbounds i64, i64* %cloptr735153, i64 7                ; &eptr735161[7]
  store i64 %fH6$_37map1, i64* %eptr735155                                           ; *eptr735155 = %fH6$_37map1
  store i64 %dXp$lsts, i64* %eptr735156                                              ; *eptr735156 = %dXp$lsts
  store i64 %cont731956, i64* %eptr735157                                            ; *eptr735157 = %cont731956
  store i64 %Yvg$_37foldr, i64* %eptr735158                                          ; *eptr735158 = %Yvg$_37foldr
  store i64 %VLx$f, i64* %eptr735159                                                 ; *eptr735159 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735160                                         ; *eptr735160 = %pAn$_37foldr1
  store i64 %s5b$acc, i64* %eptr735161                                               ; *eptr735161 = %s5b$acc
  %eptr735154 = getelementptr inbounds i64, i64* %cloptr735153, i64 0                ; &cloptr735153[0]
  %f735162 = ptrtoint void(i64,i64,i64)* @lam732935 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735162, i64* %eptr735154                                               ; store fptr
  %arg732688 = ptrtoint i64* %cloptr735153 to i64                                    ; closure cast; i64* -> i64
  %cloptr735163 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr735164 = getelementptr inbounds i64, i64* %cloptr735163, i64 0                ; &cloptr735163[0]
  %f735165 = ptrtoint void(i64,i64,i64)* @lam732920 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735165, i64* %eptr735164                                               ; store fptr
  %arg732687 = ptrtoint i64* %cloptr735163 to i64                                    ; closure cast; i64* -> i64
  %cloptr735166 = inttoptr i64 %fH6$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735166)                                       ; assert function application
  %i0ptr735167 = getelementptr inbounds i64, i64* %cloptr735166, i64 0               ; &cloptr735166[0]
  %f735169 = load i64, i64* %i0ptr735167, align 8                                    ; load; *i0ptr735167
  %fptr735168 = inttoptr i64 %f735169 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735168(i64 %fH6$_37map1, i64 %arg732688, i64 %arg732687, i64 %dXp$lsts); tail call
  ret void
}


define void @lam732935(i64 %env732936, i64 %_95731961, i64 %cOe$lsts_43) {
  %envptr735170 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735171 = getelementptr inbounds i64, i64* %envptr735170, i64 7              ; &envptr735170[7]
  %s5b$acc = load i64, i64* %envptr735171, align 8                                   ; load; *envptr735171
  %envptr735172 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735173 = getelementptr inbounds i64, i64* %envptr735172, i64 6              ; &envptr735172[6]
  %pAn$_37foldr1 = load i64, i64* %envptr735173, align 8                             ; load; *envptr735173
  %envptr735174 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735175 = getelementptr inbounds i64, i64* %envptr735174, i64 5              ; &envptr735174[5]
  %VLx$f = load i64, i64* %envptr735175, align 8                                     ; load; *envptr735175
  %envptr735176 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735177 = getelementptr inbounds i64, i64* %envptr735176, i64 4              ; &envptr735176[4]
  %Yvg$_37foldr = load i64, i64* %envptr735177, align 8                              ; load; *envptr735177
  %envptr735178 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735179 = getelementptr inbounds i64, i64* %envptr735178, i64 3              ; &envptr735178[3]
  %cont731956 = load i64, i64* %envptr735179, align 8                                ; load; *envptr735179
  %envptr735180 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735181 = getelementptr inbounds i64, i64* %envptr735180, i64 2              ; &envptr735180[2]
  %dXp$lsts = load i64, i64* %envptr735181, align 8                                  ; load; *envptr735181
  %envptr735182 = inttoptr i64 %env732936 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735183 = getelementptr inbounds i64, i64* %envptr735182, i64 1              ; &envptr735182[1]
  %fH6$_37map1 = load i64, i64* %envptr735183, align 8                               ; load; *envptr735183
  %cloptr735184 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr735186 = getelementptr inbounds i64, i64* %cloptr735184, i64 1                ; &eptr735186[1]
  %eptr735187 = getelementptr inbounds i64, i64* %cloptr735184, i64 2                ; &eptr735187[2]
  %eptr735188 = getelementptr inbounds i64, i64* %cloptr735184, i64 3                ; &eptr735188[3]
  %eptr735189 = getelementptr inbounds i64, i64* %cloptr735184, i64 4                ; &eptr735189[4]
  %eptr735190 = getelementptr inbounds i64, i64* %cloptr735184, i64 5                ; &eptr735190[5]
  %eptr735191 = getelementptr inbounds i64, i64* %cloptr735184, i64 6                ; &eptr735191[6]
  store i64 %cont731956, i64* %eptr735186                                            ; *eptr735186 = %cont731956
  store i64 %Yvg$_37foldr, i64* %eptr735187                                          ; *eptr735187 = %Yvg$_37foldr
  store i64 %VLx$f, i64* %eptr735188                                                 ; *eptr735188 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735189                                         ; *eptr735189 = %pAn$_37foldr1
  store i64 %cOe$lsts_43, i64* %eptr735190                                           ; *eptr735190 = %cOe$lsts_43
  store i64 %s5b$acc, i64* %eptr735191                                               ; *eptr735191 = %s5b$acc
  %eptr735185 = getelementptr inbounds i64, i64* %cloptr735184, i64 0                ; &cloptr735184[0]
  %f735192 = ptrtoint void(i64,i64,i64)* @lam732933 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735192, i64* %eptr735185                                               ; store fptr
  %arg732692 = ptrtoint i64* %cloptr735184 to i64                                    ; closure cast; i64* -> i64
  %cloptr735193 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr735194 = getelementptr inbounds i64, i64* %cloptr735193, i64 0                ; &cloptr735193[0]
  %f735195 = ptrtoint void(i64,i64,i64)* @lam732923 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735195, i64* %eptr735194                                               ; store fptr
  %arg732691 = ptrtoint i64* %cloptr735193 to i64                                    ; closure cast; i64* -> i64
  %cloptr735196 = inttoptr i64 %fH6$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735196)                                       ; assert function application
  %i0ptr735197 = getelementptr inbounds i64, i64* %cloptr735196, i64 0               ; &cloptr735196[0]
  %f735199 = load i64, i64* %i0ptr735197, align 8                                    ; load; *i0ptr735197
  %fptr735198 = inttoptr i64 %f735199 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735198(i64 %fH6$_37map1, i64 %arg732692, i64 %arg732691, i64 %dXp$lsts); tail call
  ret void
}


define void @lam732933(i64 %env732934, i64 %_95731962, i64 %ixU$vs) {
  %envptr735200 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735201 = getelementptr inbounds i64, i64* %envptr735200, i64 6              ; &envptr735200[6]
  %s5b$acc = load i64, i64* %envptr735201, align 8                                   ; load; *envptr735201
  %envptr735202 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735203 = getelementptr inbounds i64, i64* %envptr735202, i64 5              ; &envptr735202[5]
  %cOe$lsts_43 = load i64, i64* %envptr735203, align 8                               ; load; *envptr735203
  %envptr735204 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735205 = getelementptr inbounds i64, i64* %envptr735204, i64 4              ; &envptr735204[4]
  %pAn$_37foldr1 = load i64, i64* %envptr735205, align 8                             ; load; *envptr735205
  %envptr735206 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735207 = getelementptr inbounds i64, i64* %envptr735206, i64 3              ; &envptr735206[3]
  %VLx$f = load i64, i64* %envptr735207, align 8                                     ; load; *envptr735207
  %envptr735208 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735209 = getelementptr inbounds i64, i64* %envptr735208, i64 2              ; &envptr735208[2]
  %Yvg$_37foldr = load i64, i64* %envptr735209, align 8                              ; load; *envptr735209
  %envptr735210 = inttoptr i64 %env732934 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735211 = getelementptr inbounds i64, i64* %envptr735210, i64 1              ; &envptr735210[1]
  %cont731956 = load i64, i64* %envptr735211, align 8                                ; load; *envptr735211
  %a731728 = call i64 @prim_cons(i64 %s5b$acc, i64 %cOe$lsts_43)                     ; call prim_cons
  %a731729 = call i64 @prim_cons(i64 %VLx$f, i64 %a731728)                           ; call prim_cons
  %cloptr735212 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr735214 = getelementptr inbounds i64, i64* %cloptr735212, i64 1                ; &eptr735214[1]
  %eptr735215 = getelementptr inbounds i64, i64* %cloptr735212, i64 2                ; &eptr735215[2]
  %eptr735216 = getelementptr inbounds i64, i64* %cloptr735212, i64 3                ; &eptr735216[3]
  %eptr735217 = getelementptr inbounds i64, i64* %cloptr735212, i64 4                ; &eptr735217[4]
  store i64 %cont731956, i64* %eptr735214                                            ; *eptr735214 = %cont731956
  store i64 %VLx$f, i64* %eptr735215                                                 ; *eptr735215 = %VLx$f
  store i64 %pAn$_37foldr1, i64* %eptr735216                                         ; *eptr735216 = %pAn$_37foldr1
  store i64 %ixU$vs, i64* %eptr735217                                                ; *eptr735217 = %ixU$vs
  %eptr735213 = getelementptr inbounds i64, i64* %cloptr735212, i64 0                ; &cloptr735212[0]
  %f735218 = ptrtoint void(i64,i64,i64)* @lam732931 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735218, i64* %eptr735213                                               ; store fptr
  %arg732699 = ptrtoint i64* %cloptr735212 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst731968 = call i64 @prim_cons(i64 %arg732699, i64 %a731729)               ; call prim_cons
  %cloptr735219 = inttoptr i64 %Yvg$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735219)                                       ; assert function application
  %i0ptr735220 = getelementptr inbounds i64, i64* %cloptr735219, i64 0               ; &cloptr735219[0]
  %f735222 = load i64, i64* %i0ptr735220, align 8                                    ; load; *i0ptr735220
  %fptr735221 = inttoptr i64 %f735222 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735221(i64 %Yvg$_37foldr, i64 %cps_45lst731968)     ; tail call
  ret void
}


define void @lam732931(i64 %env732932, i64 %_95731963, i64 %a731730) {
  %envptr735223 = inttoptr i64 %env732932 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735224 = getelementptr inbounds i64, i64* %envptr735223, i64 4              ; &envptr735223[4]
  %ixU$vs = load i64, i64* %envptr735224, align 8                                    ; load; *envptr735224
  %envptr735225 = inttoptr i64 %env732932 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735226 = getelementptr inbounds i64, i64* %envptr735225, i64 3              ; &envptr735225[3]
  %pAn$_37foldr1 = load i64, i64* %envptr735226, align 8                             ; load; *envptr735226
  %envptr735227 = inttoptr i64 %env732932 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735228 = getelementptr inbounds i64, i64* %envptr735227, i64 2              ; &envptr735227[2]
  %VLx$f = load i64, i64* %envptr735228, align 8                                     ; load; *envptr735228
  %envptr735229 = inttoptr i64 %env732932 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735230 = getelementptr inbounds i64, i64* %envptr735229, i64 1              ; &envptr735229[1]
  %cont731956 = load i64, i64* %envptr735230, align 8                                ; load; *envptr735230
  %arg732700 = add i64 0, 0                                                          ; quoted ()
  %a731731 = call i64 @prim_cons(i64 %a731730, i64 %arg732700)                       ; call prim_cons
  %cloptr735231 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr735233 = getelementptr inbounds i64, i64* %cloptr735231, i64 1                ; &eptr735233[1]
  %eptr735234 = getelementptr inbounds i64, i64* %cloptr735231, i64 2                ; &eptr735234[2]
  store i64 %cont731956, i64* %eptr735233                                            ; *eptr735233 = %cont731956
  store i64 %VLx$f, i64* %eptr735234                                                 ; *eptr735234 = %VLx$f
  %eptr735232 = getelementptr inbounds i64, i64* %cloptr735231, i64 0                ; &cloptr735231[0]
  %f735235 = ptrtoint void(i64,i64,i64)* @lam732928 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735235, i64* %eptr735232                                               ; store fptr
  %arg732705 = ptrtoint i64* %cloptr735231 to i64                                    ; closure cast; i64* -> i64
  %cloptr735236 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr735237 = getelementptr inbounds i64, i64* %cloptr735236, i64 0                ; &cloptr735236[0]
  %f735238 = ptrtoint void(i64,i64,i64,i64)* @lam732926 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f735238, i64* %eptr735237                                               ; store fptr
  %arg732704 = ptrtoint i64* %cloptr735236 to i64                                    ; closure cast; i64* -> i64
  %cloptr735239 = inttoptr i64 %pAn$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735239)                                       ; assert function application
  %i0ptr735240 = getelementptr inbounds i64, i64* %cloptr735239, i64 0               ; &cloptr735239[0]
  %f735242 = load i64, i64* %i0ptr735240, align 8                                    ; load; *i0ptr735240
  %fptr735241 = inttoptr i64 %f735242 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735241(i64 %pAn$_37foldr1, i64 %arg732705, i64 %arg732704, i64 %a731731, i64 %ixU$vs); tail call
  ret void
}


define void @lam732928(i64 %env732929, i64 %_95731964, i64 %a731732) {
  %envptr735243 = inttoptr i64 %env732929 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735244 = getelementptr inbounds i64, i64* %envptr735243, i64 2              ; &envptr735243[2]
  %VLx$f = load i64, i64* %envptr735244, align 8                                     ; load; *envptr735244
  %envptr735245 = inttoptr i64 %env732929 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735246 = getelementptr inbounds i64, i64* %envptr735245, i64 1              ; &envptr735245[1]
  %cont731956 = load i64, i64* %envptr735246, align 8                                ; load; *envptr735246
  %cps_45lst731965 = call i64 @prim_cons(i64 %cont731956, i64 %a731732)              ; call prim_cons
  %cloptr735247 = inttoptr i64 %VLx$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735247)                                       ; assert function application
  %i0ptr735248 = getelementptr inbounds i64, i64* %cloptr735247, i64 0               ; &cloptr735247[0]
  %f735250 = load i64, i64* %i0ptr735248, align 8                                    ; load; *i0ptr735248
  %fptr735249 = inttoptr i64 %f735250 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735249(i64 %VLx$f, i64 %cps_45lst731965)            ; tail call
  ret void
}


define void @lam732926(i64 %env732927, i64 %cont731966, i64 %CE6$a, i64 %s9N$b) {
  %retprim731967 = call i64 @prim_cons(i64 %CE6$a, i64 %s9N$b)                       ; call prim_cons
  %arg732712 = add i64 0, 0                                                          ; quoted ()
  %cloptr735251 = inttoptr i64 %cont731966 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735251)                                       ; assert function application
  %i0ptr735252 = getelementptr inbounds i64, i64* %cloptr735251, i64 0               ; &cloptr735251[0]
  %f735254 = load i64, i64* %i0ptr735252, align 8                                    ; load; *i0ptr735252
  %fptr735253 = inttoptr i64 %f735254 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735253(i64 %cont731966, i64 %arg732712, i64 %retprim731967); tail call
  ret void
}


define void @lam732923(i64 %env732924, i64 %cont731969, i64 %sUS$x) {
  %retprim731970 = call i64 @prim_car(i64 %sUS$x)                                    ; call prim_car
  %arg732716 = add i64 0, 0                                                          ; quoted ()
  %cloptr735255 = inttoptr i64 %cont731969 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735255)                                       ; assert function application
  %i0ptr735256 = getelementptr inbounds i64, i64* %cloptr735255, i64 0               ; &cloptr735255[0]
  %f735258 = load i64, i64* %i0ptr735256, align 8                                    ; load; *i0ptr735256
  %fptr735257 = inttoptr i64 %f735258 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735257(i64 %cont731969, i64 %arg732716, i64 %retprim731970); tail call
  ret void
}


define void @lam732920(i64 %env732921, i64 %cont731971, i64 %YZg$x) {
  %retprim731972 = call i64 @prim_cdr(i64 %YZg$x)                                    ; call prim_cdr
  %arg732720 = add i64 0, 0                                                          ; quoted ()
  %cloptr735259 = inttoptr i64 %cont731971 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735259)                                       ; assert function application
  %i0ptr735260 = getelementptr inbounds i64, i64* %cloptr735259, i64 0               ; &cloptr735259[0]
  %f735262 = load i64, i64* %i0ptr735260, align 8                                    ; load; *i0ptr735260
  %fptr735261 = inttoptr i64 %f735262 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735261(i64 %cont731971, i64 %arg732720, i64 %retprim731972); tail call
  ret void
}


define void @lam732916(i64 %env732917, i64 %cont731973, i64 %TZz$lst, i64 %FXX$b) {
  %cmp735263 = icmp eq i64 %FXX$b, 15                                                ; false?
  br i1 %cmp735263, label %else735265, label %then735264                             ; if

then735264:
  %arg732723 = add i64 0, 0                                                          ; quoted ()
  %cloptr735266 = inttoptr i64 %cont731973 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735266)                                       ; assert function application
  %i0ptr735267 = getelementptr inbounds i64, i64* %cloptr735266, i64 0               ; &cloptr735266[0]
  %f735269 = load i64, i64* %i0ptr735267, align 8                                    ; load; *i0ptr735267
  %fptr735268 = inttoptr i64 %f735269 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735268(i64 %cont731973, i64 %arg732723, i64 %FXX$b) ; tail call
  ret void

else735265:
  %retprim731974 = call i64 @prim_null_63(i64 %TZz$lst)                              ; call prim_null_63
  %arg732727 = add i64 0, 0                                                          ; quoted ()
  %cloptr735270 = inttoptr i64 %cont731973 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735270)                                       ; assert function application
  %i0ptr735271 = getelementptr inbounds i64, i64* %cloptr735270, i64 0               ; &cloptr735270[0]
  %f735273 = load i64, i64* %i0ptr735271, align 8                                    ; load; *i0ptr735271
  %fptr735272 = inttoptr i64 %f735273 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735272(i64 %cont731973, i64 %arg732727, i64 %retprim731974); tail call
  ret void
}


define void @lam732909(i64 %env732910, i64 %cont731977, i64 %drV$_37foldl1) {
  %arg732730 = add i64 0, 0                                                          ; quoted ()
  %cloptr735274 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735276 = getelementptr inbounds i64, i64* %cloptr735274, i64 1                ; &eptr735276[1]
  store i64 %drV$_37foldl1, i64* %eptr735276                                         ; *eptr735276 = %drV$_37foldl1
  %eptr735275 = getelementptr inbounds i64, i64* %cloptr735274, i64 0                ; &cloptr735274[0]
  %f735277 = ptrtoint void(i64,i64,i64,i64,i64)* @lam732906 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f735277, i64* %eptr735275                                               ; store fptr
  %arg732729 = ptrtoint i64* %cloptr735274 to i64                                    ; closure cast; i64* -> i64
  %cloptr735278 = inttoptr i64 %cont731977 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735278)                                       ; assert function application
  %i0ptr735279 = getelementptr inbounds i64, i64* %cloptr735278, i64 0               ; &cloptr735278[0]
  %f735281 = load i64, i64* %i0ptr735279, align 8                                    ; load; *i0ptr735279
  %fptr735280 = inttoptr i64 %f735281 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735280(i64 %cont731977, i64 %arg732730, i64 %arg732729); tail call
  ret void
}


define void @lam732906(i64 %env732907, i64 %cont731978, i64 %AHg$f, i64 %Abm$acc, i64 %Nbj$lst) {
  %envptr735282 = inttoptr i64 %env732907 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735283 = getelementptr inbounds i64, i64* %envptr735282, i64 1              ; &envptr735282[1]
  %drV$_37foldl1 = load i64, i64* %envptr735283, align 8                             ; load; *envptr735283
  %a731719 = call i64 @prim_null_63(i64 %Nbj$lst)                                    ; call prim_null_63
  %cmp735284 = icmp eq i64 %a731719, 15                                              ; false?
  br i1 %cmp735284, label %else735286, label %then735285                             ; if

then735285:
  %arg732734 = add i64 0, 0                                                          ; quoted ()
  %cloptr735287 = inttoptr i64 %cont731978 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735287)                                       ; assert function application
  %i0ptr735288 = getelementptr inbounds i64, i64* %cloptr735287, i64 0               ; &cloptr735287[0]
  %f735290 = load i64, i64* %i0ptr735288, align 8                                    ; load; *i0ptr735288
  %fptr735289 = inttoptr i64 %f735290 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735289(i64 %cont731978, i64 %arg732734, i64 %Abm$acc); tail call
  ret void

else735286:
  %a731720 = call i64 @prim_car(i64 %Nbj$lst)                                        ; call prim_car
  %cloptr735291 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr735293 = getelementptr inbounds i64, i64* %cloptr735291, i64 1                ; &eptr735293[1]
  %eptr735294 = getelementptr inbounds i64, i64* %cloptr735291, i64 2                ; &eptr735294[2]
  %eptr735295 = getelementptr inbounds i64, i64* %cloptr735291, i64 3                ; &eptr735295[3]
  %eptr735296 = getelementptr inbounds i64, i64* %cloptr735291, i64 4                ; &eptr735296[4]
  store i64 %Nbj$lst, i64* %eptr735293                                               ; *eptr735293 = %Nbj$lst
  store i64 %cont731978, i64* %eptr735294                                            ; *eptr735294 = %cont731978
  store i64 %AHg$f, i64* %eptr735295                                                 ; *eptr735295 = %AHg$f
  store i64 %drV$_37foldl1, i64* %eptr735296                                         ; *eptr735296 = %drV$_37foldl1
  %eptr735292 = getelementptr inbounds i64, i64* %cloptr735291, i64 0                ; &cloptr735291[0]
  %f735297 = ptrtoint void(i64,i64,i64)* @lam732904 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735297, i64* %eptr735292                                               ; store fptr
  %arg732739 = ptrtoint i64* %cloptr735291 to i64                                    ; closure cast; i64* -> i64
  %cloptr735298 = inttoptr i64 %AHg$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735298)                                       ; assert function application
  %i0ptr735299 = getelementptr inbounds i64, i64* %cloptr735298, i64 0               ; &cloptr735298[0]
  %f735301 = load i64, i64* %i0ptr735299, align 8                                    ; load; *i0ptr735299
  %fptr735300 = inttoptr i64 %f735301 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735300(i64 %AHg$f, i64 %arg732739, i64 %a731720, i64 %Abm$acc); tail call
  ret void
}


define void @lam732904(i64 %env732905, i64 %_95731979, i64 %a731721) {
  %envptr735302 = inttoptr i64 %env732905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735303 = getelementptr inbounds i64, i64* %envptr735302, i64 4              ; &envptr735302[4]
  %drV$_37foldl1 = load i64, i64* %envptr735303, align 8                             ; load; *envptr735303
  %envptr735304 = inttoptr i64 %env732905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735305 = getelementptr inbounds i64, i64* %envptr735304, i64 3              ; &envptr735304[3]
  %AHg$f = load i64, i64* %envptr735305, align 8                                     ; load; *envptr735305
  %envptr735306 = inttoptr i64 %env732905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735307 = getelementptr inbounds i64, i64* %envptr735306, i64 2              ; &envptr735306[2]
  %cont731978 = load i64, i64* %envptr735307, align 8                                ; load; *envptr735307
  %envptr735308 = inttoptr i64 %env732905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735309 = getelementptr inbounds i64, i64* %envptr735308, i64 1              ; &envptr735308[1]
  %Nbj$lst = load i64, i64* %envptr735309, align 8                                   ; load; *envptr735309
  %a731722 = call i64 @prim_cdr(i64 %Nbj$lst)                                        ; call prim_cdr
  %cloptr735310 = inttoptr i64 %drV$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735310)                                       ; assert function application
  %i0ptr735311 = getelementptr inbounds i64, i64* %cloptr735310, i64 0               ; &cloptr735310[0]
  %f735313 = load i64, i64* %i0ptr735311, align 8                                    ; load; *i0ptr735311
  %fptr735312 = inttoptr i64 %f735313 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735312(i64 %drV$_37foldl1, i64 %cont731978, i64 %AHg$f, i64 %a731721, i64 %a731722); tail call
  ret void
}


define void @lam732901(i64 %env732902, i64 %cont731980, i64 %Gam$_37length) {
  %arg732748 = add i64 0, 0                                                          ; quoted ()
  %cloptr735314 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735316 = getelementptr inbounds i64, i64* %cloptr735314, i64 1                ; &eptr735316[1]
  store i64 %Gam$_37length, i64* %eptr735316                                         ; *eptr735316 = %Gam$_37length
  %eptr735315 = getelementptr inbounds i64, i64* %cloptr735314, i64 0                ; &cloptr735314[0]
  %f735317 = ptrtoint void(i64,i64,i64)* @lam732898 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735317, i64* %eptr735315                                               ; store fptr
  %arg732747 = ptrtoint i64* %cloptr735314 to i64                                    ; closure cast; i64* -> i64
  %cloptr735318 = inttoptr i64 %cont731980 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735318)                                       ; assert function application
  %i0ptr735319 = getelementptr inbounds i64, i64* %cloptr735318, i64 0               ; &cloptr735318[0]
  %f735321 = load i64, i64* %i0ptr735319, align 8                                    ; load; *i0ptr735319
  %fptr735320 = inttoptr i64 %f735321 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735320(i64 %cont731980, i64 %arg732748, i64 %arg732747); tail call
  ret void
}


define void @lam732898(i64 %env732899, i64 %cont731981, i64 %iGd$lst) {
  %envptr735322 = inttoptr i64 %env732899 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735323 = getelementptr inbounds i64, i64* %envptr735322, i64 1              ; &envptr735322[1]
  %Gam$_37length = load i64, i64* %envptr735323, align 8                             ; load; *envptr735323
  %a731716 = call i64 @prim_null_63(i64 %iGd$lst)                                    ; call prim_null_63
  %cmp735324 = icmp eq i64 %a731716, 15                                              ; false?
  br i1 %cmp735324, label %else735326, label %then735325                             ; if

then735325:
  %arg732752 = add i64 0, 0                                                          ; quoted ()
  %arg732751 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr735327 = inttoptr i64 %cont731981 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735327)                                       ; assert function application
  %i0ptr735328 = getelementptr inbounds i64, i64* %cloptr735327, i64 0               ; &cloptr735327[0]
  %f735330 = load i64, i64* %i0ptr735328, align 8                                    ; load; *i0ptr735328
  %fptr735329 = inttoptr i64 %f735330 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735329(i64 %cont731981, i64 %arg732752, i64 %arg732751); tail call
  ret void

else735326:
  %a731717 = call i64 @prim_cdr(i64 %iGd$lst)                                        ; call prim_cdr
  %cloptr735331 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735333 = getelementptr inbounds i64, i64* %cloptr735331, i64 1                ; &eptr735333[1]
  store i64 %cont731981, i64* %eptr735333                                            ; *eptr735333 = %cont731981
  %eptr735332 = getelementptr inbounds i64, i64* %cloptr735331, i64 0                ; &cloptr735331[0]
  %f735334 = ptrtoint void(i64,i64,i64)* @lam732896 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735334, i64* %eptr735332                                               ; store fptr
  %arg732756 = ptrtoint i64* %cloptr735331 to i64                                    ; closure cast; i64* -> i64
  %cloptr735335 = inttoptr i64 %Gam$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735335)                                       ; assert function application
  %i0ptr735336 = getelementptr inbounds i64, i64* %cloptr735335, i64 0               ; &cloptr735335[0]
  %f735338 = load i64, i64* %i0ptr735336, align 8                                    ; load; *i0ptr735336
  %fptr735337 = inttoptr i64 %f735338 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735337(i64 %Gam$_37length, i64 %arg732756, i64 %a731717); tail call
  ret void
}


define void @lam732896(i64 %env732897, i64 %_95731982, i64 %a731718) {
  %envptr735339 = inttoptr i64 %env732897 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735340 = getelementptr inbounds i64, i64* %envptr735339, i64 1              ; &envptr735339[1]
  %cont731981 = load i64, i64* %envptr735340, align 8                                ; load; *envptr735340
  %arg732759 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim731983 = call i64 @prim__43(i64 %arg732759, i64 %a731718)                  ; call prim__43
  %arg732761 = add i64 0, 0                                                          ; quoted ()
  %cloptr735341 = inttoptr i64 %cont731981 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735341)                                       ; assert function application
  %i0ptr735342 = getelementptr inbounds i64, i64* %cloptr735341, i64 0               ; &cloptr735341[0]
  %f735344 = load i64, i64* %i0ptr735342, align 8                                    ; load; *i0ptr735342
  %fptr735343 = inttoptr i64 %f735344 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735343(i64 %cont731981, i64 %arg732761, i64 %retprim731983); tail call
  ret void
}


define void @lam732890(i64 %env732891, i64 %cont731984, i64 %oVh$_37take) {
  %arg732764 = add i64 0, 0                                                          ; quoted ()
  %cloptr735345 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735347 = getelementptr inbounds i64, i64* %cloptr735345, i64 1                ; &eptr735347[1]
  store i64 %oVh$_37take, i64* %eptr735347                                           ; *eptr735347 = %oVh$_37take
  %eptr735346 = getelementptr inbounds i64, i64* %cloptr735345, i64 0                ; &cloptr735345[0]
  %f735348 = ptrtoint void(i64,i64,i64,i64)* @lam732887 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f735348, i64* %eptr735346                                               ; store fptr
  %arg732763 = ptrtoint i64* %cloptr735345 to i64                                    ; closure cast; i64* -> i64
  %cloptr735349 = inttoptr i64 %cont731984 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735349)                                       ; assert function application
  %i0ptr735350 = getelementptr inbounds i64, i64* %cloptr735349, i64 0               ; &cloptr735349[0]
  %f735352 = load i64, i64* %i0ptr735350, align 8                                    ; load; *i0ptr735350
  %fptr735351 = inttoptr i64 %f735352 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735351(i64 %cont731984, i64 %arg732764, i64 %arg732763); tail call
  ret void
}


define void @lam732887(i64 %env732888, i64 %cont731985, i64 %Kyk$lst, i64 %Juu$n) {
  %envptr735353 = inttoptr i64 %env732888 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735354 = getelementptr inbounds i64, i64* %envptr735353, i64 1              ; &envptr735353[1]
  %oVh$_37take = load i64, i64* %envptr735354, align 8                               ; load; *envptr735354
  %arg732766 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a731710 = call i64 @prim__61(i64 %Juu$n, i64 %arg732766)                          ; call prim__61
  %cmp735355 = icmp eq i64 %a731710, 15                                              ; false?
  br i1 %cmp735355, label %else735357, label %then735356                             ; if

then735356:
  %arg732769 = add i64 0, 0                                                          ; quoted ()
  %arg732768 = add i64 0, 0                                                          ; quoted ()
  %cloptr735358 = inttoptr i64 %cont731985 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735358)                                       ; assert function application
  %i0ptr735359 = getelementptr inbounds i64, i64* %cloptr735358, i64 0               ; &cloptr735358[0]
  %f735361 = load i64, i64* %i0ptr735359, align 8                                    ; load; *i0ptr735359
  %fptr735360 = inttoptr i64 %f735361 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735360(i64 %cont731985, i64 %arg732769, i64 %arg732768); tail call
  ret void

else735357:
  %a731711 = call i64 @prim_null_63(i64 %Kyk$lst)                                    ; call prim_null_63
  %cmp735362 = icmp eq i64 %a731711, 15                                              ; false?
  br i1 %cmp735362, label %else735364, label %then735363                             ; if

then735363:
  %arg732773 = add i64 0, 0                                                          ; quoted ()
  %arg732772 = add i64 0, 0                                                          ; quoted ()
  %cloptr735365 = inttoptr i64 %cont731985 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735365)                                       ; assert function application
  %i0ptr735366 = getelementptr inbounds i64, i64* %cloptr735365, i64 0               ; &cloptr735365[0]
  %f735368 = load i64, i64* %i0ptr735366, align 8                                    ; load; *i0ptr735366
  %fptr735367 = inttoptr i64 %f735368 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735367(i64 %cont731985, i64 %arg732773, i64 %arg732772); tail call
  ret void

else735364:
  %a731712 = call i64 @prim_car(i64 %Kyk$lst)                                        ; call prim_car
  %a731713 = call i64 @prim_cdr(i64 %Kyk$lst)                                        ; call prim_cdr
  %arg732777 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a731714 = call i64 @prim__45(i64 %Juu$n, i64 %arg732777)                          ; call prim__45
  %cloptr735369 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr735371 = getelementptr inbounds i64, i64* %cloptr735369, i64 1                ; &eptr735371[1]
  %eptr735372 = getelementptr inbounds i64, i64* %cloptr735369, i64 2                ; &eptr735372[2]
  store i64 %a731712, i64* %eptr735371                                               ; *eptr735371 = %a731712
  store i64 %cont731985, i64* %eptr735372                                            ; *eptr735372 = %cont731985
  %eptr735370 = getelementptr inbounds i64, i64* %cloptr735369, i64 0                ; &cloptr735369[0]
  %f735373 = ptrtoint void(i64,i64,i64)* @lam732883 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735373, i64* %eptr735370                                               ; store fptr
  %arg732781 = ptrtoint i64* %cloptr735369 to i64                                    ; closure cast; i64* -> i64
  %cloptr735374 = inttoptr i64 %oVh$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735374)                                       ; assert function application
  %i0ptr735375 = getelementptr inbounds i64, i64* %cloptr735374, i64 0               ; &cloptr735374[0]
  %f735377 = load i64, i64* %i0ptr735375, align 8                                    ; load; *i0ptr735375
  %fptr735376 = inttoptr i64 %f735377 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735376(i64 %oVh$_37take, i64 %arg732781, i64 %a731713, i64 %a731714); tail call
  ret void
}


define void @lam732883(i64 %env732884, i64 %_95731986, i64 %a731715) {
  %envptr735378 = inttoptr i64 %env732884 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735379 = getelementptr inbounds i64, i64* %envptr735378, i64 2              ; &envptr735378[2]
  %cont731985 = load i64, i64* %envptr735379, align 8                                ; load; *envptr735379
  %envptr735380 = inttoptr i64 %env732884 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735381 = getelementptr inbounds i64, i64* %envptr735380, i64 1              ; &envptr735380[1]
  %a731712 = load i64, i64* %envptr735381, align 8                                   ; load; *envptr735381
  %retprim731987 = call i64 @prim_cons(i64 %a731712, i64 %a731715)                   ; call prim_cons
  %arg732786 = add i64 0, 0                                                          ; quoted ()
  %cloptr735382 = inttoptr i64 %cont731985 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735382)                                       ; assert function application
  %i0ptr735383 = getelementptr inbounds i64, i64* %cloptr735382, i64 0               ; &cloptr735382[0]
  %f735385 = load i64, i64* %i0ptr735383, align 8                                    ; load; *i0ptr735383
  %fptr735384 = inttoptr i64 %f735385 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735384(i64 %cont731985, i64 %arg732786, i64 %retprim731987); tail call
  ret void
}


define void @lam732876(i64 %env732877, i64 %cont731988, i64 %FKh$_37map) {
  %arg732789 = add i64 0, 0                                                          ; quoted ()
  %cloptr735386 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735388 = getelementptr inbounds i64, i64* %cloptr735386, i64 1                ; &eptr735388[1]
  store i64 %FKh$_37map, i64* %eptr735388                                            ; *eptr735388 = %FKh$_37map
  %eptr735387 = getelementptr inbounds i64, i64* %cloptr735386, i64 0                ; &cloptr735386[0]
  %f735389 = ptrtoint void(i64,i64,i64,i64)* @lam732873 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f735389, i64* %eptr735387                                               ; store fptr
  %arg732788 = ptrtoint i64* %cloptr735386 to i64                                    ; closure cast; i64* -> i64
  %cloptr735390 = inttoptr i64 %cont731988 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735390)                                       ; assert function application
  %i0ptr735391 = getelementptr inbounds i64, i64* %cloptr735390, i64 0               ; &cloptr735390[0]
  %f735393 = load i64, i64* %i0ptr735391, align 8                                    ; load; *i0ptr735391
  %fptr735392 = inttoptr i64 %f735393 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735392(i64 %cont731988, i64 %arg732789, i64 %arg732788); tail call
  ret void
}


define void @lam732873(i64 %env732874, i64 %cont731989, i64 %E4R$f, i64 %eVE$lst) {
  %envptr735394 = inttoptr i64 %env732874 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735395 = getelementptr inbounds i64, i64* %envptr735394, i64 1              ; &envptr735394[1]
  %FKh$_37map = load i64, i64* %envptr735395, align 8                                ; load; *envptr735395
  %a731705 = call i64 @prim_null_63(i64 %eVE$lst)                                    ; call prim_null_63
  %cmp735396 = icmp eq i64 %a731705, 15                                              ; false?
  br i1 %cmp735396, label %else735398, label %then735397                             ; if

then735397:
  %arg732793 = add i64 0, 0                                                          ; quoted ()
  %arg732792 = add i64 0, 0                                                          ; quoted ()
  %cloptr735399 = inttoptr i64 %cont731989 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735399)                                       ; assert function application
  %i0ptr735400 = getelementptr inbounds i64, i64* %cloptr735399, i64 0               ; &cloptr735399[0]
  %f735402 = load i64, i64* %i0ptr735400, align 8                                    ; load; *i0ptr735400
  %fptr735401 = inttoptr i64 %f735402 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735401(i64 %cont731989, i64 %arg732793, i64 %arg732792); tail call
  ret void

else735398:
  %a731706 = call i64 @prim_car(i64 %eVE$lst)                                        ; call prim_car
  %cloptr735403 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr735405 = getelementptr inbounds i64, i64* %cloptr735403, i64 1                ; &eptr735405[1]
  %eptr735406 = getelementptr inbounds i64, i64* %cloptr735403, i64 2                ; &eptr735406[2]
  %eptr735407 = getelementptr inbounds i64, i64* %cloptr735403, i64 3                ; &eptr735407[3]
  %eptr735408 = getelementptr inbounds i64, i64* %cloptr735403, i64 4                ; &eptr735408[4]
  store i64 %FKh$_37map, i64* %eptr735405                                            ; *eptr735405 = %FKh$_37map
  store i64 %E4R$f, i64* %eptr735406                                                 ; *eptr735406 = %E4R$f
  store i64 %eVE$lst, i64* %eptr735407                                               ; *eptr735407 = %eVE$lst
  store i64 %cont731989, i64* %eptr735408                                            ; *eptr735408 = %cont731989
  %eptr735404 = getelementptr inbounds i64, i64* %cloptr735403, i64 0                ; &cloptr735403[0]
  %f735409 = ptrtoint void(i64,i64,i64)* @lam732871 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735409, i64* %eptr735404                                               ; store fptr
  %arg732797 = ptrtoint i64* %cloptr735403 to i64                                    ; closure cast; i64* -> i64
  %cloptr735410 = inttoptr i64 %E4R$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735410)                                       ; assert function application
  %i0ptr735411 = getelementptr inbounds i64, i64* %cloptr735410, i64 0               ; &cloptr735410[0]
  %f735413 = load i64, i64* %i0ptr735411, align 8                                    ; load; *i0ptr735411
  %fptr735412 = inttoptr i64 %f735413 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735412(i64 %E4R$f, i64 %arg732797, i64 %a731706)    ; tail call
  ret void
}


define void @lam732871(i64 %env732872, i64 %_95731990, i64 %a731707) {
  %envptr735414 = inttoptr i64 %env732872 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735415 = getelementptr inbounds i64, i64* %envptr735414, i64 4              ; &envptr735414[4]
  %cont731989 = load i64, i64* %envptr735415, align 8                                ; load; *envptr735415
  %envptr735416 = inttoptr i64 %env732872 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735417 = getelementptr inbounds i64, i64* %envptr735416, i64 3              ; &envptr735416[3]
  %eVE$lst = load i64, i64* %envptr735417, align 8                                   ; load; *envptr735417
  %envptr735418 = inttoptr i64 %env732872 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735419 = getelementptr inbounds i64, i64* %envptr735418, i64 2              ; &envptr735418[2]
  %E4R$f = load i64, i64* %envptr735419, align 8                                     ; load; *envptr735419
  %envptr735420 = inttoptr i64 %env732872 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735421 = getelementptr inbounds i64, i64* %envptr735420, i64 1              ; &envptr735420[1]
  %FKh$_37map = load i64, i64* %envptr735421, align 8                                ; load; *envptr735421
  %a731708 = call i64 @prim_cdr(i64 %eVE$lst)                                        ; call prim_cdr
  %cloptr735422 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr735424 = getelementptr inbounds i64, i64* %cloptr735422, i64 1                ; &eptr735424[1]
  %eptr735425 = getelementptr inbounds i64, i64* %cloptr735422, i64 2                ; &eptr735425[2]
  store i64 %a731707, i64* %eptr735424                                               ; *eptr735424 = %a731707
  store i64 %cont731989, i64* %eptr735425                                            ; *eptr735425 = %cont731989
  %eptr735423 = getelementptr inbounds i64, i64* %cloptr735422, i64 0                ; &cloptr735422[0]
  %f735426 = ptrtoint void(i64,i64,i64)* @lam732869 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735426, i64* %eptr735423                                               ; store fptr
  %arg732802 = ptrtoint i64* %cloptr735422 to i64                                    ; closure cast; i64* -> i64
  %cloptr735427 = inttoptr i64 %FKh$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735427)                                       ; assert function application
  %i0ptr735428 = getelementptr inbounds i64, i64* %cloptr735427, i64 0               ; &cloptr735427[0]
  %f735430 = load i64, i64* %i0ptr735428, align 8                                    ; load; *i0ptr735428
  %fptr735429 = inttoptr i64 %f735430 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735429(i64 %FKh$_37map, i64 %arg732802, i64 %E4R$f, i64 %a731708); tail call
  ret void
}


define void @lam732869(i64 %env732870, i64 %_95731991, i64 %a731709) {
  %envptr735431 = inttoptr i64 %env732870 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735432 = getelementptr inbounds i64, i64* %envptr735431, i64 2              ; &envptr735431[2]
  %cont731989 = load i64, i64* %envptr735432, align 8                                ; load; *envptr735432
  %envptr735433 = inttoptr i64 %env732870 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735434 = getelementptr inbounds i64, i64* %envptr735433, i64 1              ; &envptr735433[1]
  %a731707 = load i64, i64* %envptr735434, align 8                                   ; load; *envptr735434
  %retprim731992 = call i64 @prim_cons(i64 %a731707, i64 %a731709)                   ; call prim_cons
  %arg732807 = add i64 0, 0                                                          ; quoted ()
  %cloptr735435 = inttoptr i64 %cont731989 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735435)                                       ; assert function application
  %i0ptr735436 = getelementptr inbounds i64, i64* %cloptr735435, i64 0               ; &cloptr735435[0]
  %f735438 = load i64, i64* %i0ptr735436, align 8                                    ; load; *i0ptr735436
  %fptr735437 = inttoptr i64 %f735438 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735437(i64 %cont731989, i64 %arg732807, i64 %retprim731992); tail call
  ret void
}


define void @lam732864(i64 %env732865, i64 %cont731993, i64 %hXm$_37foldr1) {
  %arg732810 = add i64 0, 0                                                          ; quoted ()
  %cloptr735439 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735441 = getelementptr inbounds i64, i64* %cloptr735439, i64 1                ; &eptr735441[1]
  store i64 %hXm$_37foldr1, i64* %eptr735441                                         ; *eptr735441 = %hXm$_37foldr1
  %eptr735440 = getelementptr inbounds i64, i64* %cloptr735439, i64 0                ; &cloptr735439[0]
  %f735442 = ptrtoint void(i64,i64,i64,i64,i64)* @lam732861 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f735442, i64* %eptr735440                                               ; store fptr
  %arg732809 = ptrtoint i64* %cloptr735439 to i64                                    ; closure cast; i64* -> i64
  %cloptr735443 = inttoptr i64 %cont731993 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735443)                                       ; assert function application
  %i0ptr735444 = getelementptr inbounds i64, i64* %cloptr735443, i64 0               ; &cloptr735443[0]
  %f735446 = load i64, i64* %i0ptr735444, align 8                                    ; load; *i0ptr735444
  %fptr735445 = inttoptr i64 %f735446 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735445(i64 %cont731993, i64 %arg732810, i64 %arg732809); tail call
  ret void
}


define void @lam732861(i64 %env732862, i64 %cont731994, i64 %geD$f, i64 %qKF$acc, i64 %FeV$lst) {
  %envptr735447 = inttoptr i64 %env732862 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735448 = getelementptr inbounds i64, i64* %envptr735447, i64 1              ; &envptr735447[1]
  %hXm$_37foldr1 = load i64, i64* %envptr735448, align 8                             ; load; *envptr735448
  %a731701 = call i64 @prim_null_63(i64 %FeV$lst)                                    ; call prim_null_63
  %cmp735449 = icmp eq i64 %a731701, 15                                              ; false?
  br i1 %cmp735449, label %else735451, label %then735450                             ; if

then735450:
  %arg732814 = add i64 0, 0                                                          ; quoted ()
  %cloptr735452 = inttoptr i64 %cont731994 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735452)                                       ; assert function application
  %i0ptr735453 = getelementptr inbounds i64, i64* %cloptr735452, i64 0               ; &cloptr735452[0]
  %f735455 = load i64, i64* %i0ptr735453, align 8                                    ; load; *i0ptr735453
  %fptr735454 = inttoptr i64 %f735455 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735454(i64 %cont731994, i64 %arg732814, i64 %qKF$acc); tail call
  ret void

else735451:
  %a731702 = call i64 @prim_car(i64 %FeV$lst)                                        ; call prim_car
  %a731703 = call i64 @prim_cdr(i64 %FeV$lst)                                        ; call prim_cdr
  %cloptr735456 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr735458 = getelementptr inbounds i64, i64* %cloptr735456, i64 1                ; &eptr735458[1]
  %eptr735459 = getelementptr inbounds i64, i64* %cloptr735456, i64 2                ; &eptr735459[2]
  %eptr735460 = getelementptr inbounds i64, i64* %cloptr735456, i64 3                ; &eptr735460[3]
  store i64 %geD$f, i64* %eptr735458                                                 ; *eptr735458 = %geD$f
  store i64 %cont731994, i64* %eptr735459                                            ; *eptr735459 = %cont731994
  store i64 %a731702, i64* %eptr735460                                               ; *eptr735460 = %a731702
  %eptr735457 = getelementptr inbounds i64, i64* %cloptr735456, i64 0                ; &cloptr735456[0]
  %f735461 = ptrtoint void(i64,i64,i64)* @lam732859 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735461, i64* %eptr735457                                               ; store fptr
  %arg732821 = ptrtoint i64* %cloptr735456 to i64                                    ; closure cast; i64* -> i64
  %cloptr735462 = inttoptr i64 %hXm$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735462)                                       ; assert function application
  %i0ptr735463 = getelementptr inbounds i64, i64* %cloptr735462, i64 0               ; &cloptr735462[0]
  %f735465 = load i64, i64* %i0ptr735463, align 8                                    ; load; *i0ptr735463
  %fptr735464 = inttoptr i64 %f735465 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735464(i64 %hXm$_37foldr1, i64 %arg732821, i64 %geD$f, i64 %qKF$acc, i64 %a731703); tail call
  ret void
}


define void @lam732859(i64 %env732860, i64 %_95731995, i64 %a731704) {
  %envptr735466 = inttoptr i64 %env732860 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735467 = getelementptr inbounds i64, i64* %envptr735466, i64 3              ; &envptr735466[3]
  %a731702 = load i64, i64* %envptr735467, align 8                                   ; load; *envptr735467
  %envptr735468 = inttoptr i64 %env732860 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735469 = getelementptr inbounds i64, i64* %envptr735468, i64 2              ; &envptr735468[2]
  %cont731994 = load i64, i64* %envptr735469, align 8                                ; load; *envptr735469
  %envptr735470 = inttoptr i64 %env732860 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735471 = getelementptr inbounds i64, i64* %envptr735470, i64 1              ; &envptr735470[1]
  %geD$f = load i64, i64* %envptr735471, align 8                                     ; load; *envptr735471
  %cloptr735472 = inttoptr i64 %geD$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735472)                                       ; assert function application
  %i0ptr735473 = getelementptr inbounds i64, i64* %cloptr735472, i64 0               ; &cloptr735472[0]
  %f735475 = load i64, i64* %i0ptr735473, align 8                                    ; load; *i0ptr735473
  %fptr735474 = inttoptr i64 %f735475 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735474(i64 %geD$f, i64 %cont731994, i64 %a731702, i64 %a731704); tail call
  ret void
}


define void @lam732856(i64 %env732857, i64 %cont731997, i64 %qXR$y) {
  %arg732828 = add i64 0, 0                                                          ; quoted ()
  %cloptr735476 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr735478 = getelementptr inbounds i64, i64* %cloptr735476, i64 1                ; &eptr735478[1]
  store i64 %qXR$y, i64* %eptr735478                                                 ; *eptr735478 = %qXR$y
  %eptr735477 = getelementptr inbounds i64, i64* %cloptr735476, i64 0                ; &cloptr735476[0]
  %f735479 = ptrtoint void(i64,i64,i64)* @lam732853 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735479, i64* %eptr735477                                               ; store fptr
  %arg732827 = ptrtoint i64* %cloptr735476 to i64                                    ; closure cast; i64* -> i64
  %cloptr735480 = inttoptr i64 %cont731997 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735480)                                       ; assert function application
  %i0ptr735481 = getelementptr inbounds i64, i64* %cloptr735480, i64 0               ; &cloptr735480[0]
  %f735483 = load i64, i64* %i0ptr735481, align 8                                    ; load; *i0ptr735481
  %fptr735482 = inttoptr i64 %f735483 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735482(i64 %cont731997, i64 %arg732828, i64 %arg732827); tail call
  ret void
}


define void @lam732853(i64 %env732854, i64 %cont731998, i64 %xjy$f) {
  %envptr735484 = inttoptr i64 %env732854 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735485 = getelementptr inbounds i64, i64* %envptr735484, i64 1              ; &envptr735484[1]
  %qXR$y = load i64, i64* %envptr735485, align 8                                     ; load; *envptr735485
  %cloptr735486 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr735488 = getelementptr inbounds i64, i64* %cloptr735486, i64 1                ; &eptr735488[1]
  %eptr735489 = getelementptr inbounds i64, i64* %cloptr735486, i64 2                ; &eptr735489[2]
  store i64 %xjy$f, i64* %eptr735488                                                 ; *eptr735488 = %xjy$f
  store i64 %qXR$y, i64* %eptr735489                                                 ; *eptr735489 = %qXR$y
  %eptr735487 = getelementptr inbounds i64, i64* %cloptr735486, i64 0                ; &cloptr735486[0]
  %f735490 = ptrtoint void(i64,i64)* @lam732851 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f735490, i64* %eptr735487                                               ; store fptr
  %arg732830 = ptrtoint i64* %cloptr735486 to i64                                    ; closure cast; i64* -> i64
  %cloptr735491 = inttoptr i64 %xjy$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735491)                                       ; assert function application
  %i0ptr735492 = getelementptr inbounds i64, i64* %cloptr735491, i64 0               ; &cloptr735491[0]
  %f735494 = load i64, i64* %i0ptr735492, align 8                                    ; load; *i0ptr735492
  %fptr735493 = inttoptr i64 %f735494 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735493(i64 %xjy$f, i64 %cont731998, i64 %arg732830) ; tail call
  ret void
}


define void @lam732851(i64 %env732852, i64 %gr5$args732000) {
  %envptr735495 = inttoptr i64 %env732852 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735496 = getelementptr inbounds i64, i64* %envptr735495, i64 2              ; &envptr735495[2]
  %qXR$y = load i64, i64* %envptr735496, align 8                                     ; load; *envptr735496
  %envptr735497 = inttoptr i64 %env732852 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735498 = getelementptr inbounds i64, i64* %envptr735497, i64 1              ; &envptr735497[1]
  %xjy$f = load i64, i64* %envptr735498, align 8                                     ; load; *envptr735498
  %cont731999 = call i64 @prim_car(i64 %gr5$args732000)                              ; call prim_car
  %gr5$args = call i64 @prim_cdr(i64 %gr5$args732000)                                ; call prim_cdr
  %cloptr735499 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr735501 = getelementptr inbounds i64, i64* %cloptr735499, i64 1                ; &eptr735501[1]
  %eptr735502 = getelementptr inbounds i64, i64* %cloptr735499, i64 2                ; &eptr735502[2]
  %eptr735503 = getelementptr inbounds i64, i64* %cloptr735499, i64 3                ; &eptr735503[3]
  store i64 %gr5$args, i64* %eptr735501                                              ; *eptr735501 = %gr5$args
  store i64 %xjy$f, i64* %eptr735502                                                 ; *eptr735502 = %xjy$f
  store i64 %cont731999, i64* %eptr735503                                            ; *eptr735503 = %cont731999
  %eptr735500 = getelementptr inbounds i64, i64* %cloptr735499, i64 0                ; &cloptr735499[0]
  %f735504 = ptrtoint void(i64,i64,i64)* @lam732849 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735504, i64* %eptr735500                                               ; store fptr
  %arg732836 = ptrtoint i64* %cloptr735499 to i64                                    ; closure cast; i64* -> i64
  %cloptr735505 = inttoptr i64 %qXR$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735505)                                       ; assert function application
  %i0ptr735506 = getelementptr inbounds i64, i64* %cloptr735505, i64 0               ; &cloptr735505[0]
  %f735508 = load i64, i64* %i0ptr735506, align 8                                    ; load; *i0ptr735506
  %fptr735507 = inttoptr i64 %f735508 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735507(i64 %qXR$y, i64 %arg732836, i64 %qXR$y)      ; tail call
  ret void
}


define void @lam732849(i64 %env732850, i64 %_95732001, i64 %a731699) {
  %envptr735509 = inttoptr i64 %env732850 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735510 = getelementptr inbounds i64, i64* %envptr735509, i64 3              ; &envptr735509[3]
  %cont731999 = load i64, i64* %envptr735510, align 8                                ; load; *envptr735510
  %envptr735511 = inttoptr i64 %env732850 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735512 = getelementptr inbounds i64, i64* %envptr735511, i64 2              ; &envptr735511[2]
  %xjy$f = load i64, i64* %envptr735512, align 8                                     ; load; *envptr735512
  %envptr735513 = inttoptr i64 %env732850 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735514 = getelementptr inbounds i64, i64* %envptr735513, i64 1              ; &envptr735513[1]
  %gr5$args = load i64, i64* %envptr735514, align 8                                  ; load; *envptr735514
  %cloptr735515 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr735517 = getelementptr inbounds i64, i64* %cloptr735515, i64 1                ; &eptr735517[1]
  %eptr735518 = getelementptr inbounds i64, i64* %cloptr735515, i64 2                ; &eptr735518[2]
  store i64 %gr5$args, i64* %eptr735517                                              ; *eptr735517 = %gr5$args
  store i64 %cont731999, i64* %eptr735518                                            ; *eptr735518 = %cont731999
  %eptr735516 = getelementptr inbounds i64, i64* %cloptr735515, i64 0                ; &cloptr735515[0]
  %f735519 = ptrtoint void(i64,i64,i64)* @lam732847 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f735519, i64* %eptr735516                                               ; store fptr
  %arg732839 = ptrtoint i64* %cloptr735515 to i64                                    ; closure cast; i64* -> i64
  %cloptr735520 = inttoptr i64 %a731699 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735520)                                       ; assert function application
  %i0ptr735521 = getelementptr inbounds i64, i64* %cloptr735520, i64 0               ; &cloptr735520[0]
  %f735523 = load i64, i64* %i0ptr735521, align 8                                    ; load; *i0ptr735521
  %fptr735522 = inttoptr i64 %f735523 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735522(i64 %a731699, i64 %arg732839, i64 %xjy$f)    ; tail call
  ret void
}


define void @lam732847(i64 %env732848, i64 %_95732002, i64 %a731700) {
  %envptr735524 = inttoptr i64 %env732848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735525 = getelementptr inbounds i64, i64* %envptr735524, i64 2              ; &envptr735524[2]
  %cont731999 = load i64, i64* %envptr735525, align 8                                ; load; *envptr735525
  %envptr735526 = inttoptr i64 %env732848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr735527 = getelementptr inbounds i64, i64* %envptr735526, i64 1              ; &envptr735526[1]
  %gr5$args = load i64, i64* %envptr735527, align 8                                  ; load; *envptr735527
  %cps_45lst732003 = call i64 @prim_cons(i64 %cont731999, i64 %gr5$args)             ; call prim_cons
  %cloptr735528 = inttoptr i64 %a731700 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr735528)                                       ; assert function application
  %i0ptr735529 = getelementptr inbounds i64, i64* %cloptr735528, i64 0               ; &cloptr735528[0]
  %f735531 = load i64, i64* %i0ptr735529, align 8                                    ; load; *i0ptr735529
  %fptr735530 = inttoptr i64 %f735531 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr735530(i64 %a731700, i64 %cps_45lst732003)          ; tail call
  ret void
}





@sym734108 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
