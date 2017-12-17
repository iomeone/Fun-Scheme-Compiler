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
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"(prim / a b); b cannot be 0\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %2
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 2
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0))
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
  %cloptr8451 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8452 = getelementptr inbounds i64, i64* %cloptr8451, i64 0                    ; &cloptr8451[0]
  %f8453 = ptrtoint void(i64,i64,i64)* @lam8449 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8453, i64* %eptr8452                                                   ; store fptr
  %arg7151 = ptrtoint i64* %cloptr8451 to i64                                        ; closure cast; i64* -> i64
  %cloptr8454 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8455 = getelementptr inbounds i64, i64* %cloptr8454, i64 0                    ; &cloptr8454[0]
  %f8456 = ptrtoint void(i64,i64,i64)* @lam8447 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8456, i64* %eptr8455                                                   ; store fptr
  %arg7150 = ptrtoint i64* %cloptr8454 to i64                                        ; closure cast; i64* -> i64
  %cloptr8457 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8458 = getelementptr inbounds i64, i64* %cloptr8457, i64 0                    ; &cloptr8457[0]
  %f8459 = ptrtoint void(i64,i64,i64)* @lam8003 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8459, i64* %eptr8458                                                   ; store fptr
  %arg7149 = ptrtoint i64* %cloptr8457 to i64                                        ; closure cast; i64* -> i64
  %cloptr8460 = inttoptr i64 %arg7151 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8460)                                         ; assert function application
  %i0ptr8461 = getelementptr inbounds i64, i64* %cloptr8460, i64 0                   ; &cloptr8460[0]
  %f8463 = load i64, i64* %i0ptr8461, align 8                                        ; load; *i0ptr8461
  %fptr8462 = inttoptr i64 %f8463 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8462(i64 %arg7151, i64 %arg7150, i64 %arg7149)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8449(i64 %env8450, i64 %cont7141, i64 %CDG$yu) {
  %cloptr8464 = inttoptr i64 %CDG$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8464)                                         ; assert function application
  %i0ptr8465 = getelementptr inbounds i64, i64* %cloptr8464, i64 0                   ; &cloptr8464[0]
  %f8467 = load i64, i64* %i0ptr8465, align 8                                        ; load; *i0ptr8465
  %fptr8466 = inttoptr i64 %f8467 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8466(i64 %CDG$yu, i64 %cont7141, i64 %CDG$yu)       ; tail call
  ret void
}


define void @lam8447(i64 %env8448, i64 %_956962, i64 %MBU$Ycmb) {
  %cloptr8468 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8470 = getelementptr inbounds i64, i64* %cloptr8468, i64 1                    ; &eptr8470[1]
  store i64 %MBU$Ycmb, i64* %eptr8470                                                ; *eptr8470 = %MBU$Ycmb
  %eptr8469 = getelementptr inbounds i64, i64* %cloptr8468, i64 0                    ; &cloptr8468[0]
  %f8471 = ptrtoint void(i64,i64,i64)* @lam8445 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8471, i64* %eptr8469                                                   ; store fptr
  %arg7156 = ptrtoint i64* %cloptr8468 to i64                                        ; closure cast; i64* -> i64
  %cloptr8472 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8473 = getelementptr inbounds i64, i64* %cloptr8472, i64 0                    ; &cloptr8472[0]
  %f8474 = ptrtoint void(i64,i64,i64)* @lam8011 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8474, i64* %eptr8473                                                   ; store fptr
  %arg7155 = ptrtoint i64* %cloptr8472 to i64                                        ; closure cast; i64* -> i64
  %cloptr8475 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8475)                                         ; assert function application
  %i0ptr8476 = getelementptr inbounds i64, i64* %cloptr8475, i64 0                   ; &cloptr8475[0]
  %f8478 = load i64, i64* %i0ptr8476, align 8                                        ; load; *i0ptr8476
  %fptr8477 = inttoptr i64 %f8478 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8477(i64 %MBU$Ycmb, i64 %arg7156, i64 %arg7155)     ; tail call
  ret void
}


define void @lam8445(i64 %env8446, i64 %_956963, i64 %T0D$_37foldr1) {
  %envptr8479 = inttoptr i64 %env8446 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8480 = getelementptr inbounds i64, i64* %envptr8479, i64 1                  ; &envptr8479[1]
  %MBU$Ycmb = load i64, i64* %envptr8480, align 8                                    ; load; *envptr8480
  %cloptr8481 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8483 = getelementptr inbounds i64, i64* %cloptr8481, i64 1                    ; &eptr8483[1]
  %eptr8484 = getelementptr inbounds i64, i64* %cloptr8481, i64 2                    ; &eptr8484[2]
  store i64 %MBU$Ycmb, i64* %eptr8483                                                ; *eptr8483 = %MBU$Ycmb
  store i64 %T0D$_37foldr1, i64* %eptr8484                                           ; *eptr8484 = %T0D$_37foldr1
  %eptr8482 = getelementptr inbounds i64, i64* %cloptr8481, i64 0                    ; &cloptr8481[0]
  %f8485 = ptrtoint void(i64,i64,i64)* @lam8443 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8485, i64* %eptr8482                                                   ; store fptr
  %arg7159 = ptrtoint i64* %cloptr8481 to i64                                        ; closure cast; i64* -> i64
  %cloptr8486 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8487 = getelementptr inbounds i64, i64* %cloptr8486, i64 0                    ; &cloptr8486[0]
  %f8488 = ptrtoint void(i64,i64,i64)* @lam8023 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8488, i64* %eptr8487                                                   ; store fptr
  %arg7158 = ptrtoint i64* %cloptr8486 to i64                                        ; closure cast; i64* -> i64
  %cloptr8489 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8489)                                         ; assert function application
  %i0ptr8490 = getelementptr inbounds i64, i64* %cloptr8489, i64 0                   ; &cloptr8489[0]
  %f8492 = load i64, i64* %i0ptr8490, align 8                                        ; load; *i0ptr8490
  %fptr8491 = inttoptr i64 %f8492 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8491(i64 %MBU$Ycmb, i64 %arg7159, i64 %arg7158)     ; tail call
  ret void
}


define void @lam8443(i64 %env8444, i64 %_956964, i64 %Iq0$_37map1) {
  %envptr8493 = inttoptr i64 %env8444 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8494 = getelementptr inbounds i64, i64* %envptr8493, i64 2                  ; &envptr8493[2]
  %T0D$_37foldr1 = load i64, i64* %envptr8494, align 8                               ; load; *envptr8494
  %envptr8495 = inttoptr i64 %env8444 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8496 = getelementptr inbounds i64, i64* %envptr8495, i64 1                  ; &envptr8495[1]
  %MBU$Ycmb = load i64, i64* %envptr8496, align 8                                    ; load; *envptr8496
  %cloptr8497 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8499 = getelementptr inbounds i64, i64* %cloptr8497, i64 1                    ; &eptr8499[1]
  %eptr8500 = getelementptr inbounds i64, i64* %cloptr8497, i64 2                    ; &eptr8500[2]
  %eptr8501 = getelementptr inbounds i64, i64* %cloptr8497, i64 3                    ; &eptr8501[3]
  store i64 %Iq0$_37map1, i64* %eptr8499                                             ; *eptr8499 = %Iq0$_37map1
  store i64 %MBU$Ycmb, i64* %eptr8500                                                ; *eptr8500 = %MBU$Ycmb
  store i64 %T0D$_37foldr1, i64* %eptr8501                                           ; *eptr8501 = %T0D$_37foldr1
  %eptr8498 = getelementptr inbounds i64, i64* %cloptr8497, i64 0                    ; &cloptr8497[0]
  %f8502 = ptrtoint void(i64,i64,i64)* @lam8441 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8502, i64* %eptr8498                                                   ; store fptr
  %arg7162 = ptrtoint i64* %cloptr8497 to i64                                        ; closure cast; i64* -> i64
  %cloptr8503 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8504 = getelementptr inbounds i64, i64* %cloptr8503, i64 0                    ; &cloptr8503[0]
  %f8505 = ptrtoint void(i64,i64,i64)* @lam8037 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8505, i64* %eptr8504                                                   ; store fptr
  %arg7161 = ptrtoint i64* %cloptr8503 to i64                                        ; closure cast; i64* -> i64
  %cloptr8506 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8506)                                         ; assert function application
  %i0ptr8507 = getelementptr inbounds i64, i64* %cloptr8506, i64 0                   ; &cloptr8506[0]
  %f8509 = load i64, i64* %i0ptr8507, align 8                                        ; load; *i0ptr8507
  %fptr8508 = inttoptr i64 %f8509 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8508(i64 %MBU$Ycmb, i64 %arg7162, i64 %arg7161)     ; tail call
  ret void
}


define void @lam8441(i64 %env8442, i64 %_956965, i64 %XU8$_37take) {
  %envptr8510 = inttoptr i64 %env8442 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8511 = getelementptr inbounds i64, i64* %envptr8510, i64 3                  ; &envptr8510[3]
  %T0D$_37foldr1 = load i64, i64* %envptr8511, align 8                               ; load; *envptr8511
  %envptr8512 = inttoptr i64 %env8442 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8513 = getelementptr inbounds i64, i64* %envptr8512, i64 2                  ; &envptr8512[2]
  %MBU$Ycmb = load i64, i64* %envptr8513, align 8                                    ; load; *envptr8513
  %envptr8514 = inttoptr i64 %env8442 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8515 = getelementptr inbounds i64, i64* %envptr8514, i64 1                  ; &envptr8514[1]
  %Iq0$_37map1 = load i64, i64* %envptr8515, align 8                                 ; load; *envptr8515
  %cloptr8516 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8518 = getelementptr inbounds i64, i64* %cloptr8516, i64 1                    ; &eptr8518[1]
  %eptr8519 = getelementptr inbounds i64, i64* %cloptr8516, i64 2                    ; &eptr8519[2]
  %eptr8520 = getelementptr inbounds i64, i64* %cloptr8516, i64 3                    ; &eptr8520[3]
  %eptr8521 = getelementptr inbounds i64, i64* %cloptr8516, i64 4                    ; &eptr8521[4]
  store i64 %Iq0$_37map1, i64* %eptr8518                                             ; *eptr8518 = %Iq0$_37map1
  store i64 %MBU$Ycmb, i64* %eptr8519                                                ; *eptr8519 = %MBU$Ycmb
  store i64 %T0D$_37foldr1, i64* %eptr8520                                           ; *eptr8520 = %T0D$_37foldr1
  store i64 %XU8$_37take, i64* %eptr8521                                             ; *eptr8521 = %XU8$_37take
  %eptr8517 = getelementptr inbounds i64, i64* %cloptr8516, i64 0                    ; &cloptr8516[0]
  %f8522 = ptrtoint void(i64,i64,i64)* @lam8439 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8522, i64* %eptr8517                                                   ; store fptr
  %arg7165 = ptrtoint i64* %cloptr8516 to i64                                        ; closure cast; i64* -> i64
  %cloptr8523 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8524 = getelementptr inbounds i64, i64* %cloptr8523, i64 0                    ; &cloptr8523[0]
  %f8525 = ptrtoint void(i64,i64,i64)* @lam8048 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8525, i64* %eptr8524                                                   ; store fptr
  %arg7164 = ptrtoint i64* %cloptr8523 to i64                                        ; closure cast; i64* -> i64
  %cloptr8526 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8526)                                         ; assert function application
  %i0ptr8527 = getelementptr inbounds i64, i64* %cloptr8526, i64 0                   ; &cloptr8526[0]
  %f8529 = load i64, i64* %i0ptr8527, align 8                                        ; load; *i0ptr8527
  %fptr8528 = inttoptr i64 %f8529 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8528(i64 %MBU$Ycmb, i64 %arg7165, i64 %arg7164)     ; tail call
  ret void
}


define void @lam8439(i64 %env8440, i64 %_956966, i64 %Fqh$_37length) {
  %envptr8530 = inttoptr i64 %env8440 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8531 = getelementptr inbounds i64, i64* %envptr8530, i64 4                  ; &envptr8530[4]
  %XU8$_37take = load i64, i64* %envptr8531, align 8                                 ; load; *envptr8531
  %envptr8532 = inttoptr i64 %env8440 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8533 = getelementptr inbounds i64, i64* %envptr8532, i64 3                  ; &envptr8532[3]
  %T0D$_37foldr1 = load i64, i64* %envptr8533, align 8                               ; load; *envptr8533
  %envptr8534 = inttoptr i64 %env8440 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8535 = getelementptr inbounds i64, i64* %envptr8534, i64 2                  ; &envptr8534[2]
  %MBU$Ycmb = load i64, i64* %envptr8535, align 8                                    ; load; *envptr8535
  %envptr8536 = inttoptr i64 %env8440 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8537 = getelementptr inbounds i64, i64* %envptr8536, i64 1                  ; &envptr8536[1]
  %Iq0$_37map1 = load i64, i64* %envptr8537, align 8                                 ; load; *envptr8537
  %cloptr8538 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8540 = getelementptr inbounds i64, i64* %cloptr8538, i64 1                    ; &eptr8540[1]
  %eptr8541 = getelementptr inbounds i64, i64* %cloptr8538, i64 2                    ; &eptr8541[2]
  %eptr8542 = getelementptr inbounds i64, i64* %cloptr8538, i64 3                    ; &eptr8542[3]
  %eptr8543 = getelementptr inbounds i64, i64* %cloptr8538, i64 4                    ; &eptr8543[4]
  %eptr8544 = getelementptr inbounds i64, i64* %cloptr8538, i64 5                    ; &eptr8544[5]
  store i64 %Iq0$_37map1, i64* %eptr8540                                             ; *eptr8540 = %Iq0$_37map1
  store i64 %MBU$Ycmb, i64* %eptr8541                                                ; *eptr8541 = %MBU$Ycmb
  store i64 %Fqh$_37length, i64* %eptr8542                                           ; *eptr8542 = %Fqh$_37length
  store i64 %T0D$_37foldr1, i64* %eptr8543                                           ; *eptr8543 = %T0D$_37foldr1
  store i64 %XU8$_37take, i64* %eptr8544                                             ; *eptr8544 = %XU8$_37take
  %eptr8539 = getelementptr inbounds i64, i64* %cloptr8538, i64 0                    ; &cloptr8538[0]
  %f8545 = ptrtoint void(i64,i64,i64)* @lam8437 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8545, i64* %eptr8539                                                   ; store fptr
  %arg7168 = ptrtoint i64* %cloptr8538 to i64                                        ; closure cast; i64* -> i64
  %cloptr8546 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8547 = getelementptr inbounds i64, i64* %cloptr8546, i64 0                    ; &cloptr8546[0]
  %f8548 = ptrtoint void(i64,i64,i64)* @lam8056 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8548, i64* %eptr8547                                                   ; store fptr
  %arg7167 = ptrtoint i64* %cloptr8546 to i64                                        ; closure cast; i64* -> i64
  %cloptr8549 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8549)                                         ; assert function application
  %i0ptr8550 = getelementptr inbounds i64, i64* %cloptr8549, i64 0                   ; &cloptr8549[0]
  %f8552 = load i64, i64* %i0ptr8550, align 8                                        ; load; *i0ptr8550
  %fptr8551 = inttoptr i64 %f8552 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8551(i64 %MBU$Ycmb, i64 %arg7168, i64 %arg7167)     ; tail call
  ret void
}


define void @lam8437(i64 %env8438, i64 %_956967, i64 %CKk$_37foldl1) {
  %envptr8553 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8554 = getelementptr inbounds i64, i64* %envptr8553, i64 5                  ; &envptr8553[5]
  %XU8$_37take = load i64, i64* %envptr8554, align 8                                 ; load; *envptr8554
  %envptr8555 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8556 = getelementptr inbounds i64, i64* %envptr8555, i64 4                  ; &envptr8555[4]
  %T0D$_37foldr1 = load i64, i64* %envptr8556, align 8                               ; load; *envptr8556
  %envptr8557 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8558 = getelementptr inbounds i64, i64* %envptr8557, i64 3                  ; &envptr8557[3]
  %Fqh$_37length = load i64, i64* %envptr8558, align 8                               ; load; *envptr8558
  %envptr8559 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8560 = getelementptr inbounds i64, i64* %envptr8559, i64 2                  ; &envptr8559[2]
  %MBU$Ycmb = load i64, i64* %envptr8560, align 8                                    ; load; *envptr8560
  %envptr8561 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8562 = getelementptr inbounds i64, i64* %envptr8561, i64 1                  ; &envptr8561[1]
  %Iq0$_37map1 = load i64, i64* %envptr8562, align 8                                 ; load; *envptr8562
  %cloptr8563 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8565 = getelementptr inbounds i64, i64* %cloptr8563, i64 1                    ; &eptr8565[1]
  store i64 %CKk$_37foldl1, i64* %eptr8565                                           ; *eptr8565 = %CKk$_37foldl1
  %eptr8564 = getelementptr inbounds i64, i64* %cloptr8563, i64 0                    ; &cloptr8563[0]
  %f8566 = ptrtoint void(i64,i64,i64)* @lam8435 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8566, i64* %eptr8564                                                   ; store fptr
  %UA6$_37last = ptrtoint i64* %cloptr8563 to i64                                    ; closure cast; i64* -> i64
  %cloptr8567 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8569 = getelementptr inbounds i64, i64* %cloptr8567, i64 1                    ; &eptr8569[1]
  %eptr8570 = getelementptr inbounds i64, i64* %cloptr8567, i64 2                    ; &eptr8570[2]
  store i64 %Fqh$_37length, i64* %eptr8569                                           ; *eptr8569 = %Fqh$_37length
  store i64 %XU8$_37take, i64* %eptr8570                                             ; *eptr8570 = %XU8$_37take
  %eptr8568 = getelementptr inbounds i64, i64* %cloptr8567, i64 0                    ; &cloptr8567[0]
  %f8571 = ptrtoint void(i64,i64,i64,i64)* @lam8429 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8571, i64* %eptr8568                                                   ; store fptr
  %UVE$_37drop_45right = ptrtoint i64* %cloptr8567 to i64                            ; closure cast; i64* -> i64
  %cloptr8572 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8574 = getelementptr inbounds i64, i64* %cloptr8572, i64 1                    ; &eptr8574[1]
  %eptr8575 = getelementptr inbounds i64, i64* %cloptr8572, i64 2                    ; &eptr8575[2]
  %eptr8576 = getelementptr inbounds i64, i64* %cloptr8572, i64 3                    ; &eptr8576[3]
  %eptr8577 = getelementptr inbounds i64, i64* %cloptr8572, i64 4                    ; &eptr8577[4]
  %eptr8578 = getelementptr inbounds i64, i64* %cloptr8572, i64 5                    ; &eptr8578[5]
  %eptr8579 = getelementptr inbounds i64, i64* %cloptr8572, i64 6                    ; &eptr8579[6]
  store i64 %UVE$_37drop_45right, i64* %eptr8574                                     ; *eptr8574 = %UVE$_37drop_45right
  store i64 %MBU$Ycmb, i64* %eptr8575                                                ; *eptr8575 = %MBU$Ycmb
  store i64 %Fqh$_37length, i64* %eptr8576                                           ; *eptr8576 = %Fqh$_37length
  store i64 %UA6$_37last, i64* %eptr8577                                             ; *eptr8577 = %UA6$_37last
  store i64 %T0D$_37foldr1, i64* %eptr8578                                           ; *eptr8578 = %T0D$_37foldr1
  store i64 %CKk$_37foldl1, i64* %eptr8579                                           ; *eptr8579 = %CKk$_37foldl1
  %eptr8573 = getelementptr inbounds i64, i64* %cloptr8572, i64 0                    ; &cloptr8572[0]
  %f8580 = ptrtoint void(i64,i64,i64)* @lam8425 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8580, i64* %eptr8573                                                   ; store fptr
  %arg7188 = ptrtoint i64* %cloptr8572 to i64                                        ; closure cast; i64* -> i64
  %cloptr8581 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8583 = getelementptr inbounds i64, i64* %cloptr8581, i64 1                    ; &eptr8583[1]
  %eptr8584 = getelementptr inbounds i64, i64* %cloptr8581, i64 2                    ; &eptr8584[2]
  store i64 %Iq0$_37map1, i64* %eptr8583                                             ; *eptr8583 = %Iq0$_37map1
  store i64 %T0D$_37foldr1, i64* %eptr8584                                           ; *eptr8584 = %T0D$_37foldr1
  %eptr8582 = getelementptr inbounds i64, i64* %cloptr8581, i64 0                    ; &cloptr8581[0]
  %f8585 = ptrtoint void(i64,i64,i64)* @lam8093 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8585, i64* %eptr8582                                                   ; store fptr
  %arg7187 = ptrtoint i64* %cloptr8581 to i64                                        ; closure cast; i64* -> i64
  %cloptr8586 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8586)                                         ; assert function application
  %i0ptr8587 = getelementptr inbounds i64, i64* %cloptr8586, i64 0                   ; &cloptr8586[0]
  %f8589 = load i64, i64* %i0ptr8587, align 8                                        ; load; *i0ptr8587
  %fptr8588 = inttoptr i64 %f8589 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8588(i64 %MBU$Ycmb, i64 %arg7188, i64 %arg7187)     ; tail call
  ret void
}


define void @lam8435(i64 %env8436, i64 %cont6968, i64 %nmI$lst) {
  %envptr8590 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8591 = getelementptr inbounds i64, i64* %envptr8590, i64 1                  ; &envptr8590[1]
  %CKk$_37foldl1 = load i64, i64* %envptr8591, align 8                               ; load; *envptr8591
  %cloptr8592 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8593 = getelementptr inbounds i64, i64* %cloptr8592, i64 0                    ; &cloptr8592[0]
  %f8594 = ptrtoint void(i64,i64,i64,i64)* @lam8433 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8594, i64* %eptr8593                                                   ; store fptr
  %arg7172 = ptrtoint i64* %cloptr8592 to i64                                        ; closure cast; i64* -> i64
  %arg7171 = add i64 0, 0                                                            ; quoted ()
  %cloptr8595 = inttoptr i64 %CKk$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8595)                                         ; assert function application
  %i0ptr8596 = getelementptr inbounds i64, i64* %cloptr8595, i64 0                   ; &cloptr8595[0]
  %f8598 = load i64, i64* %i0ptr8596, align 8                                        ; load; *i0ptr8596
  %fptr8597 = inttoptr i64 %f8598 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8597(i64 %CKk$_37foldl1, i64 %cont6968, i64 %arg7172, i64 %arg7171, i64 %nmI$lst); tail call
  ret void
}


define void @lam8433(i64 %env8434, i64 %cont6969, i64 %Twr$x, i64 %dNg$y) {
  %arg7176 = add i64 0, 0                                                            ; quoted ()
  %cloptr8599 = inttoptr i64 %cont6969 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8599)                                         ; assert function application
  %i0ptr8600 = getelementptr inbounds i64, i64* %cloptr8599, i64 0                   ; &cloptr8599[0]
  %f8602 = load i64, i64* %i0ptr8600, align 8                                        ; load; *i0ptr8600
  %fptr8601 = inttoptr i64 %f8602 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8601(i64 %cont6969, i64 %arg7176, i64 %Twr$x)       ; tail call
  ret void
}


define void @lam8429(i64 %env8430, i64 %cont6970, i64 %a9u$lst, i64 %JDq$n) {
  %envptr8603 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8604 = getelementptr inbounds i64, i64* %envptr8603, i64 2                  ; &envptr8603[2]
  %XU8$_37take = load i64, i64* %envptr8604, align 8                                 ; load; *envptr8604
  %envptr8605 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8606 = getelementptr inbounds i64, i64* %envptr8605, i64 1                  ; &envptr8605[1]
  %Fqh$_37length = load i64, i64* %envptr8606, align 8                               ; load; *envptr8606
  %cloptr8607 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8609 = getelementptr inbounds i64, i64* %cloptr8607, i64 1                    ; &eptr8609[1]
  %eptr8610 = getelementptr inbounds i64, i64* %cloptr8607, i64 2                    ; &eptr8610[2]
  %eptr8611 = getelementptr inbounds i64, i64* %cloptr8607, i64 3                    ; &eptr8611[3]
  %eptr8612 = getelementptr inbounds i64, i64* %cloptr8607, i64 4                    ; &eptr8612[4]
  store i64 %a9u$lst, i64* %eptr8609                                                 ; *eptr8609 = %a9u$lst
  store i64 %JDq$n, i64* %eptr8610                                                   ; *eptr8610 = %JDq$n
  store i64 %XU8$_37take, i64* %eptr8611                                             ; *eptr8611 = %XU8$_37take
  store i64 %cont6970, i64* %eptr8612                                                ; *eptr8612 = %cont6970
  %eptr8608 = getelementptr inbounds i64, i64* %cloptr8607, i64 0                    ; &cloptr8607[0]
  %f8613 = ptrtoint void(i64,i64,i64)* @lam8427 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8613, i64* %eptr8608                                                   ; store fptr
  %arg7179 = ptrtoint i64* %cloptr8607 to i64                                        ; closure cast; i64* -> i64
  %cloptr8614 = inttoptr i64 %Fqh$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8614)                                         ; assert function application
  %i0ptr8615 = getelementptr inbounds i64, i64* %cloptr8614, i64 0                   ; &cloptr8614[0]
  %f8617 = load i64, i64* %i0ptr8615, align 8                                        ; load; *i0ptr8615
  %fptr8616 = inttoptr i64 %f8617 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8616(i64 %Fqh$_37length, i64 %arg7179, i64 %a9u$lst); tail call
  ret void
}


define void @lam8427(i64 %env8428, i64 %_956971, i64 %a6867) {
  %envptr8618 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8619 = getelementptr inbounds i64, i64* %envptr8618, i64 4                  ; &envptr8618[4]
  %cont6970 = load i64, i64* %envptr8619, align 8                                    ; load; *envptr8619
  %envptr8620 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8621 = getelementptr inbounds i64, i64* %envptr8620, i64 3                  ; &envptr8620[3]
  %XU8$_37take = load i64, i64* %envptr8621, align 8                                 ; load; *envptr8621
  %envptr8622 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8623 = getelementptr inbounds i64, i64* %envptr8622, i64 2                  ; &envptr8622[2]
  %JDq$n = load i64, i64* %envptr8623, align 8                                       ; load; *envptr8623
  %envptr8624 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8625 = getelementptr inbounds i64, i64* %envptr8624, i64 1                  ; &envptr8624[1]
  %a9u$lst = load i64, i64* %envptr8625, align 8                                     ; load; *envptr8625
  %a6868 = call i64 @prim__45(i64 %a6867, i64 %JDq$n)                                ; call prim__45
  %cloptr8626 = inttoptr i64 %XU8$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8626)                                         ; assert function application
  %i0ptr8627 = getelementptr inbounds i64, i64* %cloptr8626, i64 0                   ; &cloptr8626[0]
  %f8629 = load i64, i64* %i0ptr8627, align 8                                        ; load; *i0ptr8627
  %fptr8628 = inttoptr i64 %f8629 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8628(i64 %XU8$_37take, i64 %cont6970, i64 %a9u$lst, i64 %a6868); tail call
  ret void
}


define void @lam8425(i64 %env8426, i64 %_956972, i64 %jNn$_37foldr) {
  %envptr8630 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8631 = getelementptr inbounds i64, i64* %envptr8630, i64 6                  ; &envptr8630[6]
  %CKk$_37foldl1 = load i64, i64* %envptr8631, align 8                               ; load; *envptr8631
  %envptr8632 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8633 = getelementptr inbounds i64, i64* %envptr8632, i64 5                  ; &envptr8632[5]
  %T0D$_37foldr1 = load i64, i64* %envptr8633, align 8                               ; load; *envptr8633
  %envptr8634 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8635 = getelementptr inbounds i64, i64* %envptr8634, i64 4                  ; &envptr8634[4]
  %UA6$_37last = load i64, i64* %envptr8635, align 8                                 ; load; *envptr8635
  %envptr8636 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8637 = getelementptr inbounds i64, i64* %envptr8636, i64 3                  ; &envptr8636[3]
  %Fqh$_37length = load i64, i64* %envptr8637, align 8                               ; load; *envptr8637
  %envptr8638 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8639 = getelementptr inbounds i64, i64* %envptr8638, i64 2                  ; &envptr8638[2]
  %MBU$Ycmb = load i64, i64* %envptr8639, align 8                                    ; load; *envptr8639
  %envptr8640 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8641 = getelementptr inbounds i64, i64* %envptr8640, i64 1                  ; &envptr8640[1]
  %UVE$_37drop_45right = load i64, i64* %envptr8641, align 8                         ; load; *envptr8641
  %cloptr8642 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8644 = getelementptr inbounds i64, i64* %cloptr8642, i64 1                    ; &eptr8644[1]
  store i64 %T0D$_37foldr1, i64* %eptr8644                                           ; *eptr8644 = %T0D$_37foldr1
  %eptr8643 = getelementptr inbounds i64, i64* %cloptr8642, i64 0                    ; &cloptr8642[0]
  %f8645 = ptrtoint void(i64,i64,i64,i64)* @lam8423 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8645, i64* %eptr8643                                                   ; store fptr
  %GcZ$_37map1 = ptrtoint i64* %cloptr8642 to i64                                    ; closure cast; i64* -> i64
  %cloptr8646 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8648 = getelementptr inbounds i64, i64* %cloptr8646, i64 1                    ; &eptr8648[1]
  %eptr8649 = getelementptr inbounds i64, i64* %cloptr8646, i64 2                    ; &eptr8649[2]
  %eptr8650 = getelementptr inbounds i64, i64* %cloptr8646, i64 3                    ; &eptr8650[3]
  store i64 %UVE$_37drop_45right, i64* %eptr8648                                     ; *eptr8648 = %UVE$_37drop_45right
  store i64 %jNn$_37foldr, i64* %eptr8649                                            ; *eptr8649 = %jNn$_37foldr
  store i64 %UA6$_37last, i64* %eptr8650                                             ; *eptr8650 = %UA6$_37last
  %eptr8647 = getelementptr inbounds i64, i64* %cloptr8646, i64 0                    ; &cloptr8646[0]
  %f8651 = ptrtoint void(i64,i64)* @lam8415 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8651, i64* %eptr8647                                                   ; store fptr
  %Ck1$_37map = ptrtoint i64* %cloptr8646 to i64                                     ; closure cast; i64* -> i64
  %cloptr8652 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8654 = getelementptr inbounds i64, i64* %cloptr8652, i64 1                    ; &eptr8654[1]
  %eptr8655 = getelementptr inbounds i64, i64* %cloptr8652, i64 2                    ; &eptr8655[2]
  store i64 %Fqh$_37length, i64* %eptr8654                                           ; *eptr8654 = %Fqh$_37length
  store i64 %CKk$_37foldl1, i64* %eptr8655                                           ; *eptr8655 = %CKk$_37foldl1
  %eptr8653 = getelementptr inbounds i64, i64* %cloptr8652, i64 0                    ; &cloptr8652[0]
  %f8656 = ptrtoint void(i64,i64,i64)* @lam8402 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8656, i64* %eptr8653                                                   ; store fptr
  %arg7230 = ptrtoint i64* %cloptr8652 to i64                                        ; closure cast; i64* -> i64
  %cloptr8657 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8659 = getelementptr inbounds i64, i64* %cloptr8657, i64 1                    ; &eptr8659[1]
  %eptr8660 = getelementptr inbounds i64, i64* %cloptr8657, i64 2                    ; &eptr8660[2]
  %eptr8661 = getelementptr inbounds i64, i64* %cloptr8657, i64 3                    ; &eptr8661[3]
  store i64 %GcZ$_37map1, i64* %eptr8659                                             ; *eptr8659 = %GcZ$_37map1
  store i64 %jNn$_37foldr, i64* %eptr8660                                            ; *eptr8660 = %jNn$_37foldr
  store i64 %T0D$_37foldr1, i64* %eptr8661                                           ; *eptr8661 = %T0D$_37foldr1
  %eptr8658 = getelementptr inbounds i64, i64* %cloptr8657, i64 0                    ; &cloptr8657[0]
  %f8662 = ptrtoint void(i64,i64,i64)* @lam8130 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8662, i64* %eptr8658                                                   ; store fptr
  %arg7229 = ptrtoint i64* %cloptr8657 to i64                                        ; closure cast; i64* -> i64
  %cloptr8663 = inttoptr i64 %MBU$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8663)                                         ; assert function application
  %i0ptr8664 = getelementptr inbounds i64, i64* %cloptr8663, i64 0                   ; &cloptr8663[0]
  %f8666 = load i64, i64* %i0ptr8664, align 8                                        ; load; *i0ptr8664
  %fptr8665 = inttoptr i64 %f8666 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8665(i64 %MBU$Ycmb, i64 %arg7230, i64 %arg7229)     ; tail call
  ret void
}


define void @lam8423(i64 %env8424, i64 %cont6973, i64 %WnN$f, i64 %IHH$lst) {
  %envptr8667 = inttoptr i64 %env8424 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8668 = getelementptr inbounds i64, i64* %envptr8667, i64 1                  ; &envptr8667[1]
  %T0D$_37foldr1 = load i64, i64* %envptr8668, align 8                               ; load; *envptr8668
  %cloptr8669 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8671 = getelementptr inbounds i64, i64* %cloptr8669, i64 1                    ; &eptr8671[1]
  store i64 %WnN$f, i64* %eptr8671                                                   ; *eptr8671 = %WnN$f
  %eptr8670 = getelementptr inbounds i64, i64* %cloptr8669, i64 0                    ; &cloptr8669[0]
  %f8672 = ptrtoint void(i64,i64,i64,i64)* @lam8421 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8672, i64* %eptr8670                                                   ; store fptr
  %arg7192 = ptrtoint i64* %cloptr8669 to i64                                        ; closure cast; i64* -> i64
  %arg7191 = add i64 0, 0                                                            ; quoted ()
  %cloptr8673 = inttoptr i64 %T0D$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8673)                                         ; assert function application
  %i0ptr8674 = getelementptr inbounds i64, i64* %cloptr8673, i64 0                   ; &cloptr8673[0]
  %f8676 = load i64, i64* %i0ptr8674, align 8                                        ; load; *i0ptr8674
  %fptr8675 = inttoptr i64 %f8676 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8675(i64 %T0D$_37foldr1, i64 %cont6973, i64 %arg7192, i64 %arg7191, i64 %IHH$lst); tail call
  ret void
}


define void @lam8421(i64 %env8422, i64 %cont6974, i64 %cw2$v, i64 %eLA$r) {
  %envptr8677 = inttoptr i64 %env8422 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8678 = getelementptr inbounds i64, i64* %envptr8677, i64 1                  ; &envptr8677[1]
  %WnN$f = load i64, i64* %envptr8678, align 8                                       ; load; *envptr8678
  %cloptr8679 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8681 = getelementptr inbounds i64, i64* %cloptr8679, i64 1                    ; &eptr8681[1]
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8679, i64 2                    ; &eptr8682[2]
  store i64 %eLA$r, i64* %eptr8681                                                   ; *eptr8681 = %eLA$r
  store i64 %cont6974, i64* %eptr8682                                                ; *eptr8682 = %cont6974
  %eptr8680 = getelementptr inbounds i64, i64* %cloptr8679, i64 0                    ; &cloptr8679[0]
  %f8683 = ptrtoint void(i64,i64,i64)* @lam8419 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8683, i64* %eptr8680                                                   ; store fptr
  %arg7196 = ptrtoint i64* %cloptr8679 to i64                                        ; closure cast; i64* -> i64
  %cloptr8684 = inttoptr i64 %WnN$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8684)                                         ; assert function application
  %i0ptr8685 = getelementptr inbounds i64, i64* %cloptr8684, i64 0                   ; &cloptr8684[0]
  %f8687 = load i64, i64* %i0ptr8685, align 8                                        ; load; *i0ptr8685
  %fptr8686 = inttoptr i64 %f8687 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8686(i64 %WnN$f, i64 %arg7196, i64 %cw2$v)          ; tail call
  ret void
}


define void @lam8419(i64 %env8420, i64 %_956975, i64 %a6877) {
  %envptr8688 = inttoptr i64 %env8420 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8689 = getelementptr inbounds i64, i64* %envptr8688, i64 2                  ; &envptr8688[2]
  %cont6974 = load i64, i64* %envptr8689, align 8                                    ; load; *envptr8689
  %envptr8690 = inttoptr i64 %env8420 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8691 = getelementptr inbounds i64, i64* %envptr8690, i64 1                  ; &envptr8690[1]
  %eLA$r = load i64, i64* %envptr8691, align 8                                       ; load; *envptr8691
  %retprim6976 = call i64 @prim_cons(i64 %a6877, i64 %eLA$r)                         ; call prim_cons
  %arg7201 = add i64 0, 0                                                            ; quoted ()
  %cloptr8692 = inttoptr i64 %cont6974 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8692)                                         ; assert function application
  %i0ptr8693 = getelementptr inbounds i64, i64* %cloptr8692, i64 0                   ; &cloptr8692[0]
  %f8695 = load i64, i64* %i0ptr8693, align 8                                        ; load; *i0ptr8693
  %fptr8694 = inttoptr i64 %f8695 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8694(i64 %cont6974, i64 %arg7201, i64 %retprim6976) ; tail call
  ret void
}


define void @lam8415(i64 %env8416, i64 %mNo$args6978) {
  %envptr8696 = inttoptr i64 %env8416 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8697 = getelementptr inbounds i64, i64* %envptr8696, i64 3                  ; &envptr8696[3]
  %UA6$_37last = load i64, i64* %envptr8697, align 8                                 ; load; *envptr8697
  %envptr8698 = inttoptr i64 %env8416 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8699 = getelementptr inbounds i64, i64* %envptr8698, i64 2                  ; &envptr8698[2]
  %jNn$_37foldr = load i64, i64* %envptr8699, align 8                                ; load; *envptr8699
  %envptr8700 = inttoptr i64 %env8416 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8701 = getelementptr inbounds i64, i64* %envptr8700, i64 1                  ; &envptr8700[1]
  %UVE$_37drop_45right = load i64, i64* %envptr8701, align 8                         ; load; *envptr8701
  %cont6977 = call i64 @prim_car(i64 %mNo$args6978)                                  ; call prim_car
  %mNo$args = call i64 @prim_cdr(i64 %mNo$args6978)                                  ; call prim_cdr
  %shI$f = call i64 @prim_car(i64 %mNo$args)                                         ; call prim_car
  %tCg$lsts = call i64 @prim_cdr(i64 %mNo$args)                                      ; call prim_cdr
  %arg7208 = add i64 0, 0                                                            ; quoted ()
  %a6881 = call i64 @prim_cons(i64 %arg7208, i64 %tCg$lsts)                          ; call prim_cons
  %cloptr8702 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8704 = getelementptr inbounds i64, i64* %cloptr8702, i64 1                    ; &eptr8704[1]
  %eptr8705 = getelementptr inbounds i64, i64* %cloptr8702, i64 2                    ; &eptr8705[2]
  %eptr8706 = getelementptr inbounds i64, i64* %cloptr8702, i64 3                    ; &eptr8706[3]
  store i64 %UVE$_37drop_45right, i64* %eptr8704                                     ; *eptr8704 = %UVE$_37drop_45right
  store i64 %shI$f, i64* %eptr8705                                                   ; *eptr8705 = %shI$f
  store i64 %UA6$_37last, i64* %eptr8706                                             ; *eptr8706 = %UA6$_37last
  %eptr8703 = getelementptr inbounds i64, i64* %cloptr8702, i64 0                    ; &cloptr8702[0]
  %f8707 = ptrtoint void(i64,i64)* @lam8412 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8707, i64* %eptr8703                                                   ; store fptr
  %arg7210 = ptrtoint i64* %cloptr8702 to i64                                        ; closure cast; i64* -> i64
  %a6882 = call i64 @prim_cons(i64 %arg7210, i64 %a6881)                             ; call prim_cons
  %cps_45lst6986 = call i64 @prim_cons(i64 %cont6977, i64 %a6882)                    ; call prim_cons
  %cloptr8708 = inttoptr i64 %jNn$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8708)                                         ; assert function application
  %i0ptr8709 = getelementptr inbounds i64, i64* %cloptr8708, i64 0                   ; &cloptr8708[0]
  %f8711 = load i64, i64* %i0ptr8709, align 8                                        ; load; *i0ptr8709
  %fptr8710 = inttoptr i64 %f8711 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8710(i64 %jNn$_37foldr, i64 %cps_45lst6986)         ; tail call
  ret void
}


define void @lam8412(i64 %env8413, i64 %Xk8$fargs6980) {
  %envptr8712 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8713 = getelementptr inbounds i64, i64* %envptr8712, i64 3                  ; &envptr8712[3]
  %UA6$_37last = load i64, i64* %envptr8713, align 8                                 ; load; *envptr8713
  %envptr8714 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8715 = getelementptr inbounds i64, i64* %envptr8714, i64 2                  ; &envptr8714[2]
  %shI$f = load i64, i64* %envptr8715, align 8                                       ; load; *envptr8715
  %envptr8716 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8717 = getelementptr inbounds i64, i64* %envptr8716, i64 1                  ; &envptr8716[1]
  %UVE$_37drop_45right = load i64, i64* %envptr8717, align 8                         ; load; *envptr8717
  %cont6979 = call i64 @prim_car(i64 %Xk8$fargs6980)                                 ; call prim_car
  %Xk8$fargs = call i64 @prim_cdr(i64 %Xk8$fargs6980)                                ; call prim_cdr
  %cloptr8718 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8720 = getelementptr inbounds i64, i64* %cloptr8718, i64 1                    ; &eptr8720[1]
  %eptr8721 = getelementptr inbounds i64, i64* %cloptr8718, i64 2                    ; &eptr8721[2]
  %eptr8722 = getelementptr inbounds i64, i64* %cloptr8718, i64 3                    ; &eptr8722[3]
  %eptr8723 = getelementptr inbounds i64, i64* %cloptr8718, i64 4                    ; &eptr8723[4]
  store i64 %shI$f, i64* %eptr8720                                                   ; *eptr8720 = %shI$f
  store i64 %UA6$_37last, i64* %eptr8721                                             ; *eptr8721 = %UA6$_37last
  store i64 %cont6979, i64* %eptr8722                                                ; *eptr8722 = %cont6979
  store i64 %Xk8$fargs, i64* %eptr8723                                               ; *eptr8723 = %Xk8$fargs
  %eptr8719 = getelementptr inbounds i64, i64* %cloptr8718, i64 0                    ; &cloptr8718[0]
  %f8724 = ptrtoint void(i64,i64,i64)* @lam8410 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8724, i64* %eptr8719                                                   ; store fptr
  %arg7215 = ptrtoint i64* %cloptr8718 to i64                                        ; closure cast; i64* -> i64
  %arg7213 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8725 = inttoptr i64 %UVE$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8725)                                         ; assert function application
  %i0ptr8726 = getelementptr inbounds i64, i64* %cloptr8725, i64 0                   ; &cloptr8725[0]
  %f8728 = load i64, i64* %i0ptr8726, align 8                                        ; load; *i0ptr8726
  %fptr8727 = inttoptr i64 %f8728 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8727(i64 %UVE$_37drop_45right, i64 %arg7215, i64 %Xk8$fargs, i64 %arg7213); tail call
  ret void
}


define void @lam8410(i64 %env8411, i64 %_956981, i64 %a6878) {
  %envptr8729 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8730 = getelementptr inbounds i64, i64* %envptr8729, i64 4                  ; &envptr8729[4]
  %Xk8$fargs = load i64, i64* %envptr8730, align 8                                   ; load; *envptr8730
  %envptr8731 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8732 = getelementptr inbounds i64, i64* %envptr8731, i64 3                  ; &envptr8731[3]
  %cont6979 = load i64, i64* %envptr8732, align 8                                    ; load; *envptr8732
  %envptr8733 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8734 = getelementptr inbounds i64, i64* %envptr8733, i64 2                  ; &envptr8733[2]
  %UA6$_37last = load i64, i64* %envptr8734, align 8                                 ; load; *envptr8734
  %envptr8735 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8736 = getelementptr inbounds i64, i64* %envptr8735, i64 1                  ; &envptr8735[1]
  %shI$f = load i64, i64* %envptr8736, align 8                                       ; load; *envptr8736
  %cloptr8737 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8739 = getelementptr inbounds i64, i64* %cloptr8737, i64 1                    ; &eptr8739[1]
  %eptr8740 = getelementptr inbounds i64, i64* %cloptr8737, i64 2                    ; &eptr8740[2]
  %eptr8741 = getelementptr inbounds i64, i64* %cloptr8737, i64 3                    ; &eptr8741[3]
  store i64 %UA6$_37last, i64* %eptr8739                                             ; *eptr8739 = %UA6$_37last
  store i64 %cont6979, i64* %eptr8740                                                ; *eptr8740 = %cont6979
  store i64 %Xk8$fargs, i64* %eptr8741                                               ; *eptr8741 = %Xk8$fargs
  %eptr8738 = getelementptr inbounds i64, i64* %cloptr8737, i64 0                    ; &cloptr8737[0]
  %f8742 = ptrtoint void(i64,i64,i64)* @lam8408 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8742, i64* %eptr8738                                                   ; store fptr
  %arg7218 = ptrtoint i64* %cloptr8737 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst6985 = call i64 @prim_cons(i64 %arg7218, i64 %a6878)                     ; call prim_cons
  %cloptr8743 = inttoptr i64 %shI$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8743)                                         ; assert function application
  %i0ptr8744 = getelementptr inbounds i64, i64* %cloptr8743, i64 0                   ; &cloptr8743[0]
  %f8746 = load i64, i64* %i0ptr8744, align 8                                        ; load; *i0ptr8744
  %fptr8745 = inttoptr i64 %f8746 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8745(i64 %shI$f, i64 %cps_45lst6985)                ; tail call
  ret void
}


define void @lam8408(i64 %env8409, i64 %_956982, i64 %a6879) {
  %envptr8747 = inttoptr i64 %env8409 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8748 = getelementptr inbounds i64, i64* %envptr8747, i64 3                  ; &envptr8747[3]
  %Xk8$fargs = load i64, i64* %envptr8748, align 8                                   ; load; *envptr8748
  %envptr8749 = inttoptr i64 %env8409 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8750 = getelementptr inbounds i64, i64* %envptr8749, i64 2                  ; &envptr8749[2]
  %cont6979 = load i64, i64* %envptr8750, align 8                                    ; load; *envptr8750
  %envptr8751 = inttoptr i64 %env8409 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8752 = getelementptr inbounds i64, i64* %envptr8751, i64 1                  ; &envptr8751[1]
  %UA6$_37last = load i64, i64* %envptr8752, align 8                                 ; load; *envptr8752
  %cloptr8753 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8755 = getelementptr inbounds i64, i64* %cloptr8753, i64 1                    ; &eptr8755[1]
  %eptr8756 = getelementptr inbounds i64, i64* %cloptr8753, i64 2                    ; &eptr8756[2]
  store i64 %cont6979, i64* %eptr8755                                                ; *eptr8755 = %cont6979
  store i64 %a6879, i64* %eptr8756                                                   ; *eptr8756 = %a6879
  %eptr8754 = getelementptr inbounds i64, i64* %cloptr8753, i64 0                    ; &cloptr8753[0]
  %f8757 = ptrtoint void(i64,i64,i64)* @lam8406 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8757, i64* %eptr8754                                                   ; store fptr
  %arg7220 = ptrtoint i64* %cloptr8753 to i64                                        ; closure cast; i64* -> i64
  %cloptr8758 = inttoptr i64 %UA6$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8758)                                         ; assert function application
  %i0ptr8759 = getelementptr inbounds i64, i64* %cloptr8758, i64 0                   ; &cloptr8758[0]
  %f8761 = load i64, i64* %i0ptr8759, align 8                                        ; load; *i0ptr8759
  %fptr8760 = inttoptr i64 %f8761 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8760(i64 %UA6$_37last, i64 %arg7220, i64 %Xk8$fargs); tail call
  ret void
}


define void @lam8406(i64 %env8407, i64 %_956983, i64 %a6880) {
  %envptr8762 = inttoptr i64 %env8407 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8763 = getelementptr inbounds i64, i64* %envptr8762, i64 2                  ; &envptr8762[2]
  %a6879 = load i64, i64* %envptr8763, align 8                                       ; load; *envptr8763
  %envptr8764 = inttoptr i64 %env8407 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8765 = getelementptr inbounds i64, i64* %envptr8764, i64 1                  ; &envptr8764[1]
  %cont6979 = load i64, i64* %envptr8765, align 8                                    ; load; *envptr8765
  %retprim6984 = call i64 @prim_cons(i64 %a6879, i64 %a6880)                         ; call prim_cons
  %arg7225 = add i64 0, 0                                                            ; quoted ()
  %cloptr8766 = inttoptr i64 %cont6979 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8766)                                         ; assert function application
  %i0ptr8767 = getelementptr inbounds i64, i64* %cloptr8766, i64 0                   ; &cloptr8766[0]
  %f8769 = load i64, i64* %i0ptr8767, align 8                                        ; load; *i0ptr8767
  %fptr8768 = inttoptr i64 %f8769 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8768(i64 %cont6979, i64 %arg7225, i64 %retprim6984) ; tail call
  ret void
}


define void @lam8402(i64 %env8403, i64 %_956987, i64 %ZMr$_37foldl) {
  %envptr8770 = inttoptr i64 %env8403 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8771 = getelementptr inbounds i64, i64* %envptr8770, i64 2                  ; &envptr8770[2]
  %CKk$_37foldl1 = load i64, i64* %envptr8771, align 8                               ; load; *envptr8771
  %envptr8772 = inttoptr i64 %env8403 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8773 = getelementptr inbounds i64, i64* %envptr8772, i64 1                  ; &envptr8772[1]
  %Fqh$_37length = load i64, i64* %envptr8773, align 8                               ; load; *envptr8773
  %cloptr8774 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8775 = getelementptr inbounds i64, i64* %cloptr8774, i64 0                    ; &cloptr8774[0]
  %f8776 = ptrtoint void(i64,i64,i64,i64)* @lam8400 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8776, i64* %eptr8775                                                   ; store fptr
  %ARq$_37_62 = ptrtoint i64* %cloptr8774 to i64                                     ; closure cast; i64* -> i64
  %cloptr8777 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8778 = getelementptr inbounds i64, i64* %cloptr8777, i64 0                    ; &cloptr8777[0]
  %f8779 = ptrtoint void(i64,i64,i64,i64)* @lam8397 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8779, i64* %eptr8778                                                   ; store fptr
  %SCe$_37_62_61 = ptrtoint i64* %cloptr8777 to i64                                  ; closure cast; i64* -> i64
  %arg7245 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7244 = add i64 0, 0                                                            ; quoted ()
  %oZ7$_37append = call i64 @prim_make_45vector(i64 %arg7245, i64 %arg7244)          ; call prim_make_45vector
  %arg7247 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8780 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8782 = getelementptr inbounds i64, i64* %cloptr8780, i64 1                    ; &eptr8782[1]
  store i64 %oZ7$_37append, i64* %eptr8782                                           ; *eptr8782 = %oZ7$_37append
  %eptr8781 = getelementptr inbounds i64, i64* %cloptr8780, i64 0                    ; &cloptr8780[0]
  %f8783 = ptrtoint void(i64,i64,i64,i64)* @lam8391 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8783, i64* %eptr8781                                                   ; store fptr
  %arg7246 = ptrtoint i64* %cloptr8780 to i64                                        ; closure cast; i64* -> i64
  %Qlw$_950 = call i64 @prim_vector_45set_33(i64 %oZ7$_37append, i64 %arg7247, i64 %arg7246); call prim_vector_45set_33
  %arg7266 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7077 = call i64 @prim_vector_45ref(i64 %oZ7$_37append, i64 %arg7266)       ; call prim_vector_45ref
  %cloptr8784 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8786 = getelementptr inbounds i64, i64* %cloptr8784, i64 1                    ; &eptr8786[1]
  %eptr8787 = getelementptr inbounds i64, i64* %cloptr8784, i64 2                    ; &eptr8787[2]
  %eptr8788 = getelementptr inbounds i64, i64* %cloptr8784, i64 3                    ; &eptr8788[3]
  store i64 %ARq$_37_62, i64* %eptr8786                                              ; *eptr8786 = %ARq$_37_62
  store i64 %Fqh$_37length, i64* %eptr8787                                           ; *eptr8787 = %Fqh$_37length
  store i64 %CKk$_37foldl1, i64* %eptr8788                                           ; *eptr8788 = %CKk$_37foldl1
  %eptr8785 = getelementptr inbounds i64, i64* %cloptr8784, i64 0                    ; &cloptr8784[0]
  %f8789 = ptrtoint void(i64,i64,i64)* @lam8383 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8789, i64* %eptr8785                                                   ; store fptr
  %arg7270 = ptrtoint i64* %cloptr8784 to i64                                        ; closure cast; i64* -> i64
  %arg7269 = add i64 0, 0                                                            ; quoted ()
  %cloptr8790 = inttoptr i64 %arg7270 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8790)                                         ; assert function application
  %i0ptr8791 = getelementptr inbounds i64, i64* %cloptr8790, i64 0                   ; &cloptr8790[0]
  %f8793 = load i64, i64* %i0ptr8791, align 8                                        ; load; *i0ptr8791
  %fptr8792 = inttoptr i64 %f8793 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8792(i64 %arg7270, i64 %arg7269, i64 %retprim7077)  ; tail call
  ret void
}


define void @lam8400(i64 %env8401, i64 %cont6988, i64 %dm0$a, i64 %eem$b) {
  %a6890 = call i64 @prim__60_61(i64 %dm0$a, i64 %eem$b)                             ; call prim__60_61
  %retprim6989 = call i64 @prim_not(i64 %a6890)                                      ; call prim_not
  %arg7236 = add i64 0, 0                                                            ; quoted ()
  %cloptr8794 = inttoptr i64 %cont6988 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8794)                                         ; assert function application
  %i0ptr8795 = getelementptr inbounds i64, i64* %cloptr8794, i64 0                   ; &cloptr8794[0]
  %f8797 = load i64, i64* %i0ptr8795, align 8                                        ; load; *i0ptr8795
  %fptr8796 = inttoptr i64 %f8797 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8796(i64 %cont6988, i64 %arg7236, i64 %retprim6989) ; tail call
  ret void
}


define void @lam8397(i64 %env8398, i64 %cont6990, i64 %aIh$a, i64 %O48$b) {
  %a6891 = call i64 @prim__60(i64 %aIh$a, i64 %O48$b)                                ; call prim__60
  %retprim6991 = call i64 @prim_not(i64 %a6891)                                      ; call prim_not
  %arg7242 = add i64 0, 0                                                            ; quoted ()
  %cloptr8798 = inttoptr i64 %cont6990 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8798)                                         ; assert function application
  %i0ptr8799 = getelementptr inbounds i64, i64* %cloptr8798, i64 0                   ; &cloptr8798[0]
  %f8801 = load i64, i64* %i0ptr8799, align 8                                        ; load; *i0ptr8799
  %fptr8800 = inttoptr i64 %f8801 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8800(i64 %cont6990, i64 %arg7242, i64 %retprim6991) ; tail call
  ret void
}


define void @lam8391(i64 %env8392, i64 %cont7074, i64 %YQS$ls0, i64 %N0u$ls1) {
  %envptr8802 = inttoptr i64 %env8392 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8803 = getelementptr inbounds i64, i64* %envptr8802, i64 1                  ; &envptr8802[1]
  %oZ7$_37append = load i64, i64* %envptr8803, align 8                               ; load; *envptr8803
  %a6892 = call i64 @prim_null_63(i64 %YQS$ls0)                                      ; call prim_null_63
  %cmp8804 = icmp eq i64 %a6892, 15                                                  ; false?
  br i1 %cmp8804, label %else8806, label %then8805                                   ; if

then8805:
  %arg7251 = add i64 0, 0                                                            ; quoted ()
  %cloptr8807 = inttoptr i64 %cont7074 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8807)                                         ; assert function application
  %i0ptr8808 = getelementptr inbounds i64, i64* %cloptr8807, i64 0                   ; &cloptr8807[0]
  %f8810 = load i64, i64* %i0ptr8808, align 8                                        ; load; *i0ptr8808
  %fptr8809 = inttoptr i64 %f8810 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8809(i64 %cont7074, i64 %arg7251, i64 %N0u$ls1)     ; tail call
  ret void

else8806:
  %a6893 = call i64 @prim_car(i64 %YQS$ls0)                                          ; call prim_car
  %arg7254 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6894 = call i64 @prim_vector_45ref(i64 %oZ7$_37append, i64 %arg7254)             ; call prim_vector_45ref
  %a6895 = call i64 @prim_cdr(i64 %YQS$ls0)                                          ; call prim_cdr
  %cloptr8811 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8813 = getelementptr inbounds i64, i64* %cloptr8811, i64 1                    ; &eptr8813[1]
  %eptr8814 = getelementptr inbounds i64, i64* %cloptr8811, i64 2                    ; &eptr8814[2]
  store i64 %cont7074, i64* %eptr8813                                                ; *eptr8813 = %cont7074
  store i64 %a6893, i64* %eptr8814                                                   ; *eptr8814 = %a6893
  %eptr8812 = getelementptr inbounds i64, i64* %cloptr8811, i64 0                    ; &cloptr8811[0]
  %f8815 = ptrtoint void(i64,i64,i64)* @lam8388 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8815, i64* %eptr8812                                                   ; store fptr
  %arg7259 = ptrtoint i64* %cloptr8811 to i64                                        ; closure cast; i64* -> i64
  %cloptr8816 = inttoptr i64 %a6894 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8816)                                         ; assert function application
  %i0ptr8817 = getelementptr inbounds i64, i64* %cloptr8816, i64 0                   ; &cloptr8816[0]
  %f8819 = load i64, i64* %i0ptr8817, align 8                                        ; load; *i0ptr8817
  %fptr8818 = inttoptr i64 %f8819 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8818(i64 %a6894, i64 %arg7259, i64 %a6895, i64 %N0u$ls1); tail call
  ret void
}


define void @lam8388(i64 %env8389, i64 %_957075, i64 %a6896) {
  %envptr8820 = inttoptr i64 %env8389 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8821 = getelementptr inbounds i64, i64* %envptr8820, i64 2                  ; &envptr8820[2]
  %a6893 = load i64, i64* %envptr8821, align 8                                       ; load; *envptr8821
  %envptr8822 = inttoptr i64 %env8389 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8823 = getelementptr inbounds i64, i64* %envptr8822, i64 1                  ; &envptr8822[1]
  %cont7074 = load i64, i64* %envptr8823, align 8                                    ; load; *envptr8823
  %retprim7076 = call i64 @prim_cons(i64 %a6893, i64 %a6896)                         ; call prim_cons
  %arg7264 = add i64 0, 0                                                            ; quoted ()
  %cloptr8824 = inttoptr i64 %cont7074 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8824)                                         ; assert function application
  %i0ptr8825 = getelementptr inbounds i64, i64* %cloptr8824, i64 0                   ; &cloptr8824[0]
  %f8827 = load i64, i64* %i0ptr8825, align 8                                        ; load; *i0ptr8825
  %fptr8826 = inttoptr i64 %f8827 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8826(i64 %cont7074, i64 %arg7264, i64 %retprim7076) ; tail call
  ret void
}


define void @lam8383(i64 %env8384, i64 %_956992, i64 %Je3$_37append) {
  %envptr8828 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8829 = getelementptr inbounds i64, i64* %envptr8828, i64 3                  ; &envptr8828[3]
  %CKk$_37foldl1 = load i64, i64* %envptr8829, align 8                               ; load; *envptr8829
  %envptr8830 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8831 = getelementptr inbounds i64, i64* %envptr8830, i64 2                  ; &envptr8830[2]
  %Fqh$_37length = load i64, i64* %envptr8831, align 8                               ; load; *envptr8831
  %envptr8832 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8833 = getelementptr inbounds i64, i64* %envptr8832, i64 1                  ; &envptr8832[1]
  %ARq$_37_62 = load i64, i64* %envptr8833, align 8                                  ; load; *envptr8833
  %cloptr8834 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8835 = getelementptr inbounds i64, i64* %cloptr8834, i64 0                    ; &cloptr8834[0]
  %f8836 = ptrtoint void(i64,i64,i64)* @lam8381 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8836, i64* %eptr8835                                                   ; store fptr
  %Sie$_37list_63 = ptrtoint i64* %cloptr8834 to i64                                 ; closure cast; i64* -> i64
  %cloptr8837 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8838 = getelementptr inbounds i64, i64* %cloptr8837, i64 0                    ; &cloptr8837[0]
  %f8839 = ptrtoint void(i64,i64,i64,i64)* @lam8341 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8839, i64* %eptr8838                                                   ; store fptr
  %RGf$_37drop = ptrtoint i64* %cloptr8837 to i64                                    ; closure cast; i64* -> i64
  %cloptr8840 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8841 = getelementptr inbounds i64, i64* %cloptr8840, i64 0                    ; &cloptr8840[0]
  %f8842 = ptrtoint void(i64,i64,i64,i64)* @lam8301 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8842, i64* %eptr8841                                                   ; store fptr
  %b1H$_37memv = ptrtoint i64* %cloptr8840 to i64                                    ; closure cast; i64* -> i64
  %cloptr8843 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8845 = getelementptr inbounds i64, i64* %cloptr8843, i64 1                    ; &eptr8845[1]
  store i64 %CKk$_37foldl1, i64* %eptr8845                                           ; *eptr8845 = %CKk$_37foldl1
  %eptr8844 = getelementptr inbounds i64, i64* %cloptr8843, i64 0                    ; &cloptr8843[0]
  %f8846 = ptrtoint void(i64,i64)* @lam8270 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8846, i64* %eptr8844                                                   ; store fptr
  %mdE$_37_47 = ptrtoint i64* %cloptr8843 to i64                                     ; closure cast; i64* -> i64
  %cloptr8847 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8848 = getelementptr inbounds i64, i64* %cloptr8847, i64 0                    ; &cloptr8847[0]
  %f8849 = ptrtoint void(i64,i64,i64)* @lam8262 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8849, i64* %eptr8848                                                   ; store fptr
  %USz$_37first = ptrtoint i64* %cloptr8847 to i64                                   ; closure cast; i64* -> i64
  %cloptr8850 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8851 = getelementptr inbounds i64, i64* %cloptr8850, i64 0                    ; &cloptr8850[0]
  %f8852 = ptrtoint void(i64,i64,i64)* @lam8259 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8852, i64* %eptr8851                                                   ; store fptr
  %pWK$_37second = ptrtoint i64* %cloptr8850 to i64                                  ; closure cast; i64* -> i64
  %cloptr8853 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8854 = getelementptr inbounds i64, i64* %cloptr8853, i64 0                    ; &cloptr8853[0]
  %f8855 = ptrtoint void(i64,i64,i64)* @lam8256 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8855, i64* %eptr8854                                                   ; store fptr
  %GXR$_37third = ptrtoint i64* %cloptr8853 to i64                                   ; closure cast; i64* -> i64
  %cloptr8856 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8857 = getelementptr inbounds i64, i64* %cloptr8856, i64 0                    ; &cloptr8856[0]
  %f8858 = ptrtoint void(i64,i64,i64)* @lam8253 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8858, i64* %eptr8857                                                   ; store fptr
  %TjP$_37fourth = ptrtoint i64* %cloptr8856 to i64                                  ; closure cast; i64* -> i64
  %cloptr8859 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8860 = getelementptr inbounds i64, i64* %cloptr8859, i64 0                    ; &cloptr8859[0]
  %f8861 = ptrtoint void(i64,i64,i64)* @lam8250 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8861, i64* %eptr8860                                                   ; store fptr
  %YsD$promise_63 = ptrtoint i64* %cloptr8859 to i64                                 ; closure cast; i64* -> i64
  %cloptr8862 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8863 = getelementptr inbounds i64, i64* %cloptr8862, i64 0                    ; &cloptr8862[0]
  %f8864 = ptrtoint void(i64,i64)* @lam8244 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8864, i64* %eptr8863                                                   ; store fptr
  %arg7532 = ptrtoint i64* %cloptr8862 to i64                                        ; closure cast; i64* -> i64
  %cloptr8865 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8867 = getelementptr inbounds i64, i64* %cloptr8865, i64 1                    ; &eptr8867[1]
  %eptr8868 = getelementptr inbounds i64, i64* %cloptr8865, i64 2                    ; &eptr8868[2]
  %eptr8869 = getelementptr inbounds i64, i64* %cloptr8865, i64 3                    ; &eptr8869[3]
  store i64 %ARq$_37_62, i64* %eptr8867                                              ; *eptr8867 = %ARq$_37_62
  store i64 %RGf$_37drop, i64* %eptr8868                                             ; *eptr8868 = %RGf$_37drop
  store i64 %Fqh$_37length, i64* %eptr8869                                           ; *eptr8869 = %Fqh$_37length
  %eptr8866 = getelementptr inbounds i64, i64* %cloptr8865, i64 0                    ; &cloptr8865[0]
  %f8870 = ptrtoint void(i64,i64,i64)* @lam8241 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8870, i64* %eptr8866                                                   ; store fptr
  %arg7531 = ptrtoint i64* %cloptr8865 to i64                                        ; closure cast; i64* -> i64
  %rva7993 = add i64 0, 0                                                            ; quoted ()
  %rva7992 = call i64 @prim_cons(i64 %arg7531, i64 %rva7993)                         ; call prim_cons
  %cloptr8871 = inttoptr i64 %arg7532 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8871)                                         ; assert function application
  %i0ptr8872 = getelementptr inbounds i64, i64* %cloptr8871, i64 0                   ; &cloptr8871[0]
  %f8874 = load i64, i64* %i0ptr8872, align 8                                        ; load; *i0ptr8872
  %fptr8873 = inttoptr i64 %f8874 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8873(i64 %arg7532, i64 %rva7992)                    ; tail call
  ret void
}


define void @lam8381(i64 %env8382, i64 %cont6993, i64 %QGD$a) {
  %arg7272 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %frx$a = call i64 @prim_make_45vector(i64 %arg7272, i64 %QGD$a)                    ; call prim_make_45vector
  %cloptr8875 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8876 = getelementptr inbounds i64, i64* %cloptr8875, i64 0                    ; &cloptr8875[0]
  %f8877 = ptrtoint void(i64,i64,i64)* @lam8378 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8877, i64* %eptr8876                                                   ; store fptr
  %arg7275 = ptrtoint i64* %cloptr8875 to i64                                        ; closure cast; i64* -> i64
  %cloptr8878 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8880 = getelementptr inbounds i64, i64* %cloptr8878, i64 1                    ; &eptr8880[1]
  %eptr8881 = getelementptr inbounds i64, i64* %cloptr8878, i64 2                    ; &eptr8881[2]
  store i64 %frx$a, i64* %eptr8880                                                   ; *eptr8880 = %frx$a
  store i64 %cont6993, i64* %eptr8881                                                ; *eptr8881 = %cont6993
  %eptr8879 = getelementptr inbounds i64, i64* %cloptr8878, i64 0                    ; &cloptr8878[0]
  %f8882 = ptrtoint void(i64,i64,i64)* @lam8375 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8882, i64* %eptr8879                                                   ; store fptr
  %arg7274 = ptrtoint i64* %cloptr8878 to i64                                        ; closure cast; i64* -> i64
  %cloptr8883 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8885 = getelementptr inbounds i64, i64* %cloptr8883, i64 1                    ; &eptr8885[1]
  %eptr8886 = getelementptr inbounds i64, i64* %cloptr8883, i64 2                    ; &eptr8886[2]
  store i64 %frx$a, i64* %eptr8885                                                   ; *eptr8885 = %frx$a
  store i64 %cont6993, i64* %eptr8886                                                ; *eptr8886 = %cont6993
  %eptr8884 = getelementptr inbounds i64, i64* %cloptr8883, i64 0                    ; &cloptr8883[0]
  %f8887 = ptrtoint void(i64,i64,i64)* @lam8358 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8887, i64* %eptr8884                                                   ; store fptr
  %arg7273 = ptrtoint i64* %cloptr8883 to i64                                        ; closure cast; i64* -> i64
  %cloptr8888 = inttoptr i64 %arg7275 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8888)                                         ; assert function application
  %i0ptr8889 = getelementptr inbounds i64, i64* %cloptr8888, i64 0                   ; &cloptr8888[0]
  %f8891 = load i64, i64* %i0ptr8889, align 8                                        ; load; *i0ptr8889
  %fptr8890 = inttoptr i64 %f8891 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8890(i64 %arg7275, i64 %arg7274, i64 %arg7273)      ; tail call
  ret void
}


define void @lam8378(i64 %env8379, i64 %cont6999, i64 %V8k$k) {
  %arg7277 = add i64 0, 0                                                            ; quoted ()
  %cloptr8892 = inttoptr i64 %cont6999 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8892)                                         ; assert function application
  %i0ptr8893 = getelementptr inbounds i64, i64* %cloptr8892, i64 0                   ; &cloptr8892[0]
  %f8895 = load i64, i64* %i0ptr8893, align 8                                        ; load; *i0ptr8893
  %fptr8894 = inttoptr i64 %f8895 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8894(i64 %cont6999, i64 %arg7277, i64 %V8k$k)       ; tail call
  ret void
}


define void @lam8375(i64 %env8376, i64 %_956994, i64 %IG7$cc) {
  %envptr8896 = inttoptr i64 %env8376 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8897 = getelementptr inbounds i64, i64* %envptr8896, i64 2                  ; &envptr8896[2]
  %cont6993 = load i64, i64* %envptr8897, align 8                                    ; load; *envptr8897
  %envptr8898 = inttoptr i64 %env8376 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8899 = getelementptr inbounds i64, i64* %envptr8898, i64 1                  ; &envptr8898[1]
  %frx$a = load i64, i64* %envptr8899, align 8                                       ; load; *envptr8899
  %arg7279 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6897 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7279)                     ; call prim_vector_45ref
  %a6898 = call i64 @prim_null_63(i64 %a6897)                                        ; call prim_null_63
  %cmp8900 = icmp eq i64 %a6898, 15                                                  ; false?
  br i1 %cmp8900, label %else8902, label %then8901                                   ; if

then8901:
  %arg7283 = add i64 0, 0                                                            ; quoted ()
  %arg7282 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr8903 = inttoptr i64 %cont6993 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8903)                                         ; assert function application
  %i0ptr8904 = getelementptr inbounds i64, i64* %cloptr8903, i64 0                   ; &cloptr8903[0]
  %f8906 = load i64, i64* %i0ptr8904, align 8                                        ; load; *i0ptr8904
  %fptr8905 = inttoptr i64 %f8906 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8905(i64 %cont6993, i64 %arg7283, i64 %arg7282)     ; tail call
  ret void

else8902:
  %arg7285 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6899 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7285)                     ; call prim_vector_45ref
  %a6900 = call i64 @prim_cons_63(i64 %a6899)                                        ; call prim_cons_63
  %cmp8907 = icmp eq i64 %a6900, 15                                                  ; false?
  br i1 %cmp8907, label %else8909, label %then8908                                   ; if

then8908:
  %arg7288 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6901 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7288)                     ; call prim_vector_45ref
  %retprim6998 = call i64 @prim_cdr(i64 %a6901)                                      ; call prim_cdr
  %cloptr8910 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8912 = getelementptr inbounds i64, i64* %cloptr8910, i64 1                    ; &eptr8912[1]
  %eptr8913 = getelementptr inbounds i64, i64* %cloptr8910, i64 2                    ; &eptr8913[2]
  %eptr8914 = getelementptr inbounds i64, i64* %cloptr8910, i64 3                    ; &eptr8914[3]
  store i64 %IG7$cc, i64* %eptr8912                                                  ; *eptr8912 = %IG7$cc
  store i64 %frx$a, i64* %eptr8913                                                   ; *eptr8913 = %frx$a
  store i64 %cont6993, i64* %eptr8914                                                ; *eptr8914 = %cont6993
  %eptr8911 = getelementptr inbounds i64, i64* %cloptr8910, i64 0                    ; &cloptr8910[0]
  %f8915 = ptrtoint void(i64,i64,i64)* @lam8368 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8915, i64* %eptr8911                                                   ; store fptr
  %arg7293 = ptrtoint i64* %cloptr8910 to i64                                        ; closure cast; i64* -> i64
  %arg7292 = add i64 0, 0                                                            ; quoted ()
  %cloptr8916 = inttoptr i64 %arg7293 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8916)                                         ; assert function application
  %i0ptr8917 = getelementptr inbounds i64, i64* %cloptr8916, i64 0                   ; &cloptr8916[0]
  %f8919 = load i64, i64* %i0ptr8917, align 8                                        ; load; *i0ptr8917
  %fptr8918 = inttoptr i64 %f8919 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8918(i64 %arg7293, i64 %arg7292, i64 %retprim6998)  ; tail call
  ret void

else8909:
  %arg7307 = add i64 0, 0                                                            ; quoted ()
  %arg7306 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr8920 = inttoptr i64 %cont6993 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8920)                                         ; assert function application
  %i0ptr8921 = getelementptr inbounds i64, i64* %cloptr8920, i64 0                   ; &cloptr8920[0]
  %f8923 = load i64, i64* %i0ptr8921, align 8                                        ; load; *i0ptr8921
  %fptr8922 = inttoptr i64 %f8923 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8922(i64 %cont6993, i64 %arg7307, i64 %arg7306)     ; tail call
  ret void
}


define void @lam8368(i64 %env8369, i64 %_956995, i64 %SKi$b) {
  %envptr8924 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8925 = getelementptr inbounds i64, i64* %envptr8924, i64 3                  ; &envptr8924[3]
  %cont6993 = load i64, i64* %envptr8925, align 8                                    ; load; *envptr8925
  %envptr8926 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8927 = getelementptr inbounds i64, i64* %envptr8926, i64 2                  ; &envptr8926[2]
  %frx$a = load i64, i64* %envptr8927, align 8                                       ; load; *envptr8927
  %envptr8928 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8929 = getelementptr inbounds i64, i64* %envptr8928, i64 1                  ; &envptr8928[1]
  %IG7$cc = load i64, i64* %envptr8929, align 8                                      ; load; *envptr8929
  %arg7294 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6902 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7294)                     ; call prim_vector_45ref
  %a6903 = call i64 @prim_cdr(i64 %a6902)                                            ; call prim_cdr
  %arg7298 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim6997 = call i64 @prim_vector_45set_33(i64 %frx$a, i64 %arg7298, i64 %a6903); call prim_vector_45set_33
  %cloptr8930 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8932 = getelementptr inbounds i64, i64* %cloptr8930, i64 1                    ; &eptr8932[1]
  %eptr8933 = getelementptr inbounds i64, i64* %cloptr8930, i64 2                    ; &eptr8933[2]
  store i64 %IG7$cc, i64* %eptr8932                                                  ; *eptr8932 = %IG7$cc
  store i64 %cont6993, i64* %eptr8933                                                ; *eptr8933 = %cont6993
  %eptr8931 = getelementptr inbounds i64, i64* %cloptr8930, i64 0                    ; &cloptr8930[0]
  %f8934 = ptrtoint void(i64,i64,i64)* @lam8364 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8934, i64* %eptr8931                                                   ; store fptr
  %arg7302 = ptrtoint i64* %cloptr8930 to i64                                        ; closure cast; i64* -> i64
  %arg7301 = add i64 0, 0                                                            ; quoted ()
  %cloptr8935 = inttoptr i64 %arg7302 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8935)                                         ; assert function application
  %i0ptr8936 = getelementptr inbounds i64, i64* %cloptr8935, i64 0                   ; &cloptr8935[0]
  %f8938 = load i64, i64* %i0ptr8936, align 8                                        ; load; *i0ptr8936
  %fptr8937 = inttoptr i64 %f8938 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8937(i64 %arg7302, i64 %arg7301, i64 %retprim6997)  ; tail call
  ret void
}


define void @lam8364(i64 %env8365, i64 %_956996, i64 %iNj$_950) {
  %envptr8939 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8940 = getelementptr inbounds i64, i64* %envptr8939, i64 2                  ; &envptr8939[2]
  %cont6993 = load i64, i64* %envptr8940, align 8                                    ; load; *envptr8940
  %envptr8941 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8942 = getelementptr inbounds i64, i64* %envptr8941, i64 1                  ; &envptr8941[1]
  %IG7$cc = load i64, i64* %envptr8942, align 8                                      ; load; *envptr8942
  %cloptr8943 = inttoptr i64 %IG7$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8943)                                         ; assert function application
  %i0ptr8944 = getelementptr inbounds i64, i64* %cloptr8943, i64 0                   ; &cloptr8943[0]
  %f8946 = load i64, i64* %i0ptr8944, align 8                                        ; load; *i0ptr8944
  %fptr8945 = inttoptr i64 %f8946 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8945(i64 %IG7$cc, i64 %cont6993, i64 %IG7$cc)       ; tail call
  ret void
}


define void @lam8358(i64 %env8359, i64 %_956994, i64 %IG7$cc) {
  %envptr8947 = inttoptr i64 %env8359 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8948 = getelementptr inbounds i64, i64* %envptr8947, i64 2                  ; &envptr8947[2]
  %cont6993 = load i64, i64* %envptr8948, align 8                                    ; load; *envptr8948
  %envptr8949 = inttoptr i64 %env8359 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8950 = getelementptr inbounds i64, i64* %envptr8949, i64 1                  ; &envptr8949[1]
  %frx$a = load i64, i64* %envptr8950, align 8                                       ; load; *envptr8950
  %arg7309 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6897 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7309)                     ; call prim_vector_45ref
  %a6898 = call i64 @prim_null_63(i64 %a6897)                                        ; call prim_null_63
  %cmp8951 = icmp eq i64 %a6898, 15                                                  ; false?
  br i1 %cmp8951, label %else8953, label %then8952                                   ; if

then8952:
  %arg7313 = add i64 0, 0                                                            ; quoted ()
  %arg7312 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr8954 = inttoptr i64 %cont6993 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8954)                                         ; assert function application
  %i0ptr8955 = getelementptr inbounds i64, i64* %cloptr8954, i64 0                   ; &cloptr8954[0]
  %f8957 = load i64, i64* %i0ptr8955, align 8                                        ; load; *i0ptr8955
  %fptr8956 = inttoptr i64 %f8957 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8956(i64 %cont6993, i64 %arg7313, i64 %arg7312)     ; tail call
  ret void

else8953:
  %arg7315 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6899 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7315)                     ; call prim_vector_45ref
  %a6900 = call i64 @prim_cons_63(i64 %a6899)                                        ; call prim_cons_63
  %cmp8958 = icmp eq i64 %a6900, 15                                                  ; false?
  br i1 %cmp8958, label %else8960, label %then8959                                   ; if

then8959:
  %arg7318 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6901 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7318)                     ; call prim_vector_45ref
  %retprim6998 = call i64 @prim_cdr(i64 %a6901)                                      ; call prim_cdr
  %cloptr8961 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8963 = getelementptr inbounds i64, i64* %cloptr8961, i64 1                    ; &eptr8963[1]
  %eptr8964 = getelementptr inbounds i64, i64* %cloptr8961, i64 2                    ; &eptr8964[2]
  %eptr8965 = getelementptr inbounds i64, i64* %cloptr8961, i64 3                    ; &eptr8965[3]
  store i64 %IG7$cc, i64* %eptr8963                                                  ; *eptr8963 = %IG7$cc
  store i64 %frx$a, i64* %eptr8964                                                   ; *eptr8964 = %frx$a
  store i64 %cont6993, i64* %eptr8965                                                ; *eptr8965 = %cont6993
  %eptr8962 = getelementptr inbounds i64, i64* %cloptr8961, i64 0                    ; &cloptr8961[0]
  %f8966 = ptrtoint void(i64,i64,i64)* @lam8351 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8966, i64* %eptr8962                                                   ; store fptr
  %arg7323 = ptrtoint i64* %cloptr8961 to i64                                        ; closure cast; i64* -> i64
  %arg7322 = add i64 0, 0                                                            ; quoted ()
  %cloptr8967 = inttoptr i64 %arg7323 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8967)                                         ; assert function application
  %i0ptr8968 = getelementptr inbounds i64, i64* %cloptr8967, i64 0                   ; &cloptr8967[0]
  %f8970 = load i64, i64* %i0ptr8968, align 8                                        ; load; *i0ptr8968
  %fptr8969 = inttoptr i64 %f8970 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8969(i64 %arg7323, i64 %arg7322, i64 %retprim6998)  ; tail call
  ret void

else8960:
  %arg7337 = add i64 0, 0                                                            ; quoted ()
  %arg7336 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr8971 = inttoptr i64 %cont6993 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8971)                                         ; assert function application
  %i0ptr8972 = getelementptr inbounds i64, i64* %cloptr8971, i64 0                   ; &cloptr8971[0]
  %f8974 = load i64, i64* %i0ptr8972, align 8                                        ; load; *i0ptr8972
  %fptr8973 = inttoptr i64 %f8974 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8973(i64 %cont6993, i64 %arg7337, i64 %arg7336)     ; tail call
  ret void
}


define void @lam8351(i64 %env8352, i64 %_956995, i64 %SKi$b) {
  %envptr8975 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8976 = getelementptr inbounds i64, i64* %envptr8975, i64 3                  ; &envptr8975[3]
  %cont6993 = load i64, i64* %envptr8976, align 8                                    ; load; *envptr8976
  %envptr8977 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8978 = getelementptr inbounds i64, i64* %envptr8977, i64 2                  ; &envptr8977[2]
  %frx$a = load i64, i64* %envptr8978, align 8                                       ; load; *envptr8978
  %envptr8979 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8980 = getelementptr inbounds i64, i64* %envptr8979, i64 1                  ; &envptr8979[1]
  %IG7$cc = load i64, i64* %envptr8980, align 8                                      ; load; *envptr8980
  %arg7324 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6902 = call i64 @prim_vector_45ref(i64 %frx$a, i64 %arg7324)                     ; call prim_vector_45ref
  %a6903 = call i64 @prim_cdr(i64 %a6902)                                            ; call prim_cdr
  %arg7328 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim6997 = call i64 @prim_vector_45set_33(i64 %frx$a, i64 %arg7328, i64 %a6903); call prim_vector_45set_33
  %cloptr8981 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8983 = getelementptr inbounds i64, i64* %cloptr8981, i64 1                    ; &eptr8983[1]
  %eptr8984 = getelementptr inbounds i64, i64* %cloptr8981, i64 2                    ; &eptr8984[2]
  store i64 %IG7$cc, i64* %eptr8983                                                  ; *eptr8983 = %IG7$cc
  store i64 %cont6993, i64* %eptr8984                                                ; *eptr8984 = %cont6993
  %eptr8982 = getelementptr inbounds i64, i64* %cloptr8981, i64 0                    ; &cloptr8981[0]
  %f8985 = ptrtoint void(i64,i64,i64)* @lam8347 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8985, i64* %eptr8982                                                   ; store fptr
  %arg7332 = ptrtoint i64* %cloptr8981 to i64                                        ; closure cast; i64* -> i64
  %arg7331 = add i64 0, 0                                                            ; quoted ()
  %cloptr8986 = inttoptr i64 %arg7332 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8986)                                         ; assert function application
  %i0ptr8987 = getelementptr inbounds i64, i64* %cloptr8986, i64 0                   ; &cloptr8986[0]
  %f8989 = load i64, i64* %i0ptr8987, align 8                                        ; load; *i0ptr8987
  %fptr8988 = inttoptr i64 %f8989 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8988(i64 %arg7332, i64 %arg7331, i64 %retprim6997)  ; tail call
  ret void
}


define void @lam8347(i64 %env8348, i64 %_956996, i64 %iNj$_950) {
  %envptr8990 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8991 = getelementptr inbounds i64, i64* %envptr8990, i64 2                  ; &envptr8990[2]
  %cont6993 = load i64, i64* %envptr8991, align 8                                    ; load; *envptr8991
  %envptr8992 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8993 = getelementptr inbounds i64, i64* %envptr8992, i64 1                  ; &envptr8992[1]
  %IG7$cc = load i64, i64* %envptr8993, align 8                                      ; load; *envptr8993
  %cloptr8994 = inttoptr i64 %IG7$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8994)                                         ; assert function application
  %i0ptr8995 = getelementptr inbounds i64, i64* %cloptr8994, i64 0                   ; &cloptr8994[0]
  %f8997 = load i64, i64* %i0ptr8995, align 8                                        ; load; *i0ptr8995
  %fptr8996 = inttoptr i64 %f8997 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8996(i64 %IG7$cc, i64 %cont6993, i64 %IG7$cc)       ; tail call
  ret void
}


define void @lam8341(i64 %env8342, i64 %cont7000, i64 %UVo$lst, i64 %ffk$n) {
  %arg7340 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %IMB$lst = call i64 @prim_make_45vector(i64 %arg7340, i64 %UVo$lst)                ; call prim_make_45vector
  %arg7342 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Yf6$n = call i64 @prim_make_45vector(i64 %arg7342, i64 %ffk$n)                    ; call prim_make_45vector
  %cloptr8998 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8999 = getelementptr inbounds i64, i64* %cloptr8998, i64 0                    ; &cloptr8998[0]
  %f9000 = ptrtoint void(i64,i64,i64)* @lam8337 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9000, i64* %eptr8999                                                   ; store fptr
  %arg7345 = ptrtoint i64* %cloptr8998 to i64                                        ; closure cast; i64* -> i64
  %cloptr9001 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9003 = getelementptr inbounds i64, i64* %cloptr9001, i64 1                    ; &eptr9003[1]
  %eptr9004 = getelementptr inbounds i64, i64* %cloptr9001, i64 2                    ; &eptr9004[2]
  %eptr9005 = getelementptr inbounds i64, i64* %cloptr9001, i64 3                    ; &eptr9005[3]
  store i64 %IMB$lst, i64* %eptr9003                                                 ; *eptr9003 = %IMB$lst
  store i64 %cont7000, i64* %eptr9004                                                ; *eptr9004 = %cont7000
  store i64 %Yf6$n, i64* %eptr9005                                                   ; *eptr9005 = %Yf6$n
  %eptr9002 = getelementptr inbounds i64, i64* %cloptr9001, i64 0                    ; &cloptr9001[0]
  %f9006 = ptrtoint void(i64,i64,i64)* @lam8335 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9006, i64* %eptr9002                                                   ; store fptr
  %arg7344 = ptrtoint i64* %cloptr9001 to i64                                        ; closure cast; i64* -> i64
  %cloptr9007 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9009 = getelementptr inbounds i64, i64* %cloptr9007, i64 1                    ; &eptr9009[1]
  %eptr9010 = getelementptr inbounds i64, i64* %cloptr9007, i64 2                    ; &eptr9010[2]
  %eptr9011 = getelementptr inbounds i64, i64* %cloptr9007, i64 3                    ; &eptr9011[3]
  store i64 %IMB$lst, i64* %eptr9009                                                 ; *eptr9009 = %IMB$lst
  store i64 %cont7000, i64* %eptr9010                                                ; *eptr9010 = %cont7000
  store i64 %Yf6$n, i64* %eptr9011                                                   ; *eptr9011 = %Yf6$n
  %eptr9008 = getelementptr inbounds i64, i64* %cloptr9007, i64 0                    ; &cloptr9007[0]
  %f9012 = ptrtoint void(i64,i64,i64)* @lam8318 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9012, i64* %eptr9008                                                   ; store fptr
  %arg7343 = ptrtoint i64* %cloptr9007 to i64                                        ; closure cast; i64* -> i64
  %cloptr9013 = inttoptr i64 %arg7345 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9013)                                         ; assert function application
  %i0ptr9014 = getelementptr inbounds i64, i64* %cloptr9013, i64 0                   ; &cloptr9013[0]
  %f9016 = load i64, i64* %i0ptr9014, align 8                                        ; load; *i0ptr9014
  %fptr9015 = inttoptr i64 %f9016 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9015(i64 %arg7345, i64 %arg7344, i64 %arg7343)      ; tail call
  ret void
}


define void @lam8337(i64 %env8338, i64 %cont7007, i64 %rJ0$u) {
  %cloptr9017 = inttoptr i64 %rJ0$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9017)                                         ; assert function application
  %i0ptr9018 = getelementptr inbounds i64, i64* %cloptr9017, i64 0                   ; &cloptr9017[0]
  %f9020 = load i64, i64* %i0ptr9018, align 8                                        ; load; *i0ptr9018
  %fptr9019 = inttoptr i64 %f9020 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9019(i64 %rJ0$u, i64 %cont7007, i64 %rJ0$u)         ; tail call
  ret void
}


define void @lam8335(i64 %env8336, i64 %_957001, i64 %XG9$cc) {
  %envptr9021 = inttoptr i64 %env8336 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9022 = getelementptr inbounds i64, i64* %envptr9021, i64 3                  ; &envptr9021[3]
  %Yf6$n = load i64, i64* %envptr9022, align 8                                       ; load; *envptr9022
  %envptr9023 = inttoptr i64 %env8336 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9024 = getelementptr inbounds i64, i64* %envptr9023, i64 2                  ; &envptr9023[2]
  %cont7000 = load i64, i64* %envptr9024, align 8                                    ; load; *envptr9024
  %envptr9025 = inttoptr i64 %env8336 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9026 = getelementptr inbounds i64, i64* %envptr9025, i64 1                  ; &envptr9025[1]
  %IMB$lst = load i64, i64* %envptr9026, align 8                                     ; load; *envptr9026
  %arg7349 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6904 = call i64 @prim_vector_45ref(i64 %Yf6$n, i64 %arg7349)                     ; call prim_vector_45ref
  %arg7352 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6905 = call i64 @prim__61(i64 %arg7352, i64 %a6904)                              ; call prim__61
  %cmp9027 = icmp eq i64 %a6905, 15                                                  ; false?
  br i1 %cmp9027, label %else9029, label %then9028                                   ; if

then9028:
  %arg7353 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7002 = call i64 @prim_vector_45ref(i64 %IMB$lst, i64 %arg7353)             ; call prim_vector_45ref
  %arg7356 = add i64 0, 0                                                            ; quoted ()
  %cloptr9030 = inttoptr i64 %cont7000 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9030)                                         ; assert function application
  %i0ptr9031 = getelementptr inbounds i64, i64* %cloptr9030, i64 0                   ; &cloptr9030[0]
  %f9033 = load i64, i64* %i0ptr9031, align 8                                        ; load; *i0ptr9031
  %fptr9032 = inttoptr i64 %f9033 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9032(i64 %cont7000, i64 %arg7356, i64 %retprim7002) ; tail call
  ret void

else9029:
  %arg7358 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6906 = call i64 @prim_vector_45ref(i64 %IMB$lst, i64 %arg7358)                   ; call prim_vector_45ref
  %a6907 = call i64 @prim_cdr(i64 %a6906)                                            ; call prim_cdr
  %arg7362 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7006 = call i64 @prim_vector_45set_33(i64 %IMB$lst, i64 %arg7362, i64 %a6907); call prim_vector_45set_33
  %cloptr9034 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9036 = getelementptr inbounds i64, i64* %cloptr9034, i64 1                    ; &eptr9036[1]
  %eptr9037 = getelementptr inbounds i64, i64* %cloptr9034, i64 2                    ; &eptr9037[2]
  %eptr9038 = getelementptr inbounds i64, i64* %cloptr9034, i64 3                    ; &eptr9038[3]
  store i64 %cont7000, i64* %eptr9036                                                ; *eptr9036 = %cont7000
  store i64 %Yf6$n, i64* %eptr9037                                                   ; *eptr9037 = %Yf6$n
  store i64 %XG9$cc, i64* %eptr9038                                                  ; *eptr9038 = %XG9$cc
  %eptr9035 = getelementptr inbounds i64, i64* %cloptr9034, i64 0                    ; &cloptr9034[0]
  %f9039 = ptrtoint void(i64,i64,i64)* @lam8329 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9039, i64* %eptr9035                                                   ; store fptr
  %arg7366 = ptrtoint i64* %cloptr9034 to i64                                        ; closure cast; i64* -> i64
  %arg7365 = add i64 0, 0                                                            ; quoted ()
  %cloptr9040 = inttoptr i64 %arg7366 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9040)                                         ; assert function application
  %i0ptr9041 = getelementptr inbounds i64, i64* %cloptr9040, i64 0                   ; &cloptr9040[0]
  %f9043 = load i64, i64* %i0ptr9041, align 8                                        ; load; *i0ptr9041
  %fptr9042 = inttoptr i64 %f9043 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9042(i64 %arg7366, i64 %arg7365, i64 %retprim7006)  ; tail call
  ret void
}


define void @lam8329(i64 %env8330, i64 %_957003, i64 %FS4$_950) {
  %envptr9044 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9045 = getelementptr inbounds i64, i64* %envptr9044, i64 3                  ; &envptr9044[3]
  %XG9$cc = load i64, i64* %envptr9045, align 8                                      ; load; *envptr9045
  %envptr9046 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9047 = getelementptr inbounds i64, i64* %envptr9046, i64 2                  ; &envptr9046[2]
  %Yf6$n = load i64, i64* %envptr9047, align 8                                       ; load; *envptr9047
  %envptr9048 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9049 = getelementptr inbounds i64, i64* %envptr9048, i64 1                  ; &envptr9048[1]
  %cont7000 = load i64, i64* %envptr9049, align 8                                    ; load; *envptr9049
  %arg7367 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6908 = call i64 @prim_vector_45ref(i64 %Yf6$n, i64 %arg7367)                     ; call prim_vector_45ref
  %arg7369 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6909 = call i64 @prim__45(i64 %a6908, i64 %arg7369)                              ; call prim__45
  %arg7372 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7005 = call i64 @prim_vector_45set_33(i64 %Yf6$n, i64 %arg7372, i64 %a6909); call prim_vector_45set_33
  %cloptr9050 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9052 = getelementptr inbounds i64, i64* %cloptr9050, i64 1                    ; &eptr9052[1]
  %eptr9053 = getelementptr inbounds i64, i64* %cloptr9050, i64 2                    ; &eptr9053[2]
  store i64 %cont7000, i64* %eptr9052                                                ; *eptr9052 = %cont7000
  store i64 %XG9$cc, i64* %eptr9053                                                  ; *eptr9053 = %XG9$cc
  %eptr9051 = getelementptr inbounds i64, i64* %cloptr9050, i64 0                    ; &cloptr9050[0]
  %f9054 = ptrtoint void(i64,i64,i64)* @lam8324 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9054, i64* %eptr9051                                                   ; store fptr
  %arg7376 = ptrtoint i64* %cloptr9050 to i64                                        ; closure cast; i64* -> i64
  %arg7375 = add i64 0, 0                                                            ; quoted ()
  %cloptr9055 = inttoptr i64 %arg7376 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9055)                                         ; assert function application
  %i0ptr9056 = getelementptr inbounds i64, i64* %cloptr9055, i64 0                   ; &cloptr9055[0]
  %f9058 = load i64, i64* %i0ptr9056, align 8                                        ; load; *i0ptr9056
  %fptr9057 = inttoptr i64 %f9058 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9057(i64 %arg7376, i64 %arg7375, i64 %retprim7005)  ; tail call
  ret void
}


define void @lam8324(i64 %env8325, i64 %_957004, i64 %AFw$_951) {
  %envptr9059 = inttoptr i64 %env8325 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9060 = getelementptr inbounds i64, i64* %envptr9059, i64 2                  ; &envptr9059[2]
  %XG9$cc = load i64, i64* %envptr9060, align 8                                      ; load; *envptr9060
  %envptr9061 = inttoptr i64 %env8325 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9062 = getelementptr inbounds i64, i64* %envptr9061, i64 1                  ; &envptr9061[1]
  %cont7000 = load i64, i64* %envptr9062, align 8                                    ; load; *envptr9062
  %cloptr9063 = inttoptr i64 %XG9$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9063)                                         ; assert function application
  %i0ptr9064 = getelementptr inbounds i64, i64* %cloptr9063, i64 0                   ; &cloptr9063[0]
  %f9066 = load i64, i64* %i0ptr9064, align 8                                        ; load; *i0ptr9064
  %fptr9065 = inttoptr i64 %f9066 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9065(i64 %XG9$cc, i64 %cont7000, i64 %XG9$cc)       ; tail call
  ret void
}


define void @lam8318(i64 %env8319, i64 %_957001, i64 %XG9$cc) {
  %envptr9067 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9068 = getelementptr inbounds i64, i64* %envptr9067, i64 3                  ; &envptr9067[3]
  %Yf6$n = load i64, i64* %envptr9068, align 8                                       ; load; *envptr9068
  %envptr9069 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9070 = getelementptr inbounds i64, i64* %envptr9069, i64 2                  ; &envptr9069[2]
  %cont7000 = load i64, i64* %envptr9070, align 8                                    ; load; *envptr9070
  %envptr9071 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9072 = getelementptr inbounds i64, i64* %envptr9071, i64 1                  ; &envptr9071[1]
  %IMB$lst = load i64, i64* %envptr9072, align 8                                     ; load; *envptr9072
  %arg7380 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6904 = call i64 @prim_vector_45ref(i64 %Yf6$n, i64 %arg7380)                     ; call prim_vector_45ref
  %arg7383 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6905 = call i64 @prim__61(i64 %arg7383, i64 %a6904)                              ; call prim__61
  %cmp9073 = icmp eq i64 %a6905, 15                                                  ; false?
  br i1 %cmp9073, label %else9075, label %then9074                                   ; if

then9074:
  %arg7384 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7002 = call i64 @prim_vector_45ref(i64 %IMB$lst, i64 %arg7384)             ; call prim_vector_45ref
  %arg7387 = add i64 0, 0                                                            ; quoted ()
  %cloptr9076 = inttoptr i64 %cont7000 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9076)                                         ; assert function application
  %i0ptr9077 = getelementptr inbounds i64, i64* %cloptr9076, i64 0                   ; &cloptr9076[0]
  %f9079 = load i64, i64* %i0ptr9077, align 8                                        ; load; *i0ptr9077
  %fptr9078 = inttoptr i64 %f9079 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9078(i64 %cont7000, i64 %arg7387, i64 %retprim7002) ; tail call
  ret void

else9075:
  %arg7389 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6906 = call i64 @prim_vector_45ref(i64 %IMB$lst, i64 %arg7389)                   ; call prim_vector_45ref
  %a6907 = call i64 @prim_cdr(i64 %a6906)                                            ; call prim_cdr
  %arg7393 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7006 = call i64 @prim_vector_45set_33(i64 %IMB$lst, i64 %arg7393, i64 %a6907); call prim_vector_45set_33
  %cloptr9080 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9082 = getelementptr inbounds i64, i64* %cloptr9080, i64 1                    ; &eptr9082[1]
  %eptr9083 = getelementptr inbounds i64, i64* %cloptr9080, i64 2                    ; &eptr9083[2]
  %eptr9084 = getelementptr inbounds i64, i64* %cloptr9080, i64 3                    ; &eptr9084[3]
  store i64 %cont7000, i64* %eptr9082                                                ; *eptr9082 = %cont7000
  store i64 %Yf6$n, i64* %eptr9083                                                   ; *eptr9083 = %Yf6$n
  store i64 %XG9$cc, i64* %eptr9084                                                  ; *eptr9084 = %XG9$cc
  %eptr9081 = getelementptr inbounds i64, i64* %cloptr9080, i64 0                    ; &cloptr9080[0]
  %f9085 = ptrtoint void(i64,i64,i64)* @lam8312 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9085, i64* %eptr9081                                                   ; store fptr
  %arg7397 = ptrtoint i64* %cloptr9080 to i64                                        ; closure cast; i64* -> i64
  %arg7396 = add i64 0, 0                                                            ; quoted ()
  %cloptr9086 = inttoptr i64 %arg7397 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9086)                                         ; assert function application
  %i0ptr9087 = getelementptr inbounds i64, i64* %cloptr9086, i64 0                   ; &cloptr9086[0]
  %f9089 = load i64, i64* %i0ptr9087, align 8                                        ; load; *i0ptr9087
  %fptr9088 = inttoptr i64 %f9089 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9088(i64 %arg7397, i64 %arg7396, i64 %retprim7006)  ; tail call
  ret void
}


define void @lam8312(i64 %env8313, i64 %_957003, i64 %FS4$_950) {
  %envptr9090 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9091 = getelementptr inbounds i64, i64* %envptr9090, i64 3                  ; &envptr9090[3]
  %XG9$cc = load i64, i64* %envptr9091, align 8                                      ; load; *envptr9091
  %envptr9092 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9093 = getelementptr inbounds i64, i64* %envptr9092, i64 2                  ; &envptr9092[2]
  %Yf6$n = load i64, i64* %envptr9093, align 8                                       ; load; *envptr9093
  %envptr9094 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9095 = getelementptr inbounds i64, i64* %envptr9094, i64 1                  ; &envptr9094[1]
  %cont7000 = load i64, i64* %envptr9095, align 8                                    ; load; *envptr9095
  %arg7398 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6908 = call i64 @prim_vector_45ref(i64 %Yf6$n, i64 %arg7398)                     ; call prim_vector_45ref
  %arg7400 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6909 = call i64 @prim__45(i64 %a6908, i64 %arg7400)                              ; call prim__45
  %arg7403 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7005 = call i64 @prim_vector_45set_33(i64 %Yf6$n, i64 %arg7403, i64 %a6909); call prim_vector_45set_33
  %cloptr9096 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9098 = getelementptr inbounds i64, i64* %cloptr9096, i64 1                    ; &eptr9098[1]
  %eptr9099 = getelementptr inbounds i64, i64* %cloptr9096, i64 2                    ; &eptr9099[2]
  store i64 %cont7000, i64* %eptr9098                                                ; *eptr9098 = %cont7000
  store i64 %XG9$cc, i64* %eptr9099                                                  ; *eptr9099 = %XG9$cc
  %eptr9097 = getelementptr inbounds i64, i64* %cloptr9096, i64 0                    ; &cloptr9096[0]
  %f9100 = ptrtoint void(i64,i64,i64)* @lam8307 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9100, i64* %eptr9097                                                   ; store fptr
  %arg7407 = ptrtoint i64* %cloptr9096 to i64                                        ; closure cast; i64* -> i64
  %arg7406 = add i64 0, 0                                                            ; quoted ()
  %cloptr9101 = inttoptr i64 %arg7407 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9101)                                         ; assert function application
  %i0ptr9102 = getelementptr inbounds i64, i64* %cloptr9101, i64 0                   ; &cloptr9101[0]
  %f9104 = load i64, i64* %i0ptr9102, align 8                                        ; load; *i0ptr9102
  %fptr9103 = inttoptr i64 %f9104 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9103(i64 %arg7407, i64 %arg7406, i64 %retprim7005)  ; tail call
  ret void
}


define void @lam8307(i64 %env8308, i64 %_957004, i64 %AFw$_951) {
  %envptr9105 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9106 = getelementptr inbounds i64, i64* %envptr9105, i64 2                  ; &envptr9105[2]
  %XG9$cc = load i64, i64* %envptr9106, align 8                                      ; load; *envptr9106
  %envptr9107 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9108 = getelementptr inbounds i64, i64* %envptr9107, i64 1                  ; &envptr9107[1]
  %cont7000 = load i64, i64* %envptr9108, align 8                                    ; load; *envptr9108
  %cloptr9109 = inttoptr i64 %XG9$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9109)                                         ; assert function application
  %i0ptr9110 = getelementptr inbounds i64, i64* %cloptr9109, i64 0                   ; &cloptr9109[0]
  %f9112 = load i64, i64* %i0ptr9110, align 8                                        ; load; *i0ptr9110
  %fptr9111 = inttoptr i64 %f9112 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9111(i64 %XG9$cc, i64 %cont7000, i64 %XG9$cc)       ; tail call
  ret void
}


define void @lam8301(i64 %env8302, i64 %cont7008, i64 %hXC$v, i64 %Y8d$lst) {
  %arg7412 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %HTz$lst = call i64 @prim_make_45vector(i64 %arg7412, i64 %Y8d$lst)                ; call prim_make_45vector
  %cloptr9113 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9114 = getelementptr inbounds i64, i64* %cloptr9113, i64 0                    ; &cloptr9113[0]
  %f9115 = ptrtoint void(i64,i64,i64)* @lam8298 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9115, i64* %eptr9114                                                   ; store fptr
  %arg7415 = ptrtoint i64* %cloptr9113 to i64                                        ; closure cast; i64* -> i64
  %cloptr9116 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9118 = getelementptr inbounds i64, i64* %cloptr9116, i64 1                    ; &eptr9118[1]
  %eptr9119 = getelementptr inbounds i64, i64* %cloptr9116, i64 2                    ; &eptr9119[2]
  %eptr9120 = getelementptr inbounds i64, i64* %cloptr9116, i64 3                    ; &eptr9120[3]
  store i64 %HTz$lst, i64* %eptr9118                                                 ; *eptr9118 = %HTz$lst
  store i64 %hXC$v, i64* %eptr9119                                                   ; *eptr9119 = %hXC$v
  store i64 %cont7008, i64* %eptr9120                                                ; *eptr9120 = %cont7008
  %eptr9117 = getelementptr inbounds i64, i64* %cloptr9116, i64 0                    ; &cloptr9116[0]
  %f9121 = ptrtoint void(i64,i64,i64)* @lam8296 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9121, i64* %eptr9117                                                   ; store fptr
  %arg7414 = ptrtoint i64* %cloptr9116 to i64                                        ; closure cast; i64* -> i64
  %cloptr9122 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9124 = getelementptr inbounds i64, i64* %cloptr9122, i64 1                    ; &eptr9124[1]
  %eptr9125 = getelementptr inbounds i64, i64* %cloptr9122, i64 2                    ; &eptr9125[2]
  %eptr9126 = getelementptr inbounds i64, i64* %cloptr9122, i64 3                    ; &eptr9126[3]
  store i64 %HTz$lst, i64* %eptr9124                                                 ; *eptr9124 = %HTz$lst
  store i64 %hXC$v, i64* %eptr9125                                                   ; *eptr9125 = %hXC$v
  store i64 %cont7008, i64* %eptr9126                                                ; *eptr9126 = %cont7008
  %eptr9123 = getelementptr inbounds i64, i64* %cloptr9122, i64 0                    ; &cloptr9122[0]
  %f9127 = ptrtoint void(i64,i64,i64)* @lam8283 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9127, i64* %eptr9123                                                   ; store fptr
  %arg7413 = ptrtoint i64* %cloptr9122 to i64                                        ; closure cast; i64* -> i64
  %cloptr9128 = inttoptr i64 %arg7415 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9128)                                         ; assert function application
  %i0ptr9129 = getelementptr inbounds i64, i64* %cloptr9128, i64 0                   ; &cloptr9128[0]
  %f9131 = load i64, i64* %i0ptr9129, align 8                                        ; load; *i0ptr9129
  %fptr9130 = inttoptr i64 %f9131 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9130(i64 %arg7415, i64 %arg7414, i64 %arg7413)      ; tail call
  ret void
}


define void @lam8298(i64 %env8299, i64 %cont7013, i64 %DBE$u) {
  %cloptr9132 = inttoptr i64 %DBE$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9132)                                         ; assert function application
  %i0ptr9133 = getelementptr inbounds i64, i64* %cloptr9132, i64 0                   ; &cloptr9132[0]
  %f9135 = load i64, i64* %i0ptr9133, align 8                                        ; load; *i0ptr9133
  %fptr9134 = inttoptr i64 %f9135 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9134(i64 %DBE$u, i64 %cont7013, i64 %DBE$u)         ; tail call
  ret void
}


define void @lam8296(i64 %env8297, i64 %_957009, i64 %Slp$cc) {
  %envptr9136 = inttoptr i64 %env8297 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9137 = getelementptr inbounds i64, i64* %envptr9136, i64 3                  ; &envptr9136[3]
  %cont7008 = load i64, i64* %envptr9137, align 8                                    ; load; *envptr9137
  %envptr9138 = inttoptr i64 %env8297 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9139 = getelementptr inbounds i64, i64* %envptr9138, i64 2                  ; &envptr9138[2]
  %hXC$v = load i64, i64* %envptr9139, align 8                                       ; load; *envptr9139
  %envptr9140 = inttoptr i64 %env8297 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9141 = getelementptr inbounds i64, i64* %envptr9140, i64 1                  ; &envptr9140[1]
  %HTz$lst = load i64, i64* %envptr9141, align 8                                     ; load; *envptr9141
  %arg7419 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6910 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7419)                   ; call prim_vector_45ref
  %a6911 = call i64 @prim_null_63(i64 %a6910)                                        ; call prim_null_63
  %cmp9142 = icmp eq i64 %a6911, 15                                                  ; false?
  br i1 %cmp9142, label %else9144, label %then9143                                   ; if

then9143:
  %arg7423 = add i64 0, 0                                                            ; quoted ()
  %arg7422 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9145 = inttoptr i64 %cont7008 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9145)                                         ; assert function application
  %i0ptr9146 = getelementptr inbounds i64, i64* %cloptr9145, i64 0                   ; &cloptr9145[0]
  %f9148 = load i64, i64* %i0ptr9146, align 8                                        ; load; *i0ptr9146
  %fptr9147 = inttoptr i64 %f9148 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9147(i64 %cont7008, i64 %arg7423, i64 %arg7422)     ; tail call
  ret void

else9144:
  %arg7425 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6912 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7425)                   ; call prim_vector_45ref
  %a6913 = call i64 @prim_car(i64 %a6912)                                            ; call prim_car
  %a6914 = call i64 @prim_eqv_63(i64 %a6913, i64 %hXC$v)                             ; call prim_eqv_63
  %cmp9149 = icmp eq i64 %a6914, 15                                                  ; false?
  br i1 %cmp9149, label %else9151, label %then9150                                   ; if

then9150:
  %arg7430 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7010 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7430)             ; call prim_vector_45ref
  %arg7433 = add i64 0, 0                                                            ; quoted ()
  %cloptr9152 = inttoptr i64 %cont7008 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9152)                                         ; assert function application
  %i0ptr9153 = getelementptr inbounds i64, i64* %cloptr9152, i64 0                   ; &cloptr9152[0]
  %f9155 = load i64, i64* %i0ptr9153, align 8                                        ; load; *i0ptr9153
  %fptr9154 = inttoptr i64 %f9155 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9154(i64 %cont7008, i64 %arg7433, i64 %retprim7010) ; tail call
  ret void

else9151:
  %arg7435 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6915 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7435)                   ; call prim_vector_45ref
  %a6916 = call i64 @prim_cdr(i64 %a6915)                                            ; call prim_cdr
  %arg7439 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7012 = call i64 @prim_vector_45set_33(i64 %HTz$lst, i64 %arg7439, i64 %a6916); call prim_vector_45set_33
  %cloptr9156 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9158 = getelementptr inbounds i64, i64* %cloptr9156, i64 1                    ; &eptr9158[1]
  %eptr9159 = getelementptr inbounds i64, i64* %cloptr9156, i64 2                    ; &eptr9159[2]
  store i64 %Slp$cc, i64* %eptr9158                                                  ; *eptr9158 = %Slp$cc
  store i64 %cont7008, i64* %eptr9159                                                ; *eptr9159 = %cont7008
  %eptr9157 = getelementptr inbounds i64, i64* %cloptr9156, i64 0                    ; &cloptr9156[0]
  %f9160 = ptrtoint void(i64,i64,i64)* @lam8290 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9160, i64* %eptr9157                                                   ; store fptr
  %arg7443 = ptrtoint i64* %cloptr9156 to i64                                        ; closure cast; i64* -> i64
  %arg7442 = add i64 0, 0                                                            ; quoted ()
  %cloptr9161 = inttoptr i64 %arg7443 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9161)                                         ; assert function application
  %i0ptr9162 = getelementptr inbounds i64, i64* %cloptr9161, i64 0                   ; &cloptr9161[0]
  %f9164 = load i64, i64* %i0ptr9162, align 8                                        ; load; *i0ptr9162
  %fptr9163 = inttoptr i64 %f9164 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9163(i64 %arg7443, i64 %arg7442, i64 %retprim7012)  ; tail call
  ret void
}


define void @lam8290(i64 %env8291, i64 %_957011, i64 %dWU$_950) {
  %envptr9165 = inttoptr i64 %env8291 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9166 = getelementptr inbounds i64, i64* %envptr9165, i64 2                  ; &envptr9165[2]
  %cont7008 = load i64, i64* %envptr9166, align 8                                    ; load; *envptr9166
  %envptr9167 = inttoptr i64 %env8291 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9168 = getelementptr inbounds i64, i64* %envptr9167, i64 1                  ; &envptr9167[1]
  %Slp$cc = load i64, i64* %envptr9168, align 8                                      ; load; *envptr9168
  %cloptr9169 = inttoptr i64 %Slp$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9169)                                         ; assert function application
  %i0ptr9170 = getelementptr inbounds i64, i64* %cloptr9169, i64 0                   ; &cloptr9169[0]
  %f9172 = load i64, i64* %i0ptr9170, align 8                                        ; load; *i0ptr9170
  %fptr9171 = inttoptr i64 %f9172 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9171(i64 %Slp$cc, i64 %cont7008, i64 %Slp$cc)       ; tail call
  ret void
}


define void @lam8283(i64 %env8284, i64 %_957009, i64 %Slp$cc) {
  %envptr9173 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9174 = getelementptr inbounds i64, i64* %envptr9173, i64 3                  ; &envptr9173[3]
  %cont7008 = load i64, i64* %envptr9174, align 8                                    ; load; *envptr9174
  %envptr9175 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9176 = getelementptr inbounds i64, i64* %envptr9175, i64 2                  ; &envptr9175[2]
  %hXC$v = load i64, i64* %envptr9176, align 8                                       ; load; *envptr9176
  %envptr9177 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9178 = getelementptr inbounds i64, i64* %envptr9177, i64 1                  ; &envptr9177[1]
  %HTz$lst = load i64, i64* %envptr9178, align 8                                     ; load; *envptr9178
  %arg7447 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6910 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7447)                   ; call prim_vector_45ref
  %a6911 = call i64 @prim_null_63(i64 %a6910)                                        ; call prim_null_63
  %cmp9179 = icmp eq i64 %a6911, 15                                                  ; false?
  br i1 %cmp9179, label %else9181, label %then9180                                   ; if

then9180:
  %arg7451 = add i64 0, 0                                                            ; quoted ()
  %arg7450 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9182 = inttoptr i64 %cont7008 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9182)                                         ; assert function application
  %i0ptr9183 = getelementptr inbounds i64, i64* %cloptr9182, i64 0                   ; &cloptr9182[0]
  %f9185 = load i64, i64* %i0ptr9183, align 8                                        ; load; *i0ptr9183
  %fptr9184 = inttoptr i64 %f9185 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9184(i64 %cont7008, i64 %arg7451, i64 %arg7450)     ; tail call
  ret void

else9181:
  %arg7453 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6912 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7453)                   ; call prim_vector_45ref
  %a6913 = call i64 @prim_car(i64 %a6912)                                            ; call prim_car
  %a6914 = call i64 @prim_eqv_63(i64 %a6913, i64 %hXC$v)                             ; call prim_eqv_63
  %cmp9186 = icmp eq i64 %a6914, 15                                                  ; false?
  br i1 %cmp9186, label %else9188, label %then9187                                   ; if

then9187:
  %arg7458 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7010 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7458)             ; call prim_vector_45ref
  %arg7461 = add i64 0, 0                                                            ; quoted ()
  %cloptr9189 = inttoptr i64 %cont7008 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9189)                                         ; assert function application
  %i0ptr9190 = getelementptr inbounds i64, i64* %cloptr9189, i64 0                   ; &cloptr9189[0]
  %f9192 = load i64, i64* %i0ptr9190, align 8                                        ; load; *i0ptr9190
  %fptr9191 = inttoptr i64 %f9192 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9191(i64 %cont7008, i64 %arg7461, i64 %retprim7010) ; tail call
  ret void

else9188:
  %arg7463 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6915 = call i64 @prim_vector_45ref(i64 %HTz$lst, i64 %arg7463)                   ; call prim_vector_45ref
  %a6916 = call i64 @prim_cdr(i64 %a6915)                                            ; call prim_cdr
  %arg7467 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7012 = call i64 @prim_vector_45set_33(i64 %HTz$lst, i64 %arg7467, i64 %a6916); call prim_vector_45set_33
  %cloptr9193 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9195 = getelementptr inbounds i64, i64* %cloptr9193, i64 1                    ; &eptr9195[1]
  %eptr9196 = getelementptr inbounds i64, i64* %cloptr9193, i64 2                    ; &eptr9196[2]
  store i64 %Slp$cc, i64* %eptr9195                                                  ; *eptr9195 = %Slp$cc
  store i64 %cont7008, i64* %eptr9196                                                ; *eptr9196 = %cont7008
  %eptr9194 = getelementptr inbounds i64, i64* %cloptr9193, i64 0                    ; &cloptr9193[0]
  %f9197 = ptrtoint void(i64,i64,i64)* @lam8277 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9197, i64* %eptr9194                                                   ; store fptr
  %arg7471 = ptrtoint i64* %cloptr9193 to i64                                        ; closure cast; i64* -> i64
  %arg7470 = add i64 0, 0                                                            ; quoted ()
  %cloptr9198 = inttoptr i64 %arg7471 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9198)                                         ; assert function application
  %i0ptr9199 = getelementptr inbounds i64, i64* %cloptr9198, i64 0                   ; &cloptr9198[0]
  %f9201 = load i64, i64* %i0ptr9199, align 8                                        ; load; *i0ptr9199
  %fptr9200 = inttoptr i64 %f9201 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9200(i64 %arg7471, i64 %arg7470, i64 %retprim7012)  ; tail call
  ret void
}


define void @lam8277(i64 %env8278, i64 %_957011, i64 %dWU$_950) {
  %envptr9202 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9203 = getelementptr inbounds i64, i64* %envptr9202, i64 2                  ; &envptr9202[2]
  %cont7008 = load i64, i64* %envptr9203, align 8                                    ; load; *envptr9203
  %envptr9204 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9205 = getelementptr inbounds i64, i64* %envptr9204, i64 1                  ; &envptr9204[1]
  %Slp$cc = load i64, i64* %envptr9205, align 8                                      ; load; *envptr9205
  %cloptr9206 = inttoptr i64 %Slp$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9206)                                         ; assert function application
  %i0ptr9207 = getelementptr inbounds i64, i64* %cloptr9206, i64 0                   ; &cloptr9206[0]
  %f9209 = load i64, i64* %i0ptr9207, align 8                                        ; load; *i0ptr9207
  %fptr9208 = inttoptr i64 %f9209 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9208(i64 %Slp$cc, i64 %cont7008, i64 %Slp$cc)       ; tail call
  ret void
}


define void @lam8270(i64 %env8271, i64 %GFp$args7015) {
  %envptr9210 = inttoptr i64 %env8271 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9211 = getelementptr inbounds i64, i64* %envptr9210, i64 1                  ; &envptr9210[1]
  %CKk$_37foldl1 = load i64, i64* %envptr9211, align 8                               ; load; *envptr9211
  %cont7014 = call i64 @prim_car(i64 %GFp$args7015)                                  ; call prim_car
  %GFp$args = call i64 @prim_cdr(i64 %GFp$args7015)                                  ; call prim_cdr
  %a6917 = call i64 @prim_null_63(i64 %GFp$args)                                     ; call prim_null_63
  %cmp9212 = icmp eq i64 %a6917, 15                                                  ; false?
  br i1 %cmp9212, label %else9214, label %then9213                                   ; if

then9213:
  %arg7479 = add i64 0, 0                                                            ; quoted ()
  %arg7478 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9215 = inttoptr i64 %cont7014 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9215)                                         ; assert function application
  %i0ptr9216 = getelementptr inbounds i64, i64* %cloptr9215, i64 0                   ; &cloptr9215[0]
  %f9218 = load i64, i64* %i0ptr9216, align 8                                        ; load; *i0ptr9216
  %fptr9217 = inttoptr i64 %f9218 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9217(i64 %cont7014, i64 %arg7479, i64 %arg7478)     ; tail call
  ret void

else9214:
  %a6918 = call i64 @prim_cdr(i64 %GFp$args)                                         ; call prim_cdr
  %a6919 = call i64 @prim_null_63(i64 %a6918)                                        ; call prim_null_63
  %cmp9219 = icmp eq i64 %a6919, 15                                                  ; false?
  br i1 %cmp9219, label %else9221, label %then9220                                   ; if

then9220:
  %retprim7016 = call i64 @prim_car(i64 %GFp$args)                                   ; call prim_car
  %arg7485 = add i64 0, 0                                                            ; quoted ()
  %cloptr9222 = inttoptr i64 %cont7014 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9222)                                         ; assert function application
  %i0ptr9223 = getelementptr inbounds i64, i64* %cloptr9222, i64 0                   ; &cloptr9222[0]
  %f9225 = load i64, i64* %i0ptr9223, align 8                                        ; load; *i0ptr9223
  %fptr9224 = inttoptr i64 %f9225 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9224(i64 %cont7014, i64 %arg7485, i64 %retprim7016) ; tail call
  ret void

else9221:
  %a6920 = call i64 @prim_car(i64 %GFp$args)                                         ; call prim_car
  %a6921 = call i64 @prim_cdr(i64 %GFp$args)                                         ; call prim_cdr
  %cloptr9226 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9227 = getelementptr inbounds i64, i64* %cloptr9226, i64 0                    ; &cloptr9226[0]
  %f9228 = ptrtoint void(i64,i64,i64,i64)* @lam8268 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9228, i64* %eptr9227                                                   ; store fptr
  %arg7491 = ptrtoint i64* %cloptr9226 to i64                                        ; closure cast; i64* -> i64
  %cloptr9229 = inttoptr i64 %CKk$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9229)                                         ; assert function application
  %i0ptr9230 = getelementptr inbounds i64, i64* %cloptr9229, i64 0                   ; &cloptr9229[0]
  %f9232 = load i64, i64* %i0ptr9230, align 8                                        ; load; *i0ptr9230
  %fptr9231 = inttoptr i64 %f9232 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9231(i64 %CKk$_37foldl1, i64 %cont7014, i64 %arg7491, i64 %a6920, i64 %a6921); tail call
  ret void
}


define void @lam8268(i64 %env8269, i64 %cont7017, i64 %kgB$n, i64 %Fxv$v) {
  %retprim7018 = call i64 @prim__47(i64 %Fxv$v, i64 %kgB$n)                          ; call prim__47
  %arg7497 = add i64 0, 0                                                            ; quoted ()
  %cloptr9233 = inttoptr i64 %cont7017 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9233)                                         ; assert function application
  %i0ptr9234 = getelementptr inbounds i64, i64* %cloptr9233, i64 0                   ; &cloptr9233[0]
  %f9236 = load i64, i64* %i0ptr9234, align 8                                        ; load; *i0ptr9234
  %fptr9235 = inttoptr i64 %f9236 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9235(i64 %cont7017, i64 %arg7497, i64 %retprim7018) ; tail call
  ret void
}


define void @lam8262(i64 %env8263, i64 %cont7019, i64 %jiM$x) {
  %retprim7020 = call i64 @prim_car(i64 %jiM$x)                                      ; call prim_car
  %arg7501 = add i64 0, 0                                                            ; quoted ()
  %cloptr9237 = inttoptr i64 %cont7019 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9237)                                         ; assert function application
  %i0ptr9238 = getelementptr inbounds i64, i64* %cloptr9237, i64 0                   ; &cloptr9237[0]
  %f9240 = load i64, i64* %i0ptr9238, align 8                                        ; load; *i0ptr9238
  %fptr9239 = inttoptr i64 %f9240 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9239(i64 %cont7019, i64 %arg7501, i64 %retprim7020) ; tail call
  ret void
}


define void @lam8259(i64 %env8260, i64 %cont7021, i64 %fn5$x) {
  %a6922 = call i64 @prim_cdr(i64 %fn5$x)                                            ; call prim_cdr
  %retprim7022 = call i64 @prim_car(i64 %a6922)                                      ; call prim_car
  %arg7506 = add i64 0, 0                                                            ; quoted ()
  %cloptr9241 = inttoptr i64 %cont7021 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9241)                                         ; assert function application
  %i0ptr9242 = getelementptr inbounds i64, i64* %cloptr9241, i64 0                   ; &cloptr9241[0]
  %f9244 = load i64, i64* %i0ptr9242, align 8                                        ; load; *i0ptr9242
  %fptr9243 = inttoptr i64 %f9244 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9243(i64 %cont7021, i64 %arg7506, i64 %retprim7022) ; tail call
  ret void
}


define void @lam8256(i64 %env8257, i64 %cont7023, i64 %L8u$x) {
  %a6923 = call i64 @prim_cdr(i64 %L8u$x)                                            ; call prim_cdr
  %a6924 = call i64 @prim_cdr(i64 %a6923)                                            ; call prim_cdr
  %retprim7024 = call i64 @prim_car(i64 %a6924)                                      ; call prim_car
  %arg7512 = add i64 0, 0                                                            ; quoted ()
  %cloptr9245 = inttoptr i64 %cont7023 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9245)                                         ; assert function application
  %i0ptr9246 = getelementptr inbounds i64, i64* %cloptr9245, i64 0                   ; &cloptr9245[0]
  %f9248 = load i64, i64* %i0ptr9246, align 8                                        ; load; *i0ptr9246
  %fptr9247 = inttoptr i64 %f9248 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9247(i64 %cont7023, i64 %arg7512, i64 %retprim7024) ; tail call
  ret void
}


define void @lam8253(i64 %env8254, i64 %cont7025, i64 %qWA$x) {
  %a6925 = call i64 @prim_cdr(i64 %qWA$x)                                            ; call prim_cdr
  %a6926 = call i64 @prim_cdr(i64 %a6925)                                            ; call prim_cdr
  %a6927 = call i64 @prim_cdr(i64 %a6926)                                            ; call prim_cdr
  %retprim7026 = call i64 @prim_car(i64 %a6927)                                      ; call prim_car
  %arg7519 = add i64 0, 0                                                            ; quoted ()
  %cloptr9249 = inttoptr i64 %cont7025 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9249)                                         ; assert function application
  %i0ptr9250 = getelementptr inbounds i64, i64* %cloptr9249, i64 0                   ; &cloptr9249[0]
  %f9252 = load i64, i64* %i0ptr9250, align 8                                        ; load; *i0ptr9250
  %fptr9251 = inttoptr i64 %f9252 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9251(i64 %cont7025, i64 %arg7519, i64 %retprim7026) ; tail call
  ret void
}


define void @lam8250(i64 %env8251, i64 %cont7027, i64 %yGW$p) {
  %a6928 = call i64 @prim_cons_63(i64 %yGW$p)                                        ; call prim_cons_63
  %cmp9253 = icmp eq i64 %a6928, 15                                                  ; false?
  br i1 %cmp9253, label %else9255, label %then9254                                   ; if

then9254:
  %a6929 = call i64 @prim_car(i64 %yGW$p)                                            ; call prim_car
  %arg7523 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9256, i32 0, i32 0)); quoted string
  %retprim7028 = call i64 @prim_eq_63(i64 %a6929, i64 %arg7523)                      ; call prim_eq_63
  %arg7526 = add i64 0, 0                                                            ; quoted ()
  %cloptr9257 = inttoptr i64 %cont7027 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9257)                                         ; assert function application
  %i0ptr9258 = getelementptr inbounds i64, i64* %cloptr9257, i64 0                   ; &cloptr9257[0]
  %f9260 = load i64, i64* %i0ptr9258, align 8                                        ; load; *i0ptr9258
  %fptr9259 = inttoptr i64 %f9260 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9259(i64 %cont7027, i64 %arg7526, i64 %retprim7028) ; tail call
  ret void

else9255:
  %arg7529 = add i64 0, 0                                                            ; quoted ()
  %arg7528 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9261 = inttoptr i64 %cont7027 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9261)                                         ; assert function application
  %i0ptr9262 = getelementptr inbounds i64, i64* %cloptr9261, i64 0                   ; &cloptr9261[0]
  %f9264 = load i64, i64* %i0ptr9262, align 8                                        ; load; *i0ptr9262
  %fptr9263 = inttoptr i64 %f9264 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9263(i64 %cont7027, i64 %arg7529, i64 %arg7528)     ; tail call
  ret void
}


define void @lam8244(i64 %env8245, i64 %ekH$lst7073) {
  %cont7072 = call i64 @prim_car(i64 %ekH$lst7073)                                   ; call prim_car
  %ekH$lst = call i64 @prim_cdr(i64 %ekH$lst7073)                                    ; call prim_cdr
  %arg7536 = add i64 0, 0                                                            ; quoted ()
  %cloptr9265 = inttoptr i64 %cont7072 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9265)                                         ; assert function application
  %i0ptr9266 = getelementptr inbounds i64, i64* %cloptr9265, i64 0                   ; &cloptr9265[0]
  %f9268 = load i64, i64* %i0ptr9266, align 8                                        ; load; *i0ptr9266
  %fptr9267 = inttoptr i64 %f9268 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9267(i64 %cont7072, i64 %arg7536, i64 %ekH$lst)     ; tail call
  ret void
}


define void @lam8241(i64 %env8242, i64 %_957029, i64 %Lwn$_37raise_45handler) {
  %envptr9269 = inttoptr i64 %env8242 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9270 = getelementptr inbounds i64, i64* %envptr9269, i64 3                  ; &envptr9269[3]
  %Fqh$_37length = load i64, i64* %envptr9270, align 8                               ; load; *envptr9270
  %envptr9271 = inttoptr i64 %env8242 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9272 = getelementptr inbounds i64, i64* %envptr9271, i64 2                  ; &envptr9271[2]
  %RGf$_37drop = load i64, i64* %envptr9272, align 8                                 ; load; *envptr9272
  %envptr9273 = inttoptr i64 %env8242 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9274 = getelementptr inbounds i64, i64* %envptr9273, i64 1                  ; &envptr9273[1]
  %ARq$_37_62 = load i64, i64* %envptr9274, align 8                                  ; load; *envptr9274
  %cloptr9275 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9276 = getelementptr inbounds i64, i64* %cloptr9275, i64 0                    ; &cloptr9275[0]
  %f9277 = ptrtoint void(i64,i64)* @lam8239 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9277, i64* %eptr9276                                                   ; store fptr
  %arg7539 = ptrtoint i64* %cloptr9275 to i64                                        ; closure cast; i64* -> i64
  %cloptr9278 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9280 = getelementptr inbounds i64, i64* %cloptr9278, i64 1                    ; &eptr9280[1]
  %eptr9281 = getelementptr inbounds i64, i64* %cloptr9278, i64 2                    ; &eptr9281[2]
  %eptr9282 = getelementptr inbounds i64, i64* %cloptr9278, i64 3                    ; &eptr9282[3]
  store i64 %ARq$_37_62, i64* %eptr9280                                              ; *eptr9280 = %ARq$_37_62
  store i64 %RGf$_37drop, i64* %eptr9281                                             ; *eptr9281 = %RGf$_37drop
  store i64 %Fqh$_37length, i64* %eptr9282                                           ; *eptr9282 = %Fqh$_37length
  %eptr9279 = getelementptr inbounds i64, i64* %cloptr9278, i64 0                    ; &cloptr9278[0]
  %f9283 = ptrtoint void(i64,i64,i64)* @lam8236 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9283, i64* %eptr9279                                                   ; store fptr
  %arg7538 = ptrtoint i64* %cloptr9278 to i64                                        ; closure cast; i64* -> i64
  %rva7991 = add i64 0, 0                                                            ; quoted ()
  %rva7990 = call i64 @prim_cons(i64 %arg7538, i64 %rva7991)                         ; call prim_cons
  %cloptr9284 = inttoptr i64 %arg7539 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9284)                                         ; assert function application
  %i0ptr9285 = getelementptr inbounds i64, i64* %cloptr9284, i64 0                   ; &cloptr9284[0]
  %f9287 = load i64, i64* %i0ptr9285, align 8                                        ; load; *i0ptr9285
  %fptr9286 = inttoptr i64 %f9287 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9286(i64 %arg7539, i64 %rva7990)                    ; tail call
  ret void
}


define void @lam8239(i64 %env8240, i64 %kka$lst7071) {
  %cont7070 = call i64 @prim_car(i64 %kka$lst7071)                                   ; call prim_car
  %kka$lst = call i64 @prim_cdr(i64 %kka$lst7071)                                    ; call prim_cdr
  %arg7543 = add i64 0, 0                                                            ; quoted ()
  %cloptr9288 = inttoptr i64 %cont7070 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9288)                                         ; assert function application
  %i0ptr9289 = getelementptr inbounds i64, i64* %cloptr9288, i64 0                   ; &cloptr9288[0]
  %f9291 = load i64, i64* %i0ptr9289, align 8                                        ; load; *i0ptr9289
  %fptr9290 = inttoptr i64 %f9291 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9290(i64 %cont7070, i64 %arg7543, i64 %kka$lst)     ; tail call
  ret void
}


define void @lam8236(i64 %env8237, i64 %_957068, i64 %a6930) {
  %envptr9292 = inttoptr i64 %env8237 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9293 = getelementptr inbounds i64, i64* %envptr9292, i64 3                  ; &envptr9292[3]
  %Fqh$_37length = load i64, i64* %envptr9293, align 8                               ; load; *envptr9293
  %envptr9294 = inttoptr i64 %env8237 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9295 = getelementptr inbounds i64, i64* %envptr9294, i64 2                  ; &envptr9294[2]
  %RGf$_37drop = load i64, i64* %envptr9295, align 8                                 ; load; *envptr9295
  %envptr9296 = inttoptr i64 %env8237 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9297 = getelementptr inbounds i64, i64* %envptr9296, i64 1                  ; &envptr9296[1]
  %ARq$_37_62 = load i64, i64* %envptr9297, align 8                                  ; load; *envptr9297
  %arg7546 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7069 = call i64 @prim_make_45vector(i64 %arg7546, i64 %a6930)              ; call prim_make_45vector
  %cloptr9298 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9300 = getelementptr inbounds i64, i64* %cloptr9298, i64 1                    ; &eptr9300[1]
  %eptr9301 = getelementptr inbounds i64, i64* %cloptr9298, i64 2                    ; &eptr9301[2]
  %eptr9302 = getelementptr inbounds i64, i64* %cloptr9298, i64 3                    ; &eptr9302[3]
  store i64 %ARq$_37_62, i64* %eptr9300                                              ; *eptr9300 = %ARq$_37_62
  store i64 %RGf$_37drop, i64* %eptr9301                                             ; *eptr9301 = %RGf$_37drop
  store i64 %Fqh$_37length, i64* %eptr9302                                           ; *eptr9302 = %Fqh$_37length
  %eptr9299 = getelementptr inbounds i64, i64* %cloptr9298, i64 0                    ; &cloptr9298[0]
  %f9303 = ptrtoint void(i64,i64,i64)* @lam8233 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9303, i64* %eptr9299                                                   ; store fptr
  %arg7549 = ptrtoint i64* %cloptr9298 to i64                                        ; closure cast; i64* -> i64
  %arg7548 = add i64 0, 0                                                            ; quoted ()
  %cloptr9304 = inttoptr i64 %arg7549 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9304)                                         ; assert function application
  %i0ptr9305 = getelementptr inbounds i64, i64* %cloptr9304, i64 0                   ; &cloptr9304[0]
  %f9307 = load i64, i64* %i0ptr9305, align 8                                        ; load; *i0ptr9305
  %fptr9306 = inttoptr i64 %f9307 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9306(i64 %arg7549, i64 %arg7548, i64 %retprim7069)  ; tail call
  ret void
}


define void @lam8233(i64 %env8234, i64 %_957030, i64 %OLd$_37wind_45stack) {
  %envptr9308 = inttoptr i64 %env8234 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9309 = getelementptr inbounds i64, i64* %envptr9308, i64 3                  ; &envptr9308[3]
  %Fqh$_37length = load i64, i64* %envptr9309, align 8                               ; load; *envptr9309
  %envptr9310 = inttoptr i64 %env8234 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9311 = getelementptr inbounds i64, i64* %envptr9310, i64 2                  ; &envptr9310[2]
  %RGf$_37drop = load i64, i64* %envptr9311, align 8                                 ; load; *envptr9311
  %envptr9312 = inttoptr i64 %env8234 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9313 = getelementptr inbounds i64, i64* %envptr9312, i64 1                  ; &envptr9312[1]
  %ARq$_37_62 = load i64, i64* %envptr9313, align 8                                  ; load; *envptr9313
  %cloptr9314 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9316 = getelementptr inbounds i64, i64* %cloptr9314, i64 1                    ; &eptr9316[1]
  %eptr9317 = getelementptr inbounds i64, i64* %cloptr9314, i64 2                    ; &eptr9317[2]
  %eptr9318 = getelementptr inbounds i64, i64* %cloptr9314, i64 3                    ; &eptr9318[3]
  store i64 %ARq$_37_62, i64* %eptr9316                                              ; *eptr9316 = %ARq$_37_62
  store i64 %RGf$_37drop, i64* %eptr9317                                             ; *eptr9317 = %RGf$_37drop
  store i64 %Fqh$_37length, i64* %eptr9318                                           ; *eptr9318 = %Fqh$_37length
  %eptr9315 = getelementptr inbounds i64, i64* %cloptr9314, i64 0                    ; &cloptr9314[0]
  %f9319 = ptrtoint void(i64,i64,i64,i64)* @lam8231 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9319, i64* %eptr9315                                                   ; store fptr
  %OJS$_37common_45tail = ptrtoint i64* %cloptr9314 to i64                           ; closure cast; i64* -> i64
  %cloptr9320 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9322 = getelementptr inbounds i64, i64* %cloptr9320, i64 1                    ; &eptr9322[1]
  %eptr9323 = getelementptr inbounds i64, i64* %cloptr9320, i64 2                    ; &eptr9323[2]
  store i64 %OJS$_37common_45tail, i64* %eptr9322                                    ; *eptr9322 = %OJS$_37common_45tail
  store i64 %OLd$_37wind_45stack, i64* %eptr9323                                     ; *eptr9323 = %OLd$_37wind_45stack
  %eptr9321 = getelementptr inbounds i64, i64* %cloptr9320, i64 0                    ; &cloptr9320[0]
  %f9324 = ptrtoint void(i64,i64,i64)* @lam8189 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9324, i64* %eptr9321                                                   ; store fptr
  %h1F$_37do_45wind = ptrtoint i64* %cloptr9320 to i64                               ; closure cast; i64* -> i64
  %ysa$x = call i64 @const_init_int(i64 1)                                           ; quoted int
  %arg7734 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7067 = call i64 @prim__47(i64 %ysa$x, i64 %arg7734)                        ; call prim__47
  %cloptr9325 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9326 = getelementptr inbounds i64, i64* %cloptr9325, i64 0                    ; &cloptr9325[0]
  %f9327 = ptrtoint void(i64,i64,i64)* @lam8137 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9327, i64* %eptr9326                                                   ; store fptr
  %arg7738 = ptrtoint i64* %cloptr9325 to i64                                        ; closure cast; i64* -> i64
  %arg7737 = add i64 0, 0                                                            ; quoted ()
  %cloptr9328 = inttoptr i64 %arg7738 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9328)                                         ; assert function application
  %i0ptr9329 = getelementptr inbounds i64, i64* %cloptr9328, i64 0                   ; &cloptr9328[0]
  %f9331 = load i64, i64* %i0ptr9329, align 8                                        ; load; *i0ptr9329
  %fptr9330 = inttoptr i64 %f9331 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9330(i64 %arg7738, i64 %arg7737, i64 %retprim7067)  ; tail call
  ret void
}


define void @lam8231(i64 %env8232, i64 %cont7031, i64 %LoC$x, i64 %E2U$y) {
  %envptr9332 = inttoptr i64 %env8232 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9333 = getelementptr inbounds i64, i64* %envptr9332, i64 3                  ; &envptr9332[3]
  %Fqh$_37length = load i64, i64* %envptr9333, align 8                               ; load; *envptr9333
  %envptr9334 = inttoptr i64 %env8232 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9335 = getelementptr inbounds i64, i64* %envptr9334, i64 2                  ; &envptr9334[2]
  %RGf$_37drop = load i64, i64* %envptr9335, align 8                                 ; load; *envptr9335
  %envptr9336 = inttoptr i64 %env8232 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9337 = getelementptr inbounds i64, i64* %envptr9336, i64 1                  ; &envptr9336[1]
  %ARq$_37_62 = load i64, i64* %envptr9337, align 8                                  ; load; *envptr9337
  %cloptr9338 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9340 = getelementptr inbounds i64, i64* %cloptr9338, i64 1                    ; &eptr9340[1]
  %eptr9341 = getelementptr inbounds i64, i64* %cloptr9338, i64 2                    ; &eptr9341[2]
  %eptr9342 = getelementptr inbounds i64, i64* %cloptr9338, i64 3                    ; &eptr9342[3]
  %eptr9343 = getelementptr inbounds i64, i64* %cloptr9338, i64 4                    ; &eptr9343[4]
  %eptr9344 = getelementptr inbounds i64, i64* %cloptr9338, i64 5                    ; &eptr9344[5]
  %eptr9345 = getelementptr inbounds i64, i64* %cloptr9338, i64 6                    ; &eptr9345[6]
  store i64 %ARq$_37_62, i64* %eptr9340                                              ; *eptr9340 = %ARq$_37_62
  store i64 %RGf$_37drop, i64* %eptr9341                                             ; *eptr9341 = %RGf$_37drop
  store i64 %Fqh$_37length, i64* %eptr9342                                           ; *eptr9342 = %Fqh$_37length
  store i64 %E2U$y, i64* %eptr9343                                                   ; *eptr9343 = %E2U$y
  store i64 %LoC$x, i64* %eptr9344                                                   ; *eptr9344 = %LoC$x
  store i64 %cont7031, i64* %eptr9345                                                ; *eptr9345 = %cont7031
  %eptr9339 = getelementptr inbounds i64, i64* %cloptr9338, i64 0                    ; &cloptr9338[0]
  %f9346 = ptrtoint void(i64,i64,i64)* @lam8229 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9346, i64* %eptr9339                                                   ; store fptr
  %arg7551 = ptrtoint i64* %cloptr9338 to i64                                        ; closure cast; i64* -> i64
  %cloptr9347 = inttoptr i64 %Fqh$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9347)                                         ; assert function application
  %i0ptr9348 = getelementptr inbounds i64, i64* %cloptr9347, i64 0                   ; &cloptr9347[0]
  %f9350 = load i64, i64* %i0ptr9348, align 8                                        ; load; *i0ptr9348
  %fptr9349 = inttoptr i64 %f9350 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9349(i64 %Fqh$_37length, i64 %arg7551, i64 %LoC$x)  ; tail call
  ret void
}


define void @lam8229(i64 %env8230, i64 %_957032, i64 %ssJ$lx) {
  %envptr9351 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9352 = getelementptr inbounds i64, i64* %envptr9351, i64 6                  ; &envptr9351[6]
  %cont7031 = load i64, i64* %envptr9352, align 8                                    ; load; *envptr9352
  %envptr9353 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9354 = getelementptr inbounds i64, i64* %envptr9353, i64 5                  ; &envptr9353[5]
  %LoC$x = load i64, i64* %envptr9354, align 8                                       ; load; *envptr9354
  %envptr9355 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9356 = getelementptr inbounds i64, i64* %envptr9355, i64 4                  ; &envptr9355[4]
  %E2U$y = load i64, i64* %envptr9356, align 8                                       ; load; *envptr9356
  %envptr9357 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9358 = getelementptr inbounds i64, i64* %envptr9357, i64 3                  ; &envptr9357[3]
  %Fqh$_37length = load i64, i64* %envptr9358, align 8                               ; load; *envptr9358
  %envptr9359 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9360 = getelementptr inbounds i64, i64* %envptr9359, i64 2                  ; &envptr9359[2]
  %RGf$_37drop = load i64, i64* %envptr9360, align 8                                 ; load; *envptr9360
  %envptr9361 = inttoptr i64 %env8230 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9362 = getelementptr inbounds i64, i64* %envptr9361, i64 1                  ; &envptr9361[1]
  %ARq$_37_62 = load i64, i64* %envptr9362, align 8                                  ; load; *envptr9362
  %cloptr9363 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9365 = getelementptr inbounds i64, i64* %cloptr9363, i64 1                    ; &eptr9365[1]
  %eptr9366 = getelementptr inbounds i64, i64* %cloptr9363, i64 2                    ; &eptr9366[2]
  %eptr9367 = getelementptr inbounds i64, i64* %cloptr9363, i64 3                    ; &eptr9367[3]
  %eptr9368 = getelementptr inbounds i64, i64* %cloptr9363, i64 4                    ; &eptr9368[4]
  %eptr9369 = getelementptr inbounds i64, i64* %cloptr9363, i64 5                    ; &eptr9369[5]
  %eptr9370 = getelementptr inbounds i64, i64* %cloptr9363, i64 6                    ; &eptr9370[6]
  store i64 %ARq$_37_62, i64* %eptr9365                                              ; *eptr9365 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9366                                                  ; *eptr9366 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9367                                             ; *eptr9367 = %RGf$_37drop
  store i64 %E2U$y, i64* %eptr9368                                                   ; *eptr9368 = %E2U$y
  store i64 %LoC$x, i64* %eptr9369                                                   ; *eptr9369 = %LoC$x
  store i64 %cont7031, i64* %eptr9370                                                ; *eptr9370 = %cont7031
  %eptr9364 = getelementptr inbounds i64, i64* %cloptr9363, i64 0                    ; &cloptr9363[0]
  %f9371 = ptrtoint void(i64,i64,i64)* @lam8227 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9371, i64* %eptr9364                                                   ; store fptr
  %arg7554 = ptrtoint i64* %cloptr9363 to i64                                        ; closure cast; i64* -> i64
  %cloptr9372 = inttoptr i64 %Fqh$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9372)                                         ; assert function application
  %i0ptr9373 = getelementptr inbounds i64, i64* %cloptr9372, i64 0                   ; &cloptr9372[0]
  %f9375 = load i64, i64* %i0ptr9373, align 8                                        ; load; *i0ptr9373
  %fptr9374 = inttoptr i64 %f9375 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9374(i64 %Fqh$_37length, i64 %arg7554, i64 %E2U$y)  ; tail call
  ret void
}


define void @lam8227(i64 %env8228, i64 %_957033, i64 %S9s$ly) {
  %envptr9376 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9377 = getelementptr inbounds i64, i64* %envptr9376, i64 6                  ; &envptr9376[6]
  %cont7031 = load i64, i64* %envptr9377, align 8                                    ; load; *envptr9377
  %envptr9378 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9379 = getelementptr inbounds i64, i64* %envptr9378, i64 5                  ; &envptr9378[5]
  %LoC$x = load i64, i64* %envptr9379, align 8                                       ; load; *envptr9379
  %envptr9380 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9381 = getelementptr inbounds i64, i64* %envptr9380, i64 4                  ; &envptr9380[4]
  %E2U$y = load i64, i64* %envptr9381, align 8                                       ; load; *envptr9381
  %envptr9382 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9383 = getelementptr inbounds i64, i64* %envptr9382, i64 3                  ; &envptr9382[3]
  %RGf$_37drop = load i64, i64* %envptr9383, align 8                                 ; load; *envptr9383
  %envptr9384 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9385 = getelementptr inbounds i64, i64* %envptr9384, i64 2                  ; &envptr9384[2]
  %ssJ$lx = load i64, i64* %envptr9385, align 8                                      ; load; *envptr9385
  %envptr9386 = inttoptr i64 %env8228 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9387 = getelementptr inbounds i64, i64* %envptr9386, i64 1                  ; &envptr9386[1]
  %ARq$_37_62 = load i64, i64* %envptr9387, align 8                                  ; load; *envptr9387
  %cloptr9388 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9389 = getelementptr inbounds i64, i64* %cloptr9388, i64 0                    ; &cloptr9388[0]
  %f9390 = ptrtoint void(i64,i64)* @lam8225 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9390, i64* %eptr9389                                                   ; store fptr
  %arg7557 = ptrtoint i64* %cloptr9388 to i64                                        ; closure cast; i64* -> i64
  %cloptr9391 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9393 = getelementptr inbounds i64, i64* %cloptr9391, i64 1                    ; &eptr9393[1]
  %eptr9394 = getelementptr inbounds i64, i64* %cloptr9391, i64 2                    ; &eptr9394[2]
  %eptr9395 = getelementptr inbounds i64, i64* %cloptr9391, i64 3                    ; &eptr9395[3]
  %eptr9396 = getelementptr inbounds i64, i64* %cloptr9391, i64 4                    ; &eptr9396[4]
  %eptr9397 = getelementptr inbounds i64, i64* %cloptr9391, i64 5                    ; &eptr9397[5]
  %eptr9398 = getelementptr inbounds i64, i64* %cloptr9391, i64 6                    ; &eptr9398[6]
  %eptr9399 = getelementptr inbounds i64, i64* %cloptr9391, i64 7                    ; &eptr9399[7]
  store i64 %ARq$_37_62, i64* %eptr9393                                              ; *eptr9393 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9394                                                  ; *eptr9394 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9395                                             ; *eptr9395 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9396                                                  ; *eptr9396 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9397                                                   ; *eptr9397 = %E2U$y
  store i64 %LoC$x, i64* %eptr9398                                                   ; *eptr9398 = %LoC$x
  store i64 %cont7031, i64* %eptr9399                                                ; *eptr9399 = %cont7031
  %eptr9392 = getelementptr inbounds i64, i64* %cloptr9391, i64 0                    ; &cloptr9391[0]
  %f9400 = ptrtoint void(i64,i64,i64)* @lam8222 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9400, i64* %eptr9392                                                   ; store fptr
  %arg7556 = ptrtoint i64* %cloptr9391 to i64                                        ; closure cast; i64* -> i64
  %cloptr9401 = inttoptr i64 %arg7557 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9401)                                         ; assert function application
  %i0ptr9402 = getelementptr inbounds i64, i64* %cloptr9401, i64 0                   ; &cloptr9401[0]
  %f9404 = load i64, i64* %i0ptr9402, align 8                                        ; load; *i0ptr9402
  %fptr9403 = inttoptr i64 %f9404 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9403(i64 %arg7557, i64 %arg7556)                    ; tail call
  ret void
}


define void @lam8225(i64 %env8226, i64 %PjY$lst7043) {
  %cont7042 = call i64 @prim_car(i64 %PjY$lst7043)                                   ; call prim_car
  %PjY$lst = call i64 @prim_cdr(i64 %PjY$lst7043)                                    ; call prim_cdr
  %arg7561 = add i64 0, 0                                                            ; quoted ()
  %cloptr9405 = inttoptr i64 %cont7042 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9405)                                         ; assert function application
  %i0ptr9406 = getelementptr inbounds i64, i64* %cloptr9405, i64 0                   ; &cloptr9405[0]
  %f9408 = load i64, i64* %i0ptr9406, align 8                                        ; load; *i0ptr9406
  %fptr9407 = inttoptr i64 %f9408 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9407(i64 %cont7042, i64 %arg7561, i64 %PjY$lst)     ; tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %_957040, i64 %a6931) {
  %envptr9409 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9410 = getelementptr inbounds i64, i64* %envptr9409, i64 7                  ; &envptr9409[7]
  %cont7031 = load i64, i64* %envptr9410, align 8                                    ; load; *envptr9410
  %envptr9411 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9412 = getelementptr inbounds i64, i64* %envptr9411, i64 6                  ; &envptr9411[6]
  %LoC$x = load i64, i64* %envptr9412, align 8                                       ; load; *envptr9412
  %envptr9413 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9414 = getelementptr inbounds i64, i64* %envptr9413, i64 5                  ; &envptr9413[5]
  %E2U$y = load i64, i64* %envptr9414, align 8                                       ; load; *envptr9414
  %envptr9415 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9416 = getelementptr inbounds i64, i64* %envptr9415, i64 4                  ; &envptr9415[4]
  %S9s$ly = load i64, i64* %envptr9416, align 8                                      ; load; *envptr9416
  %envptr9417 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9418 = getelementptr inbounds i64, i64* %envptr9417, i64 3                  ; &envptr9417[3]
  %RGf$_37drop = load i64, i64* %envptr9418, align 8                                 ; load; *envptr9418
  %envptr9419 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9420 = getelementptr inbounds i64, i64* %envptr9419, i64 2                  ; &envptr9419[2]
  %ssJ$lx = load i64, i64* %envptr9420, align 8                                      ; load; *envptr9420
  %envptr9421 = inttoptr i64 %env8223 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9422 = getelementptr inbounds i64, i64* %envptr9421, i64 1                  ; &envptr9421[1]
  %ARq$_37_62 = load i64, i64* %envptr9422, align 8                                  ; load; *envptr9422
  %arg7564 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7041 = call i64 @prim_make_45vector(i64 %arg7564, i64 %a6931)              ; call prim_make_45vector
  %cloptr9423 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9425 = getelementptr inbounds i64, i64* %cloptr9423, i64 1                    ; &eptr9425[1]
  %eptr9426 = getelementptr inbounds i64, i64* %cloptr9423, i64 2                    ; &eptr9426[2]
  %eptr9427 = getelementptr inbounds i64, i64* %cloptr9423, i64 3                    ; &eptr9427[3]
  %eptr9428 = getelementptr inbounds i64, i64* %cloptr9423, i64 4                    ; &eptr9428[4]
  %eptr9429 = getelementptr inbounds i64, i64* %cloptr9423, i64 5                    ; &eptr9429[5]
  %eptr9430 = getelementptr inbounds i64, i64* %cloptr9423, i64 6                    ; &eptr9430[6]
  %eptr9431 = getelementptr inbounds i64, i64* %cloptr9423, i64 7                    ; &eptr9431[7]
  store i64 %ARq$_37_62, i64* %eptr9425                                              ; *eptr9425 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9426                                                  ; *eptr9426 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9427                                             ; *eptr9427 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9428                                                  ; *eptr9428 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9429                                                   ; *eptr9429 = %E2U$y
  store i64 %LoC$x, i64* %eptr9430                                                   ; *eptr9430 = %LoC$x
  store i64 %cont7031, i64* %eptr9431                                                ; *eptr9431 = %cont7031
  %eptr9424 = getelementptr inbounds i64, i64* %cloptr9423, i64 0                    ; &cloptr9423[0]
  %f9432 = ptrtoint void(i64,i64,i64)* @lam8219 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9432, i64* %eptr9424                                                   ; store fptr
  %arg7567 = ptrtoint i64* %cloptr9423 to i64                                        ; closure cast; i64* -> i64
  %arg7566 = add i64 0, 0                                                            ; quoted ()
  %cloptr9433 = inttoptr i64 %arg7567 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9433)                                         ; assert function application
  %i0ptr9434 = getelementptr inbounds i64, i64* %cloptr9433, i64 0                   ; &cloptr9433[0]
  %f9436 = load i64, i64* %i0ptr9434, align 8                                        ; load; *i0ptr9434
  %fptr9435 = inttoptr i64 %f9436 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9435(i64 %arg7567, i64 %arg7566, i64 %retprim7041)  ; tail call
  ret void
}


define void @lam8219(i64 %env8220, i64 %_957034, i64 %o6k$loop) {
  %envptr9437 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9438 = getelementptr inbounds i64, i64* %envptr9437, i64 7                  ; &envptr9437[7]
  %cont7031 = load i64, i64* %envptr9438, align 8                                    ; load; *envptr9438
  %envptr9439 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9440 = getelementptr inbounds i64, i64* %envptr9439, i64 6                  ; &envptr9439[6]
  %LoC$x = load i64, i64* %envptr9440, align 8                                       ; load; *envptr9440
  %envptr9441 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9442 = getelementptr inbounds i64, i64* %envptr9441, i64 5                  ; &envptr9441[5]
  %E2U$y = load i64, i64* %envptr9442, align 8                                       ; load; *envptr9442
  %envptr9443 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9444 = getelementptr inbounds i64, i64* %envptr9443, i64 4                  ; &envptr9443[4]
  %S9s$ly = load i64, i64* %envptr9444, align 8                                      ; load; *envptr9444
  %envptr9445 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9446 = getelementptr inbounds i64, i64* %envptr9445, i64 3                  ; &envptr9445[3]
  %RGf$_37drop = load i64, i64* %envptr9446, align 8                                 ; load; *envptr9446
  %envptr9447 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9448 = getelementptr inbounds i64, i64* %envptr9447, i64 2                  ; &envptr9447[2]
  %ssJ$lx = load i64, i64* %envptr9448, align 8                                      ; load; *envptr9448
  %envptr9449 = inttoptr i64 %env8220 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9450 = getelementptr inbounds i64, i64* %envptr9449, i64 1                  ; &envptr9449[1]
  %ARq$_37_62 = load i64, i64* %envptr9450, align 8                                  ; load; *envptr9450
  %arg7569 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9451 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9453 = getelementptr inbounds i64, i64* %cloptr9451, i64 1                    ; &eptr9453[1]
  store i64 %o6k$loop, i64* %eptr9453                                                ; *eptr9453 = %o6k$loop
  %eptr9452 = getelementptr inbounds i64, i64* %cloptr9451, i64 0                    ; &cloptr9451[0]
  %f9454 = ptrtoint void(i64,i64,i64,i64)* @lam8216 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9454, i64* %eptr9452                                                   ; store fptr
  %arg7568 = ptrtoint i64* %cloptr9451 to i64                                        ; closure cast; i64* -> i64
  %glO$_956835 = call i64 @prim_vector_45set_33(i64 %o6k$loop, i64 %arg7569, i64 %arg7568); call prim_vector_45set_33
  %arg7584 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6936 = call i64 @prim_vector_45ref(i64 %o6k$loop, i64 %arg7584)                  ; call prim_vector_45ref
  %cloptr9455 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9457 = getelementptr inbounds i64, i64* %cloptr9455, i64 1                    ; &eptr9457[1]
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9455, i64 2                    ; &eptr9458[2]
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9455, i64 3                    ; &eptr9459[3]
  %eptr9460 = getelementptr inbounds i64, i64* %cloptr9455, i64 4                    ; &eptr9460[4]
  %eptr9461 = getelementptr inbounds i64, i64* %cloptr9455, i64 5                    ; &eptr9461[5]
  %eptr9462 = getelementptr inbounds i64, i64* %cloptr9455, i64 6                    ; &eptr9462[6]
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9455, i64 7                    ; &eptr9463[7]
  %eptr9464 = getelementptr inbounds i64, i64* %cloptr9455, i64 8                    ; &eptr9464[8]
  store i64 %ARq$_37_62, i64* %eptr9457                                              ; *eptr9457 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9458                                                  ; *eptr9458 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9459                                             ; *eptr9459 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9460                                                  ; *eptr9460 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9461                                                   ; *eptr9461 = %E2U$y
  store i64 %LoC$x, i64* %eptr9462                                                   ; *eptr9462 = %LoC$x
  store i64 %cont7031, i64* %eptr9463                                                ; *eptr9463 = %cont7031
  store i64 %a6936, i64* %eptr9464                                                   ; *eptr9464 = %a6936
  %eptr9456 = getelementptr inbounds i64, i64* %cloptr9455, i64 0                    ; &cloptr9455[0]
  %f9465 = ptrtoint void(i64,i64,i64)* @lam8211 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9465, i64* %eptr9456                                                   ; store fptr
  %arg7588 = ptrtoint i64* %cloptr9455 to i64                                        ; closure cast; i64* -> i64
  %cloptr9466 = inttoptr i64 %ARq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9466)                                         ; assert function application
  %i0ptr9467 = getelementptr inbounds i64, i64* %cloptr9466, i64 0                   ; &cloptr9466[0]
  %f9469 = load i64, i64* %i0ptr9467, align 8                                        ; load; *i0ptr9467
  %fptr9468 = inttoptr i64 %f9469 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9468(i64 %ARq$_37_62, i64 %arg7588, i64 %ssJ$lx, i64 %S9s$ly); tail call
  ret void
}


define void @lam8216(i64 %env8217, i64 %cont7035, i64 %BvK$x, i64 %b3y$y) {
  %envptr9470 = inttoptr i64 %env8217 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9471 = getelementptr inbounds i64, i64* %envptr9470, i64 1                  ; &envptr9470[1]
  %o6k$loop = load i64, i64* %envptr9471, align 8                                    ; load; *envptr9471
  %a6932 = call i64 @prim_eq_63(i64 %BvK$x, i64 %b3y$y)                              ; call prim_eq_63
  %cmp9472 = icmp eq i64 %a6932, 15                                                  ; false?
  br i1 %cmp9472, label %else9474, label %then9473                                   ; if

then9473:
  %arg7574 = add i64 0, 0                                                            ; quoted ()
  %cloptr9475 = inttoptr i64 %cont7035 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9475)                                         ; assert function application
  %i0ptr9476 = getelementptr inbounds i64, i64* %cloptr9475, i64 0                   ; &cloptr9475[0]
  %f9478 = load i64, i64* %i0ptr9476, align 8                                        ; load; *i0ptr9476
  %fptr9477 = inttoptr i64 %f9478 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9477(i64 %cont7035, i64 %arg7574, i64 %BvK$x)       ; tail call
  ret void

else9474:
  %arg7576 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6933 = call i64 @prim_vector_45ref(i64 %o6k$loop, i64 %arg7576)                  ; call prim_vector_45ref
  %a6934 = call i64 @prim_cdr(i64 %BvK$x)                                            ; call prim_cdr
  %a6935 = call i64 @prim_cdr(i64 %b3y$y)                                            ; call prim_cdr
  %cloptr9479 = inttoptr i64 %a6933 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9479)                                         ; assert function application
  %i0ptr9480 = getelementptr inbounds i64, i64* %cloptr9479, i64 0                   ; &cloptr9479[0]
  %f9482 = load i64, i64* %i0ptr9480, align 8                                        ; load; *i0ptr9480
  %fptr9481 = inttoptr i64 %f9482 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9481(i64 %a6933, i64 %cont7035, i64 %a6934, i64 %a6935); tail call
  ret void
}


define void @lam8211(i64 %env8212, i64 %_957036, i64 %a6937) {
  %envptr9483 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9484 = getelementptr inbounds i64, i64* %envptr9483, i64 8                  ; &envptr9483[8]
  %a6936 = load i64, i64* %envptr9484, align 8                                       ; load; *envptr9484
  %envptr9485 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9486 = getelementptr inbounds i64, i64* %envptr9485, i64 7                  ; &envptr9485[7]
  %cont7031 = load i64, i64* %envptr9486, align 8                                    ; load; *envptr9486
  %envptr9487 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9488 = getelementptr inbounds i64, i64* %envptr9487, i64 6                  ; &envptr9487[6]
  %LoC$x = load i64, i64* %envptr9488, align 8                                       ; load; *envptr9488
  %envptr9489 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9490 = getelementptr inbounds i64, i64* %envptr9489, i64 5                  ; &envptr9489[5]
  %E2U$y = load i64, i64* %envptr9490, align 8                                       ; load; *envptr9490
  %envptr9491 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9492 = getelementptr inbounds i64, i64* %envptr9491, i64 4                  ; &envptr9491[4]
  %S9s$ly = load i64, i64* %envptr9492, align 8                                      ; load; *envptr9492
  %envptr9493 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9494 = getelementptr inbounds i64, i64* %envptr9493, i64 3                  ; &envptr9493[3]
  %RGf$_37drop = load i64, i64* %envptr9494, align 8                                 ; load; *envptr9494
  %envptr9495 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9496 = getelementptr inbounds i64, i64* %envptr9495, i64 2                  ; &envptr9495[2]
  %ssJ$lx = load i64, i64* %envptr9496, align 8                                      ; load; *envptr9496
  %envptr9497 = inttoptr i64 %env8212 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9498 = getelementptr inbounds i64, i64* %envptr9497, i64 1                  ; &envptr9497[1]
  %ARq$_37_62 = load i64, i64* %envptr9498, align 8                                  ; load; *envptr9498
  %cmp9499 = icmp eq i64 %a6937, 15                                                  ; false?
  br i1 %cmp9499, label %else9501, label %then9500                                   ; if

then9500:
  %a6938 = call i64 @prim__45(i64 %ssJ$lx, i64 %S9s$ly)                              ; call prim__45
  %cloptr9502 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9504 = getelementptr inbounds i64, i64* %cloptr9502, i64 1                    ; &eptr9504[1]
  %eptr9505 = getelementptr inbounds i64, i64* %cloptr9502, i64 2                    ; &eptr9505[2]
  %eptr9506 = getelementptr inbounds i64, i64* %cloptr9502, i64 3                    ; &eptr9506[3]
  %eptr9507 = getelementptr inbounds i64, i64* %cloptr9502, i64 4                    ; &eptr9507[4]
  %eptr9508 = getelementptr inbounds i64, i64* %cloptr9502, i64 5                    ; &eptr9508[5]
  %eptr9509 = getelementptr inbounds i64, i64* %cloptr9502, i64 6                    ; &eptr9509[6]
  %eptr9510 = getelementptr inbounds i64, i64* %cloptr9502, i64 7                    ; &eptr9510[7]
  store i64 %ARq$_37_62, i64* %eptr9504                                              ; *eptr9504 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9505                                                  ; *eptr9505 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9506                                             ; *eptr9506 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9507                                                  ; *eptr9507 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9508                                                   ; *eptr9508 = %E2U$y
  store i64 %cont7031, i64* %eptr9509                                                ; *eptr9509 = %cont7031
  store i64 %a6936, i64* %eptr9510                                                   ; *eptr9510 = %a6936
  %eptr9503 = getelementptr inbounds i64, i64* %cloptr9502, i64 0                    ; &cloptr9502[0]
  %f9511 = ptrtoint void(i64,i64,i64)* @lam8199 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9511, i64* %eptr9503                                                   ; store fptr
  %arg7594 = ptrtoint i64* %cloptr9502 to i64                                        ; closure cast; i64* -> i64
  %cloptr9512 = inttoptr i64 %RGf$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9512)                                         ; assert function application
  %i0ptr9513 = getelementptr inbounds i64, i64* %cloptr9512, i64 0                   ; &cloptr9512[0]
  %f9515 = load i64, i64* %i0ptr9513, align 8                                        ; load; *i0ptr9513
  %fptr9514 = inttoptr i64 %f9515 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9514(i64 %RGf$_37drop, i64 %arg7594, i64 %LoC$x, i64 %a6938); tail call
  ret void

else9501:
  %cloptr9516 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9518 = getelementptr inbounds i64, i64* %cloptr9516, i64 1                    ; &eptr9518[1]
  %eptr9519 = getelementptr inbounds i64, i64* %cloptr9516, i64 2                    ; &eptr9519[2]
  %eptr9520 = getelementptr inbounds i64, i64* %cloptr9516, i64 3                    ; &eptr9520[3]
  %eptr9521 = getelementptr inbounds i64, i64* %cloptr9516, i64 4                    ; &eptr9521[4]
  %eptr9522 = getelementptr inbounds i64, i64* %cloptr9516, i64 5                    ; &eptr9522[5]
  %eptr9523 = getelementptr inbounds i64, i64* %cloptr9516, i64 6                    ; &eptr9523[6]
  %eptr9524 = getelementptr inbounds i64, i64* %cloptr9516, i64 7                    ; &eptr9524[7]
  store i64 %ARq$_37_62, i64* %eptr9518                                              ; *eptr9518 = %ARq$_37_62
  store i64 %ssJ$lx, i64* %eptr9519                                                  ; *eptr9519 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9520                                             ; *eptr9520 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9521                                                  ; *eptr9521 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9522                                                   ; *eptr9522 = %E2U$y
  store i64 %cont7031, i64* %eptr9523                                                ; *eptr9523 = %cont7031
  store i64 %a6936, i64* %eptr9524                                                   ; *eptr9524 = %a6936
  %eptr9517 = getelementptr inbounds i64, i64* %cloptr9516, i64 0                    ; &cloptr9516[0]
  %f9525 = ptrtoint void(i64,i64,i64)* @lam8209 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9525, i64* %eptr9517                                                   ; store fptr
  %arg7619 = ptrtoint i64* %cloptr9516 to i64                                        ; closure cast; i64* -> i64
  %arg7618 = add i64 0, 0                                                            ; quoted ()
  %cloptr9526 = inttoptr i64 %arg7619 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9526)                                         ; assert function application
  %i0ptr9527 = getelementptr inbounds i64, i64* %cloptr9526, i64 0                   ; &cloptr9526[0]
  %f9529 = load i64, i64* %i0ptr9527, align 8                                        ; load; *i0ptr9527
  %fptr9528 = inttoptr i64 %f9529 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9528(i64 %arg7619, i64 %arg7618, i64 %LoC$x)        ; tail call
  ret void
}


define void @lam8209(i64 %env8210, i64 %_957037, i64 %a6939) {
  %envptr9530 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9531 = getelementptr inbounds i64, i64* %envptr9530, i64 7                  ; &envptr9530[7]
  %a6936 = load i64, i64* %envptr9531, align 8                                       ; load; *envptr9531
  %envptr9532 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9533 = getelementptr inbounds i64, i64* %envptr9532, i64 6                  ; &envptr9532[6]
  %cont7031 = load i64, i64* %envptr9533, align 8                                    ; load; *envptr9533
  %envptr9534 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9535 = getelementptr inbounds i64, i64* %envptr9534, i64 5                  ; &envptr9534[5]
  %E2U$y = load i64, i64* %envptr9535, align 8                                       ; load; *envptr9535
  %envptr9536 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9537 = getelementptr inbounds i64, i64* %envptr9536, i64 4                  ; &envptr9536[4]
  %S9s$ly = load i64, i64* %envptr9537, align 8                                      ; load; *envptr9537
  %envptr9538 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9539 = getelementptr inbounds i64, i64* %envptr9538, i64 3                  ; &envptr9538[3]
  %RGf$_37drop = load i64, i64* %envptr9539, align 8                                 ; load; *envptr9539
  %envptr9540 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9541 = getelementptr inbounds i64, i64* %envptr9540, i64 2                  ; &envptr9540[2]
  %ssJ$lx = load i64, i64* %envptr9541, align 8                                      ; load; *envptr9541
  %envptr9542 = inttoptr i64 %env8210 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9543 = getelementptr inbounds i64, i64* %envptr9542, i64 1                  ; &envptr9542[1]
  %ARq$_37_62 = load i64, i64* %envptr9543, align 8                                  ; load; *envptr9543
  %cloptr9544 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9546 = getelementptr inbounds i64, i64* %cloptr9544, i64 1                    ; &eptr9546[1]
  %eptr9547 = getelementptr inbounds i64, i64* %cloptr9544, i64 2                    ; &eptr9547[2]
  %eptr9548 = getelementptr inbounds i64, i64* %cloptr9544, i64 3                    ; &eptr9548[3]
  %eptr9549 = getelementptr inbounds i64, i64* %cloptr9544, i64 4                    ; &eptr9549[4]
  %eptr9550 = getelementptr inbounds i64, i64* %cloptr9544, i64 5                    ; &eptr9550[5]
  %eptr9551 = getelementptr inbounds i64, i64* %cloptr9544, i64 6                    ; &eptr9551[6]
  %eptr9552 = getelementptr inbounds i64, i64* %cloptr9544, i64 7                    ; &eptr9552[7]
  store i64 %ssJ$lx, i64* %eptr9546                                                  ; *eptr9546 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9547                                             ; *eptr9547 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9548                                                  ; *eptr9548 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9549                                                   ; *eptr9549 = %E2U$y
  store i64 %a6939, i64* %eptr9550                                                   ; *eptr9550 = %a6939
  store i64 %cont7031, i64* %eptr9551                                                ; *eptr9551 = %cont7031
  store i64 %a6936, i64* %eptr9552                                                   ; *eptr9552 = %a6936
  %eptr9545 = getelementptr inbounds i64, i64* %cloptr9544, i64 0                    ; &cloptr9544[0]
  %f9553 = ptrtoint void(i64,i64,i64)* @lam8207 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9553, i64* %eptr9545                                                   ; store fptr
  %arg7622 = ptrtoint i64* %cloptr9544 to i64                                        ; closure cast; i64* -> i64
  %cloptr9554 = inttoptr i64 %ARq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9554)                                         ; assert function application
  %i0ptr9555 = getelementptr inbounds i64, i64* %cloptr9554, i64 0                   ; &cloptr9554[0]
  %f9557 = load i64, i64* %i0ptr9555, align 8                                        ; load; *i0ptr9555
  %fptr9556 = inttoptr i64 %f9557 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9556(i64 %ARq$_37_62, i64 %arg7622, i64 %S9s$ly, i64 %ssJ$lx); tail call
  ret void
}


define void @lam8207(i64 %env8208, i64 %_957038, i64 %a6940) {
  %envptr9558 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9559 = getelementptr inbounds i64, i64* %envptr9558, i64 7                  ; &envptr9558[7]
  %a6936 = load i64, i64* %envptr9559, align 8                                       ; load; *envptr9559
  %envptr9560 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9561 = getelementptr inbounds i64, i64* %envptr9560, i64 6                  ; &envptr9560[6]
  %cont7031 = load i64, i64* %envptr9561, align 8                                    ; load; *envptr9561
  %envptr9562 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9563 = getelementptr inbounds i64, i64* %envptr9562, i64 5                  ; &envptr9562[5]
  %a6939 = load i64, i64* %envptr9563, align 8                                       ; load; *envptr9563
  %envptr9564 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9565 = getelementptr inbounds i64, i64* %envptr9564, i64 4                  ; &envptr9564[4]
  %E2U$y = load i64, i64* %envptr9565, align 8                                       ; load; *envptr9565
  %envptr9566 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9567 = getelementptr inbounds i64, i64* %envptr9566, i64 3                  ; &envptr9566[3]
  %S9s$ly = load i64, i64* %envptr9567, align 8                                      ; load; *envptr9567
  %envptr9568 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9569 = getelementptr inbounds i64, i64* %envptr9568, i64 2                  ; &envptr9568[2]
  %RGf$_37drop = load i64, i64* %envptr9569, align 8                                 ; load; *envptr9569
  %envptr9570 = inttoptr i64 %env8208 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9571 = getelementptr inbounds i64, i64* %envptr9570, i64 1                  ; &envptr9570[1]
  %ssJ$lx = load i64, i64* %envptr9571, align 8                                      ; load; *envptr9571
  %cmp9572 = icmp eq i64 %a6940, 15                                                  ; false?
  br i1 %cmp9572, label %else9574, label %then9573                                   ; if

then9573:
  %a6941 = call i64 @prim__45(i64 %S9s$ly, i64 %ssJ$lx)                              ; call prim__45
  %cloptr9575 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9577 = getelementptr inbounds i64, i64* %cloptr9575, i64 1                    ; &eptr9577[1]
  %eptr9578 = getelementptr inbounds i64, i64* %cloptr9575, i64 2                    ; &eptr9578[2]
  %eptr9579 = getelementptr inbounds i64, i64* %cloptr9575, i64 3                    ; &eptr9579[3]
  store i64 %a6939, i64* %eptr9577                                                   ; *eptr9577 = %a6939
  store i64 %cont7031, i64* %eptr9578                                                ; *eptr9578 = %cont7031
  store i64 %a6936, i64* %eptr9579                                                   ; *eptr9579 = %a6936
  %eptr9576 = getelementptr inbounds i64, i64* %cloptr9575, i64 0                    ; &cloptr9575[0]
  %f9580 = ptrtoint void(i64,i64,i64)* @lam8202 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9580, i64* %eptr9576                                                   ; store fptr
  %arg7628 = ptrtoint i64* %cloptr9575 to i64                                        ; closure cast; i64* -> i64
  %cloptr9581 = inttoptr i64 %RGf$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9581)                                         ; assert function application
  %i0ptr9582 = getelementptr inbounds i64, i64* %cloptr9581, i64 0                   ; &cloptr9581[0]
  %f9584 = load i64, i64* %i0ptr9582, align 8                                        ; load; *i0ptr9582
  %fptr9583 = inttoptr i64 %f9584 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9583(i64 %RGf$_37drop, i64 %arg7628, i64 %E2U$y, i64 %a6941); tail call
  ret void

else9574:
  %cloptr9585 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9587 = getelementptr inbounds i64, i64* %cloptr9585, i64 1                    ; &eptr9587[1]
  %eptr9588 = getelementptr inbounds i64, i64* %cloptr9585, i64 2                    ; &eptr9588[2]
  %eptr9589 = getelementptr inbounds i64, i64* %cloptr9585, i64 3                    ; &eptr9589[3]
  store i64 %a6939, i64* %eptr9587                                                   ; *eptr9587 = %a6939
  store i64 %cont7031, i64* %eptr9588                                                ; *eptr9588 = %cont7031
  store i64 %a6936, i64* %eptr9589                                                   ; *eptr9589 = %a6936
  %eptr9586 = getelementptr inbounds i64, i64* %cloptr9585, i64 0                    ; &cloptr9585[0]
  %f9590 = ptrtoint void(i64,i64,i64)* @lam8205 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9590, i64* %eptr9586                                                   ; store fptr
  %arg7636 = ptrtoint i64* %cloptr9585 to i64                                        ; closure cast; i64* -> i64
  %arg7635 = add i64 0, 0                                                            ; quoted ()
  %cloptr9591 = inttoptr i64 %arg7636 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9591)                                         ; assert function application
  %i0ptr9592 = getelementptr inbounds i64, i64* %cloptr9591, i64 0                   ; &cloptr9591[0]
  %f9594 = load i64, i64* %i0ptr9592, align 8                                        ; load; *i0ptr9592
  %fptr9593 = inttoptr i64 %f9594 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9593(i64 %arg7636, i64 %arg7635, i64 %E2U$y)        ; tail call
  ret void
}


define void @lam8205(i64 %env8206, i64 %_957039, i64 %a6942) {
  %envptr9595 = inttoptr i64 %env8206 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9596 = getelementptr inbounds i64, i64* %envptr9595, i64 3                  ; &envptr9595[3]
  %a6936 = load i64, i64* %envptr9596, align 8                                       ; load; *envptr9596
  %envptr9597 = inttoptr i64 %env8206 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9598 = getelementptr inbounds i64, i64* %envptr9597, i64 2                  ; &envptr9597[2]
  %cont7031 = load i64, i64* %envptr9598, align 8                                    ; load; *envptr9598
  %envptr9599 = inttoptr i64 %env8206 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9600 = getelementptr inbounds i64, i64* %envptr9599, i64 1                  ; &envptr9599[1]
  %a6939 = load i64, i64* %envptr9600, align 8                                       ; load; *envptr9600
  %cloptr9601 = inttoptr i64 %a6936 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9601)                                         ; assert function application
  %i0ptr9602 = getelementptr inbounds i64, i64* %cloptr9601, i64 0                   ; &cloptr9601[0]
  %f9604 = load i64, i64* %i0ptr9602, align 8                                        ; load; *i0ptr9602
  %fptr9603 = inttoptr i64 %f9604 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9603(i64 %a6936, i64 %cont7031, i64 %a6939, i64 %a6942); tail call
  ret void
}


define void @lam8202(i64 %env8203, i64 %_957039, i64 %a6942) {
  %envptr9605 = inttoptr i64 %env8203 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9606 = getelementptr inbounds i64, i64* %envptr9605, i64 3                  ; &envptr9605[3]
  %a6936 = load i64, i64* %envptr9606, align 8                                       ; load; *envptr9606
  %envptr9607 = inttoptr i64 %env8203 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9608 = getelementptr inbounds i64, i64* %envptr9607, i64 2                  ; &envptr9607[2]
  %cont7031 = load i64, i64* %envptr9608, align 8                                    ; load; *envptr9608
  %envptr9609 = inttoptr i64 %env8203 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9610 = getelementptr inbounds i64, i64* %envptr9609, i64 1                  ; &envptr9609[1]
  %a6939 = load i64, i64* %envptr9610, align 8                                       ; load; *envptr9610
  %cloptr9611 = inttoptr i64 %a6936 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9611)                                         ; assert function application
  %i0ptr9612 = getelementptr inbounds i64, i64* %cloptr9611, i64 0                   ; &cloptr9611[0]
  %f9614 = load i64, i64* %i0ptr9612, align 8                                        ; load; *i0ptr9612
  %fptr9613 = inttoptr i64 %f9614 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9613(i64 %a6936, i64 %cont7031, i64 %a6939, i64 %a6942); tail call
  ret void
}


define void @lam8199(i64 %env8200, i64 %_957037, i64 %a6939) {
  %envptr9615 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9616 = getelementptr inbounds i64, i64* %envptr9615, i64 7                  ; &envptr9615[7]
  %a6936 = load i64, i64* %envptr9616, align 8                                       ; load; *envptr9616
  %envptr9617 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9618 = getelementptr inbounds i64, i64* %envptr9617, i64 6                  ; &envptr9617[6]
  %cont7031 = load i64, i64* %envptr9618, align 8                                    ; load; *envptr9618
  %envptr9619 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9620 = getelementptr inbounds i64, i64* %envptr9619, i64 5                  ; &envptr9619[5]
  %E2U$y = load i64, i64* %envptr9620, align 8                                       ; load; *envptr9620
  %envptr9621 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9622 = getelementptr inbounds i64, i64* %envptr9621, i64 4                  ; &envptr9621[4]
  %S9s$ly = load i64, i64* %envptr9622, align 8                                      ; load; *envptr9622
  %envptr9623 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9624 = getelementptr inbounds i64, i64* %envptr9623, i64 3                  ; &envptr9623[3]
  %RGf$_37drop = load i64, i64* %envptr9624, align 8                                 ; load; *envptr9624
  %envptr9625 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9626 = getelementptr inbounds i64, i64* %envptr9625, i64 2                  ; &envptr9625[2]
  %ssJ$lx = load i64, i64* %envptr9626, align 8                                      ; load; *envptr9626
  %envptr9627 = inttoptr i64 %env8200 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9628 = getelementptr inbounds i64, i64* %envptr9627, i64 1                  ; &envptr9627[1]
  %ARq$_37_62 = load i64, i64* %envptr9628, align 8                                  ; load; *envptr9628
  %cloptr9629 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9631 = getelementptr inbounds i64, i64* %cloptr9629, i64 1                    ; &eptr9631[1]
  %eptr9632 = getelementptr inbounds i64, i64* %cloptr9629, i64 2                    ; &eptr9632[2]
  %eptr9633 = getelementptr inbounds i64, i64* %cloptr9629, i64 3                    ; &eptr9633[3]
  %eptr9634 = getelementptr inbounds i64, i64* %cloptr9629, i64 4                    ; &eptr9634[4]
  %eptr9635 = getelementptr inbounds i64, i64* %cloptr9629, i64 5                    ; &eptr9635[5]
  %eptr9636 = getelementptr inbounds i64, i64* %cloptr9629, i64 6                    ; &eptr9636[6]
  %eptr9637 = getelementptr inbounds i64, i64* %cloptr9629, i64 7                    ; &eptr9637[7]
  store i64 %ssJ$lx, i64* %eptr9631                                                  ; *eptr9631 = %ssJ$lx
  store i64 %RGf$_37drop, i64* %eptr9632                                             ; *eptr9632 = %RGf$_37drop
  store i64 %S9s$ly, i64* %eptr9633                                                  ; *eptr9633 = %S9s$ly
  store i64 %E2U$y, i64* %eptr9634                                                   ; *eptr9634 = %E2U$y
  store i64 %a6939, i64* %eptr9635                                                   ; *eptr9635 = %a6939
  store i64 %cont7031, i64* %eptr9636                                                ; *eptr9636 = %cont7031
  store i64 %a6936, i64* %eptr9637                                                   ; *eptr9637 = %a6936
  %eptr9630 = getelementptr inbounds i64, i64* %cloptr9629, i64 0                    ; &cloptr9629[0]
  %f9638 = ptrtoint void(i64,i64,i64)* @lam8197 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9638, i64* %eptr9630                                                   ; store fptr
  %arg7598 = ptrtoint i64* %cloptr9629 to i64                                        ; closure cast; i64* -> i64
  %cloptr9639 = inttoptr i64 %ARq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9639)                                         ; assert function application
  %i0ptr9640 = getelementptr inbounds i64, i64* %cloptr9639, i64 0                   ; &cloptr9639[0]
  %f9642 = load i64, i64* %i0ptr9640, align 8                                        ; load; *i0ptr9640
  %fptr9641 = inttoptr i64 %f9642 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9641(i64 %ARq$_37_62, i64 %arg7598, i64 %S9s$ly, i64 %ssJ$lx); tail call
  ret void
}


define void @lam8197(i64 %env8198, i64 %_957038, i64 %a6940) {
  %envptr9643 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9644 = getelementptr inbounds i64, i64* %envptr9643, i64 7                  ; &envptr9643[7]
  %a6936 = load i64, i64* %envptr9644, align 8                                       ; load; *envptr9644
  %envptr9645 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9646 = getelementptr inbounds i64, i64* %envptr9645, i64 6                  ; &envptr9645[6]
  %cont7031 = load i64, i64* %envptr9646, align 8                                    ; load; *envptr9646
  %envptr9647 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9648 = getelementptr inbounds i64, i64* %envptr9647, i64 5                  ; &envptr9647[5]
  %a6939 = load i64, i64* %envptr9648, align 8                                       ; load; *envptr9648
  %envptr9649 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9650 = getelementptr inbounds i64, i64* %envptr9649, i64 4                  ; &envptr9649[4]
  %E2U$y = load i64, i64* %envptr9650, align 8                                       ; load; *envptr9650
  %envptr9651 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9652 = getelementptr inbounds i64, i64* %envptr9651, i64 3                  ; &envptr9651[3]
  %S9s$ly = load i64, i64* %envptr9652, align 8                                      ; load; *envptr9652
  %envptr9653 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9654 = getelementptr inbounds i64, i64* %envptr9653, i64 2                  ; &envptr9653[2]
  %RGf$_37drop = load i64, i64* %envptr9654, align 8                                 ; load; *envptr9654
  %envptr9655 = inttoptr i64 %env8198 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9656 = getelementptr inbounds i64, i64* %envptr9655, i64 1                  ; &envptr9655[1]
  %ssJ$lx = load i64, i64* %envptr9656, align 8                                      ; load; *envptr9656
  %cmp9657 = icmp eq i64 %a6940, 15                                                  ; false?
  br i1 %cmp9657, label %else9659, label %then9658                                   ; if

then9658:
  %a6941 = call i64 @prim__45(i64 %S9s$ly, i64 %ssJ$lx)                              ; call prim__45
  %cloptr9660 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9662 = getelementptr inbounds i64, i64* %cloptr9660, i64 1                    ; &eptr9662[1]
  %eptr9663 = getelementptr inbounds i64, i64* %cloptr9660, i64 2                    ; &eptr9663[2]
  %eptr9664 = getelementptr inbounds i64, i64* %cloptr9660, i64 3                    ; &eptr9664[3]
  store i64 %a6939, i64* %eptr9662                                                   ; *eptr9662 = %a6939
  store i64 %cont7031, i64* %eptr9663                                                ; *eptr9663 = %cont7031
  store i64 %a6936, i64* %eptr9664                                                   ; *eptr9664 = %a6936
  %eptr9661 = getelementptr inbounds i64, i64* %cloptr9660, i64 0                    ; &cloptr9660[0]
  %f9665 = ptrtoint void(i64,i64,i64)* @lam8192 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9665, i64* %eptr9661                                                   ; store fptr
  %arg7604 = ptrtoint i64* %cloptr9660 to i64                                        ; closure cast; i64* -> i64
  %cloptr9666 = inttoptr i64 %RGf$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9666)                                         ; assert function application
  %i0ptr9667 = getelementptr inbounds i64, i64* %cloptr9666, i64 0                   ; &cloptr9666[0]
  %f9669 = load i64, i64* %i0ptr9667, align 8                                        ; load; *i0ptr9667
  %fptr9668 = inttoptr i64 %f9669 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9668(i64 %RGf$_37drop, i64 %arg7604, i64 %E2U$y, i64 %a6941); tail call
  ret void

else9659:
  %cloptr9670 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9672 = getelementptr inbounds i64, i64* %cloptr9670, i64 1                    ; &eptr9672[1]
  %eptr9673 = getelementptr inbounds i64, i64* %cloptr9670, i64 2                    ; &eptr9673[2]
  %eptr9674 = getelementptr inbounds i64, i64* %cloptr9670, i64 3                    ; &eptr9674[3]
  store i64 %a6939, i64* %eptr9672                                                   ; *eptr9672 = %a6939
  store i64 %cont7031, i64* %eptr9673                                                ; *eptr9673 = %cont7031
  store i64 %a6936, i64* %eptr9674                                                   ; *eptr9674 = %a6936
  %eptr9671 = getelementptr inbounds i64, i64* %cloptr9670, i64 0                    ; &cloptr9670[0]
  %f9675 = ptrtoint void(i64,i64,i64)* @lam8195 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9675, i64* %eptr9671                                                   ; store fptr
  %arg7612 = ptrtoint i64* %cloptr9670 to i64                                        ; closure cast; i64* -> i64
  %arg7611 = add i64 0, 0                                                            ; quoted ()
  %cloptr9676 = inttoptr i64 %arg7612 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9676)                                         ; assert function application
  %i0ptr9677 = getelementptr inbounds i64, i64* %cloptr9676, i64 0                   ; &cloptr9676[0]
  %f9679 = load i64, i64* %i0ptr9677, align 8                                        ; load; *i0ptr9677
  %fptr9678 = inttoptr i64 %f9679 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9678(i64 %arg7612, i64 %arg7611, i64 %E2U$y)        ; tail call
  ret void
}


define void @lam8195(i64 %env8196, i64 %_957039, i64 %a6942) {
  %envptr9680 = inttoptr i64 %env8196 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9681 = getelementptr inbounds i64, i64* %envptr9680, i64 3                  ; &envptr9680[3]
  %a6936 = load i64, i64* %envptr9681, align 8                                       ; load; *envptr9681
  %envptr9682 = inttoptr i64 %env8196 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9683 = getelementptr inbounds i64, i64* %envptr9682, i64 2                  ; &envptr9682[2]
  %cont7031 = load i64, i64* %envptr9683, align 8                                    ; load; *envptr9683
  %envptr9684 = inttoptr i64 %env8196 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9685 = getelementptr inbounds i64, i64* %envptr9684, i64 1                  ; &envptr9684[1]
  %a6939 = load i64, i64* %envptr9685, align 8                                       ; load; *envptr9685
  %cloptr9686 = inttoptr i64 %a6936 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9686)                                         ; assert function application
  %i0ptr9687 = getelementptr inbounds i64, i64* %cloptr9686, i64 0                   ; &cloptr9686[0]
  %f9689 = load i64, i64* %i0ptr9687, align 8                                        ; load; *i0ptr9687
  %fptr9688 = inttoptr i64 %f9689 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9688(i64 %a6936, i64 %cont7031, i64 %a6939, i64 %a6942); tail call
  ret void
}


define void @lam8192(i64 %env8193, i64 %_957039, i64 %a6942) {
  %envptr9690 = inttoptr i64 %env8193 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9691 = getelementptr inbounds i64, i64* %envptr9690, i64 3                  ; &envptr9690[3]
  %a6936 = load i64, i64* %envptr9691, align 8                                       ; load; *envptr9691
  %envptr9692 = inttoptr i64 %env8193 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9693 = getelementptr inbounds i64, i64* %envptr9692, i64 2                  ; &envptr9692[2]
  %cont7031 = load i64, i64* %envptr9693, align 8                                    ; load; *envptr9693
  %envptr9694 = inttoptr i64 %env8193 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9695 = getelementptr inbounds i64, i64* %envptr9694, i64 1                  ; &envptr9694[1]
  %a6939 = load i64, i64* %envptr9695, align 8                                       ; load; *envptr9695
  %cloptr9696 = inttoptr i64 %a6936 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9696)                                         ; assert function application
  %i0ptr9697 = getelementptr inbounds i64, i64* %cloptr9696, i64 0                   ; &cloptr9696[0]
  %f9699 = load i64, i64* %i0ptr9697, align 8                                        ; load; *i0ptr9697
  %fptr9698 = inttoptr i64 %f9699 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9698(i64 %a6936, i64 %cont7031, i64 %a6939, i64 %a6942); tail call
  ret void
}


define void @lam8189(i64 %env8190, i64 %cont7044, i64 %xcB$new) {
  %envptr9700 = inttoptr i64 %env8190 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9701 = getelementptr inbounds i64, i64* %envptr9700, i64 2                  ; &envptr9700[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9701, align 8                         ; load; *envptr9701
  %envptr9702 = inttoptr i64 %env8190 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 1                  ; &envptr9702[1]
  %OJS$_37common_45tail = load i64, i64* %envptr9703, align 8                        ; load; *envptr9703
  %arg7641 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6943 = call i64 @prim_vector_45ref(i64 %OLd$_37wind_45stack, i64 %arg7641)       ; call prim_vector_45ref
  %cloptr9704 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9706 = getelementptr inbounds i64, i64* %cloptr9704, i64 1                    ; &eptr9706[1]
  %eptr9707 = getelementptr inbounds i64, i64* %cloptr9704, i64 2                    ; &eptr9707[2]
  %eptr9708 = getelementptr inbounds i64, i64* %cloptr9704, i64 3                    ; &eptr9708[3]
  store i64 %xcB$new, i64* %eptr9706                                                 ; *eptr9706 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9707                                     ; *eptr9707 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9708                                                ; *eptr9708 = %cont7044
  %eptr9705 = getelementptr inbounds i64, i64* %cloptr9704, i64 0                    ; &cloptr9704[0]
  %f9709 = ptrtoint void(i64,i64,i64)* @lam8186 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9709, i64* %eptr9705                                                   ; store fptr
  %arg7645 = ptrtoint i64* %cloptr9704 to i64                                        ; closure cast; i64* -> i64
  %cloptr9710 = inttoptr i64 %OJS$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9710)                                         ; assert function application
  %i0ptr9711 = getelementptr inbounds i64, i64* %cloptr9710, i64 0                   ; &cloptr9710[0]
  %f9713 = load i64, i64* %i0ptr9711, align 8                                        ; load; *i0ptr9711
  %fptr9712 = inttoptr i64 %f9713 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9712(i64 %OJS$_37common_45tail, i64 %arg7645, i64 %xcB$new, i64 %a6943); tail call
  ret void
}


define void @lam8186(i64 %env8187, i64 %_957045, i64 %qzC$tail) {
  %envptr9714 = inttoptr i64 %env8187 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9715 = getelementptr inbounds i64, i64* %envptr9714, i64 3                  ; &envptr9714[3]
  %cont7044 = load i64, i64* %envptr9715, align 8                                    ; load; *envptr9715
  %envptr9716 = inttoptr i64 %env8187 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9717 = getelementptr inbounds i64, i64* %envptr9716, i64 2                  ; &envptr9716[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9717, align 8                         ; load; *envptr9717
  %envptr9718 = inttoptr i64 %env8187 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9719 = getelementptr inbounds i64, i64* %envptr9718, i64 1                  ; &envptr9718[1]
  %xcB$new = load i64, i64* %envptr9719, align 8                                     ; load; *envptr9719
  %cloptr9720 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9721 = getelementptr inbounds i64, i64* %cloptr9720, i64 0                    ; &cloptr9720[0]
  %f9722 = ptrtoint void(i64,i64)* @lam8184 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9722, i64* %eptr9721                                                   ; store fptr
  %arg7648 = ptrtoint i64* %cloptr9720 to i64                                        ; closure cast; i64* -> i64
  %cloptr9723 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9725 = getelementptr inbounds i64, i64* %cloptr9723, i64 1                    ; &eptr9725[1]
  %eptr9726 = getelementptr inbounds i64, i64* %cloptr9723, i64 2                    ; &eptr9726[2]
  %eptr9727 = getelementptr inbounds i64, i64* %cloptr9723, i64 3                    ; &eptr9727[3]
  %eptr9728 = getelementptr inbounds i64, i64* %cloptr9723, i64 4                    ; &eptr9728[4]
  store i64 %xcB$new, i64* %eptr9725                                                 ; *eptr9725 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9726                                     ; *eptr9726 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9727                                                ; *eptr9727 = %cont7044
  store i64 %qzC$tail, i64* %eptr9728                                                ; *eptr9728 = %qzC$tail
  %eptr9724 = getelementptr inbounds i64, i64* %cloptr9723, i64 0                    ; &cloptr9723[0]
  %f9729 = ptrtoint void(i64,i64,i64)* @lam8181 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9729, i64* %eptr9724                                                   ; store fptr
  %arg7647 = ptrtoint i64* %cloptr9723 to i64                                        ; closure cast; i64* -> i64
  %cloptr9730 = inttoptr i64 %arg7648 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9730)                                         ; assert function application
  %i0ptr9731 = getelementptr inbounds i64, i64* %cloptr9730, i64 0                   ; &cloptr9730[0]
  %f9733 = load i64, i64* %i0ptr9731, align 8                                        ; load; *i0ptr9731
  %fptr9732 = inttoptr i64 %f9733 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9732(i64 %arg7648, i64 %arg7647)                    ; tail call
  ret void
}


define void @lam8184(i64 %env8185, i64 %fhY$lst7066) {
  %cont7065 = call i64 @prim_car(i64 %fhY$lst7066)                                   ; call prim_car
  %fhY$lst = call i64 @prim_cdr(i64 %fhY$lst7066)                                    ; call prim_cdr
  %arg7652 = add i64 0, 0                                                            ; quoted ()
  %cloptr9734 = inttoptr i64 %cont7065 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9734)                                         ; assert function application
  %i0ptr9735 = getelementptr inbounds i64, i64* %cloptr9734, i64 0                   ; &cloptr9734[0]
  %f9737 = load i64, i64* %i0ptr9735, align 8                                        ; load; *i0ptr9735
  %fptr9736 = inttoptr i64 %f9737 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9736(i64 %cont7065, i64 %arg7652, i64 %fhY$lst)     ; tail call
  ret void
}


define void @lam8181(i64 %env8182, i64 %_957063, i64 %a6944) {
  %envptr9738 = inttoptr i64 %env8182 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9739 = getelementptr inbounds i64, i64* %envptr9738, i64 4                  ; &envptr9738[4]
  %qzC$tail = load i64, i64* %envptr9739, align 8                                    ; load; *envptr9739
  %envptr9740 = inttoptr i64 %env8182 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9741 = getelementptr inbounds i64, i64* %envptr9740, i64 3                  ; &envptr9740[3]
  %cont7044 = load i64, i64* %envptr9741, align 8                                    ; load; *envptr9741
  %envptr9742 = inttoptr i64 %env8182 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9743 = getelementptr inbounds i64, i64* %envptr9742, i64 2                  ; &envptr9742[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9743, align 8                         ; load; *envptr9743
  %envptr9744 = inttoptr i64 %env8182 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9745 = getelementptr inbounds i64, i64* %envptr9744, i64 1                  ; &envptr9744[1]
  %xcB$new = load i64, i64* %envptr9745, align 8                                     ; load; *envptr9745
  %arg7655 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7064 = call i64 @prim_make_45vector(i64 %arg7655, i64 %a6944)              ; call prim_make_45vector
  %cloptr9746 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9748 = getelementptr inbounds i64, i64* %cloptr9746, i64 1                    ; &eptr9748[1]
  %eptr9749 = getelementptr inbounds i64, i64* %cloptr9746, i64 2                    ; &eptr9749[2]
  %eptr9750 = getelementptr inbounds i64, i64* %cloptr9746, i64 3                    ; &eptr9750[3]
  %eptr9751 = getelementptr inbounds i64, i64* %cloptr9746, i64 4                    ; &eptr9751[4]
  store i64 %xcB$new, i64* %eptr9748                                                 ; *eptr9748 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9749                                     ; *eptr9749 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9750                                                ; *eptr9750 = %cont7044
  store i64 %qzC$tail, i64* %eptr9751                                                ; *eptr9751 = %qzC$tail
  %eptr9747 = getelementptr inbounds i64, i64* %cloptr9746, i64 0                    ; &cloptr9746[0]
  %f9752 = ptrtoint void(i64,i64,i64)* @lam8178 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9752, i64* %eptr9747                                                   ; store fptr
  %arg7658 = ptrtoint i64* %cloptr9746 to i64                                        ; closure cast; i64* -> i64
  %arg7657 = add i64 0, 0                                                            ; quoted ()
  %cloptr9753 = inttoptr i64 %arg7658 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9753)                                         ; assert function application
  %i0ptr9754 = getelementptr inbounds i64, i64* %cloptr9753, i64 0                   ; &cloptr9753[0]
  %f9756 = load i64, i64* %i0ptr9754, align 8                                        ; load; *i0ptr9754
  %fptr9755 = inttoptr i64 %f9756 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9755(i64 %arg7658, i64 %arg7657, i64 %retprim7064)  ; tail call
  ret void
}


define void @lam8178(i64 %env8179, i64 %_957057, i64 %zll$f) {
  %envptr9757 = inttoptr i64 %env8179 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9758 = getelementptr inbounds i64, i64* %envptr9757, i64 4                  ; &envptr9757[4]
  %qzC$tail = load i64, i64* %envptr9758, align 8                                    ; load; *envptr9758
  %envptr9759 = inttoptr i64 %env8179 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9760 = getelementptr inbounds i64, i64* %envptr9759, i64 3                  ; &envptr9759[3]
  %cont7044 = load i64, i64* %envptr9760, align 8                                    ; load; *envptr9760
  %envptr9761 = inttoptr i64 %env8179 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9762 = getelementptr inbounds i64, i64* %envptr9761, i64 2                  ; &envptr9761[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9762, align 8                         ; load; *envptr9762
  %envptr9763 = inttoptr i64 %env8179 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9764 = getelementptr inbounds i64, i64* %envptr9763, i64 1                  ; &envptr9763[1]
  %xcB$new = load i64, i64* %envptr9764, align 8                                     ; load; *envptr9764
  %arg7660 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9765 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9767 = getelementptr inbounds i64, i64* %cloptr9765, i64 1                    ; &eptr9767[1]
  %eptr9768 = getelementptr inbounds i64, i64* %cloptr9765, i64 2                    ; &eptr9768[2]
  %eptr9769 = getelementptr inbounds i64, i64* %cloptr9765, i64 3                    ; &eptr9769[3]
  store i64 %OLd$_37wind_45stack, i64* %eptr9767                                     ; *eptr9767 = %OLd$_37wind_45stack
  store i64 %zll$f, i64* %eptr9768                                                   ; *eptr9768 = %zll$f
  store i64 %qzC$tail, i64* %eptr9769                                                ; *eptr9769 = %qzC$tail
  %eptr9766 = getelementptr inbounds i64, i64* %cloptr9765, i64 0                    ; &cloptr9765[0]
  %f9770 = ptrtoint void(i64,i64,i64)* @lam8175 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9770, i64* %eptr9766                                                   ; store fptr
  %arg7659 = ptrtoint i64* %cloptr9765 to i64                                        ; closure cast; i64* -> i64
  %s5R$_956837 = call i64 @prim_vector_45set_33(i64 %zll$f, i64 %arg7660, i64 %arg7659); call prim_vector_45set_33
  %arg7685 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6952 = call i64 @prim_vector_45ref(i64 %zll$f, i64 %arg7685)                     ; call prim_vector_45ref
  %arg7687 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6953 = call i64 @prim_vector_45ref(i64 %OLd$_37wind_45stack, i64 %arg7687)       ; call prim_vector_45ref
  %cloptr9771 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9773 = getelementptr inbounds i64, i64* %cloptr9771, i64 1                    ; &eptr9773[1]
  %eptr9774 = getelementptr inbounds i64, i64* %cloptr9771, i64 2                    ; &eptr9774[2]
  %eptr9775 = getelementptr inbounds i64, i64* %cloptr9771, i64 3                    ; &eptr9775[3]
  %eptr9776 = getelementptr inbounds i64, i64* %cloptr9771, i64 4                    ; &eptr9776[4]
  store i64 %xcB$new, i64* %eptr9773                                                 ; *eptr9773 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9774                                     ; *eptr9774 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9775                                                ; *eptr9775 = %cont7044
  store i64 %qzC$tail, i64* %eptr9776                                                ; *eptr9776 = %qzC$tail
  %eptr9772 = getelementptr inbounds i64, i64* %cloptr9771, i64 0                    ; &cloptr9771[0]
  %f9777 = ptrtoint void(i64,i64,i64)* @lam8163 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9777, i64* %eptr9772                                                   ; store fptr
  %arg7690 = ptrtoint i64* %cloptr9771 to i64                                        ; closure cast; i64* -> i64
  %cloptr9778 = inttoptr i64 %a6952 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9778)                                         ; assert function application
  %i0ptr9779 = getelementptr inbounds i64, i64* %cloptr9778, i64 0                   ; &cloptr9778[0]
  %f9781 = load i64, i64* %i0ptr9779, align 8                                        ; load; *i0ptr9779
  %fptr9780 = inttoptr i64 %f9781 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9780(i64 %a6952, i64 %arg7690, i64 %a6953)          ; tail call
  ret void
}


define void @lam8175(i64 %env8176, i64 %cont7058, i64 %GWm$l) {
  %envptr9782 = inttoptr i64 %env8176 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9783 = getelementptr inbounds i64, i64* %envptr9782, i64 3                  ; &envptr9782[3]
  %qzC$tail = load i64, i64* %envptr9783, align 8                                    ; load; *envptr9783
  %envptr9784 = inttoptr i64 %env8176 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9785 = getelementptr inbounds i64, i64* %envptr9784, i64 2                  ; &envptr9784[2]
  %zll$f = load i64, i64* %envptr9785, align 8                                       ; load; *envptr9785
  %envptr9786 = inttoptr i64 %env8176 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9787 = getelementptr inbounds i64, i64* %envptr9786, i64 1                  ; &envptr9786[1]
  %OLd$_37wind_45stack = load i64, i64* %envptr9787, align 8                         ; load; *envptr9787
  %a6945 = call i64 @prim_eq_63(i64 %GWm$l, i64 %qzC$tail)                           ; call prim_eq_63
  %a6946 = call i64 @prim_not(i64 %a6945)                                            ; call prim_not
  %cmp9788 = icmp eq i64 %a6946, 15                                                  ; false?
  br i1 %cmp9788, label %else9790, label %then9789                                   ; if

then9789:
  %a6947 = call i64 @prim_cdr(i64 %GWm$l)                                            ; call prim_cdr
  %arg7667 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7061 = call i64 @prim_vector_45set_33(i64 %OLd$_37wind_45stack, i64 %arg7667, i64 %a6947); call prim_vector_45set_33
  %cloptr9791 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9793 = getelementptr inbounds i64, i64* %cloptr9791, i64 1                    ; &eptr9793[1]
  %eptr9794 = getelementptr inbounds i64, i64* %cloptr9791, i64 2                    ; &eptr9794[2]
  %eptr9795 = getelementptr inbounds i64, i64* %cloptr9791, i64 3                    ; &eptr9795[3]
  store i64 %GWm$l, i64* %eptr9793                                                   ; *eptr9793 = %GWm$l
  store i64 %zll$f, i64* %eptr9794                                                   ; *eptr9794 = %zll$f
  store i64 %cont7058, i64* %eptr9795                                                ; *eptr9795 = %cont7058
  %eptr9792 = getelementptr inbounds i64, i64* %cloptr9791, i64 0                    ; &cloptr9791[0]
  %f9796 = ptrtoint void(i64,i64,i64)* @lam8171 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9796, i64* %eptr9792                                                   ; store fptr
  %arg7671 = ptrtoint i64* %cloptr9791 to i64                                        ; closure cast; i64* -> i64
  %arg7670 = add i64 0, 0                                                            ; quoted ()
  %cloptr9797 = inttoptr i64 %arg7671 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9797)                                         ; assert function application
  %i0ptr9798 = getelementptr inbounds i64, i64* %cloptr9797, i64 0                   ; &cloptr9797[0]
  %f9800 = load i64, i64* %i0ptr9798, align 8                                        ; load; *i0ptr9798
  %fptr9799 = inttoptr i64 %f9800 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9799(i64 %arg7671, i64 %arg7670, i64 %retprim7061)  ; tail call
  ret void

else9790:
  %retprim7062 = call i64 @prim_void()                                               ; call prim_void
  %arg7683 = add i64 0, 0                                                            ; quoted ()
  %cloptr9801 = inttoptr i64 %cont7058 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9801)                                         ; assert function application
  %i0ptr9802 = getelementptr inbounds i64, i64* %cloptr9801, i64 0                   ; &cloptr9801[0]
  %f9804 = load i64, i64* %i0ptr9802, align 8                                        ; load; *i0ptr9802
  %fptr9803 = inttoptr i64 %f9804 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9803(i64 %cont7058, i64 %arg7683, i64 %retprim7062) ; tail call
  ret void
}


define void @lam8171(i64 %env8172, i64 %_957059, i64 %YNy$_956838) {
  %envptr9805 = inttoptr i64 %env8172 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9806 = getelementptr inbounds i64, i64* %envptr9805, i64 3                  ; &envptr9805[3]
  %cont7058 = load i64, i64* %envptr9806, align 8                                    ; load; *envptr9806
  %envptr9807 = inttoptr i64 %env8172 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9808 = getelementptr inbounds i64, i64* %envptr9807, i64 2                  ; &envptr9807[2]
  %zll$f = load i64, i64* %envptr9808, align 8                                       ; load; *envptr9808
  %envptr9809 = inttoptr i64 %env8172 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9810 = getelementptr inbounds i64, i64* %envptr9809, i64 1                  ; &envptr9809[1]
  %GWm$l = load i64, i64* %envptr9810, align 8                                       ; load; *envptr9810
  %a6948 = call i64 @prim_car(i64 %GWm$l)                                            ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %a6948)                                            ; call prim_cdr
  %cloptr9811 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9813 = getelementptr inbounds i64, i64* %cloptr9811, i64 1                    ; &eptr9813[1]
  %eptr9814 = getelementptr inbounds i64, i64* %cloptr9811, i64 2                    ; &eptr9814[2]
  %eptr9815 = getelementptr inbounds i64, i64* %cloptr9811, i64 3                    ; &eptr9815[3]
  store i64 %GWm$l, i64* %eptr9813                                                   ; *eptr9813 = %GWm$l
  store i64 %zll$f, i64* %eptr9814                                                   ; *eptr9814 = %zll$f
  store i64 %cont7058, i64* %eptr9815                                                ; *eptr9815 = %cont7058
  %eptr9812 = getelementptr inbounds i64, i64* %cloptr9811, i64 0                    ; &cloptr9811[0]
  %f9816 = ptrtoint void(i64,i64,i64)* @lam8169 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9816, i64* %eptr9812                                                   ; store fptr
  %arg7674 = ptrtoint i64* %cloptr9811 to i64                                        ; closure cast; i64* -> i64
  %cloptr9817 = inttoptr i64 %a6949 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9817)                                         ; assert function application
  %i0ptr9818 = getelementptr inbounds i64, i64* %cloptr9817, i64 0                   ; &cloptr9817[0]
  %f9820 = load i64, i64* %i0ptr9818, align 8                                        ; load; *i0ptr9818
  %fptr9819 = inttoptr i64 %f9820 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9819(i64 %a6949, i64 %arg7674)                      ; tail call
  ret void
}


define void @lam8169(i64 %env8170, i64 %_957060, i64 %Tqf$_956839) {
  %envptr9821 = inttoptr i64 %env8170 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9822 = getelementptr inbounds i64, i64* %envptr9821, i64 3                  ; &envptr9821[3]
  %cont7058 = load i64, i64* %envptr9822, align 8                                    ; load; *envptr9822
  %envptr9823 = inttoptr i64 %env8170 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9824 = getelementptr inbounds i64, i64* %envptr9823, i64 2                  ; &envptr9823[2]
  %zll$f = load i64, i64* %envptr9824, align 8                                       ; load; *envptr9824
  %envptr9825 = inttoptr i64 %env8170 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9826 = getelementptr inbounds i64, i64* %envptr9825, i64 1                  ; &envptr9825[1]
  %GWm$l = load i64, i64* %envptr9826, align 8                                       ; load; *envptr9826
  %arg7676 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6950 = call i64 @prim_vector_45ref(i64 %zll$f, i64 %arg7676)                     ; call prim_vector_45ref
  %a6951 = call i64 @prim_cdr(i64 %GWm$l)                                            ; call prim_cdr
  %cloptr9827 = inttoptr i64 %a6950 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9827)                                         ; assert function application
  %i0ptr9828 = getelementptr inbounds i64, i64* %cloptr9827, i64 0                   ; &cloptr9827[0]
  %f9830 = load i64, i64* %i0ptr9828, align 8                                        ; load; *i0ptr9828
  %fptr9829 = inttoptr i64 %f9830 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9829(i64 %a6950, i64 %cont7058, i64 %a6951)         ; tail call
  ret void
}


define void @lam8163(i64 %env8164, i64 %_957046, i64 %gIZ$_956836) {
  %envptr9831 = inttoptr i64 %env8164 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9832 = getelementptr inbounds i64, i64* %envptr9831, i64 4                  ; &envptr9831[4]
  %qzC$tail = load i64, i64* %envptr9832, align 8                                    ; load; *envptr9832
  %envptr9833 = inttoptr i64 %env8164 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9834 = getelementptr inbounds i64, i64* %envptr9833, i64 3                  ; &envptr9833[3]
  %cont7044 = load i64, i64* %envptr9834, align 8                                    ; load; *envptr9834
  %envptr9835 = inttoptr i64 %env8164 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9836 = getelementptr inbounds i64, i64* %envptr9835, i64 2                  ; &envptr9835[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9836, align 8                         ; load; *envptr9836
  %envptr9837 = inttoptr i64 %env8164 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9838 = getelementptr inbounds i64, i64* %envptr9837, i64 1                  ; &envptr9837[1]
  %xcB$new = load i64, i64* %envptr9838, align 8                                     ; load; *envptr9838
  %cloptr9839 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9840 = getelementptr inbounds i64, i64* %cloptr9839, i64 0                    ; &cloptr9839[0]
  %f9841 = ptrtoint void(i64,i64)* @lam8161 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9841, i64* %eptr9840                                                   ; store fptr
  %arg7693 = ptrtoint i64* %cloptr9839 to i64                                        ; closure cast; i64* -> i64
  %cloptr9842 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9844 = getelementptr inbounds i64, i64* %cloptr9842, i64 1                    ; &eptr9844[1]
  %eptr9845 = getelementptr inbounds i64, i64* %cloptr9842, i64 2                    ; &eptr9845[2]
  %eptr9846 = getelementptr inbounds i64, i64* %cloptr9842, i64 3                    ; &eptr9846[3]
  %eptr9847 = getelementptr inbounds i64, i64* %cloptr9842, i64 4                    ; &eptr9847[4]
  store i64 %xcB$new, i64* %eptr9844                                                 ; *eptr9844 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9845                                     ; *eptr9845 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9846                                                ; *eptr9846 = %cont7044
  store i64 %qzC$tail, i64* %eptr9847                                                ; *eptr9847 = %qzC$tail
  %eptr9843 = getelementptr inbounds i64, i64* %cloptr9842, i64 0                    ; &cloptr9842[0]
  %f9848 = ptrtoint void(i64,i64,i64)* @lam8158 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9848, i64* %eptr9843                                                   ; store fptr
  %arg7692 = ptrtoint i64* %cloptr9842 to i64                                        ; closure cast; i64* -> i64
  %cloptr9849 = inttoptr i64 %arg7693 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9849)                                         ; assert function application
  %i0ptr9850 = getelementptr inbounds i64, i64* %cloptr9849, i64 0                   ; &cloptr9849[0]
  %f9852 = load i64, i64* %i0ptr9850, align 8                                        ; load; *i0ptr9850
  %fptr9851 = inttoptr i64 %f9852 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9851(i64 %arg7693, i64 %arg7692)                    ; tail call
  ret void
}


define void @lam8161(i64 %env8162, i64 %lwU$lst7056) {
  %cont7055 = call i64 @prim_car(i64 %lwU$lst7056)                                   ; call prim_car
  %lwU$lst = call i64 @prim_cdr(i64 %lwU$lst7056)                                    ; call prim_cdr
  %arg7697 = add i64 0, 0                                                            ; quoted ()
  %cloptr9853 = inttoptr i64 %cont7055 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9853)                                         ; assert function application
  %i0ptr9854 = getelementptr inbounds i64, i64* %cloptr9853, i64 0                   ; &cloptr9853[0]
  %f9856 = load i64, i64* %i0ptr9854, align 8                                        ; load; *i0ptr9854
  %fptr9855 = inttoptr i64 %f9856 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9855(i64 %cont7055, i64 %arg7697, i64 %lwU$lst)     ; tail call
  ret void
}


define void @lam8158(i64 %env8159, i64 %_957053, i64 %a6954) {
  %envptr9857 = inttoptr i64 %env8159 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9858 = getelementptr inbounds i64, i64* %envptr9857, i64 4                  ; &envptr9857[4]
  %qzC$tail = load i64, i64* %envptr9858, align 8                                    ; load; *envptr9858
  %envptr9859 = inttoptr i64 %env8159 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9860 = getelementptr inbounds i64, i64* %envptr9859, i64 3                  ; &envptr9859[3]
  %cont7044 = load i64, i64* %envptr9860, align 8                                    ; load; *envptr9860
  %envptr9861 = inttoptr i64 %env8159 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9862 = getelementptr inbounds i64, i64* %envptr9861, i64 2                  ; &envptr9861[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9862, align 8                         ; load; *envptr9862
  %envptr9863 = inttoptr i64 %env8159 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9864 = getelementptr inbounds i64, i64* %envptr9863, i64 1                  ; &envptr9863[1]
  %xcB$new = load i64, i64* %envptr9864, align 8                                     ; load; *envptr9864
  %arg7700 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7054 = call i64 @prim_make_45vector(i64 %arg7700, i64 %a6954)              ; call prim_make_45vector
  %cloptr9865 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9867 = getelementptr inbounds i64, i64* %cloptr9865, i64 1                    ; &eptr9867[1]
  %eptr9868 = getelementptr inbounds i64, i64* %cloptr9865, i64 2                    ; &eptr9868[2]
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9865, i64 3                    ; &eptr9869[3]
  %eptr9870 = getelementptr inbounds i64, i64* %cloptr9865, i64 4                    ; &eptr9870[4]
  store i64 %xcB$new, i64* %eptr9867                                                 ; *eptr9867 = %xcB$new
  store i64 %OLd$_37wind_45stack, i64* %eptr9868                                     ; *eptr9868 = %OLd$_37wind_45stack
  store i64 %cont7044, i64* %eptr9869                                                ; *eptr9869 = %cont7044
  store i64 %qzC$tail, i64* %eptr9870                                                ; *eptr9870 = %qzC$tail
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9865, i64 0                    ; &cloptr9865[0]
  %f9871 = ptrtoint void(i64,i64,i64)* @lam8155 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9871, i64* %eptr9866                                                   ; store fptr
  %arg7703 = ptrtoint i64* %cloptr9865 to i64                                        ; closure cast; i64* -> i64
  %arg7702 = add i64 0, 0                                                            ; quoted ()
  %cloptr9872 = inttoptr i64 %arg7703 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9872)                                         ; assert function application
  %i0ptr9873 = getelementptr inbounds i64, i64* %cloptr9872, i64 0                   ; &cloptr9872[0]
  %f9875 = load i64, i64* %i0ptr9873, align 8                                        ; load; *i0ptr9873
  %fptr9874 = inttoptr i64 %f9875 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9874(i64 %arg7703, i64 %arg7702, i64 %retprim7054)  ; tail call
  ret void
}


define void @lam8155(i64 %env8156, i64 %_957047, i64 %JwZ$f) {
  %envptr9876 = inttoptr i64 %env8156 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9877 = getelementptr inbounds i64, i64* %envptr9876, i64 4                  ; &envptr9876[4]
  %qzC$tail = load i64, i64* %envptr9877, align 8                                    ; load; *envptr9877
  %envptr9878 = inttoptr i64 %env8156 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9879 = getelementptr inbounds i64, i64* %envptr9878, i64 3                  ; &envptr9878[3]
  %cont7044 = load i64, i64* %envptr9879, align 8                                    ; load; *envptr9879
  %envptr9880 = inttoptr i64 %env8156 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9881 = getelementptr inbounds i64, i64* %envptr9880, i64 2                  ; &envptr9880[2]
  %OLd$_37wind_45stack = load i64, i64* %envptr9881, align 8                         ; load; *envptr9881
  %envptr9882 = inttoptr i64 %env8156 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9883 = getelementptr inbounds i64, i64* %envptr9882, i64 1                  ; &envptr9882[1]
  %xcB$new = load i64, i64* %envptr9883, align 8                                     ; load; *envptr9883
  %arg7705 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9884 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9886 = getelementptr inbounds i64, i64* %cloptr9884, i64 1                    ; &eptr9886[1]
  %eptr9887 = getelementptr inbounds i64, i64* %cloptr9884, i64 2                    ; &eptr9887[2]
  %eptr9888 = getelementptr inbounds i64, i64* %cloptr9884, i64 3                    ; &eptr9888[3]
  store i64 %OLd$_37wind_45stack, i64* %eptr9886                                     ; *eptr9886 = %OLd$_37wind_45stack
  store i64 %JwZ$f, i64* %eptr9887                                                   ; *eptr9887 = %JwZ$f
  store i64 %qzC$tail, i64* %eptr9888                                                ; *eptr9888 = %qzC$tail
  %eptr9885 = getelementptr inbounds i64, i64* %cloptr9884, i64 0                    ; &cloptr9884[0]
  %f9889 = ptrtoint void(i64,i64,i64)* @lam8152 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9889, i64* %eptr9885                                                   ; store fptr
  %arg7704 = ptrtoint i64* %cloptr9884 to i64                                        ; closure cast; i64* -> i64
  %N7Q$_956840 = call i64 @prim_vector_45set_33(i64 %JwZ$f, i64 %arg7705, i64 %arg7704); call prim_vector_45set_33
  %arg7729 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6961 = call i64 @prim_vector_45ref(i64 %JwZ$f, i64 %arg7729)                     ; call prim_vector_45ref
  %cloptr9890 = inttoptr i64 %a6961 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9890)                                         ; assert function application
  %i0ptr9891 = getelementptr inbounds i64, i64* %cloptr9890, i64 0                   ; &cloptr9890[0]
  %f9893 = load i64, i64* %i0ptr9891, align 8                                        ; load; *i0ptr9891
  %fptr9892 = inttoptr i64 %f9893 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9892(i64 %a6961, i64 %cont7044, i64 %xcB$new)       ; tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %cont7048, i64 %PLx$l) {
  %envptr9894 = inttoptr i64 %env8153 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9895 = getelementptr inbounds i64, i64* %envptr9894, i64 3                  ; &envptr9894[3]
  %qzC$tail = load i64, i64* %envptr9895, align 8                                    ; load; *envptr9895
  %envptr9896 = inttoptr i64 %env8153 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9897 = getelementptr inbounds i64, i64* %envptr9896, i64 2                  ; &envptr9896[2]
  %JwZ$f = load i64, i64* %envptr9897, align 8                                       ; load; *envptr9897
  %envptr9898 = inttoptr i64 %env8153 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9899 = getelementptr inbounds i64, i64* %envptr9898, i64 1                  ; &envptr9898[1]
  %OLd$_37wind_45stack = load i64, i64* %envptr9899, align 8                         ; load; *envptr9899
  %a6955 = call i64 @prim_eq_63(i64 %PLx$l, i64 %qzC$tail)                           ; call prim_eq_63
  %a6956 = call i64 @prim_not(i64 %a6955)                                            ; call prim_not
  %cmp9900 = icmp eq i64 %a6956, 15                                                  ; false?
  br i1 %cmp9900, label %else9902, label %then9901                                   ; if

then9901:
  %arg7710 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6957 = call i64 @prim_vector_45ref(i64 %JwZ$f, i64 %arg7710)                     ; call prim_vector_45ref
  %a6958 = call i64 @prim_cdr(i64 %PLx$l)                                            ; call prim_cdr
  %cloptr9903 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9905 = getelementptr inbounds i64, i64* %cloptr9903, i64 1                    ; &eptr9905[1]
  %eptr9906 = getelementptr inbounds i64, i64* %cloptr9903, i64 2                    ; &eptr9906[2]
  %eptr9907 = getelementptr inbounds i64, i64* %cloptr9903, i64 3                    ; &eptr9907[3]
  store i64 %OLd$_37wind_45stack, i64* %eptr9905                                     ; *eptr9905 = %OLd$_37wind_45stack
  store i64 %PLx$l, i64* %eptr9906                                                   ; *eptr9906 = %PLx$l
  store i64 %cont7048, i64* %eptr9907                                                ; *eptr9907 = %cont7048
  %eptr9904 = getelementptr inbounds i64, i64* %cloptr9903, i64 0                    ; &cloptr9903[0]
  %f9908 = ptrtoint void(i64,i64,i64)* @lam8148 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9908, i64* %eptr9904                                                   ; store fptr
  %arg7714 = ptrtoint i64* %cloptr9903 to i64                                        ; closure cast; i64* -> i64
  %cloptr9909 = inttoptr i64 %a6957 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9909)                                         ; assert function application
  %i0ptr9910 = getelementptr inbounds i64, i64* %cloptr9909, i64 0                   ; &cloptr9909[0]
  %f9912 = load i64, i64* %i0ptr9910, align 8                                        ; load; *i0ptr9910
  %fptr9911 = inttoptr i64 %f9912 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9911(i64 %a6957, i64 %arg7714, i64 %a6958)          ; tail call
  ret void

else9902:
  %retprim7052 = call i64 @prim_void()                                               ; call prim_void
  %arg7727 = add i64 0, 0                                                            ; quoted ()
  %cloptr9913 = inttoptr i64 %cont7048 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9913)                                         ; assert function application
  %i0ptr9914 = getelementptr inbounds i64, i64* %cloptr9913, i64 0                   ; &cloptr9913[0]
  %f9916 = load i64, i64* %i0ptr9914, align 8                                        ; load; *i0ptr9914
  %fptr9915 = inttoptr i64 %f9916 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9915(i64 %cont7048, i64 %arg7727, i64 %retprim7052) ; tail call
  ret void
}


define void @lam8148(i64 %env8149, i64 %_957049, i64 %uKd$_956841) {
  %envptr9917 = inttoptr i64 %env8149 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9918 = getelementptr inbounds i64, i64* %envptr9917, i64 3                  ; &envptr9917[3]
  %cont7048 = load i64, i64* %envptr9918, align 8                                    ; load; *envptr9918
  %envptr9919 = inttoptr i64 %env8149 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9920 = getelementptr inbounds i64, i64* %envptr9919, i64 2                  ; &envptr9919[2]
  %PLx$l = load i64, i64* %envptr9920, align 8                                       ; load; *envptr9920
  %envptr9921 = inttoptr i64 %env8149 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9922 = getelementptr inbounds i64, i64* %envptr9921, i64 1                  ; &envptr9921[1]
  %OLd$_37wind_45stack = load i64, i64* %envptr9922, align 8                         ; load; *envptr9922
  %a6959 = call i64 @prim_car(i64 %PLx$l)                                            ; call prim_car
  %a6960 = call i64 @prim_car(i64 %a6959)                                            ; call prim_car
  %cloptr9923 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9925 = getelementptr inbounds i64, i64* %cloptr9923, i64 1                    ; &eptr9925[1]
  %eptr9926 = getelementptr inbounds i64, i64* %cloptr9923, i64 2                    ; &eptr9926[2]
  %eptr9927 = getelementptr inbounds i64, i64* %cloptr9923, i64 3                    ; &eptr9927[3]
  store i64 %OLd$_37wind_45stack, i64* %eptr9925                                     ; *eptr9925 = %OLd$_37wind_45stack
  store i64 %PLx$l, i64* %eptr9926                                                   ; *eptr9926 = %PLx$l
  store i64 %cont7048, i64* %eptr9927                                                ; *eptr9927 = %cont7048
  %eptr9924 = getelementptr inbounds i64, i64* %cloptr9923, i64 0                    ; &cloptr9923[0]
  %f9928 = ptrtoint void(i64,i64,i64)* @lam8146 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9928, i64* %eptr9924                                                   ; store fptr
  %arg7718 = ptrtoint i64* %cloptr9923 to i64                                        ; closure cast; i64* -> i64
  %cloptr9929 = inttoptr i64 %a6960 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9929)                                         ; assert function application
  %i0ptr9930 = getelementptr inbounds i64, i64* %cloptr9929, i64 0                   ; &cloptr9929[0]
  %f9932 = load i64, i64* %i0ptr9930, align 8                                        ; load; *i0ptr9930
  %fptr9931 = inttoptr i64 %f9932 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9931(i64 %a6960, i64 %arg7718)                      ; tail call
  ret void
}


define void @lam8146(i64 %env8147, i64 %_957050, i64 %fE6$_956842) {
  %envptr9933 = inttoptr i64 %env8147 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9934 = getelementptr inbounds i64, i64* %envptr9933, i64 3                  ; &envptr9933[3]
  %cont7048 = load i64, i64* %envptr9934, align 8                                    ; load; *envptr9934
  %envptr9935 = inttoptr i64 %env8147 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9936 = getelementptr inbounds i64, i64* %envptr9935, i64 2                  ; &envptr9935[2]
  %PLx$l = load i64, i64* %envptr9936, align 8                                       ; load; *envptr9936
  %envptr9937 = inttoptr i64 %env8147 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9938 = getelementptr inbounds i64, i64* %envptr9937, i64 1                  ; &envptr9937[1]
  %OLd$_37wind_45stack = load i64, i64* %envptr9938, align 8                         ; load; *envptr9938
  %arg7721 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7051 = call i64 @prim_vector_45set_33(i64 %OLd$_37wind_45stack, i64 %arg7721, i64 %PLx$l); call prim_vector_45set_33
  %arg7724 = add i64 0, 0                                                            ; quoted ()
  %cloptr9939 = inttoptr i64 %cont7048 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9939)                                         ; assert function application
  %i0ptr9940 = getelementptr inbounds i64, i64* %cloptr9939, i64 0                   ; &cloptr9939[0]
  %f9942 = load i64, i64* %i0ptr9940, align 8                                        ; load; *i0ptr9940
  %fptr9941 = inttoptr i64 %f9942 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9941(i64 %cont7048, i64 %arg7724, i64 %retprim7051) ; tail call
  ret void
}


define void @lam8137(i64 %env8138, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr9943 = inttoptr i64 %_951 to i64*                                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9943)                                         ; assert function application
  %i0ptr9944 = getelementptr inbounds i64, i64* %cloptr9943, i64 0                   ; &cloptr9943[0]
  %f9946 = load i64, i64* %i0ptr9944, align 8                                        ; load; *i0ptr9944
  %fptr9945 = inttoptr i64 %f9946 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9945(i64 %_951, i64 %_951)                          ; tail call
  ret void
}


define void @lam8130(i64 %env8131, i64 %cont7078, i64 %tpw$_37foldl) {
  %envptr9947 = inttoptr i64 %env8131 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9948 = getelementptr inbounds i64, i64* %envptr9947, i64 3                  ; &envptr9947[3]
  %T0D$_37foldr1 = load i64, i64* %envptr9948, align 8                               ; load; *envptr9948
  %envptr9949 = inttoptr i64 %env8131 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9950 = getelementptr inbounds i64, i64* %envptr9949, i64 2                  ; &envptr9949[2]
  %jNn$_37foldr = load i64, i64* %envptr9950, align 8                                ; load; *envptr9950
  %envptr9951 = inttoptr i64 %env8131 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9952 = getelementptr inbounds i64, i64* %envptr9951, i64 1                  ; &envptr9951[1]
  %GcZ$_37map1 = load i64, i64* %envptr9952, align 8                                 ; load; *envptr9952
  %arg7743 = add i64 0, 0                                                            ; quoted ()
  %cloptr9953 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9955 = getelementptr inbounds i64, i64* %cloptr9953, i64 1                    ; &eptr9955[1]
  %eptr9956 = getelementptr inbounds i64, i64* %cloptr9953, i64 2                    ; &eptr9956[2]
  %eptr9957 = getelementptr inbounds i64, i64* %cloptr9953, i64 3                    ; &eptr9957[3]
  %eptr9958 = getelementptr inbounds i64, i64* %cloptr9953, i64 4                    ; &eptr9958[4]
  store i64 %tpw$_37foldl, i64* %eptr9955                                            ; *eptr9955 = %tpw$_37foldl
  store i64 %GcZ$_37map1, i64* %eptr9956                                             ; *eptr9956 = %GcZ$_37map1
  store i64 %jNn$_37foldr, i64* %eptr9957                                            ; *eptr9957 = %jNn$_37foldr
  store i64 %T0D$_37foldr1, i64* %eptr9958                                           ; *eptr9958 = %T0D$_37foldr1
  %eptr9954 = getelementptr inbounds i64, i64* %cloptr9953, i64 0                    ; &cloptr9953[0]
  %f9959 = ptrtoint void(i64,i64)* @lam8127 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9959, i64* %eptr9954                                                   ; store fptr
  %arg7742 = ptrtoint i64* %cloptr9953 to i64                                        ; closure cast; i64* -> i64
  %cloptr9960 = inttoptr i64 %cont7078 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9960)                                         ; assert function application
  %i0ptr9961 = getelementptr inbounds i64, i64* %cloptr9960, i64 0                   ; &cloptr9960[0]
  %f9963 = load i64, i64* %i0ptr9961, align 8                                        ; load; *i0ptr9961
  %fptr9962 = inttoptr i64 %f9963 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9962(i64 %cont7078, i64 %arg7743, i64 %arg7742)     ; tail call
  ret void
}


define void @lam8127(i64 %env8128, i64 %MD4$args7080) {
  %envptr9964 = inttoptr i64 %env8128 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9965 = getelementptr inbounds i64, i64* %envptr9964, i64 4                  ; &envptr9964[4]
  %T0D$_37foldr1 = load i64, i64* %envptr9965, align 8                               ; load; *envptr9965
  %envptr9966 = inttoptr i64 %env8128 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9967 = getelementptr inbounds i64, i64* %envptr9966, i64 3                  ; &envptr9966[3]
  %jNn$_37foldr = load i64, i64* %envptr9967, align 8                                ; load; *envptr9967
  %envptr9968 = inttoptr i64 %env8128 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9969 = getelementptr inbounds i64, i64* %envptr9968, i64 2                  ; &envptr9968[2]
  %GcZ$_37map1 = load i64, i64* %envptr9969, align 8                                 ; load; *envptr9969
  %envptr9970 = inttoptr i64 %env8128 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9971 = getelementptr inbounds i64, i64* %envptr9970, i64 1                  ; &envptr9970[1]
  %tpw$_37foldl = load i64, i64* %envptr9971, align 8                                ; load; *envptr9971
  %cont7079 = call i64 @prim_car(i64 %MD4$args7080)                                  ; call prim_car
  %MD4$args = call i64 @prim_cdr(i64 %MD4$args7080)                                  ; call prim_cdr
  %mLP$f = call i64 @prim_car(i64 %MD4$args)                                         ; call prim_car
  %a6883 = call i64 @prim_cdr(i64 %MD4$args)                                         ; call prim_cdr
  %retprim7099 = call i64 @prim_car(i64 %a6883)                                      ; call prim_car
  %cloptr9972 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9974 = getelementptr inbounds i64, i64* %cloptr9972, i64 1                    ; &eptr9974[1]
  %eptr9975 = getelementptr inbounds i64, i64* %cloptr9972, i64 2                    ; &eptr9975[2]
  %eptr9976 = getelementptr inbounds i64, i64* %cloptr9972, i64 3                    ; &eptr9976[3]
  %eptr9977 = getelementptr inbounds i64, i64* %cloptr9972, i64 4                    ; &eptr9977[4]
  %eptr9978 = getelementptr inbounds i64, i64* %cloptr9972, i64 5                    ; &eptr9978[5]
  %eptr9979 = getelementptr inbounds i64, i64* %cloptr9972, i64 6                    ; &eptr9979[6]
  %eptr9980 = getelementptr inbounds i64, i64* %cloptr9972, i64 7                    ; &eptr9980[7]
  store i64 %tpw$_37foldl, i64* %eptr9974                                            ; *eptr9974 = %tpw$_37foldl
  store i64 %GcZ$_37map1, i64* %eptr9975                                             ; *eptr9975 = %GcZ$_37map1
  store i64 %MD4$args, i64* %eptr9976                                                ; *eptr9976 = %MD4$args
  store i64 %jNn$_37foldr, i64* %eptr9977                                            ; *eptr9977 = %jNn$_37foldr
  store i64 %cont7079, i64* %eptr9978                                                ; *eptr9978 = %cont7079
  store i64 %T0D$_37foldr1, i64* %eptr9979                                           ; *eptr9979 = %T0D$_37foldr1
  store i64 %mLP$f, i64* %eptr9980                                                   ; *eptr9980 = %mLP$f
  %eptr9973 = getelementptr inbounds i64, i64* %cloptr9972, i64 0                    ; &cloptr9972[0]
  %f9981 = ptrtoint void(i64,i64,i64)* @lam8125 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9981, i64* %eptr9973                                                   ; store fptr
  %arg7752 = ptrtoint i64* %cloptr9972 to i64                                        ; closure cast; i64* -> i64
  %arg7751 = add i64 0, 0                                                            ; quoted ()
  %cloptr9982 = inttoptr i64 %arg7752 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9982)                                         ; assert function application
  %i0ptr9983 = getelementptr inbounds i64, i64* %cloptr9982, i64 0                   ; &cloptr9982[0]
  %f9985 = load i64, i64* %i0ptr9983, align 8                                        ; load; *i0ptr9983
  %fptr9984 = inttoptr i64 %f9985 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9984(i64 %arg7752, i64 %arg7751, i64 %retprim7099)  ; tail call
  ret void
}


define void @lam8125(i64 %env8126, i64 %_957081, i64 %AKA$acc) {
  %envptr9986 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9987 = getelementptr inbounds i64, i64* %envptr9986, i64 7                  ; &envptr9986[7]
  %mLP$f = load i64, i64* %envptr9987, align 8                                       ; load; *envptr9987
  %envptr9988 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9989 = getelementptr inbounds i64, i64* %envptr9988, i64 6                  ; &envptr9988[6]
  %T0D$_37foldr1 = load i64, i64* %envptr9989, align 8                               ; load; *envptr9989
  %envptr9990 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9991 = getelementptr inbounds i64, i64* %envptr9990, i64 5                  ; &envptr9990[5]
  %cont7079 = load i64, i64* %envptr9991, align 8                                    ; load; *envptr9991
  %envptr9992 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9993 = getelementptr inbounds i64, i64* %envptr9992, i64 4                  ; &envptr9992[4]
  %jNn$_37foldr = load i64, i64* %envptr9993, align 8                                ; load; *envptr9993
  %envptr9994 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9995 = getelementptr inbounds i64, i64* %envptr9994, i64 3                  ; &envptr9994[3]
  %MD4$args = load i64, i64* %envptr9995, align 8                                    ; load; *envptr9995
  %envptr9996 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9997 = getelementptr inbounds i64, i64* %envptr9996, i64 2                  ; &envptr9996[2]
  %GcZ$_37map1 = load i64, i64* %envptr9997, align 8                                 ; load; *envptr9997
  %envptr9998 = inttoptr i64 %env8126 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9999 = getelementptr inbounds i64, i64* %envptr9998, i64 1                  ; &envptr9998[1]
  %tpw$_37foldl = load i64, i64* %envptr9999, align 8                                ; load; *envptr9999
  %a6884 = call i64 @prim_cdr(i64 %MD4$args)                                         ; call prim_cdr
  %retprim7098 = call i64 @prim_cdr(i64 %a6884)                                      ; call prim_cdr
  %cloptr10000 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10002 = getelementptr inbounds i64, i64* %cloptr10000, i64 1                  ; &eptr10002[1]
  %eptr10003 = getelementptr inbounds i64, i64* %cloptr10000, i64 2                  ; &eptr10003[2]
  %eptr10004 = getelementptr inbounds i64, i64* %cloptr10000, i64 3                  ; &eptr10004[3]
  %eptr10005 = getelementptr inbounds i64, i64* %cloptr10000, i64 4                  ; &eptr10005[4]
  %eptr10006 = getelementptr inbounds i64, i64* %cloptr10000, i64 5                  ; &eptr10006[5]
  %eptr10007 = getelementptr inbounds i64, i64* %cloptr10000, i64 6                  ; &eptr10007[6]
  %eptr10008 = getelementptr inbounds i64, i64* %cloptr10000, i64 7                  ; &eptr10008[7]
  store i64 %tpw$_37foldl, i64* %eptr10002                                           ; *eptr10002 = %tpw$_37foldl
  store i64 %GcZ$_37map1, i64* %eptr10003                                            ; *eptr10003 = %GcZ$_37map1
  store i64 %AKA$acc, i64* %eptr10004                                                ; *eptr10004 = %AKA$acc
  store i64 %jNn$_37foldr, i64* %eptr10005                                           ; *eptr10005 = %jNn$_37foldr
  store i64 %cont7079, i64* %eptr10006                                               ; *eptr10006 = %cont7079
  store i64 %T0D$_37foldr1, i64* %eptr10007                                          ; *eptr10007 = %T0D$_37foldr1
  store i64 %mLP$f, i64* %eptr10008                                                  ; *eptr10008 = %mLP$f
  %eptr10001 = getelementptr inbounds i64, i64* %cloptr10000, i64 0                  ; &cloptr10000[0]
  %f10009 = ptrtoint void(i64,i64,i64)* @lam8123 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10009, i64* %eptr10001                                                 ; store fptr
  %arg7757 = ptrtoint i64* %cloptr10000 to i64                                       ; closure cast; i64* -> i64
  %arg7756 = add i64 0, 0                                                            ; quoted ()
  %cloptr10010 = inttoptr i64 %arg7757 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10010)                                        ; assert function application
  %i0ptr10011 = getelementptr inbounds i64, i64* %cloptr10010, i64 0                 ; &cloptr10010[0]
  %f10013 = load i64, i64* %i0ptr10011, align 8                                      ; load; *i0ptr10011
  %fptr10012 = inttoptr i64 %f10013 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10012(i64 %arg7757, i64 %arg7756, i64 %retprim7098) ; tail call
  ret void
}


define void @lam8123(i64 %env8124, i64 %_957082, i64 %lq8$lsts) {
  %envptr10014 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10015 = getelementptr inbounds i64, i64* %envptr10014, i64 7                ; &envptr10014[7]
  %mLP$f = load i64, i64* %envptr10015, align 8                                      ; load; *envptr10015
  %envptr10016 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10017 = getelementptr inbounds i64, i64* %envptr10016, i64 6                ; &envptr10016[6]
  %T0D$_37foldr1 = load i64, i64* %envptr10017, align 8                              ; load; *envptr10017
  %envptr10018 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10019 = getelementptr inbounds i64, i64* %envptr10018, i64 5                ; &envptr10018[5]
  %cont7079 = load i64, i64* %envptr10019, align 8                                   ; load; *envptr10019
  %envptr10020 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10021 = getelementptr inbounds i64, i64* %envptr10020, i64 4                ; &envptr10020[4]
  %jNn$_37foldr = load i64, i64* %envptr10021, align 8                               ; load; *envptr10021
  %envptr10022 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10023 = getelementptr inbounds i64, i64* %envptr10022, i64 3                ; &envptr10022[3]
  %AKA$acc = load i64, i64* %envptr10023, align 8                                    ; load; *envptr10023
  %envptr10024 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10025 = getelementptr inbounds i64, i64* %envptr10024, i64 2                ; &envptr10024[2]
  %GcZ$_37map1 = load i64, i64* %envptr10025, align 8                                ; load; *envptr10025
  %envptr10026 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10027 = getelementptr inbounds i64, i64* %envptr10026, i64 1                ; &envptr10026[1]
  %tpw$_37foldl = load i64, i64* %envptr10027, align 8                               ; load; *envptr10027
  %cloptr10028 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10030 = getelementptr inbounds i64, i64* %cloptr10028, i64 1                  ; &eptr10030[1]
  %eptr10031 = getelementptr inbounds i64, i64* %cloptr10028, i64 2                  ; &eptr10031[2]
  %eptr10032 = getelementptr inbounds i64, i64* %cloptr10028, i64 3                  ; &eptr10032[3]
  %eptr10033 = getelementptr inbounds i64, i64* %cloptr10028, i64 4                  ; &eptr10033[4]
  %eptr10034 = getelementptr inbounds i64, i64* %cloptr10028, i64 5                  ; &eptr10034[5]
  %eptr10035 = getelementptr inbounds i64, i64* %cloptr10028, i64 6                  ; &eptr10035[6]
  %eptr10036 = getelementptr inbounds i64, i64* %cloptr10028, i64 7                  ; &eptr10036[7]
  store i64 %tpw$_37foldl, i64* %eptr10030                                           ; *eptr10030 = %tpw$_37foldl
  store i64 %GcZ$_37map1, i64* %eptr10031                                            ; *eptr10031 = %GcZ$_37map1
  store i64 %AKA$acc, i64* %eptr10032                                                ; *eptr10032 = %AKA$acc
  store i64 %jNn$_37foldr, i64* %eptr10033                                           ; *eptr10033 = %jNn$_37foldr
  store i64 %lq8$lsts, i64* %eptr10034                                               ; *eptr10034 = %lq8$lsts
  store i64 %cont7079, i64* %eptr10035                                               ; *eptr10035 = %cont7079
  store i64 %mLP$f, i64* %eptr10036                                                  ; *eptr10036 = %mLP$f
  %eptr10029 = getelementptr inbounds i64, i64* %cloptr10028, i64 0                  ; &cloptr10028[0]
  %f10037 = ptrtoint void(i64,i64,i64)* @lam8121 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10037, i64* %eptr10029                                                 ; store fptr
  %arg7761 = ptrtoint i64* %cloptr10028 to i64                                       ; closure cast; i64* -> i64
  %cloptr10038 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10039 = getelementptr inbounds i64, i64* %cloptr10038, i64 0                  ; &cloptr10038[0]
  %f10040 = ptrtoint void(i64,i64,i64,i64)* @lam8100 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10040, i64* %eptr10039                                                 ; store fptr
  %arg7760 = ptrtoint i64* %cloptr10038 to i64                                       ; closure cast; i64* -> i64
  %arg7759 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10041 = inttoptr i64 %T0D$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10041)                                        ; assert function application
  %i0ptr10042 = getelementptr inbounds i64, i64* %cloptr10041, i64 0                 ; &cloptr10041[0]
  %f10044 = load i64, i64* %i0ptr10042, align 8                                      ; load; *i0ptr10042
  %fptr10043 = inttoptr i64 %f10044 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10043(i64 %T0D$_37foldr1, i64 %arg7761, i64 %arg7760, i64 %arg7759, i64 %lq8$lsts); tail call
  ret void
}


define void @lam8121(i64 %env8122, i64 %_957083, i64 %a6885) {
  %envptr10045 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10046 = getelementptr inbounds i64, i64* %envptr10045, i64 7                ; &envptr10045[7]
  %mLP$f = load i64, i64* %envptr10046, align 8                                      ; load; *envptr10046
  %envptr10047 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10048 = getelementptr inbounds i64, i64* %envptr10047, i64 6                ; &envptr10047[6]
  %cont7079 = load i64, i64* %envptr10048, align 8                                   ; load; *envptr10048
  %envptr10049 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10050 = getelementptr inbounds i64, i64* %envptr10049, i64 5                ; &envptr10049[5]
  %lq8$lsts = load i64, i64* %envptr10050, align 8                                   ; load; *envptr10050
  %envptr10051 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10052 = getelementptr inbounds i64, i64* %envptr10051, i64 4                ; &envptr10051[4]
  %jNn$_37foldr = load i64, i64* %envptr10052, align 8                               ; load; *envptr10052
  %envptr10053 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10054 = getelementptr inbounds i64, i64* %envptr10053, i64 3                ; &envptr10053[3]
  %AKA$acc = load i64, i64* %envptr10054, align 8                                    ; load; *envptr10054
  %envptr10055 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10056 = getelementptr inbounds i64, i64* %envptr10055, i64 2                ; &envptr10055[2]
  %GcZ$_37map1 = load i64, i64* %envptr10056, align 8                                ; load; *envptr10056
  %envptr10057 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10058 = getelementptr inbounds i64, i64* %envptr10057, i64 1                ; &envptr10057[1]
  %tpw$_37foldl = load i64, i64* %envptr10058, align 8                               ; load; *envptr10058
  %cmp10059 = icmp eq i64 %a6885, 15                                                 ; false?
  br i1 %cmp10059, label %else10061, label %then10060                                ; if

then10060:
  %arg7764 = add i64 0, 0                                                            ; quoted ()
  %cloptr10062 = inttoptr i64 %cont7079 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10062)                                        ; assert function application
  %i0ptr10063 = getelementptr inbounds i64, i64* %cloptr10062, i64 0                 ; &cloptr10062[0]
  %f10065 = load i64, i64* %i0ptr10063, align 8                                      ; load; *i0ptr10063
  %fptr10064 = inttoptr i64 %f10065 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10064(i64 %cont7079, i64 %arg7764, i64 %AKA$acc)    ; tail call
  ret void

else10061:
  %cloptr10066 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10068 = getelementptr inbounds i64, i64* %cloptr10066, i64 1                  ; &eptr10068[1]
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10066, i64 2                  ; &eptr10069[2]
  %eptr10070 = getelementptr inbounds i64, i64* %cloptr10066, i64 3                  ; &eptr10070[3]
  %eptr10071 = getelementptr inbounds i64, i64* %cloptr10066, i64 4                  ; &eptr10071[4]
  %eptr10072 = getelementptr inbounds i64, i64* %cloptr10066, i64 5                  ; &eptr10072[5]
  %eptr10073 = getelementptr inbounds i64, i64* %cloptr10066, i64 6                  ; &eptr10073[6]
  %eptr10074 = getelementptr inbounds i64, i64* %cloptr10066, i64 7                  ; &eptr10074[7]
  store i64 %tpw$_37foldl, i64* %eptr10068                                           ; *eptr10068 = %tpw$_37foldl
  store i64 %GcZ$_37map1, i64* %eptr10069                                            ; *eptr10069 = %GcZ$_37map1
  store i64 %AKA$acc, i64* %eptr10070                                                ; *eptr10070 = %AKA$acc
  store i64 %jNn$_37foldr, i64* %eptr10071                                           ; *eptr10071 = %jNn$_37foldr
  store i64 %lq8$lsts, i64* %eptr10072                                               ; *eptr10072 = %lq8$lsts
  store i64 %cont7079, i64* %eptr10073                                               ; *eptr10073 = %cont7079
  store i64 %mLP$f, i64* %eptr10074                                                  ; *eptr10074 = %mLP$f
  %eptr10067 = getelementptr inbounds i64, i64* %cloptr10066, i64 0                  ; &cloptr10066[0]
  %f10075 = ptrtoint void(i64,i64,i64)* @lam8119 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10075, i64* %eptr10067                                                 ; store fptr
  %arg7768 = ptrtoint i64* %cloptr10066 to i64                                       ; closure cast; i64* -> i64
  %cloptr10076 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10077 = getelementptr inbounds i64, i64* %cloptr10076, i64 0                  ; &cloptr10076[0]
  %f10078 = ptrtoint void(i64,i64,i64)* @lam8104 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10078, i64* %eptr10077                                                 ; store fptr
  %arg7767 = ptrtoint i64* %cloptr10076 to i64                                       ; closure cast; i64* -> i64
  %cloptr10079 = inttoptr i64 %GcZ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10079)                                        ; assert function application
  %i0ptr10080 = getelementptr inbounds i64, i64* %cloptr10079, i64 0                 ; &cloptr10079[0]
  %f10082 = load i64, i64* %i0ptr10080, align 8                                      ; load; *i0ptr10080
  %fptr10081 = inttoptr i64 %f10082 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10081(i64 %GcZ$_37map1, i64 %arg7768, i64 %arg7767, i64 %lq8$lsts); tail call
  ret void
}


define void @lam8119(i64 %env8120, i64 %_957084, i64 %W75$lsts_43) {
  %envptr10083 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10084 = getelementptr inbounds i64, i64* %envptr10083, i64 7                ; &envptr10083[7]
  %mLP$f = load i64, i64* %envptr10084, align 8                                      ; load; *envptr10084
  %envptr10085 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10086 = getelementptr inbounds i64, i64* %envptr10085, i64 6                ; &envptr10085[6]
  %cont7079 = load i64, i64* %envptr10086, align 8                                   ; load; *envptr10086
  %envptr10087 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10088 = getelementptr inbounds i64, i64* %envptr10087, i64 5                ; &envptr10087[5]
  %lq8$lsts = load i64, i64* %envptr10088, align 8                                   ; load; *envptr10088
  %envptr10089 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10090 = getelementptr inbounds i64, i64* %envptr10089, i64 4                ; &envptr10089[4]
  %jNn$_37foldr = load i64, i64* %envptr10090, align 8                               ; load; *envptr10090
  %envptr10091 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10092 = getelementptr inbounds i64, i64* %envptr10091, i64 3                ; &envptr10091[3]
  %AKA$acc = load i64, i64* %envptr10092, align 8                                    ; load; *envptr10092
  %envptr10093 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10094 = getelementptr inbounds i64, i64* %envptr10093, i64 2                ; &envptr10093[2]
  %GcZ$_37map1 = load i64, i64* %envptr10094, align 8                                ; load; *envptr10094
  %envptr10095 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10096 = getelementptr inbounds i64, i64* %envptr10095, i64 1                ; &envptr10095[1]
  %tpw$_37foldl = load i64, i64* %envptr10096, align 8                               ; load; *envptr10096
  %cloptr10097 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10099 = getelementptr inbounds i64, i64* %cloptr10097, i64 1                  ; &eptr10099[1]
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10097, i64 2                  ; &eptr10100[2]
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10097, i64 3                  ; &eptr10101[3]
  %eptr10102 = getelementptr inbounds i64, i64* %cloptr10097, i64 4                  ; &eptr10102[4]
  %eptr10103 = getelementptr inbounds i64, i64* %cloptr10097, i64 5                  ; &eptr10103[5]
  %eptr10104 = getelementptr inbounds i64, i64* %cloptr10097, i64 6                  ; &eptr10104[6]
  store i64 %tpw$_37foldl, i64* %eptr10099                                           ; *eptr10099 = %tpw$_37foldl
  store i64 %AKA$acc, i64* %eptr10100                                                ; *eptr10100 = %AKA$acc
  store i64 %jNn$_37foldr, i64* %eptr10101                                           ; *eptr10101 = %jNn$_37foldr
  store i64 %cont7079, i64* %eptr10102                                               ; *eptr10102 = %cont7079
  store i64 %W75$lsts_43, i64* %eptr10103                                            ; *eptr10103 = %W75$lsts_43
  store i64 %mLP$f, i64* %eptr10104                                                  ; *eptr10104 = %mLP$f
  %eptr10098 = getelementptr inbounds i64, i64* %cloptr10097, i64 0                  ; &cloptr10097[0]
  %f10105 = ptrtoint void(i64,i64,i64)* @lam8117 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10105, i64* %eptr10098                                                 ; store fptr
  %arg7772 = ptrtoint i64* %cloptr10097 to i64                                       ; closure cast; i64* -> i64
  %cloptr10106 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10107 = getelementptr inbounds i64, i64* %cloptr10106, i64 0                  ; &cloptr10106[0]
  %f10108 = ptrtoint void(i64,i64,i64)* @lam8107 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10108, i64* %eptr10107                                                 ; store fptr
  %arg7771 = ptrtoint i64* %cloptr10106 to i64                                       ; closure cast; i64* -> i64
  %cloptr10109 = inttoptr i64 %GcZ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10109)                                        ; assert function application
  %i0ptr10110 = getelementptr inbounds i64, i64* %cloptr10109, i64 0                 ; &cloptr10109[0]
  %f10112 = load i64, i64* %i0ptr10110, align 8                                      ; load; *i0ptr10110
  %fptr10111 = inttoptr i64 %f10112 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10111(i64 %GcZ$_37map1, i64 %arg7772, i64 %arg7771, i64 %lq8$lsts); tail call
  ret void
}


define void @lam8117(i64 %env8118, i64 %_957085, i64 %z7S$vs) {
  %envptr10113 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10114 = getelementptr inbounds i64, i64* %envptr10113, i64 6                ; &envptr10113[6]
  %mLP$f = load i64, i64* %envptr10114, align 8                                      ; load; *envptr10114
  %envptr10115 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10116 = getelementptr inbounds i64, i64* %envptr10115, i64 5                ; &envptr10115[5]
  %W75$lsts_43 = load i64, i64* %envptr10116, align 8                                ; load; *envptr10116
  %envptr10117 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10118 = getelementptr inbounds i64, i64* %envptr10117, i64 4                ; &envptr10117[4]
  %cont7079 = load i64, i64* %envptr10118, align 8                                   ; load; *envptr10118
  %envptr10119 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10120 = getelementptr inbounds i64, i64* %envptr10119, i64 3                ; &envptr10119[3]
  %jNn$_37foldr = load i64, i64* %envptr10120, align 8                               ; load; *envptr10120
  %envptr10121 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10122 = getelementptr inbounds i64, i64* %envptr10121, i64 2                ; &envptr10121[2]
  %AKA$acc = load i64, i64* %envptr10122, align 8                                    ; load; *envptr10122
  %envptr10123 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10124 = getelementptr inbounds i64, i64* %envptr10123, i64 1                ; &envptr10123[1]
  %tpw$_37foldl = load i64, i64* %envptr10124, align 8                               ; load; *envptr10124
  %arg7774 = add i64 0, 0                                                            ; quoted ()
  %a6886 = call i64 @prim_cons(i64 %AKA$acc, i64 %arg7774)                           ; call prim_cons
  %cloptr10125 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10127 = getelementptr inbounds i64, i64* %cloptr10125, i64 1                  ; &eptr10127[1]
  %eptr10128 = getelementptr inbounds i64, i64* %cloptr10125, i64 2                  ; &eptr10128[2]
  %eptr10129 = getelementptr inbounds i64, i64* %cloptr10125, i64 3                  ; &eptr10129[3]
  %eptr10130 = getelementptr inbounds i64, i64* %cloptr10125, i64 4                  ; &eptr10130[4]
  store i64 %tpw$_37foldl, i64* %eptr10127                                           ; *eptr10127 = %tpw$_37foldl
  store i64 %cont7079, i64* %eptr10128                                               ; *eptr10128 = %cont7079
  store i64 %W75$lsts_43, i64* %eptr10129                                            ; *eptr10129 = %W75$lsts_43
  store i64 %mLP$f, i64* %eptr10130                                                  ; *eptr10130 = %mLP$f
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10125, i64 0                  ; &cloptr10125[0]
  %f10131 = ptrtoint void(i64,i64,i64)* @lam8114 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10131, i64* %eptr10126                                                 ; store fptr
  %arg7779 = ptrtoint i64* %cloptr10125 to i64                                       ; closure cast; i64* -> i64
  %cloptr10132 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10133 = getelementptr inbounds i64, i64* %cloptr10132, i64 0                  ; &cloptr10132[0]
  %f10134 = ptrtoint void(i64,i64,i64,i64)* @lam8110 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10134, i64* %eptr10133                                                 ; store fptr
  %arg7778 = ptrtoint i64* %cloptr10132 to i64                                       ; closure cast; i64* -> i64
  %cloptr10135 = inttoptr i64 %jNn$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10135)                                        ; assert function application
  %i0ptr10136 = getelementptr inbounds i64, i64* %cloptr10135, i64 0                 ; &cloptr10135[0]
  %f10138 = load i64, i64* %i0ptr10136, align 8                                      ; load; *i0ptr10136
  %fptr10137 = inttoptr i64 %f10138 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10137(i64 %jNn$_37foldr, i64 %arg7779, i64 %arg7778, i64 %a6886, i64 %z7S$vs); tail call
  ret void
}


define void @lam8114(i64 %env8115, i64 %_957088, i64 %a6887) {
  %envptr10139 = inttoptr i64 %env8115 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10140 = getelementptr inbounds i64, i64* %envptr10139, i64 4                ; &envptr10139[4]
  %mLP$f = load i64, i64* %envptr10140, align 8                                      ; load; *envptr10140
  %envptr10141 = inttoptr i64 %env8115 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10142 = getelementptr inbounds i64, i64* %envptr10141, i64 3                ; &envptr10141[3]
  %W75$lsts_43 = load i64, i64* %envptr10142, align 8                                ; load; *envptr10142
  %envptr10143 = inttoptr i64 %env8115 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10144 = getelementptr inbounds i64, i64* %envptr10143, i64 2                ; &envptr10143[2]
  %cont7079 = load i64, i64* %envptr10144, align 8                                   ; load; *envptr10144
  %envptr10145 = inttoptr i64 %env8115 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10146 = getelementptr inbounds i64, i64* %envptr10145, i64 1                ; &envptr10145[1]
  %tpw$_37foldl = load i64, i64* %envptr10146, align 8                               ; load; *envptr10146
  %cloptr10147 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10149 = getelementptr inbounds i64, i64* %cloptr10147, i64 1                  ; &eptr10149[1]
  %eptr10150 = getelementptr inbounds i64, i64* %cloptr10147, i64 2                  ; &eptr10150[2]
  %eptr10151 = getelementptr inbounds i64, i64* %cloptr10147, i64 3                  ; &eptr10151[3]
  %eptr10152 = getelementptr inbounds i64, i64* %cloptr10147, i64 4                  ; &eptr10152[4]
  store i64 %tpw$_37foldl, i64* %eptr10149                                           ; *eptr10149 = %tpw$_37foldl
  store i64 %cont7079, i64* %eptr10150                                               ; *eptr10150 = %cont7079
  store i64 %W75$lsts_43, i64* %eptr10151                                            ; *eptr10151 = %W75$lsts_43
  store i64 %mLP$f, i64* %eptr10152                                                  ; *eptr10152 = %mLP$f
  %eptr10148 = getelementptr inbounds i64, i64* %cloptr10147, i64 0                  ; &cloptr10147[0]
  %f10153 = ptrtoint void(i64,i64,i64)* @lam8112 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10153, i64* %eptr10148                                                 ; store fptr
  %arg7782 = ptrtoint i64* %cloptr10147 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7089 = call i64 @prim_cons(i64 %arg7782, i64 %a6887)                     ; call prim_cons
  %cloptr10154 = inttoptr i64 %mLP$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10154)                                        ; assert function application
  %i0ptr10155 = getelementptr inbounds i64, i64* %cloptr10154, i64 0                 ; &cloptr10154[0]
  %f10157 = load i64, i64* %i0ptr10155, align 8                                      ; load; *i0ptr10155
  %fptr10156 = inttoptr i64 %f10157 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10156(i64 %mLP$f, i64 %cps_45lst7089)               ; tail call
  ret void
}


define void @lam8112(i64 %env8113, i64 %_957086, i64 %CkE$acc_43) {
  %envptr10158 = inttoptr i64 %env8113 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10159 = getelementptr inbounds i64, i64* %envptr10158, i64 4                ; &envptr10158[4]
  %mLP$f = load i64, i64* %envptr10159, align 8                                      ; load; *envptr10159
  %envptr10160 = inttoptr i64 %env8113 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10161 = getelementptr inbounds i64, i64* %envptr10160, i64 3                ; &envptr10160[3]
  %W75$lsts_43 = load i64, i64* %envptr10161, align 8                                ; load; *envptr10161
  %envptr10162 = inttoptr i64 %env8113 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10163 = getelementptr inbounds i64, i64* %envptr10162, i64 2                ; &envptr10162[2]
  %cont7079 = load i64, i64* %envptr10163, align 8                                   ; load; *envptr10163
  %envptr10164 = inttoptr i64 %env8113 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10165 = getelementptr inbounds i64, i64* %envptr10164, i64 1                ; &envptr10164[1]
  %tpw$_37foldl = load i64, i64* %envptr10165, align 8                               ; load; *envptr10165
  %a6888 = call i64 @prim_cons(i64 %CkE$acc_43, i64 %W75$lsts_43)                    ; call prim_cons
  %a6889 = call i64 @prim_cons(i64 %mLP$f, i64 %a6888)                               ; call prim_cons
  %cps_45lst7087 = call i64 @prim_cons(i64 %cont7079, i64 %a6889)                    ; call prim_cons
  %cloptr10166 = inttoptr i64 %tpw$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10166)                                        ; assert function application
  %i0ptr10167 = getelementptr inbounds i64, i64* %cloptr10166, i64 0                 ; &cloptr10166[0]
  %f10169 = load i64, i64* %i0ptr10167, align 8                                      ; load; *i0ptr10167
  %fptr10168 = inttoptr i64 %f10169 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10168(i64 %tpw$_37foldl, i64 %cps_45lst7087)        ; tail call
  ret void
}


define void @lam8110(i64 %env8111, i64 %cont7090, i64 %LL7$a, i64 %Adl$b) {
  %retprim7091 = call i64 @prim_cons(i64 %LL7$a, i64 %Adl$b)                         ; call prim_cons
  %arg7792 = add i64 0, 0                                                            ; quoted ()
  %cloptr10170 = inttoptr i64 %cont7090 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10170)                                        ; assert function application
  %i0ptr10171 = getelementptr inbounds i64, i64* %cloptr10170, i64 0                 ; &cloptr10170[0]
  %f10173 = load i64, i64* %i0ptr10171, align 8                                      ; load; *i0ptr10171
  %fptr10172 = inttoptr i64 %f10173 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10172(i64 %cont7090, i64 %arg7792, i64 %retprim7091); tail call
  ret void
}


define void @lam8107(i64 %env8108, i64 %cont7092, i64 %Inf$x) {
  %retprim7093 = call i64 @prim_car(i64 %Inf$x)                                      ; call prim_car
  %arg7796 = add i64 0, 0                                                            ; quoted ()
  %cloptr10174 = inttoptr i64 %cont7092 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10174)                                        ; assert function application
  %i0ptr10175 = getelementptr inbounds i64, i64* %cloptr10174, i64 0                 ; &cloptr10174[0]
  %f10177 = load i64, i64* %i0ptr10175, align 8                                      ; load; *i0ptr10175
  %fptr10176 = inttoptr i64 %f10177 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10176(i64 %cont7092, i64 %arg7796, i64 %retprim7093); tail call
  ret void
}


define void @lam8104(i64 %env8105, i64 %cont7094, i64 %N4e$x) {
  %retprim7095 = call i64 @prim_cdr(i64 %N4e$x)                                      ; call prim_cdr
  %arg7800 = add i64 0, 0                                                            ; quoted ()
  %cloptr10178 = inttoptr i64 %cont7094 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10178)                                        ; assert function application
  %i0ptr10179 = getelementptr inbounds i64, i64* %cloptr10178, i64 0                 ; &cloptr10178[0]
  %f10181 = load i64, i64* %i0ptr10179, align 8                                      ; load; *i0ptr10179
  %fptr10180 = inttoptr i64 %f10181 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10180(i64 %cont7094, i64 %arg7800, i64 %retprim7095); tail call
  ret void
}


define void @lam8100(i64 %env8101, i64 %cont7096, i64 %CZX$lst, i64 %QVA$b) {
  %cmp10182 = icmp eq i64 %QVA$b, 15                                                 ; false?
  br i1 %cmp10182, label %else10184, label %then10183                                ; if

then10183:
  %arg7803 = add i64 0, 0                                                            ; quoted ()
  %cloptr10185 = inttoptr i64 %cont7096 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10185)                                        ; assert function application
  %i0ptr10186 = getelementptr inbounds i64, i64* %cloptr10185, i64 0                 ; &cloptr10185[0]
  %f10188 = load i64, i64* %i0ptr10186, align 8                                      ; load; *i0ptr10186
  %fptr10187 = inttoptr i64 %f10188 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10187(i64 %cont7096, i64 %arg7803, i64 %QVA$b)      ; tail call
  ret void

else10184:
  %retprim7097 = call i64 @prim_null_63(i64 %CZX$lst)                                ; call prim_null_63
  %arg7807 = add i64 0, 0                                                            ; quoted ()
  %cloptr10189 = inttoptr i64 %cont7096 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10189)                                        ; assert function application
  %i0ptr10190 = getelementptr inbounds i64, i64* %cloptr10189, i64 0                 ; &cloptr10189[0]
  %f10192 = load i64, i64* %i0ptr10190, align 8                                      ; load; *i0ptr10190
  %fptr10191 = inttoptr i64 %f10192 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10191(i64 %cont7096, i64 %arg7807, i64 %retprim7097); tail call
  ret void
}


define void @lam8093(i64 %env8094, i64 %cont7100, i64 %wYm$_37foldr) {
  %envptr10193 = inttoptr i64 %env8094 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10194 = getelementptr inbounds i64, i64* %envptr10193, i64 2                ; &envptr10193[2]
  %T0D$_37foldr1 = load i64, i64* %envptr10194, align 8                              ; load; *envptr10194
  %envptr10195 = inttoptr i64 %env8094 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10196 = getelementptr inbounds i64, i64* %envptr10195, i64 1                ; &envptr10195[1]
  %Iq0$_37map1 = load i64, i64* %envptr10196, align 8                                ; load; *envptr10196
  %arg7810 = add i64 0, 0                                                            ; quoted ()
  %cloptr10197 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10199 = getelementptr inbounds i64, i64* %cloptr10197, i64 1                  ; &eptr10199[1]
  %eptr10200 = getelementptr inbounds i64, i64* %cloptr10197, i64 2                  ; &eptr10200[2]
  %eptr10201 = getelementptr inbounds i64, i64* %cloptr10197, i64 3                  ; &eptr10201[3]
  store i64 %Iq0$_37map1, i64* %eptr10199                                            ; *eptr10199 = %Iq0$_37map1
  store i64 %wYm$_37foldr, i64* %eptr10200                                           ; *eptr10200 = %wYm$_37foldr
  store i64 %T0D$_37foldr1, i64* %eptr10201                                          ; *eptr10201 = %T0D$_37foldr1
  %eptr10198 = getelementptr inbounds i64, i64* %cloptr10197, i64 0                  ; &cloptr10197[0]
  %f10202 = ptrtoint void(i64,i64)* @lam8090 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10202, i64* %eptr10198                                                 ; store fptr
  %arg7809 = ptrtoint i64* %cloptr10197 to i64                                       ; closure cast; i64* -> i64
  %cloptr10203 = inttoptr i64 %cont7100 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10203)                                        ; assert function application
  %i0ptr10204 = getelementptr inbounds i64, i64* %cloptr10203, i64 0                 ; &cloptr10203[0]
  %f10206 = load i64, i64* %i0ptr10204, align 8                                      ; load; *i0ptr10204
  %fptr10205 = inttoptr i64 %f10206 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10205(i64 %cont7100, i64 %arg7810, i64 %arg7809)    ; tail call
  ret void
}


define void @lam8090(i64 %env8091, i64 %qoy$args7102) {
  %envptr10207 = inttoptr i64 %env8091 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10208 = getelementptr inbounds i64, i64* %envptr10207, i64 3                ; &envptr10207[3]
  %T0D$_37foldr1 = load i64, i64* %envptr10208, align 8                              ; load; *envptr10208
  %envptr10209 = inttoptr i64 %env8091 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10210 = getelementptr inbounds i64, i64* %envptr10209, i64 2                ; &envptr10209[2]
  %wYm$_37foldr = load i64, i64* %envptr10210, align 8                               ; load; *envptr10210
  %envptr10211 = inttoptr i64 %env8091 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10212 = getelementptr inbounds i64, i64* %envptr10211, i64 1                ; &envptr10211[1]
  %Iq0$_37map1 = load i64, i64* %envptr10212, align 8                                ; load; *envptr10212
  %cont7101 = call i64 @prim_car(i64 %qoy$args7102)                                  ; call prim_car
  %qoy$args = call i64 @prim_cdr(i64 %qoy$args7102)                                  ; call prim_cdr
  %VLj$f = call i64 @prim_car(i64 %qoy$args)                                         ; call prim_car
  %a6869 = call i64 @prim_cdr(i64 %qoy$args)                                         ; call prim_cdr
  %retprim7121 = call i64 @prim_car(i64 %a6869)                                      ; call prim_car
  %cloptr10213 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10215 = getelementptr inbounds i64, i64* %cloptr10213, i64 1                  ; &eptr10215[1]
  %eptr10216 = getelementptr inbounds i64, i64* %cloptr10213, i64 2                  ; &eptr10216[2]
  %eptr10217 = getelementptr inbounds i64, i64* %cloptr10213, i64 3                  ; &eptr10217[3]
  %eptr10218 = getelementptr inbounds i64, i64* %cloptr10213, i64 4                  ; &eptr10218[4]
  %eptr10219 = getelementptr inbounds i64, i64* %cloptr10213, i64 5                  ; &eptr10219[5]
  %eptr10220 = getelementptr inbounds i64, i64* %cloptr10213, i64 6                  ; &eptr10220[6]
  store i64 %Iq0$_37map1, i64* %eptr10215                                            ; *eptr10215 = %Iq0$_37map1
  store i64 %wYm$_37foldr, i64* %eptr10216                                           ; *eptr10216 = %wYm$_37foldr
  store i64 %cont7101, i64* %eptr10217                                               ; *eptr10217 = %cont7101
  store i64 %VLj$f, i64* %eptr10218                                                  ; *eptr10218 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10219                                          ; *eptr10219 = %T0D$_37foldr1
  store i64 %qoy$args, i64* %eptr10220                                               ; *eptr10220 = %qoy$args
  %eptr10214 = getelementptr inbounds i64, i64* %cloptr10213, i64 0                  ; &cloptr10213[0]
  %f10221 = ptrtoint void(i64,i64,i64)* @lam8088 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10221, i64* %eptr10214                                                 ; store fptr
  %arg7819 = ptrtoint i64* %cloptr10213 to i64                                       ; closure cast; i64* -> i64
  %arg7818 = add i64 0, 0                                                            ; quoted ()
  %cloptr10222 = inttoptr i64 %arg7819 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10222)                                        ; assert function application
  %i0ptr10223 = getelementptr inbounds i64, i64* %cloptr10222, i64 0                 ; &cloptr10222[0]
  %f10225 = load i64, i64* %i0ptr10223, align 8                                      ; load; *i0ptr10223
  %fptr10224 = inttoptr i64 %f10225 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10224(i64 %arg7819, i64 %arg7818, i64 %retprim7121) ; tail call
  ret void
}


define void @lam8088(i64 %env8089, i64 %_957103, i64 %ytK$acc) {
  %envptr10226 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10227 = getelementptr inbounds i64, i64* %envptr10226, i64 6                ; &envptr10226[6]
  %qoy$args = load i64, i64* %envptr10227, align 8                                   ; load; *envptr10227
  %envptr10228 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10229 = getelementptr inbounds i64, i64* %envptr10228, i64 5                ; &envptr10228[5]
  %T0D$_37foldr1 = load i64, i64* %envptr10229, align 8                              ; load; *envptr10229
  %envptr10230 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10231 = getelementptr inbounds i64, i64* %envptr10230, i64 4                ; &envptr10230[4]
  %VLj$f = load i64, i64* %envptr10231, align 8                                      ; load; *envptr10231
  %envptr10232 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10233 = getelementptr inbounds i64, i64* %envptr10232, i64 3                ; &envptr10232[3]
  %cont7101 = load i64, i64* %envptr10233, align 8                                   ; load; *envptr10233
  %envptr10234 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10235 = getelementptr inbounds i64, i64* %envptr10234, i64 2                ; &envptr10234[2]
  %wYm$_37foldr = load i64, i64* %envptr10235, align 8                               ; load; *envptr10235
  %envptr10236 = inttoptr i64 %env8089 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10237 = getelementptr inbounds i64, i64* %envptr10236, i64 1                ; &envptr10236[1]
  %Iq0$_37map1 = load i64, i64* %envptr10237, align 8                                ; load; *envptr10237
  %a6870 = call i64 @prim_cdr(i64 %qoy$args)                                         ; call prim_cdr
  %retprim7120 = call i64 @prim_cdr(i64 %a6870)                                      ; call prim_cdr
  %cloptr10238 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10240 = getelementptr inbounds i64, i64* %cloptr10238, i64 1                  ; &eptr10240[1]
  %eptr10241 = getelementptr inbounds i64, i64* %cloptr10238, i64 2                  ; &eptr10241[2]
  %eptr10242 = getelementptr inbounds i64, i64* %cloptr10238, i64 3                  ; &eptr10242[3]
  %eptr10243 = getelementptr inbounds i64, i64* %cloptr10238, i64 4                  ; &eptr10243[4]
  %eptr10244 = getelementptr inbounds i64, i64* %cloptr10238, i64 5                  ; &eptr10244[5]
  %eptr10245 = getelementptr inbounds i64, i64* %cloptr10238, i64 6                  ; &eptr10245[6]
  store i64 %Iq0$_37map1, i64* %eptr10240                                            ; *eptr10240 = %Iq0$_37map1
  store i64 %wYm$_37foldr, i64* %eptr10241                                           ; *eptr10241 = %wYm$_37foldr
  store i64 %cont7101, i64* %eptr10242                                               ; *eptr10242 = %cont7101
  store i64 %VLj$f, i64* %eptr10243                                                  ; *eptr10243 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10244                                          ; *eptr10244 = %T0D$_37foldr1
  store i64 %ytK$acc, i64* %eptr10245                                                ; *eptr10245 = %ytK$acc
  %eptr10239 = getelementptr inbounds i64, i64* %cloptr10238, i64 0                  ; &cloptr10238[0]
  %f10246 = ptrtoint void(i64,i64,i64)* @lam8086 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10246, i64* %eptr10239                                                 ; store fptr
  %arg7824 = ptrtoint i64* %cloptr10238 to i64                                       ; closure cast; i64* -> i64
  %arg7823 = add i64 0, 0                                                            ; quoted ()
  %cloptr10247 = inttoptr i64 %arg7824 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10247)                                        ; assert function application
  %i0ptr10248 = getelementptr inbounds i64, i64* %cloptr10247, i64 0                 ; &cloptr10247[0]
  %f10250 = load i64, i64* %i0ptr10248, align 8                                      ; load; *i0ptr10248
  %fptr10249 = inttoptr i64 %f10250 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10249(i64 %arg7824, i64 %arg7823, i64 %retprim7120) ; tail call
  ret void
}


define void @lam8086(i64 %env8087, i64 %_957104, i64 %Iky$lsts) {
  %envptr10251 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10252 = getelementptr inbounds i64, i64* %envptr10251, i64 6                ; &envptr10251[6]
  %ytK$acc = load i64, i64* %envptr10252, align 8                                    ; load; *envptr10252
  %envptr10253 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10254 = getelementptr inbounds i64, i64* %envptr10253, i64 5                ; &envptr10253[5]
  %T0D$_37foldr1 = load i64, i64* %envptr10254, align 8                              ; load; *envptr10254
  %envptr10255 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10256 = getelementptr inbounds i64, i64* %envptr10255, i64 4                ; &envptr10255[4]
  %VLj$f = load i64, i64* %envptr10256, align 8                                      ; load; *envptr10256
  %envptr10257 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10258 = getelementptr inbounds i64, i64* %envptr10257, i64 3                ; &envptr10257[3]
  %cont7101 = load i64, i64* %envptr10258, align 8                                   ; load; *envptr10258
  %envptr10259 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10260 = getelementptr inbounds i64, i64* %envptr10259, i64 2                ; &envptr10259[2]
  %wYm$_37foldr = load i64, i64* %envptr10260, align 8                               ; load; *envptr10260
  %envptr10261 = inttoptr i64 %env8087 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10262 = getelementptr inbounds i64, i64* %envptr10261, i64 1                ; &envptr10261[1]
  %Iq0$_37map1 = load i64, i64* %envptr10262, align 8                                ; load; *envptr10262
  %cloptr10263 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10265 = getelementptr inbounds i64, i64* %cloptr10263, i64 1                  ; &eptr10265[1]
  %eptr10266 = getelementptr inbounds i64, i64* %cloptr10263, i64 2                  ; &eptr10266[2]
  %eptr10267 = getelementptr inbounds i64, i64* %cloptr10263, i64 3                  ; &eptr10267[3]
  %eptr10268 = getelementptr inbounds i64, i64* %cloptr10263, i64 4                  ; &eptr10268[4]
  %eptr10269 = getelementptr inbounds i64, i64* %cloptr10263, i64 5                  ; &eptr10269[5]
  %eptr10270 = getelementptr inbounds i64, i64* %cloptr10263, i64 6                  ; &eptr10270[6]
  %eptr10271 = getelementptr inbounds i64, i64* %cloptr10263, i64 7                  ; &eptr10271[7]
  store i64 %Iq0$_37map1, i64* %eptr10265                                            ; *eptr10265 = %Iq0$_37map1
  store i64 %wYm$_37foldr, i64* %eptr10266                                           ; *eptr10266 = %wYm$_37foldr
  store i64 %cont7101, i64* %eptr10267                                               ; *eptr10267 = %cont7101
  store i64 %VLj$f, i64* %eptr10268                                                  ; *eptr10268 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10269                                          ; *eptr10269 = %T0D$_37foldr1
  store i64 %ytK$acc, i64* %eptr10270                                                ; *eptr10270 = %ytK$acc
  store i64 %Iky$lsts, i64* %eptr10271                                               ; *eptr10271 = %Iky$lsts
  %eptr10264 = getelementptr inbounds i64, i64* %cloptr10263, i64 0                  ; &cloptr10263[0]
  %f10272 = ptrtoint void(i64,i64,i64)* @lam8084 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10272, i64* %eptr10264                                                 ; store fptr
  %arg7828 = ptrtoint i64* %cloptr10263 to i64                                       ; closure cast; i64* -> i64
  %cloptr10273 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10274 = getelementptr inbounds i64, i64* %cloptr10273, i64 0                  ; &cloptr10273[0]
  %f10275 = ptrtoint void(i64,i64,i64,i64)* @lam8063 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10275, i64* %eptr10274                                                 ; store fptr
  %arg7827 = ptrtoint i64* %cloptr10273 to i64                                       ; closure cast; i64* -> i64
  %arg7826 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10276 = inttoptr i64 %T0D$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10276)                                        ; assert function application
  %i0ptr10277 = getelementptr inbounds i64, i64* %cloptr10276, i64 0                 ; &cloptr10276[0]
  %f10279 = load i64, i64* %i0ptr10277, align 8                                      ; load; *i0ptr10277
  %fptr10278 = inttoptr i64 %f10279 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10278(i64 %T0D$_37foldr1, i64 %arg7828, i64 %arg7827, i64 %arg7826, i64 %Iky$lsts); tail call
  ret void
}


define void @lam8084(i64 %env8085, i64 %_957105, i64 %a6871) {
  %envptr10280 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10281 = getelementptr inbounds i64, i64* %envptr10280, i64 7                ; &envptr10280[7]
  %Iky$lsts = load i64, i64* %envptr10281, align 8                                   ; load; *envptr10281
  %envptr10282 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10283 = getelementptr inbounds i64, i64* %envptr10282, i64 6                ; &envptr10282[6]
  %ytK$acc = load i64, i64* %envptr10283, align 8                                    ; load; *envptr10283
  %envptr10284 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10285 = getelementptr inbounds i64, i64* %envptr10284, i64 5                ; &envptr10284[5]
  %T0D$_37foldr1 = load i64, i64* %envptr10285, align 8                              ; load; *envptr10285
  %envptr10286 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10287 = getelementptr inbounds i64, i64* %envptr10286, i64 4                ; &envptr10286[4]
  %VLj$f = load i64, i64* %envptr10287, align 8                                      ; load; *envptr10287
  %envptr10288 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10289 = getelementptr inbounds i64, i64* %envptr10288, i64 3                ; &envptr10288[3]
  %cont7101 = load i64, i64* %envptr10289, align 8                                   ; load; *envptr10289
  %envptr10290 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10291 = getelementptr inbounds i64, i64* %envptr10290, i64 2                ; &envptr10290[2]
  %wYm$_37foldr = load i64, i64* %envptr10291, align 8                               ; load; *envptr10291
  %envptr10292 = inttoptr i64 %env8085 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10293 = getelementptr inbounds i64, i64* %envptr10292, i64 1                ; &envptr10292[1]
  %Iq0$_37map1 = load i64, i64* %envptr10293, align 8                                ; load; *envptr10293
  %cmp10294 = icmp eq i64 %a6871, 15                                                 ; false?
  br i1 %cmp10294, label %else10296, label %then10295                                ; if

then10295:
  %arg7831 = add i64 0, 0                                                            ; quoted ()
  %cloptr10297 = inttoptr i64 %cont7101 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10297)                                        ; assert function application
  %i0ptr10298 = getelementptr inbounds i64, i64* %cloptr10297, i64 0                 ; &cloptr10297[0]
  %f10300 = load i64, i64* %i0ptr10298, align 8                                      ; load; *i0ptr10298
  %fptr10299 = inttoptr i64 %f10300 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10299(i64 %cont7101, i64 %arg7831, i64 %ytK$acc)    ; tail call
  ret void

else10296:
  %cloptr10301 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10303 = getelementptr inbounds i64, i64* %cloptr10301, i64 1                  ; &eptr10303[1]
  %eptr10304 = getelementptr inbounds i64, i64* %cloptr10301, i64 2                  ; &eptr10304[2]
  %eptr10305 = getelementptr inbounds i64, i64* %cloptr10301, i64 3                  ; &eptr10305[3]
  %eptr10306 = getelementptr inbounds i64, i64* %cloptr10301, i64 4                  ; &eptr10306[4]
  %eptr10307 = getelementptr inbounds i64, i64* %cloptr10301, i64 5                  ; &eptr10307[5]
  %eptr10308 = getelementptr inbounds i64, i64* %cloptr10301, i64 6                  ; &eptr10308[6]
  %eptr10309 = getelementptr inbounds i64, i64* %cloptr10301, i64 7                  ; &eptr10309[7]
  store i64 %Iq0$_37map1, i64* %eptr10303                                            ; *eptr10303 = %Iq0$_37map1
  store i64 %wYm$_37foldr, i64* %eptr10304                                           ; *eptr10304 = %wYm$_37foldr
  store i64 %cont7101, i64* %eptr10305                                               ; *eptr10305 = %cont7101
  store i64 %VLj$f, i64* %eptr10306                                                  ; *eptr10306 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10307                                          ; *eptr10307 = %T0D$_37foldr1
  store i64 %ytK$acc, i64* %eptr10308                                                ; *eptr10308 = %ytK$acc
  store i64 %Iky$lsts, i64* %eptr10309                                               ; *eptr10309 = %Iky$lsts
  %eptr10302 = getelementptr inbounds i64, i64* %cloptr10301, i64 0                  ; &cloptr10301[0]
  %f10310 = ptrtoint void(i64,i64,i64)* @lam8082 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10310, i64* %eptr10302                                                 ; store fptr
  %arg7835 = ptrtoint i64* %cloptr10301 to i64                                       ; closure cast; i64* -> i64
  %cloptr10311 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10312 = getelementptr inbounds i64, i64* %cloptr10311, i64 0                  ; &cloptr10311[0]
  %f10313 = ptrtoint void(i64,i64,i64)* @lam8067 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10313, i64* %eptr10312                                                 ; store fptr
  %arg7834 = ptrtoint i64* %cloptr10311 to i64                                       ; closure cast; i64* -> i64
  %cloptr10314 = inttoptr i64 %Iq0$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10314)                                        ; assert function application
  %i0ptr10315 = getelementptr inbounds i64, i64* %cloptr10314, i64 0                 ; &cloptr10314[0]
  %f10317 = load i64, i64* %i0ptr10315, align 8                                      ; load; *i0ptr10315
  %fptr10316 = inttoptr i64 %f10317 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10316(i64 %Iq0$_37map1, i64 %arg7835, i64 %arg7834, i64 %Iky$lsts); tail call
  ret void
}


define void @lam8082(i64 %env8083, i64 %_957106, i64 %Ral$lsts_43) {
  %envptr10318 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10319 = getelementptr inbounds i64, i64* %envptr10318, i64 7                ; &envptr10318[7]
  %Iky$lsts = load i64, i64* %envptr10319, align 8                                   ; load; *envptr10319
  %envptr10320 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10321 = getelementptr inbounds i64, i64* %envptr10320, i64 6                ; &envptr10320[6]
  %ytK$acc = load i64, i64* %envptr10321, align 8                                    ; load; *envptr10321
  %envptr10322 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10323 = getelementptr inbounds i64, i64* %envptr10322, i64 5                ; &envptr10322[5]
  %T0D$_37foldr1 = load i64, i64* %envptr10323, align 8                              ; load; *envptr10323
  %envptr10324 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10325 = getelementptr inbounds i64, i64* %envptr10324, i64 4                ; &envptr10324[4]
  %VLj$f = load i64, i64* %envptr10325, align 8                                      ; load; *envptr10325
  %envptr10326 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10327 = getelementptr inbounds i64, i64* %envptr10326, i64 3                ; &envptr10326[3]
  %cont7101 = load i64, i64* %envptr10327, align 8                                   ; load; *envptr10327
  %envptr10328 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10329 = getelementptr inbounds i64, i64* %envptr10328, i64 2                ; &envptr10328[2]
  %wYm$_37foldr = load i64, i64* %envptr10329, align 8                               ; load; *envptr10329
  %envptr10330 = inttoptr i64 %env8083 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10331 = getelementptr inbounds i64, i64* %envptr10330, i64 1                ; &envptr10330[1]
  %Iq0$_37map1 = load i64, i64* %envptr10331, align 8                                ; load; *envptr10331
  %cloptr10332 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10334 = getelementptr inbounds i64, i64* %cloptr10332, i64 1                  ; &eptr10334[1]
  %eptr10335 = getelementptr inbounds i64, i64* %cloptr10332, i64 2                  ; &eptr10335[2]
  %eptr10336 = getelementptr inbounds i64, i64* %cloptr10332, i64 3                  ; &eptr10336[3]
  %eptr10337 = getelementptr inbounds i64, i64* %cloptr10332, i64 4                  ; &eptr10337[4]
  %eptr10338 = getelementptr inbounds i64, i64* %cloptr10332, i64 5                  ; &eptr10338[5]
  %eptr10339 = getelementptr inbounds i64, i64* %cloptr10332, i64 6                  ; &eptr10339[6]
  store i64 %wYm$_37foldr, i64* %eptr10334                                           ; *eptr10334 = %wYm$_37foldr
  store i64 %cont7101, i64* %eptr10335                                               ; *eptr10335 = %cont7101
  store i64 %VLj$f, i64* %eptr10336                                                  ; *eptr10336 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10337                                          ; *eptr10337 = %T0D$_37foldr1
  store i64 %ytK$acc, i64* %eptr10338                                                ; *eptr10338 = %ytK$acc
  store i64 %Ral$lsts_43, i64* %eptr10339                                            ; *eptr10339 = %Ral$lsts_43
  %eptr10333 = getelementptr inbounds i64, i64* %cloptr10332, i64 0                  ; &cloptr10332[0]
  %f10340 = ptrtoint void(i64,i64,i64)* @lam8080 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10340, i64* %eptr10333                                                 ; store fptr
  %arg7839 = ptrtoint i64* %cloptr10332 to i64                                       ; closure cast; i64* -> i64
  %cloptr10341 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10342 = getelementptr inbounds i64, i64* %cloptr10341, i64 0                  ; &cloptr10341[0]
  %f10343 = ptrtoint void(i64,i64,i64)* @lam8070 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10343, i64* %eptr10342                                                 ; store fptr
  %arg7838 = ptrtoint i64* %cloptr10341 to i64                                       ; closure cast; i64* -> i64
  %cloptr10344 = inttoptr i64 %Iq0$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10344)                                        ; assert function application
  %i0ptr10345 = getelementptr inbounds i64, i64* %cloptr10344, i64 0                 ; &cloptr10344[0]
  %f10347 = load i64, i64* %i0ptr10345, align 8                                      ; load; *i0ptr10345
  %fptr10346 = inttoptr i64 %f10347 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10346(i64 %Iq0$_37map1, i64 %arg7839, i64 %arg7838, i64 %Iky$lsts); tail call
  ret void
}


define void @lam8080(i64 %env8081, i64 %_957107, i64 %SFy$vs) {
  %envptr10348 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10349 = getelementptr inbounds i64, i64* %envptr10348, i64 6                ; &envptr10348[6]
  %Ral$lsts_43 = load i64, i64* %envptr10349, align 8                                ; load; *envptr10349
  %envptr10350 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10351 = getelementptr inbounds i64, i64* %envptr10350, i64 5                ; &envptr10350[5]
  %ytK$acc = load i64, i64* %envptr10351, align 8                                    ; load; *envptr10351
  %envptr10352 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10353 = getelementptr inbounds i64, i64* %envptr10352, i64 4                ; &envptr10352[4]
  %T0D$_37foldr1 = load i64, i64* %envptr10353, align 8                              ; load; *envptr10353
  %envptr10354 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10355 = getelementptr inbounds i64, i64* %envptr10354, i64 3                ; &envptr10354[3]
  %VLj$f = load i64, i64* %envptr10355, align 8                                      ; load; *envptr10355
  %envptr10356 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10357 = getelementptr inbounds i64, i64* %envptr10356, i64 2                ; &envptr10356[2]
  %cont7101 = load i64, i64* %envptr10357, align 8                                   ; load; *envptr10357
  %envptr10358 = inttoptr i64 %env8081 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10359 = getelementptr inbounds i64, i64* %envptr10358, i64 1                ; &envptr10358[1]
  %wYm$_37foldr = load i64, i64* %envptr10359, align 8                               ; load; *envptr10359
  %a6872 = call i64 @prim_cons(i64 %ytK$acc, i64 %Ral$lsts_43)                       ; call prim_cons
  %a6873 = call i64 @prim_cons(i64 %VLj$f, i64 %a6872)                               ; call prim_cons
  %cloptr10360 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10362 = getelementptr inbounds i64, i64* %cloptr10360, i64 1                  ; &eptr10362[1]
  %eptr10363 = getelementptr inbounds i64, i64* %cloptr10360, i64 2                  ; &eptr10363[2]
  %eptr10364 = getelementptr inbounds i64, i64* %cloptr10360, i64 3                  ; &eptr10364[3]
  %eptr10365 = getelementptr inbounds i64, i64* %cloptr10360, i64 4                  ; &eptr10365[4]
  store i64 %SFy$vs, i64* %eptr10362                                                 ; *eptr10362 = %SFy$vs
  store i64 %cont7101, i64* %eptr10363                                               ; *eptr10363 = %cont7101
  store i64 %VLj$f, i64* %eptr10364                                                  ; *eptr10364 = %VLj$f
  store i64 %T0D$_37foldr1, i64* %eptr10365                                          ; *eptr10365 = %T0D$_37foldr1
  %eptr10361 = getelementptr inbounds i64, i64* %cloptr10360, i64 0                  ; &cloptr10360[0]
  %f10366 = ptrtoint void(i64,i64,i64)* @lam8078 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10366, i64* %eptr10361                                                 ; store fptr
  %arg7846 = ptrtoint i64* %cloptr10360 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7113 = call i64 @prim_cons(i64 %arg7846, i64 %a6873)                     ; call prim_cons
  %cloptr10367 = inttoptr i64 %wYm$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10367)                                        ; assert function application
  %i0ptr10368 = getelementptr inbounds i64, i64* %cloptr10367, i64 0                 ; &cloptr10367[0]
  %f10370 = load i64, i64* %i0ptr10368, align 8                                      ; load; *i0ptr10368
  %fptr10369 = inttoptr i64 %f10370 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10369(i64 %wYm$_37foldr, i64 %cps_45lst7113)        ; tail call
  ret void
}


define void @lam8078(i64 %env8079, i64 %_957108, i64 %a6874) {
  %envptr10371 = inttoptr i64 %env8079 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10372 = getelementptr inbounds i64, i64* %envptr10371, i64 4                ; &envptr10371[4]
  %T0D$_37foldr1 = load i64, i64* %envptr10372, align 8                              ; load; *envptr10372
  %envptr10373 = inttoptr i64 %env8079 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10374 = getelementptr inbounds i64, i64* %envptr10373, i64 3                ; &envptr10373[3]
  %VLj$f = load i64, i64* %envptr10374, align 8                                      ; load; *envptr10374
  %envptr10375 = inttoptr i64 %env8079 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10376 = getelementptr inbounds i64, i64* %envptr10375, i64 2                ; &envptr10375[2]
  %cont7101 = load i64, i64* %envptr10376, align 8                                   ; load; *envptr10376
  %envptr10377 = inttoptr i64 %env8079 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10378 = getelementptr inbounds i64, i64* %envptr10377, i64 1                ; &envptr10377[1]
  %SFy$vs = load i64, i64* %envptr10378, align 8                                     ; load; *envptr10378
  %arg7847 = add i64 0, 0                                                            ; quoted ()
  %a6875 = call i64 @prim_cons(i64 %a6874, i64 %arg7847)                             ; call prim_cons
  %cloptr10379 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10381 = getelementptr inbounds i64, i64* %cloptr10379, i64 1                  ; &eptr10381[1]
  %eptr10382 = getelementptr inbounds i64, i64* %cloptr10379, i64 2                  ; &eptr10382[2]
  store i64 %cont7101, i64* %eptr10381                                               ; *eptr10381 = %cont7101
  store i64 %VLj$f, i64* %eptr10382                                                  ; *eptr10382 = %VLj$f
  %eptr10380 = getelementptr inbounds i64, i64* %cloptr10379, i64 0                  ; &cloptr10379[0]
  %f10383 = ptrtoint void(i64,i64,i64)* @lam8075 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10383, i64* %eptr10380                                                 ; store fptr
  %arg7852 = ptrtoint i64* %cloptr10379 to i64                                       ; closure cast; i64* -> i64
  %cloptr10384 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10385 = getelementptr inbounds i64, i64* %cloptr10384, i64 0                  ; &cloptr10384[0]
  %f10386 = ptrtoint void(i64,i64,i64,i64)* @lam8073 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10386, i64* %eptr10385                                                 ; store fptr
  %arg7851 = ptrtoint i64* %cloptr10384 to i64                                       ; closure cast; i64* -> i64
  %cloptr10387 = inttoptr i64 %T0D$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10387)                                        ; assert function application
  %i0ptr10388 = getelementptr inbounds i64, i64* %cloptr10387, i64 0                 ; &cloptr10387[0]
  %f10390 = load i64, i64* %i0ptr10388, align 8                                      ; load; *i0ptr10388
  %fptr10389 = inttoptr i64 %f10390 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10389(i64 %T0D$_37foldr1, i64 %arg7852, i64 %arg7851, i64 %a6875, i64 %SFy$vs); tail call
  ret void
}


define void @lam8075(i64 %env8076, i64 %_957109, i64 %a6876) {
  %envptr10391 = inttoptr i64 %env8076 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10392 = getelementptr inbounds i64, i64* %envptr10391, i64 2                ; &envptr10391[2]
  %VLj$f = load i64, i64* %envptr10392, align 8                                      ; load; *envptr10392
  %envptr10393 = inttoptr i64 %env8076 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10394 = getelementptr inbounds i64, i64* %envptr10393, i64 1                ; &envptr10393[1]
  %cont7101 = load i64, i64* %envptr10394, align 8                                   ; load; *envptr10394
  %cps_45lst7110 = call i64 @prim_cons(i64 %cont7101, i64 %a6876)                    ; call prim_cons
  %cloptr10395 = inttoptr i64 %VLj$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10395)                                        ; assert function application
  %i0ptr10396 = getelementptr inbounds i64, i64* %cloptr10395, i64 0                 ; &cloptr10395[0]
  %f10398 = load i64, i64* %i0ptr10396, align 8                                      ; load; *i0ptr10396
  %fptr10397 = inttoptr i64 %f10398 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10397(i64 %VLj$f, i64 %cps_45lst7110)               ; tail call
  ret void
}


define void @lam8073(i64 %env8074, i64 %cont7111, i64 %HIb$a, i64 %lPQ$b) {
  %retprim7112 = call i64 @prim_cons(i64 %HIb$a, i64 %lPQ$b)                         ; call prim_cons
  %arg7859 = add i64 0, 0                                                            ; quoted ()
  %cloptr10399 = inttoptr i64 %cont7111 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10399)                                        ; assert function application
  %i0ptr10400 = getelementptr inbounds i64, i64* %cloptr10399, i64 0                 ; &cloptr10399[0]
  %f10402 = load i64, i64* %i0ptr10400, align 8                                      ; load; *i0ptr10400
  %fptr10401 = inttoptr i64 %f10402 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10401(i64 %cont7111, i64 %arg7859, i64 %retprim7112); tail call
  ret void
}


define void @lam8070(i64 %env8071, i64 %cont7114, i64 %AHM$x) {
  %retprim7115 = call i64 @prim_car(i64 %AHM$x)                                      ; call prim_car
  %arg7863 = add i64 0, 0                                                            ; quoted ()
  %cloptr10403 = inttoptr i64 %cont7114 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10403)                                        ; assert function application
  %i0ptr10404 = getelementptr inbounds i64, i64* %cloptr10403, i64 0                 ; &cloptr10403[0]
  %f10406 = load i64, i64* %i0ptr10404, align 8                                      ; load; *i0ptr10404
  %fptr10405 = inttoptr i64 %f10406 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10405(i64 %cont7114, i64 %arg7863, i64 %retprim7115); tail call
  ret void
}


define void @lam8067(i64 %env8068, i64 %cont7116, i64 %D2S$x) {
  %retprim7117 = call i64 @prim_cdr(i64 %D2S$x)                                      ; call prim_cdr
  %arg7867 = add i64 0, 0                                                            ; quoted ()
  %cloptr10407 = inttoptr i64 %cont7116 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10407)                                        ; assert function application
  %i0ptr10408 = getelementptr inbounds i64, i64* %cloptr10407, i64 0                 ; &cloptr10407[0]
  %f10410 = load i64, i64* %i0ptr10408, align 8                                      ; load; *i0ptr10408
  %fptr10409 = inttoptr i64 %f10410 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10409(i64 %cont7116, i64 %arg7867, i64 %retprim7117); tail call
  ret void
}


define void @lam8063(i64 %env8064, i64 %cont7118, i64 %bdK$lst, i64 %wL9$b) {
  %cmp10411 = icmp eq i64 %wL9$b, 15                                                 ; false?
  br i1 %cmp10411, label %else10413, label %then10412                                ; if

then10412:
  %arg7870 = add i64 0, 0                                                            ; quoted ()
  %cloptr10414 = inttoptr i64 %cont7118 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10414)                                        ; assert function application
  %i0ptr10415 = getelementptr inbounds i64, i64* %cloptr10414, i64 0                 ; &cloptr10414[0]
  %f10417 = load i64, i64* %i0ptr10415, align 8                                      ; load; *i0ptr10415
  %fptr10416 = inttoptr i64 %f10417 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10416(i64 %cont7118, i64 %arg7870, i64 %wL9$b)      ; tail call
  ret void

else10413:
  %retprim7119 = call i64 @prim_null_63(i64 %bdK$lst)                                ; call prim_null_63
  %arg7874 = add i64 0, 0                                                            ; quoted ()
  %cloptr10418 = inttoptr i64 %cont7118 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10418)                                        ; assert function application
  %i0ptr10419 = getelementptr inbounds i64, i64* %cloptr10418, i64 0                 ; &cloptr10418[0]
  %f10421 = load i64, i64* %i0ptr10419, align 8                                      ; load; *i0ptr10419
  %fptr10420 = inttoptr i64 %f10421 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10420(i64 %cont7118, i64 %arg7874, i64 %retprim7119); tail call
  ret void
}


define void @lam8056(i64 %env8057, i64 %cont7122, i64 %KIX$_37foldl1) {
  %arg7877 = add i64 0, 0                                                            ; quoted ()
  %cloptr10422 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10424 = getelementptr inbounds i64, i64* %cloptr10422, i64 1                  ; &eptr10424[1]
  store i64 %KIX$_37foldl1, i64* %eptr10424                                          ; *eptr10424 = %KIX$_37foldl1
  %eptr10423 = getelementptr inbounds i64, i64* %cloptr10422, i64 0                  ; &cloptr10422[0]
  %f10425 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8053 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10425, i64* %eptr10423                                                 ; store fptr
  %arg7876 = ptrtoint i64* %cloptr10422 to i64                                       ; closure cast; i64* -> i64
  %cloptr10426 = inttoptr i64 %cont7122 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10426)                                        ; assert function application
  %i0ptr10427 = getelementptr inbounds i64, i64* %cloptr10426, i64 0                 ; &cloptr10426[0]
  %f10429 = load i64, i64* %i0ptr10427, align 8                                      ; load; *i0ptr10427
  %fptr10428 = inttoptr i64 %f10429 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10428(i64 %cont7122, i64 %arg7877, i64 %arg7876)    ; tail call
  ret void
}


define void @lam8053(i64 %env8054, i64 %cont7123, i64 %Ny4$f, i64 %XAf$acc, i64 %VRi$lst) {
  %envptr10430 = inttoptr i64 %env8054 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10431 = getelementptr inbounds i64, i64* %envptr10430, i64 1                ; &envptr10430[1]
  %KIX$_37foldl1 = load i64, i64* %envptr10431, align 8                              ; load; *envptr10431
  %a6863 = call i64 @prim_null_63(i64 %VRi$lst)                                      ; call prim_null_63
  %cmp10432 = icmp eq i64 %a6863, 15                                                 ; false?
  br i1 %cmp10432, label %else10434, label %then10433                                ; if

then10433:
  %arg7881 = add i64 0, 0                                                            ; quoted ()
  %cloptr10435 = inttoptr i64 %cont7123 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10435)                                        ; assert function application
  %i0ptr10436 = getelementptr inbounds i64, i64* %cloptr10435, i64 0                 ; &cloptr10435[0]
  %f10438 = load i64, i64* %i0ptr10436, align 8                                      ; load; *i0ptr10436
  %fptr10437 = inttoptr i64 %f10438 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10437(i64 %cont7123, i64 %arg7881, i64 %XAf$acc)    ; tail call
  ret void

else10434:
  %a6864 = call i64 @prim_car(i64 %VRi$lst)                                          ; call prim_car
  %cloptr10439 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10441 = getelementptr inbounds i64, i64* %cloptr10439, i64 1                  ; &eptr10441[1]
  %eptr10442 = getelementptr inbounds i64, i64* %cloptr10439, i64 2                  ; &eptr10442[2]
  %eptr10443 = getelementptr inbounds i64, i64* %cloptr10439, i64 3                  ; &eptr10443[3]
  %eptr10444 = getelementptr inbounds i64, i64* %cloptr10439, i64 4                  ; &eptr10444[4]
  store i64 %VRi$lst, i64* %eptr10441                                                ; *eptr10441 = %VRi$lst
  store i64 %Ny4$f, i64* %eptr10442                                                  ; *eptr10442 = %Ny4$f
  store i64 %KIX$_37foldl1, i64* %eptr10443                                          ; *eptr10443 = %KIX$_37foldl1
  store i64 %cont7123, i64* %eptr10444                                               ; *eptr10444 = %cont7123
  %eptr10440 = getelementptr inbounds i64, i64* %cloptr10439, i64 0                  ; &cloptr10439[0]
  %f10445 = ptrtoint void(i64,i64,i64)* @lam8051 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10445, i64* %eptr10440                                                 ; store fptr
  %arg7886 = ptrtoint i64* %cloptr10439 to i64                                       ; closure cast; i64* -> i64
  %cloptr10446 = inttoptr i64 %Ny4$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10446)                                        ; assert function application
  %i0ptr10447 = getelementptr inbounds i64, i64* %cloptr10446, i64 0                 ; &cloptr10446[0]
  %f10449 = load i64, i64* %i0ptr10447, align 8                                      ; load; *i0ptr10447
  %fptr10448 = inttoptr i64 %f10449 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10448(i64 %Ny4$f, i64 %arg7886, i64 %a6864, i64 %XAf$acc); tail call
  ret void
}


define void @lam8051(i64 %env8052, i64 %_957124, i64 %a6865) {
  %envptr10450 = inttoptr i64 %env8052 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10451 = getelementptr inbounds i64, i64* %envptr10450, i64 4                ; &envptr10450[4]
  %cont7123 = load i64, i64* %envptr10451, align 8                                   ; load; *envptr10451
  %envptr10452 = inttoptr i64 %env8052 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10453 = getelementptr inbounds i64, i64* %envptr10452, i64 3                ; &envptr10452[3]
  %KIX$_37foldl1 = load i64, i64* %envptr10453, align 8                              ; load; *envptr10453
  %envptr10454 = inttoptr i64 %env8052 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10455 = getelementptr inbounds i64, i64* %envptr10454, i64 2                ; &envptr10454[2]
  %Ny4$f = load i64, i64* %envptr10455, align 8                                      ; load; *envptr10455
  %envptr10456 = inttoptr i64 %env8052 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10457 = getelementptr inbounds i64, i64* %envptr10456, i64 1                ; &envptr10456[1]
  %VRi$lst = load i64, i64* %envptr10457, align 8                                    ; load; *envptr10457
  %a6866 = call i64 @prim_cdr(i64 %VRi$lst)                                          ; call prim_cdr
  %cloptr10458 = inttoptr i64 %KIX$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10458)                                        ; assert function application
  %i0ptr10459 = getelementptr inbounds i64, i64* %cloptr10458, i64 0                 ; &cloptr10458[0]
  %f10461 = load i64, i64* %i0ptr10459, align 8                                      ; load; *i0ptr10459
  %fptr10460 = inttoptr i64 %f10461 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10460(i64 %KIX$_37foldl1, i64 %cont7123, i64 %Ny4$f, i64 %a6865, i64 %a6866); tail call
  ret void
}


define void @lam8048(i64 %env8049, i64 %cont7125, i64 %Cog$_37length) {
  %arg7895 = add i64 0, 0                                                            ; quoted ()
  %cloptr10462 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10464 = getelementptr inbounds i64, i64* %cloptr10462, i64 1                  ; &eptr10464[1]
  store i64 %Cog$_37length, i64* %eptr10464                                          ; *eptr10464 = %Cog$_37length
  %eptr10463 = getelementptr inbounds i64, i64* %cloptr10462, i64 0                  ; &cloptr10462[0]
  %f10465 = ptrtoint void(i64,i64,i64)* @lam8045 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10465, i64* %eptr10463                                                 ; store fptr
  %arg7894 = ptrtoint i64* %cloptr10462 to i64                                       ; closure cast; i64* -> i64
  %cloptr10466 = inttoptr i64 %cont7125 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10466)                                        ; assert function application
  %i0ptr10467 = getelementptr inbounds i64, i64* %cloptr10466, i64 0                 ; &cloptr10466[0]
  %f10469 = load i64, i64* %i0ptr10467, align 8                                      ; load; *i0ptr10467
  %fptr10468 = inttoptr i64 %f10469 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10468(i64 %cont7125, i64 %arg7895, i64 %arg7894)    ; tail call
  ret void
}


define void @lam8045(i64 %env8046, i64 %cont7126, i64 %PdE$lst) {
  %envptr10470 = inttoptr i64 %env8046 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10471 = getelementptr inbounds i64, i64* %envptr10470, i64 1                ; &envptr10470[1]
  %Cog$_37length = load i64, i64* %envptr10471, align 8                              ; load; *envptr10471
  %a6860 = call i64 @prim_null_63(i64 %PdE$lst)                                      ; call prim_null_63
  %cmp10472 = icmp eq i64 %a6860, 15                                                 ; false?
  br i1 %cmp10472, label %else10474, label %then10473                                ; if

then10473:
  %arg7899 = add i64 0, 0                                                            ; quoted ()
  %arg7898 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10475 = inttoptr i64 %cont7126 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10475)                                        ; assert function application
  %i0ptr10476 = getelementptr inbounds i64, i64* %cloptr10475, i64 0                 ; &cloptr10475[0]
  %f10478 = load i64, i64* %i0ptr10476, align 8                                      ; load; *i0ptr10476
  %fptr10477 = inttoptr i64 %f10478 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10477(i64 %cont7126, i64 %arg7899, i64 %arg7898)    ; tail call
  ret void

else10474:
  %a6861 = call i64 @prim_cdr(i64 %PdE$lst)                                          ; call prim_cdr
  %cloptr10479 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10481 = getelementptr inbounds i64, i64* %cloptr10479, i64 1                  ; &eptr10481[1]
  store i64 %cont7126, i64* %eptr10481                                               ; *eptr10481 = %cont7126
  %eptr10480 = getelementptr inbounds i64, i64* %cloptr10479, i64 0                  ; &cloptr10479[0]
  %f10482 = ptrtoint void(i64,i64,i64)* @lam8043 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10482, i64* %eptr10480                                                 ; store fptr
  %arg7903 = ptrtoint i64* %cloptr10479 to i64                                       ; closure cast; i64* -> i64
  %cloptr10483 = inttoptr i64 %Cog$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10483)                                        ; assert function application
  %i0ptr10484 = getelementptr inbounds i64, i64* %cloptr10483, i64 0                 ; &cloptr10483[0]
  %f10486 = load i64, i64* %i0ptr10484, align 8                                      ; load; *i0ptr10484
  %fptr10485 = inttoptr i64 %f10486 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10485(i64 %Cog$_37length, i64 %arg7903, i64 %a6861) ; tail call
  ret void
}


define void @lam8043(i64 %env8044, i64 %_957127, i64 %a6862) {
  %envptr10487 = inttoptr i64 %env8044 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10488 = getelementptr inbounds i64, i64* %envptr10487, i64 1                ; &envptr10487[1]
  %cont7126 = load i64, i64* %envptr10488, align 8                                   ; load; *envptr10488
  %arg7906 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7128 = call i64 @prim__43(i64 %arg7906, i64 %a6862)                        ; call prim__43
  %arg7908 = add i64 0, 0                                                            ; quoted ()
  %cloptr10489 = inttoptr i64 %cont7126 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10489)                                        ; assert function application
  %i0ptr10490 = getelementptr inbounds i64, i64* %cloptr10489, i64 0                 ; &cloptr10489[0]
  %f10492 = load i64, i64* %i0ptr10490, align 8                                      ; load; *i0ptr10490
  %fptr10491 = inttoptr i64 %f10492 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10491(i64 %cont7126, i64 %arg7908, i64 %retprim7128); tail call
  ret void
}


define void @lam8037(i64 %env8038, i64 %cont7129, i64 %kdZ$_37take) {
  %arg7911 = add i64 0, 0                                                            ; quoted ()
  %cloptr10493 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10495 = getelementptr inbounds i64, i64* %cloptr10493, i64 1                  ; &eptr10495[1]
  store i64 %kdZ$_37take, i64* %eptr10495                                            ; *eptr10495 = %kdZ$_37take
  %eptr10494 = getelementptr inbounds i64, i64* %cloptr10493, i64 0                  ; &cloptr10493[0]
  %f10496 = ptrtoint void(i64,i64,i64,i64)* @lam8034 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10496, i64* %eptr10494                                                 ; store fptr
  %arg7910 = ptrtoint i64* %cloptr10493 to i64                                       ; closure cast; i64* -> i64
  %cloptr10497 = inttoptr i64 %cont7129 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10497)                                        ; assert function application
  %i0ptr10498 = getelementptr inbounds i64, i64* %cloptr10497, i64 0                 ; &cloptr10497[0]
  %f10500 = load i64, i64* %i0ptr10498, align 8                                      ; load; *i0ptr10498
  %fptr10499 = inttoptr i64 %f10500 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10499(i64 %cont7129, i64 %arg7911, i64 %arg7910)    ; tail call
  ret void
}


define void @lam8034(i64 %env8035, i64 %cont7130, i64 %fUY$lst, i64 %CUG$n) {
  %envptr10501 = inttoptr i64 %env8035 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10502 = getelementptr inbounds i64, i64* %envptr10501, i64 1                ; &envptr10501[1]
  %kdZ$_37take = load i64, i64* %envptr10502, align 8                                ; load; *envptr10502
  %arg7913 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6854 = call i64 @prim__61(i64 %CUG$n, i64 %arg7913)                              ; call prim__61
  %cmp10503 = icmp eq i64 %a6854, 15                                                 ; false?
  br i1 %cmp10503, label %else10505, label %then10504                                ; if

then10504:
  %arg7916 = add i64 0, 0                                                            ; quoted ()
  %arg7915 = add i64 0, 0                                                            ; quoted ()
  %cloptr10506 = inttoptr i64 %cont7130 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10506)                                        ; assert function application
  %i0ptr10507 = getelementptr inbounds i64, i64* %cloptr10506, i64 0                 ; &cloptr10506[0]
  %f10509 = load i64, i64* %i0ptr10507, align 8                                      ; load; *i0ptr10507
  %fptr10508 = inttoptr i64 %f10509 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10508(i64 %cont7130, i64 %arg7916, i64 %arg7915)    ; tail call
  ret void

else10505:
  %a6855 = call i64 @prim_null_63(i64 %fUY$lst)                                      ; call prim_null_63
  %cmp10510 = icmp eq i64 %a6855, 15                                                 ; false?
  br i1 %cmp10510, label %else10512, label %then10511                                ; if

then10511:
  %arg7920 = add i64 0, 0                                                            ; quoted ()
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10513 = inttoptr i64 %cont7130 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10513)                                        ; assert function application
  %i0ptr10514 = getelementptr inbounds i64, i64* %cloptr10513, i64 0                 ; &cloptr10513[0]
  %f10516 = load i64, i64* %i0ptr10514, align 8                                      ; load; *i0ptr10514
  %fptr10515 = inttoptr i64 %f10516 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10515(i64 %cont7130, i64 %arg7920, i64 %arg7919)    ; tail call
  ret void

else10512:
  %a6856 = call i64 @prim_car(i64 %fUY$lst)                                          ; call prim_car
  %a6857 = call i64 @prim_cdr(i64 %fUY$lst)                                          ; call prim_cdr
  %arg7924 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6858 = call i64 @prim__45(i64 %CUG$n, i64 %arg7924)                              ; call prim__45
  %cloptr10517 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10519 = getelementptr inbounds i64, i64* %cloptr10517, i64 1                  ; &eptr10519[1]
  %eptr10520 = getelementptr inbounds i64, i64* %cloptr10517, i64 2                  ; &eptr10520[2]
  store i64 %a6856, i64* %eptr10519                                                  ; *eptr10519 = %a6856
  store i64 %cont7130, i64* %eptr10520                                               ; *eptr10520 = %cont7130
  %eptr10518 = getelementptr inbounds i64, i64* %cloptr10517, i64 0                  ; &cloptr10517[0]
  %f10521 = ptrtoint void(i64,i64,i64)* @lam8030 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10521, i64* %eptr10518                                                 ; store fptr
  %arg7928 = ptrtoint i64* %cloptr10517 to i64                                       ; closure cast; i64* -> i64
  %cloptr10522 = inttoptr i64 %kdZ$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10522)                                        ; assert function application
  %i0ptr10523 = getelementptr inbounds i64, i64* %cloptr10522, i64 0                 ; &cloptr10522[0]
  %f10525 = load i64, i64* %i0ptr10523, align 8                                      ; load; *i0ptr10523
  %fptr10524 = inttoptr i64 %f10525 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10524(i64 %kdZ$_37take, i64 %arg7928, i64 %a6857, i64 %a6858); tail call
  ret void
}


define void @lam8030(i64 %env8031, i64 %_957131, i64 %a6859) {
  %envptr10526 = inttoptr i64 %env8031 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10527 = getelementptr inbounds i64, i64* %envptr10526, i64 2                ; &envptr10526[2]
  %cont7130 = load i64, i64* %envptr10527, align 8                                   ; load; *envptr10527
  %envptr10528 = inttoptr i64 %env8031 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10529 = getelementptr inbounds i64, i64* %envptr10528, i64 1                ; &envptr10528[1]
  %a6856 = load i64, i64* %envptr10529, align 8                                      ; load; *envptr10529
  %retprim7132 = call i64 @prim_cons(i64 %a6856, i64 %a6859)                         ; call prim_cons
  %arg7933 = add i64 0, 0                                                            ; quoted ()
  %cloptr10530 = inttoptr i64 %cont7130 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10530)                                        ; assert function application
  %i0ptr10531 = getelementptr inbounds i64, i64* %cloptr10530, i64 0                 ; &cloptr10530[0]
  %f10533 = load i64, i64* %i0ptr10531, align 8                                      ; load; *i0ptr10531
  %fptr10532 = inttoptr i64 %f10533 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10532(i64 %cont7130, i64 %arg7933, i64 %retprim7132); tail call
  ret void
}


define void @lam8023(i64 %env8024, i64 %cont7133, i64 %caf$_37map) {
  %arg7936 = add i64 0, 0                                                            ; quoted ()
  %cloptr10534 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10534, i64 1                  ; &eptr10536[1]
  store i64 %caf$_37map, i64* %eptr10536                                             ; *eptr10536 = %caf$_37map
  %eptr10535 = getelementptr inbounds i64, i64* %cloptr10534, i64 0                  ; &cloptr10534[0]
  %f10537 = ptrtoint void(i64,i64,i64,i64)* @lam8020 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10537, i64* %eptr10535                                                 ; store fptr
  %arg7935 = ptrtoint i64* %cloptr10534 to i64                                       ; closure cast; i64* -> i64
  %cloptr10538 = inttoptr i64 %cont7133 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10538)                                        ; assert function application
  %i0ptr10539 = getelementptr inbounds i64, i64* %cloptr10538, i64 0                 ; &cloptr10538[0]
  %f10541 = load i64, i64* %i0ptr10539, align 8                                      ; load; *i0ptr10539
  %fptr10540 = inttoptr i64 %f10541 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10540(i64 %cont7133, i64 %arg7936, i64 %arg7935)    ; tail call
  ret void
}


define void @lam8020(i64 %env8021, i64 %cont7134, i64 %sl1$f, i64 %DXV$lst) {
  %envptr10542 = inttoptr i64 %env8021 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10543 = getelementptr inbounds i64, i64* %envptr10542, i64 1                ; &envptr10542[1]
  %caf$_37map = load i64, i64* %envptr10543, align 8                                 ; load; *envptr10543
  %a6849 = call i64 @prim_null_63(i64 %DXV$lst)                                      ; call prim_null_63
  %cmp10544 = icmp eq i64 %a6849, 15                                                 ; false?
  br i1 %cmp10544, label %else10546, label %then10545                                ; if

then10545:
  %arg7940 = add i64 0, 0                                                            ; quoted ()
  %arg7939 = add i64 0, 0                                                            ; quoted ()
  %cloptr10547 = inttoptr i64 %cont7134 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10547)                                        ; assert function application
  %i0ptr10548 = getelementptr inbounds i64, i64* %cloptr10547, i64 0                 ; &cloptr10547[0]
  %f10550 = load i64, i64* %i0ptr10548, align 8                                      ; load; *i0ptr10548
  %fptr10549 = inttoptr i64 %f10550 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10549(i64 %cont7134, i64 %arg7940, i64 %arg7939)    ; tail call
  ret void

else10546:
  %a6850 = call i64 @prim_car(i64 %DXV$lst)                                          ; call prim_car
  %cloptr10551 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10553 = getelementptr inbounds i64, i64* %cloptr10551, i64 1                  ; &eptr10553[1]
  %eptr10554 = getelementptr inbounds i64, i64* %cloptr10551, i64 2                  ; &eptr10554[2]
  %eptr10555 = getelementptr inbounds i64, i64* %cloptr10551, i64 3                  ; &eptr10555[3]
  %eptr10556 = getelementptr inbounds i64, i64* %cloptr10551, i64 4                  ; &eptr10556[4]
  store i64 %caf$_37map, i64* %eptr10553                                             ; *eptr10553 = %caf$_37map
  store i64 %cont7134, i64* %eptr10554                                               ; *eptr10554 = %cont7134
  store i64 %DXV$lst, i64* %eptr10555                                                ; *eptr10555 = %DXV$lst
  store i64 %sl1$f, i64* %eptr10556                                                  ; *eptr10556 = %sl1$f
  %eptr10552 = getelementptr inbounds i64, i64* %cloptr10551, i64 0                  ; &cloptr10551[0]
  %f10557 = ptrtoint void(i64,i64,i64)* @lam8018 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10557, i64* %eptr10552                                                 ; store fptr
  %arg7944 = ptrtoint i64* %cloptr10551 to i64                                       ; closure cast; i64* -> i64
  %cloptr10558 = inttoptr i64 %sl1$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10558)                                        ; assert function application
  %i0ptr10559 = getelementptr inbounds i64, i64* %cloptr10558, i64 0                 ; &cloptr10558[0]
  %f10561 = load i64, i64* %i0ptr10559, align 8                                      ; load; *i0ptr10559
  %fptr10560 = inttoptr i64 %f10561 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10560(i64 %sl1$f, i64 %arg7944, i64 %a6850)         ; tail call
  ret void
}


define void @lam8018(i64 %env8019, i64 %_957135, i64 %a6851) {
  %envptr10562 = inttoptr i64 %env8019 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10563 = getelementptr inbounds i64, i64* %envptr10562, i64 4                ; &envptr10562[4]
  %sl1$f = load i64, i64* %envptr10563, align 8                                      ; load; *envptr10563
  %envptr10564 = inttoptr i64 %env8019 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10565 = getelementptr inbounds i64, i64* %envptr10564, i64 3                ; &envptr10564[3]
  %DXV$lst = load i64, i64* %envptr10565, align 8                                    ; load; *envptr10565
  %envptr10566 = inttoptr i64 %env8019 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10567 = getelementptr inbounds i64, i64* %envptr10566, i64 2                ; &envptr10566[2]
  %cont7134 = load i64, i64* %envptr10567, align 8                                   ; load; *envptr10567
  %envptr10568 = inttoptr i64 %env8019 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10569 = getelementptr inbounds i64, i64* %envptr10568, i64 1                ; &envptr10568[1]
  %caf$_37map = load i64, i64* %envptr10569, align 8                                 ; load; *envptr10569
  %a6852 = call i64 @prim_cdr(i64 %DXV$lst)                                          ; call prim_cdr
  %cloptr10570 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10572 = getelementptr inbounds i64, i64* %cloptr10570, i64 1                  ; &eptr10572[1]
  %eptr10573 = getelementptr inbounds i64, i64* %cloptr10570, i64 2                  ; &eptr10573[2]
  store i64 %cont7134, i64* %eptr10572                                               ; *eptr10572 = %cont7134
  store i64 %a6851, i64* %eptr10573                                                  ; *eptr10573 = %a6851
  %eptr10571 = getelementptr inbounds i64, i64* %cloptr10570, i64 0                  ; &cloptr10570[0]
  %f10574 = ptrtoint void(i64,i64,i64)* @lam8016 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10574, i64* %eptr10571                                                 ; store fptr
  %arg7949 = ptrtoint i64* %cloptr10570 to i64                                       ; closure cast; i64* -> i64
  %cloptr10575 = inttoptr i64 %caf$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10575)                                        ; assert function application
  %i0ptr10576 = getelementptr inbounds i64, i64* %cloptr10575, i64 0                 ; &cloptr10575[0]
  %f10578 = load i64, i64* %i0ptr10576, align 8                                      ; load; *i0ptr10576
  %fptr10577 = inttoptr i64 %f10578 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10577(i64 %caf$_37map, i64 %arg7949, i64 %sl1$f, i64 %a6852); tail call
  ret void
}


define void @lam8016(i64 %env8017, i64 %_957136, i64 %a6853) {
  %envptr10579 = inttoptr i64 %env8017 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10580 = getelementptr inbounds i64, i64* %envptr10579, i64 2                ; &envptr10579[2]
  %a6851 = load i64, i64* %envptr10580, align 8                                      ; load; *envptr10580
  %envptr10581 = inttoptr i64 %env8017 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10582 = getelementptr inbounds i64, i64* %envptr10581, i64 1                ; &envptr10581[1]
  %cont7134 = load i64, i64* %envptr10582, align 8                                   ; load; *envptr10582
  %retprim7137 = call i64 @prim_cons(i64 %a6851, i64 %a6853)                         ; call prim_cons
  %arg7954 = add i64 0, 0                                                            ; quoted ()
  %cloptr10583 = inttoptr i64 %cont7134 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10583)                                        ; assert function application
  %i0ptr10584 = getelementptr inbounds i64, i64* %cloptr10583, i64 0                 ; &cloptr10583[0]
  %f10586 = load i64, i64* %i0ptr10584, align 8                                      ; load; *i0ptr10584
  %fptr10585 = inttoptr i64 %f10586 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10585(i64 %cont7134, i64 %arg7954, i64 %retprim7137); tail call
  ret void
}


define void @lam8011(i64 %env8012, i64 %cont7138, i64 %t0W$_37foldr1) {
  %arg7957 = add i64 0, 0                                                            ; quoted ()
  %cloptr10587 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10589 = getelementptr inbounds i64, i64* %cloptr10587, i64 1                  ; &eptr10589[1]
  store i64 %t0W$_37foldr1, i64* %eptr10589                                          ; *eptr10589 = %t0W$_37foldr1
  %eptr10588 = getelementptr inbounds i64, i64* %cloptr10587, i64 0                  ; &cloptr10587[0]
  %f10590 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8008 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10590, i64* %eptr10588                                                 ; store fptr
  %arg7956 = ptrtoint i64* %cloptr10587 to i64                                       ; closure cast; i64* -> i64
  %cloptr10591 = inttoptr i64 %cont7138 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10591)                                        ; assert function application
  %i0ptr10592 = getelementptr inbounds i64, i64* %cloptr10591, i64 0                 ; &cloptr10591[0]
  %f10594 = load i64, i64* %i0ptr10592, align 8                                      ; load; *i0ptr10592
  %fptr10593 = inttoptr i64 %f10594 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10593(i64 %cont7138, i64 %arg7957, i64 %arg7956)    ; tail call
  ret void
}


define void @lam8008(i64 %env8009, i64 %cont7139, i64 %ekH$f, i64 %dku$acc, i64 %LeY$lst) {
  %envptr10595 = inttoptr i64 %env8009 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10596 = getelementptr inbounds i64, i64* %envptr10595, i64 1                ; &envptr10595[1]
  %t0W$_37foldr1 = load i64, i64* %envptr10596, align 8                              ; load; *envptr10596
  %a6845 = call i64 @prim_null_63(i64 %LeY$lst)                                      ; call prim_null_63
  %cmp10597 = icmp eq i64 %a6845, 15                                                 ; false?
  br i1 %cmp10597, label %else10599, label %then10598                                ; if

then10598:
  %arg7961 = add i64 0, 0                                                            ; quoted ()
  %cloptr10600 = inttoptr i64 %cont7139 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10600)                                        ; assert function application
  %i0ptr10601 = getelementptr inbounds i64, i64* %cloptr10600, i64 0                 ; &cloptr10600[0]
  %f10603 = load i64, i64* %i0ptr10601, align 8                                      ; load; *i0ptr10601
  %fptr10602 = inttoptr i64 %f10603 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10602(i64 %cont7139, i64 %arg7961, i64 %dku$acc)    ; tail call
  ret void

else10599:
  %a6846 = call i64 @prim_car(i64 %LeY$lst)                                          ; call prim_car
  %a6847 = call i64 @prim_cdr(i64 %LeY$lst)                                          ; call prim_cdr
  %cloptr10604 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10606 = getelementptr inbounds i64, i64* %cloptr10604, i64 1                  ; &eptr10606[1]
  %eptr10607 = getelementptr inbounds i64, i64* %cloptr10604, i64 2                  ; &eptr10607[2]
  %eptr10608 = getelementptr inbounds i64, i64* %cloptr10604, i64 3                  ; &eptr10608[3]
  store i64 %ekH$f, i64* %eptr10606                                                  ; *eptr10606 = %ekH$f
  store i64 %cont7139, i64* %eptr10607                                               ; *eptr10607 = %cont7139
  store i64 %a6846, i64* %eptr10608                                                  ; *eptr10608 = %a6846
  %eptr10605 = getelementptr inbounds i64, i64* %cloptr10604, i64 0                  ; &cloptr10604[0]
  %f10609 = ptrtoint void(i64,i64,i64)* @lam8006 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10609, i64* %eptr10605                                                 ; store fptr
  %arg7968 = ptrtoint i64* %cloptr10604 to i64                                       ; closure cast; i64* -> i64
  %cloptr10610 = inttoptr i64 %t0W$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10610)                                        ; assert function application
  %i0ptr10611 = getelementptr inbounds i64, i64* %cloptr10610, i64 0                 ; &cloptr10610[0]
  %f10613 = load i64, i64* %i0ptr10611, align 8                                      ; load; *i0ptr10611
  %fptr10612 = inttoptr i64 %f10613 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10612(i64 %t0W$_37foldr1, i64 %arg7968, i64 %ekH$f, i64 %dku$acc, i64 %a6847); tail call
  ret void
}


define void @lam8006(i64 %env8007, i64 %_957140, i64 %a6848) {
  %envptr10614 = inttoptr i64 %env8007 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10615 = getelementptr inbounds i64, i64* %envptr10614, i64 3                ; &envptr10614[3]
  %a6846 = load i64, i64* %envptr10615, align 8                                      ; load; *envptr10615
  %envptr10616 = inttoptr i64 %env8007 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10617 = getelementptr inbounds i64, i64* %envptr10616, i64 2                ; &envptr10616[2]
  %cont7139 = load i64, i64* %envptr10617, align 8                                   ; load; *envptr10617
  %envptr10618 = inttoptr i64 %env8007 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10619 = getelementptr inbounds i64, i64* %envptr10618, i64 1                ; &envptr10618[1]
  %ekH$f = load i64, i64* %envptr10619, align 8                                      ; load; *envptr10619
  %cloptr10620 = inttoptr i64 %ekH$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10620)                                        ; assert function application
  %i0ptr10621 = getelementptr inbounds i64, i64* %cloptr10620, i64 0                 ; &cloptr10620[0]
  %f10623 = load i64, i64* %i0ptr10621, align 8                                      ; load; *i0ptr10621
  %fptr10622 = inttoptr i64 %f10623 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10622(i64 %ekH$f, i64 %cont7139, i64 %a6846, i64 %a6848); tail call
  ret void
}


define void @lam8003(i64 %env8004, i64 %cont7142, i64 %gWF$y) {
  %arg7975 = add i64 0, 0                                                            ; quoted ()
  %cloptr10624 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10626 = getelementptr inbounds i64, i64* %cloptr10624, i64 1                  ; &eptr10626[1]
  store i64 %gWF$y, i64* %eptr10626                                                  ; *eptr10626 = %gWF$y
  %eptr10625 = getelementptr inbounds i64, i64* %cloptr10624, i64 0                  ; &cloptr10624[0]
  %f10627 = ptrtoint void(i64,i64,i64)* @lam8000 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10627, i64* %eptr10625                                                 ; store fptr
  %arg7974 = ptrtoint i64* %cloptr10624 to i64                                       ; closure cast; i64* -> i64
  %cloptr10628 = inttoptr i64 %cont7142 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10628)                                        ; assert function application
  %i0ptr10629 = getelementptr inbounds i64, i64* %cloptr10628, i64 0                 ; &cloptr10628[0]
  %f10631 = load i64, i64* %i0ptr10629, align 8                                      ; load; *i0ptr10629
  %fptr10630 = inttoptr i64 %f10631 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10630(i64 %cont7142, i64 %arg7975, i64 %arg7974)    ; tail call
  ret void
}


define void @lam8000(i64 %env8001, i64 %cont7143, i64 %aJz$f) {
  %envptr10632 = inttoptr i64 %env8001 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10633 = getelementptr inbounds i64, i64* %envptr10632, i64 1                ; &envptr10632[1]
  %gWF$y = load i64, i64* %envptr10633, align 8                                      ; load; *envptr10633
  %cloptr10634 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10636 = getelementptr inbounds i64, i64* %cloptr10634, i64 1                  ; &eptr10636[1]
  %eptr10637 = getelementptr inbounds i64, i64* %cloptr10634, i64 2                  ; &eptr10637[2]
  store i64 %aJz$f, i64* %eptr10636                                                  ; *eptr10636 = %aJz$f
  store i64 %gWF$y, i64* %eptr10637                                                  ; *eptr10637 = %gWF$y
  %eptr10635 = getelementptr inbounds i64, i64* %cloptr10634, i64 0                  ; &cloptr10634[0]
  %f10638 = ptrtoint void(i64,i64)* @lam7998 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10638, i64* %eptr10635                                                 ; store fptr
  %arg7977 = ptrtoint i64* %cloptr10634 to i64                                       ; closure cast; i64* -> i64
  %cloptr10639 = inttoptr i64 %aJz$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10639)                                        ; assert function application
  %i0ptr10640 = getelementptr inbounds i64, i64* %cloptr10639, i64 0                 ; &cloptr10639[0]
  %f10642 = load i64, i64* %i0ptr10640, align 8                                      ; load; *i0ptr10640
  %fptr10641 = inttoptr i64 %f10642 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10641(i64 %aJz$f, i64 %cont7143, i64 %arg7977)      ; tail call
  ret void
}


define void @lam7998(i64 %env7999, i64 %wei$args7145) {
  %envptr10643 = inttoptr i64 %env7999 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10644 = getelementptr inbounds i64, i64* %envptr10643, i64 2                ; &envptr10643[2]
  %gWF$y = load i64, i64* %envptr10644, align 8                                      ; load; *envptr10644
  %envptr10645 = inttoptr i64 %env7999 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10646 = getelementptr inbounds i64, i64* %envptr10645, i64 1                ; &envptr10645[1]
  %aJz$f = load i64, i64* %envptr10646, align 8                                      ; load; *envptr10646
  %cont7144 = call i64 @prim_car(i64 %wei$args7145)                                  ; call prim_car
  %wei$args = call i64 @prim_cdr(i64 %wei$args7145)                                  ; call prim_cdr
  %cloptr10647 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10649 = getelementptr inbounds i64, i64* %cloptr10647, i64 1                  ; &eptr10649[1]
  %eptr10650 = getelementptr inbounds i64, i64* %cloptr10647, i64 2                  ; &eptr10650[2]
  %eptr10651 = getelementptr inbounds i64, i64* %cloptr10647, i64 3                  ; &eptr10651[3]
  store i64 %aJz$f, i64* %eptr10649                                                  ; *eptr10649 = %aJz$f
  store i64 %cont7144, i64* %eptr10650                                               ; *eptr10650 = %cont7144
  store i64 %wei$args, i64* %eptr10651                                               ; *eptr10651 = %wei$args
  %eptr10648 = getelementptr inbounds i64, i64* %cloptr10647, i64 0                  ; &cloptr10647[0]
  %f10652 = ptrtoint void(i64,i64,i64)* @lam7996 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10652, i64* %eptr10648                                                 ; store fptr
  %arg7983 = ptrtoint i64* %cloptr10647 to i64                                       ; closure cast; i64* -> i64
  %cloptr10653 = inttoptr i64 %gWF$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10653)                                        ; assert function application
  %i0ptr10654 = getelementptr inbounds i64, i64* %cloptr10653, i64 0                 ; &cloptr10653[0]
  %f10656 = load i64, i64* %i0ptr10654, align 8                                      ; load; *i0ptr10654
  %fptr10655 = inttoptr i64 %f10656 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10655(i64 %gWF$y, i64 %arg7983, i64 %gWF$y)         ; tail call
  ret void
}


define void @lam7996(i64 %env7997, i64 %_957146, i64 %a6843) {
  %envptr10657 = inttoptr i64 %env7997 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10658 = getelementptr inbounds i64, i64* %envptr10657, i64 3                ; &envptr10657[3]
  %wei$args = load i64, i64* %envptr10658, align 8                                   ; load; *envptr10658
  %envptr10659 = inttoptr i64 %env7997 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10660 = getelementptr inbounds i64, i64* %envptr10659, i64 2                ; &envptr10659[2]
  %cont7144 = load i64, i64* %envptr10660, align 8                                   ; load; *envptr10660
  %envptr10661 = inttoptr i64 %env7997 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10662 = getelementptr inbounds i64, i64* %envptr10661, i64 1                ; &envptr10661[1]
  %aJz$f = load i64, i64* %envptr10662, align 8                                      ; load; *envptr10662
  %cloptr10663 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10665 = getelementptr inbounds i64, i64* %cloptr10663, i64 1                  ; &eptr10665[1]
  %eptr10666 = getelementptr inbounds i64, i64* %cloptr10663, i64 2                  ; &eptr10666[2]
  store i64 %cont7144, i64* %eptr10665                                               ; *eptr10665 = %cont7144
  store i64 %wei$args, i64* %eptr10666                                               ; *eptr10666 = %wei$args
  %eptr10664 = getelementptr inbounds i64, i64* %cloptr10663, i64 0                  ; &cloptr10663[0]
  %f10667 = ptrtoint void(i64,i64,i64)* @lam7994 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10667, i64* %eptr10664                                                 ; store fptr
  %arg7986 = ptrtoint i64* %cloptr10663 to i64                                       ; closure cast; i64* -> i64
  %cloptr10668 = inttoptr i64 %a6843 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %a6843, i64 %arg7986, i64 %aJz$f)         ; tail call
  ret void
}


define void @lam7994(i64 %env7995, i64 %_957147, i64 %a6844) {
  %envptr10672 = inttoptr i64 %env7995 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10673 = getelementptr inbounds i64, i64* %envptr10672, i64 2                ; &envptr10672[2]
  %wei$args = load i64, i64* %envptr10673, align 8                                   ; load; *envptr10673
  %envptr10674 = inttoptr i64 %env7995 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10675 = getelementptr inbounds i64, i64* %envptr10674, i64 1                ; &envptr10674[1]
  %cont7144 = load i64, i64* %envptr10675, align 8                                   ; load; *envptr10675
  %cps_45lst7148 = call i64 @prim_cons(i64 %cont7144, i64 %wei$args)                 ; call prim_cons
  %cloptr10676 = inttoptr i64 %a6844 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10676)                                        ; assert function application
  %i0ptr10677 = getelementptr inbounds i64, i64* %cloptr10676, i64 0                 ; &cloptr10676[0]
  %f10679 = load i64, i64* %i0ptr10677, align 8                                      ; load; *i0ptr10677
  %fptr10678 = inttoptr i64 %f10679 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10678(i64 %a6844, i64 %cps_45lst7148)               ; tail call
  ret void
}





@sym9256 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
