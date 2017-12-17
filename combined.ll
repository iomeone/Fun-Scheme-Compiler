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
  %cloptr9830 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9831 = getelementptr inbounds i64, i64* %cloptr9830, i64 0                    ; &cloptr9830[0]
  %f9832 = ptrtoint void(i64,i64)* @lam9828 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9832, i64* %eptr9831                                                   ; store fptr
  %arg7176 = ptrtoint i64* %cloptr9830 to i64                                        ; closure cast; i64* -> i64
  %cloptr9833 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9834 = getelementptr inbounds i64, i64* %cloptr9833, i64 0                    ; &cloptr9833[0]
  %f9835 = ptrtoint void(i64,i64)* @lam9825 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9835, i64* %eptr9834                                                   ; store fptr
  %arg7175 = ptrtoint i64* %cloptr9833 to i64                                        ; closure cast; i64* -> i64
  %cloptr9836 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9837 = getelementptr inbounds i64, i64* %cloptr9836, i64 0                    ; &cloptr9836[0]
  %f9838 = ptrtoint void(i64,i64)* @lam9185 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9838, i64* %eptr9837                                                   ; store fptr
  %arg7174 = ptrtoint i64* %cloptr9836 to i64                                        ; closure cast; i64* -> i64
  %rva9170 = add i64 0, 0                                                            ; quoted ()
  %rva9169 = call i64 @prim_cons(i64 %arg7174, i64 %rva9170)                         ; call prim_cons
  %rva9168 = call i64 @prim_cons(i64 %arg7175, i64 %rva9169)                         ; call prim_cons
  %cloptr9839 = inttoptr i64 %arg7176 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9839)                                         ; assert function application
  %i0ptr9840 = getelementptr inbounds i64, i64* %cloptr9839, i64 0                   ; &cloptr9839[0]
  %f9842 = load i64, i64* %i0ptr9840, align 8                                        ; load; *i0ptr9840
  %fptr9841 = inttoptr i64 %f9842 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9841(i64 %arg7176, i64 %rva9168)                    ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam9828(i64 %env9829, i64 %rvp8071) {
  %cont7166 = call i64 @prim_car(i64 %rvp8071)                                       ; call prim_car
  %rvp8070 = call i64 @prim_cdr(i64 %rvp8071)                                        ; call prim_cdr
  %X96$yu = call i64 @prim_car(i64 %rvp8070)                                         ; call prim_car
  %na8066 = call i64 @prim_cdr(i64 %rvp8070)                                         ; call prim_cdr
  %rva8069 = add i64 0, 0                                                            ; quoted ()
  %rva8068 = call i64 @prim_cons(i64 %X96$yu, i64 %rva8069)                          ; call prim_cons
  %rva8067 = call i64 @prim_cons(i64 %cont7166, i64 %rva8068)                        ; call prim_cons
  %cloptr9843 = inttoptr i64 %X96$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9843)                                         ; assert function application
  %i0ptr9844 = getelementptr inbounds i64, i64* %cloptr9843, i64 0                   ; &cloptr9843[0]
  %f9846 = load i64, i64* %i0ptr9844, align 8                                        ; load; *i0ptr9844
  %fptr9845 = inttoptr i64 %f9846 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9845(i64 %X96$yu, i64 %rva8067)                     ; tail call
  ret void
}


define void @lam9825(i64 %env9826, i64 %rvp9139) {
  %_956969 = call i64 @prim_car(i64 %rvp9139)                                        ; call prim_car
  %rvp9138 = call i64 @prim_cdr(i64 %rvp9139)                                        ; call prim_cdr
  %zpC$Ycmb = call i64 @prim_car(i64 %rvp9138)                                       ; call prim_car
  %na8073 = call i64 @prim_cdr(i64 %rvp9138)                                         ; call prim_cdr
  %cloptr9847 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9849 = getelementptr inbounds i64, i64* %cloptr9847, i64 1                    ; &eptr9849[1]
  store i64 %zpC$Ycmb, i64* %eptr9849                                                ; *eptr9849 = %zpC$Ycmb
  %eptr9848 = getelementptr inbounds i64, i64* %cloptr9847, i64 0                    ; &cloptr9847[0]
  %f9850 = ptrtoint void(i64,i64)* @lam9823 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9850, i64* %eptr9848                                                   ; store fptr
  %arg7181 = ptrtoint i64* %cloptr9847 to i64                                        ; closure cast; i64* -> i64
  %cloptr9851 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9852 = getelementptr inbounds i64, i64* %cloptr9851, i64 0                    ; &cloptr9851[0]
  %f9853 = ptrtoint void(i64,i64)* @lam9198 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9853, i64* %eptr9852                                                   ; store fptr
  %arg7180 = ptrtoint i64* %cloptr9851 to i64                                        ; closure cast; i64* -> i64
  %rva9137 = add i64 0, 0                                                            ; quoted ()
  %rva9136 = call i64 @prim_cons(i64 %arg7180, i64 %rva9137)                         ; call prim_cons
  %rva9135 = call i64 @prim_cons(i64 %arg7181, i64 %rva9136)                         ; call prim_cons
  %cloptr9854 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9854)                                         ; assert function application
  %i0ptr9855 = getelementptr inbounds i64, i64* %cloptr9854, i64 0                   ; &cloptr9854[0]
  %f9857 = load i64, i64* %i0ptr9855, align 8                                        ; load; *i0ptr9855
  %fptr9856 = inttoptr i64 %f9857 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9856(i64 %zpC$Ycmb, i64 %rva9135)                   ; tail call
  ret void
}


define void @lam9823(i64 %env9824, i64 %rvp9105) {
  %envptr9858 = inttoptr i64 %env9824 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9859 = getelementptr inbounds i64, i64* %envptr9858, i64 1                  ; &envptr9858[1]
  %zpC$Ycmb = load i64, i64* %envptr9859, align 8                                    ; load; *envptr9859
  %_956970 = call i64 @prim_car(i64 %rvp9105)                                        ; call prim_car
  %rvp9104 = call i64 @prim_cdr(i64 %rvp9105)                                        ; call prim_cdr
  %OnZ$_37foldr1 = call i64 @prim_car(i64 %rvp9104)                                  ; call prim_car
  %na8075 = call i64 @prim_cdr(i64 %rvp9104)                                         ; call prim_cdr
  %cloptr9860 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9862 = getelementptr inbounds i64, i64* %cloptr9860, i64 1                    ; &eptr9862[1]
  %eptr9863 = getelementptr inbounds i64, i64* %cloptr9860, i64 2                    ; &eptr9863[2]
  store i64 %zpC$Ycmb, i64* %eptr9862                                                ; *eptr9862 = %zpC$Ycmb
  store i64 %OnZ$_37foldr1, i64* %eptr9863                                           ; *eptr9863 = %OnZ$_37foldr1
  %eptr9861 = getelementptr inbounds i64, i64* %cloptr9860, i64 0                    ; &cloptr9860[0]
  %f9864 = ptrtoint void(i64,i64)* @lam9821 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9864, i64* %eptr9861                                                   ; store fptr
  %arg7184 = ptrtoint i64* %cloptr9860 to i64                                        ; closure cast; i64* -> i64
  %cloptr9865 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9865, i64 0                    ; &cloptr9865[0]
  %f9867 = ptrtoint void(i64,i64)* @lam9216 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9867, i64* %eptr9866                                                   ; store fptr
  %arg7183 = ptrtoint i64* %cloptr9865 to i64                                        ; closure cast; i64* -> i64
  %rva9103 = add i64 0, 0                                                            ; quoted ()
  %rva9102 = call i64 @prim_cons(i64 %arg7183, i64 %rva9103)                         ; call prim_cons
  %rva9101 = call i64 @prim_cons(i64 %arg7184, i64 %rva9102)                         ; call prim_cons
  %cloptr9868 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9868)                                         ; assert function application
  %i0ptr9869 = getelementptr inbounds i64, i64* %cloptr9868, i64 0                   ; &cloptr9868[0]
  %f9871 = load i64, i64* %i0ptr9869, align 8                                        ; load; *i0ptr9869
  %fptr9870 = inttoptr i64 %f9871 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9870(i64 %zpC$Ycmb, i64 %rva9101)                   ; tail call
  ret void
}


define void @lam9821(i64 %env9822, i64 %rvp9067) {
  %envptr9872 = inttoptr i64 %env9822 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9873 = getelementptr inbounds i64, i64* %envptr9872, i64 2                  ; &envptr9872[2]
  %OnZ$_37foldr1 = load i64, i64* %envptr9873, align 8                               ; load; *envptr9873
  %envptr9874 = inttoptr i64 %env9822 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9875 = getelementptr inbounds i64, i64* %envptr9874, i64 1                  ; &envptr9874[1]
  %zpC$Ycmb = load i64, i64* %envptr9875, align 8                                    ; load; *envptr9875
  %_956971 = call i64 @prim_car(i64 %rvp9067)                                        ; call prim_car
  %rvp9066 = call i64 @prim_cdr(i64 %rvp9067)                                        ; call prim_cdr
  %UcZ$_37map1 = call i64 @prim_car(i64 %rvp9066)                                    ; call prim_car
  %na8077 = call i64 @prim_cdr(i64 %rvp9066)                                         ; call prim_cdr
  %cloptr9876 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9878 = getelementptr inbounds i64, i64* %cloptr9876, i64 1                    ; &eptr9878[1]
  %eptr9879 = getelementptr inbounds i64, i64* %cloptr9876, i64 2                    ; &eptr9879[2]
  %eptr9880 = getelementptr inbounds i64, i64* %cloptr9876, i64 3                    ; &eptr9880[3]
  store i64 %UcZ$_37map1, i64* %eptr9878                                             ; *eptr9878 = %UcZ$_37map1
  store i64 %zpC$Ycmb, i64* %eptr9879                                                ; *eptr9879 = %zpC$Ycmb
  store i64 %OnZ$_37foldr1, i64* %eptr9880                                           ; *eptr9880 = %OnZ$_37foldr1
  %eptr9877 = getelementptr inbounds i64, i64* %cloptr9876, i64 0                    ; &cloptr9876[0]
  %f9881 = ptrtoint void(i64,i64)* @lam9819 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9881, i64* %eptr9877                                                   ; store fptr
  %arg7187 = ptrtoint i64* %cloptr9876 to i64                                        ; closure cast; i64* -> i64
  %cloptr9882 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9883 = getelementptr inbounds i64, i64* %cloptr9882, i64 0                    ; &cloptr9882[0]
  %f9884 = ptrtoint void(i64,i64)* @lam9236 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9884, i64* %eptr9883                                                   ; store fptr
  %arg7186 = ptrtoint i64* %cloptr9882 to i64                                        ; closure cast; i64* -> i64
  %rva9065 = add i64 0, 0                                                            ; quoted ()
  %rva9064 = call i64 @prim_cons(i64 %arg7186, i64 %rva9065)                         ; call prim_cons
  %rva9063 = call i64 @prim_cons(i64 %arg7187, i64 %rva9064)                         ; call prim_cons
  %cloptr9885 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9885)                                         ; assert function application
  %i0ptr9886 = getelementptr inbounds i64, i64* %cloptr9885, i64 0                   ; &cloptr9885[0]
  %f9888 = load i64, i64* %i0ptr9886, align 8                                        ; load; *i0ptr9886
  %fptr9887 = inttoptr i64 %f9888 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9887(i64 %zpC$Ycmb, i64 %rva9063)                   ; tail call
  ret void
}


define void @lam9819(i64 %env9820, i64 %rvp9033) {
  %envptr9889 = inttoptr i64 %env9820 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9890 = getelementptr inbounds i64, i64* %envptr9889, i64 3                  ; &envptr9889[3]
  %OnZ$_37foldr1 = load i64, i64* %envptr9890, align 8                               ; load; *envptr9890
  %envptr9891 = inttoptr i64 %env9820 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9892 = getelementptr inbounds i64, i64* %envptr9891, i64 2                  ; &envptr9891[2]
  %zpC$Ycmb = load i64, i64* %envptr9892, align 8                                    ; load; *envptr9892
  %envptr9893 = inttoptr i64 %env9820 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9894 = getelementptr inbounds i64, i64* %envptr9893, i64 1                  ; &envptr9893[1]
  %UcZ$_37map1 = load i64, i64* %envptr9894, align 8                                 ; load; *envptr9894
  %_956972 = call i64 @prim_car(i64 %rvp9033)                                        ; call prim_car
  %rvp9032 = call i64 @prim_cdr(i64 %rvp9033)                                        ; call prim_cdr
  %sTp$_37take = call i64 @prim_car(i64 %rvp9032)                                    ; call prim_car
  %na8079 = call i64 @prim_cdr(i64 %rvp9032)                                         ; call prim_cdr
  %cloptr9895 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9897 = getelementptr inbounds i64, i64* %cloptr9895, i64 1                    ; &eptr9897[1]
  %eptr9898 = getelementptr inbounds i64, i64* %cloptr9895, i64 2                    ; &eptr9898[2]
  %eptr9899 = getelementptr inbounds i64, i64* %cloptr9895, i64 3                    ; &eptr9899[3]
  %eptr9900 = getelementptr inbounds i64, i64* %cloptr9895, i64 4                    ; &eptr9900[4]
  store i64 %UcZ$_37map1, i64* %eptr9897                                             ; *eptr9897 = %UcZ$_37map1
  store i64 %zpC$Ycmb, i64* %eptr9898                                                ; *eptr9898 = %zpC$Ycmb
  store i64 %sTp$_37take, i64* %eptr9899                                             ; *eptr9899 = %sTp$_37take
  store i64 %OnZ$_37foldr1, i64* %eptr9900                                           ; *eptr9900 = %OnZ$_37foldr1
  %eptr9896 = getelementptr inbounds i64, i64* %cloptr9895, i64 0                    ; &cloptr9895[0]
  %f9901 = ptrtoint void(i64,i64)* @lam9817 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9901, i64* %eptr9896                                                   ; store fptr
  %arg7190 = ptrtoint i64* %cloptr9895 to i64                                        ; closure cast; i64* -> i64
  %cloptr9902 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9903 = getelementptr inbounds i64, i64* %cloptr9902, i64 0                    ; &cloptr9902[0]
  %f9904 = ptrtoint void(i64,i64)* @lam9252 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9904, i64* %eptr9903                                                   ; store fptr
  %arg7189 = ptrtoint i64* %cloptr9902 to i64                                        ; closure cast; i64* -> i64
  %rva9031 = add i64 0, 0                                                            ; quoted ()
  %rva9030 = call i64 @prim_cons(i64 %arg7189, i64 %rva9031)                         ; call prim_cons
  %rva9029 = call i64 @prim_cons(i64 %arg7190, i64 %rva9030)                         ; call prim_cons
  %cloptr9905 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9905)                                         ; assert function application
  %i0ptr9906 = getelementptr inbounds i64, i64* %cloptr9905, i64 0                   ; &cloptr9905[0]
  %f9908 = load i64, i64* %i0ptr9906, align 8                                        ; load; *i0ptr9906
  %fptr9907 = inttoptr i64 %f9908 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9907(i64 %zpC$Ycmb, i64 %rva9029)                   ; tail call
  ret void
}


define void @lam9817(i64 %env9818, i64 %rvp9004) {
  %envptr9909 = inttoptr i64 %env9818 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9910 = getelementptr inbounds i64, i64* %envptr9909, i64 4                  ; &envptr9909[4]
  %OnZ$_37foldr1 = load i64, i64* %envptr9910, align 8                               ; load; *envptr9910
  %envptr9911 = inttoptr i64 %env9818 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9912 = getelementptr inbounds i64, i64* %envptr9911, i64 3                  ; &envptr9911[3]
  %sTp$_37take = load i64, i64* %envptr9912, align 8                                 ; load; *envptr9912
  %envptr9913 = inttoptr i64 %env9818 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9914 = getelementptr inbounds i64, i64* %envptr9913, i64 2                  ; &envptr9913[2]
  %zpC$Ycmb = load i64, i64* %envptr9914, align 8                                    ; load; *envptr9914
  %envptr9915 = inttoptr i64 %env9818 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9916 = getelementptr inbounds i64, i64* %envptr9915, i64 1                  ; &envptr9915[1]
  %UcZ$_37map1 = load i64, i64* %envptr9916, align 8                                 ; load; *envptr9916
  %_956973 = call i64 @prim_car(i64 %rvp9004)                                        ; call prim_car
  %rvp9003 = call i64 @prim_cdr(i64 %rvp9004)                                        ; call prim_cdr
  %O5h$_37length = call i64 @prim_car(i64 %rvp9003)                                  ; call prim_car
  %na8081 = call i64 @prim_cdr(i64 %rvp9003)                                         ; call prim_cdr
  %cloptr9917 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9917, i64 1                    ; &eptr9919[1]
  %eptr9920 = getelementptr inbounds i64, i64* %cloptr9917, i64 2                    ; &eptr9920[2]
  %eptr9921 = getelementptr inbounds i64, i64* %cloptr9917, i64 3                    ; &eptr9921[3]
  %eptr9922 = getelementptr inbounds i64, i64* %cloptr9917, i64 4                    ; &eptr9922[4]
  %eptr9923 = getelementptr inbounds i64, i64* %cloptr9917, i64 5                    ; &eptr9923[5]
  store i64 %O5h$_37length, i64* %eptr9919                                           ; *eptr9919 = %O5h$_37length
  store i64 %UcZ$_37map1, i64* %eptr9920                                             ; *eptr9920 = %UcZ$_37map1
  store i64 %zpC$Ycmb, i64* %eptr9921                                                ; *eptr9921 = %zpC$Ycmb
  store i64 %sTp$_37take, i64* %eptr9922                                             ; *eptr9922 = %sTp$_37take
  store i64 %OnZ$_37foldr1, i64* %eptr9923                                           ; *eptr9923 = %OnZ$_37foldr1
  %eptr9918 = getelementptr inbounds i64, i64* %cloptr9917, i64 0                    ; &cloptr9917[0]
  %f9924 = ptrtoint void(i64,i64)* @lam9815 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9924, i64* %eptr9918                                                   ; store fptr
  %arg7193 = ptrtoint i64* %cloptr9917 to i64                                        ; closure cast; i64* -> i64
  %cloptr9925 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9926 = getelementptr inbounds i64, i64* %cloptr9925, i64 0                    ; &cloptr9925[0]
  %f9927 = ptrtoint void(i64,i64)* @lam9265 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9927, i64* %eptr9926                                                   ; store fptr
  %arg7192 = ptrtoint i64* %cloptr9925 to i64                                        ; closure cast; i64* -> i64
  %rva9002 = add i64 0, 0                                                            ; quoted ()
  %rva9001 = call i64 @prim_cons(i64 %arg7192, i64 %rva9002)                         ; call prim_cons
  %rva9000 = call i64 @prim_cons(i64 %arg7193, i64 %rva9001)                         ; call prim_cons
  %cloptr9928 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9928)                                         ; assert function application
  %i0ptr9929 = getelementptr inbounds i64, i64* %cloptr9928, i64 0                   ; &cloptr9928[0]
  %f9931 = load i64, i64* %i0ptr9929, align 8                                        ; load; *i0ptr9929
  %fptr9930 = inttoptr i64 %f9931 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9930(i64 %zpC$Ycmb, i64 %rva9000)                   ; tail call
  ret void
}


define void @lam9815(i64 %env9816, i64 %rvp8970) {
  %envptr9932 = inttoptr i64 %env9816 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9933 = getelementptr inbounds i64, i64* %envptr9932, i64 5                  ; &envptr9932[5]
  %OnZ$_37foldr1 = load i64, i64* %envptr9933, align 8                               ; load; *envptr9933
  %envptr9934 = inttoptr i64 %env9816 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9935 = getelementptr inbounds i64, i64* %envptr9934, i64 4                  ; &envptr9934[4]
  %sTp$_37take = load i64, i64* %envptr9935, align 8                                 ; load; *envptr9935
  %envptr9936 = inttoptr i64 %env9816 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9937 = getelementptr inbounds i64, i64* %envptr9936, i64 3                  ; &envptr9936[3]
  %zpC$Ycmb = load i64, i64* %envptr9937, align 8                                    ; load; *envptr9937
  %envptr9938 = inttoptr i64 %env9816 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9939 = getelementptr inbounds i64, i64* %envptr9938, i64 2                  ; &envptr9938[2]
  %UcZ$_37map1 = load i64, i64* %envptr9939, align 8                                 ; load; *envptr9939
  %envptr9940 = inttoptr i64 %env9816 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9941 = getelementptr inbounds i64, i64* %envptr9940, i64 1                  ; &envptr9940[1]
  %O5h$_37length = load i64, i64* %envptr9941, align 8                               ; load; *envptr9941
  %_956974 = call i64 @prim_car(i64 %rvp8970)                                        ; call prim_car
  %rvp8969 = call i64 @prim_cdr(i64 %rvp8970)                                        ; call prim_cdr
  %yUw$_37foldl1 = call i64 @prim_car(i64 %rvp8969)                                  ; call prim_car
  %na8083 = call i64 @prim_cdr(i64 %rvp8969)                                         ; call prim_cdr
  %cloptr9942 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9944 = getelementptr inbounds i64, i64* %cloptr9942, i64 1                    ; &eptr9944[1]
  store i64 %yUw$_37foldl1, i64* %eptr9944                                           ; *eptr9944 = %yUw$_37foldl1
  %eptr9943 = getelementptr inbounds i64, i64* %cloptr9942, i64 0                    ; &cloptr9942[0]
  %f9945 = ptrtoint void(i64,i64)* @lam9813 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9945, i64* %eptr9943                                                   ; store fptr
  %xh1$_37last = ptrtoint i64* %cloptr9942 to i64                                    ; closure cast; i64* -> i64
  %cloptr9946 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9948 = getelementptr inbounds i64, i64* %cloptr9946, i64 1                    ; &eptr9948[1]
  %eptr9949 = getelementptr inbounds i64, i64* %cloptr9946, i64 2                    ; &eptr9949[2]
  store i64 %O5h$_37length, i64* %eptr9948                                           ; *eptr9948 = %O5h$_37length
  store i64 %sTp$_37take, i64* %eptr9949                                             ; *eptr9949 = %sTp$_37take
  %eptr9947 = getelementptr inbounds i64, i64* %cloptr9946, i64 0                    ; &cloptr9946[0]
  %f9950 = ptrtoint void(i64,i64)* @lam9805 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9950, i64* %eptr9947                                                   ; store fptr
  %XN3$_37drop_45right = ptrtoint i64* %cloptr9946 to i64                            ; closure cast; i64* -> i64
  %cloptr9951 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9953 = getelementptr inbounds i64, i64* %cloptr9951, i64 1                    ; &eptr9953[1]
  %eptr9954 = getelementptr inbounds i64, i64* %cloptr9951, i64 2                    ; &eptr9954[2]
  %eptr9955 = getelementptr inbounds i64, i64* %cloptr9951, i64 3                    ; &eptr9955[3]
  %eptr9956 = getelementptr inbounds i64, i64* %cloptr9951, i64 4                    ; &eptr9956[4]
  %eptr9957 = getelementptr inbounds i64, i64* %cloptr9951, i64 5                    ; &eptr9957[5]
  %eptr9958 = getelementptr inbounds i64, i64* %cloptr9951, i64 6                    ; &eptr9958[6]
  store i64 %yUw$_37foldl1, i64* %eptr9953                                           ; *eptr9953 = %yUw$_37foldl1
  store i64 %xh1$_37last, i64* %eptr9954                                             ; *eptr9954 = %xh1$_37last
  store i64 %O5h$_37length, i64* %eptr9955                                           ; *eptr9955 = %O5h$_37length
  store i64 %XN3$_37drop_45right, i64* %eptr9956                                     ; *eptr9956 = %XN3$_37drop_45right
  store i64 %zpC$Ycmb, i64* %eptr9957                                                ; *eptr9957 = %zpC$Ycmb
  store i64 %OnZ$_37foldr1, i64* %eptr9958                                           ; *eptr9958 = %OnZ$_37foldr1
  %eptr9952 = getelementptr inbounds i64, i64* %cloptr9951, i64 0                    ; &cloptr9951[0]
  %f9959 = ptrtoint void(i64,i64)* @lam9799 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9959, i64* %eptr9952                                                   ; store fptr
  %arg7213 = ptrtoint i64* %cloptr9951 to i64                                        ; closure cast; i64* -> i64
  %cloptr9960 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9962 = getelementptr inbounds i64, i64* %cloptr9960, i64 1                    ; &eptr9962[1]
  %eptr9963 = getelementptr inbounds i64, i64* %cloptr9960, i64 2                    ; &eptr9963[2]
  store i64 %UcZ$_37map1, i64* %eptr9962                                             ; *eptr9962 = %UcZ$_37map1
  store i64 %OnZ$_37foldr1, i64* %eptr9963                                           ; *eptr9963 = %OnZ$_37foldr1
  %eptr9961 = getelementptr inbounds i64, i64* %cloptr9960, i64 0                    ; &cloptr9960[0]
  %f9964 = ptrtoint void(i64,i64)* @lam9316 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9964, i64* %eptr9961                                                   ; store fptr
  %arg7212 = ptrtoint i64* %cloptr9960 to i64                                        ; closure cast; i64* -> i64
  %rva8968 = add i64 0, 0                                                            ; quoted ()
  %rva8967 = call i64 @prim_cons(i64 %arg7212, i64 %rva8968)                         ; call prim_cons
  %rva8966 = call i64 @prim_cons(i64 %arg7213, i64 %rva8967)                         ; call prim_cons
  %cloptr9965 = inttoptr i64 %zpC$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9965)                                         ; assert function application
  %i0ptr9966 = getelementptr inbounds i64, i64* %cloptr9965, i64 0                   ; &cloptr9965[0]
  %f9968 = load i64, i64* %i0ptr9966, align 8                                        ; load; *i0ptr9966
  %fptr9967 = inttoptr i64 %f9968 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9967(i64 %zpC$Ycmb, i64 %rva8966)                   ; tail call
  ret void
}


define void @lam9813(i64 %env9814, i64 %rvp8100) {
  %envptr9969 = inttoptr i64 %env9814 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9970 = getelementptr inbounds i64, i64* %envptr9969, i64 1                  ; &envptr9969[1]
  %yUw$_37foldl1 = load i64, i64* %envptr9970, align 8                               ; load; *envptr9970
  %cont6975 = call i64 @prim_car(i64 %rvp8100)                                       ; call prim_car
  %rvp8099 = call i64 @prim_cdr(i64 %rvp8100)                                        ; call prim_cdr
  %QhH$lst = call i64 @prim_car(i64 %rvp8099)                                        ; call prim_car
  %na8085 = call i64 @prim_cdr(i64 %rvp8099)                                         ; call prim_cdr
  %cloptr9971 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9972 = getelementptr inbounds i64, i64* %cloptr9971, i64 0                    ; &cloptr9971[0]
  %f9973 = ptrtoint void(i64,i64)* @lam9811 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9973, i64* %eptr9972                                                   ; store fptr
  %arg7197 = ptrtoint i64* %cloptr9971 to i64                                        ; closure cast; i64* -> i64
  %arg7196 = add i64 0, 0                                                            ; quoted ()
  %rva8098 = add i64 0, 0                                                            ; quoted ()
  %rva8097 = call i64 @prim_cons(i64 %QhH$lst, i64 %rva8098)                         ; call prim_cons
  %rva8096 = call i64 @prim_cons(i64 %arg7196, i64 %rva8097)                         ; call prim_cons
  %rva8095 = call i64 @prim_cons(i64 %arg7197, i64 %rva8096)                         ; call prim_cons
  %rva8094 = call i64 @prim_cons(i64 %cont6975, i64 %rva8095)                        ; call prim_cons
  %cloptr9974 = inttoptr i64 %yUw$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9974)                                         ; assert function application
  %i0ptr9975 = getelementptr inbounds i64, i64* %cloptr9974, i64 0                   ; &cloptr9974[0]
  %f9977 = load i64, i64* %i0ptr9975, align 8                                        ; load; *i0ptr9975
  %fptr9976 = inttoptr i64 %f9977 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9976(i64 %yUw$_37foldl1, i64 %rva8094)              ; tail call
  ret void
}


define void @lam9811(i64 %env9812, i64 %rvp8093) {
  %cont6976 = call i64 @prim_car(i64 %rvp8093)                                       ; call prim_car
  %rvp8092 = call i64 @prim_cdr(i64 %rvp8093)                                        ; call prim_cdr
  %Q25$x = call i64 @prim_car(i64 %rvp8092)                                          ; call prim_car
  %rvp8091 = call i64 @prim_cdr(i64 %rvp8092)                                        ; call prim_cdr
  %hne$y = call i64 @prim_car(i64 %rvp8091)                                          ; call prim_car
  %na8087 = call i64 @prim_cdr(i64 %rvp8091)                                         ; call prim_cdr
  %arg7201 = add i64 0, 0                                                            ; quoted ()
  %rva8090 = add i64 0, 0                                                            ; quoted ()
  %rva8089 = call i64 @prim_cons(i64 %Q25$x, i64 %rva8090)                           ; call prim_cons
  %rva8088 = call i64 @prim_cons(i64 %arg7201, i64 %rva8089)                         ; call prim_cons
  %cloptr9978 = inttoptr i64 %cont6976 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9978)                                         ; assert function application
  %i0ptr9979 = getelementptr inbounds i64, i64* %cloptr9978, i64 0                   ; &cloptr9978[0]
  %f9981 = load i64, i64* %i0ptr9979, align 8                                        ; load; *i0ptr9979
  %fptr9980 = inttoptr i64 %f9981 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9980(i64 %cont6976, i64 %rva8088)                   ; tail call
  ret void
}


define void @lam9805(i64 %env9806, i64 %rvp8116) {
  %envptr9982 = inttoptr i64 %env9806 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9983 = getelementptr inbounds i64, i64* %envptr9982, i64 2                  ; &envptr9982[2]
  %sTp$_37take = load i64, i64* %envptr9983, align 8                                 ; load; *envptr9983
  %envptr9984 = inttoptr i64 %env9806 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9985 = getelementptr inbounds i64, i64* %envptr9984, i64 1                  ; &envptr9984[1]
  %O5h$_37length = load i64, i64* %envptr9985, align 8                               ; load; *envptr9985
  %cont6977 = call i64 @prim_car(i64 %rvp8116)                                       ; call prim_car
  %rvp8115 = call i64 @prim_cdr(i64 %rvp8116)                                        ; call prim_cdr
  %JYQ$lst = call i64 @prim_car(i64 %rvp8115)                                        ; call prim_car
  %rvp8114 = call i64 @prim_cdr(i64 %rvp8115)                                        ; call prim_cdr
  %ZKK$n = call i64 @prim_car(i64 %rvp8114)                                          ; call prim_car
  %na8102 = call i64 @prim_cdr(i64 %rvp8114)                                         ; call prim_cdr
  %cloptr9986 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9988 = getelementptr inbounds i64, i64* %cloptr9986, i64 1                    ; &eptr9988[1]
  %eptr9989 = getelementptr inbounds i64, i64* %cloptr9986, i64 2                    ; &eptr9989[2]
  %eptr9990 = getelementptr inbounds i64, i64* %cloptr9986, i64 3                    ; &eptr9990[3]
  %eptr9991 = getelementptr inbounds i64, i64* %cloptr9986, i64 4                    ; &eptr9991[4]
  store i64 %ZKK$n, i64* %eptr9988                                                   ; *eptr9988 = %ZKK$n
  store i64 %sTp$_37take, i64* %eptr9989                                             ; *eptr9989 = %sTp$_37take
  store i64 %JYQ$lst, i64* %eptr9990                                                 ; *eptr9990 = %JYQ$lst
  store i64 %cont6977, i64* %eptr9991                                                ; *eptr9991 = %cont6977
  %eptr9987 = getelementptr inbounds i64, i64* %cloptr9986, i64 0                    ; &cloptr9986[0]
  %f9992 = ptrtoint void(i64,i64)* @lam9803 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9992, i64* %eptr9987                                                   ; store fptr
  %arg7204 = ptrtoint i64* %cloptr9986 to i64                                        ; closure cast; i64* -> i64
  %rva8113 = add i64 0, 0                                                            ; quoted ()
  %rva8112 = call i64 @prim_cons(i64 %JYQ$lst, i64 %rva8113)                         ; call prim_cons
  %rva8111 = call i64 @prim_cons(i64 %arg7204, i64 %rva8112)                         ; call prim_cons
  %cloptr9993 = inttoptr i64 %O5h$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9993)                                         ; assert function application
  %i0ptr9994 = getelementptr inbounds i64, i64* %cloptr9993, i64 0                   ; &cloptr9993[0]
  %f9996 = load i64, i64* %i0ptr9994, align 8                                        ; load; *i0ptr9994
  %fptr9995 = inttoptr i64 %f9996 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9995(i64 %O5h$_37length, i64 %rva8111)              ; tail call
  ret void
}


define void @lam9803(i64 %env9804, i64 %rvp8110) {
  %envptr9997 = inttoptr i64 %env9804 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9998 = getelementptr inbounds i64, i64* %envptr9997, i64 4                  ; &envptr9997[4]
  %cont6977 = load i64, i64* %envptr9998, align 8                                    ; load; *envptr9998
  %envptr9999 = inttoptr i64 %env9804 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr10000 = getelementptr inbounds i64, i64* %envptr9999, i64 3                 ; &envptr9999[3]
  %JYQ$lst = load i64, i64* %envptr10000, align 8                                    ; load; *envptr10000
  %envptr10001 = inttoptr i64 %env9804 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 2                ; &envptr10001[2]
  %sTp$_37take = load i64, i64* %envptr10002, align 8                                ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env9804 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 1                ; &envptr10003[1]
  %ZKK$n = load i64, i64* %envptr10004, align 8                                      ; load; *envptr10004
  %_956978 = call i64 @prim_car(i64 %rvp8110)                                        ; call prim_car
  %rvp8109 = call i64 @prim_cdr(i64 %rvp8110)                                        ; call prim_cdr
  %a6869 = call i64 @prim_car(i64 %rvp8109)                                          ; call prim_car
  %na8104 = call i64 @prim_cdr(i64 %rvp8109)                                         ; call prim_cdr
  %a6870 = call i64 @prim__45(i64 %a6869, i64 %ZKK$n)                                ; call prim__45
  %rva8108 = add i64 0, 0                                                            ; quoted ()
  %rva8107 = call i64 @prim_cons(i64 %a6870, i64 %rva8108)                           ; call prim_cons
  %rva8106 = call i64 @prim_cons(i64 %JYQ$lst, i64 %rva8107)                         ; call prim_cons
  %rva8105 = call i64 @prim_cons(i64 %cont6977, i64 %rva8106)                        ; call prim_cons
  %cloptr10005 = inttoptr i64 %sTp$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10005)                                        ; assert function application
  %i0ptr10006 = getelementptr inbounds i64, i64* %cloptr10005, i64 0                 ; &cloptr10005[0]
  %f10008 = load i64, i64* %i0ptr10006, align 8                                      ; load; *i0ptr10006
  %fptr10007 = inttoptr i64 %f10008 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10007(i64 %sTp$_37take, i64 %rva8105)               ; tail call
  ret void
}


define void @lam9799(i64 %env9800, i64 %rvp8870) {
  %envptr10009 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10010 = getelementptr inbounds i64, i64* %envptr10009, i64 6                ; &envptr10009[6]
  %OnZ$_37foldr1 = load i64, i64* %envptr10010, align 8                              ; load; *envptr10010
  %envptr10011 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10012 = getelementptr inbounds i64, i64* %envptr10011, i64 5                ; &envptr10011[5]
  %zpC$Ycmb = load i64, i64* %envptr10012, align 8                                   ; load; *envptr10012
  %envptr10013 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10014 = getelementptr inbounds i64, i64* %envptr10013, i64 4                ; &envptr10013[4]
  %XN3$_37drop_45right = load i64, i64* %envptr10014, align 8                        ; load; *envptr10014
  %envptr10015 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10016 = getelementptr inbounds i64, i64* %envptr10015, i64 3                ; &envptr10015[3]
  %O5h$_37length = load i64, i64* %envptr10016, align 8                              ; load; *envptr10016
  %envptr10017 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10018 = getelementptr inbounds i64, i64* %envptr10017, i64 2                ; &envptr10017[2]
  %xh1$_37last = load i64, i64* %envptr10018, align 8                                ; load; *envptr10018
  %envptr10019 = inttoptr i64 %env9800 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10020 = getelementptr inbounds i64, i64* %envptr10019, i64 1                ; &envptr10019[1]
  %yUw$_37foldl1 = load i64, i64* %envptr10020, align 8                              ; load; *envptr10020
  %_956979 = call i64 @prim_car(i64 %rvp8870)                                        ; call prim_car
  %rvp8869 = call i64 @prim_cdr(i64 %rvp8870)                                        ; call prim_cdr
  %K5P$_37foldr = call i64 @prim_car(i64 %rvp8869)                                   ; call prim_car
  %na8118 = call i64 @prim_cdr(i64 %rvp8869)                                         ; call prim_cdr
  %cloptr10021 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10023 = getelementptr inbounds i64, i64* %cloptr10021, i64 1                  ; &eptr10023[1]
  store i64 %OnZ$_37foldr1, i64* %eptr10023                                          ; *eptr10023 = %OnZ$_37foldr1
  %eptr10022 = getelementptr inbounds i64, i64* %cloptr10021, i64 0                  ; &cloptr10021[0]
  %f10024 = ptrtoint void(i64,i64)* @lam9797 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10024, i64* %eptr10022                                                 ; store fptr
  %krC$_37map1 = ptrtoint i64* %cloptr10021 to i64                                   ; closure cast; i64* -> i64
  %cloptr10025 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10027 = getelementptr inbounds i64, i64* %cloptr10025, i64 1                  ; &eptr10027[1]
  %eptr10028 = getelementptr inbounds i64, i64* %cloptr10025, i64 2                  ; &eptr10028[2]
  %eptr10029 = getelementptr inbounds i64, i64* %cloptr10025, i64 3                  ; &eptr10029[3]
  store i64 %xh1$_37last, i64* %eptr10027                                            ; *eptr10027 = %xh1$_37last
  store i64 %K5P$_37foldr, i64* %eptr10028                                           ; *eptr10028 = %K5P$_37foldr
  store i64 %XN3$_37drop_45right, i64* %eptr10029                                    ; *eptr10029 = %XN3$_37drop_45right
  %eptr10026 = getelementptr inbounds i64, i64* %cloptr10025, i64 0                  ; &cloptr10025[0]
  %f10030 = ptrtoint void(i64,i64)* @lam9786 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10030, i64* %eptr10026                                                 ; store fptr
  %ofw$_37map = ptrtoint i64* %cloptr10025 to i64                                    ; closure cast; i64* -> i64
  %cloptr10031 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10033 = getelementptr inbounds i64, i64* %cloptr10031, i64 1                  ; &eptr10033[1]
  %eptr10034 = getelementptr inbounds i64, i64* %cloptr10031, i64 2                  ; &eptr10034[2]
  store i64 %yUw$_37foldl1, i64* %eptr10033                                          ; *eptr10033 = %yUw$_37foldl1
  store i64 %O5h$_37length, i64* %eptr10034                                          ; *eptr10034 = %O5h$_37length
  %eptr10032 = getelementptr inbounds i64, i64* %cloptr10031, i64 0                  ; &cloptr10031[0]
  %f10035 = ptrtoint void(i64,i64)* @lam9770 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10035, i64* %eptr10032                                                 ; store fptr
  %arg7255 = ptrtoint i64* %cloptr10031 to i64                                       ; closure cast; i64* -> i64
  %cloptr10036 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10038 = getelementptr inbounds i64, i64* %cloptr10036, i64 1                  ; &eptr10038[1]
  %eptr10039 = getelementptr inbounds i64, i64* %cloptr10036, i64 2                  ; &eptr10039[2]
  %eptr10040 = getelementptr inbounds i64, i64* %cloptr10036, i64 3                  ; &eptr10040[3]
  store i64 %krC$_37map1, i64* %eptr10038                                            ; *eptr10038 = %krC$_37map1
  store i64 %K5P$_37foldr, i64* %eptr10039                                           ; *eptr10039 = %K5P$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr10040                                          ; *eptr10040 = %OnZ$_37foldr1
  %eptr10037 = getelementptr inbounds i64, i64* %cloptr10036, i64 0                  ; &cloptr10036[0]
  %f10041 = ptrtoint void(i64,i64)* @lam9367 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10041, i64* %eptr10037                                                 ; store fptr
  %arg7254 = ptrtoint i64* %cloptr10036 to i64                                       ; closure cast; i64* -> i64
  %rva8868 = add i64 0, 0                                                            ; quoted ()
  %rva8867 = call i64 @prim_cons(i64 %arg7254, i64 %rva8868)                         ; call prim_cons
  %rva8866 = call i64 @prim_cons(i64 %arg7255, i64 %rva8867)                         ; call prim_cons
  %cloptr10042 = inttoptr i64 %zpC$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10042)                                        ; assert function application
  %i0ptr10043 = getelementptr inbounds i64, i64* %cloptr10042, i64 0                 ; &cloptr10042[0]
  %f10045 = load i64, i64* %i0ptr10043, align 8                                      ; load; *i0ptr10043
  %fptr10044 = inttoptr i64 %f10045 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10044(i64 %zpC$Ycmb, i64 %rva8866)                  ; tail call
  ret void
}


define void @lam9797(i64 %env9798, i64 %rvp8143) {
  %envptr10046 = inttoptr i64 %env9798 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10047 = getelementptr inbounds i64, i64* %envptr10046, i64 1                ; &envptr10046[1]
  %OnZ$_37foldr1 = load i64, i64* %envptr10047, align 8                              ; load; *envptr10047
  %cont6980 = call i64 @prim_car(i64 %rvp8143)                                       ; call prim_car
  %rvp8142 = call i64 @prim_cdr(i64 %rvp8143)                                        ; call prim_cdr
  %nQf$f = call i64 @prim_car(i64 %rvp8142)                                          ; call prim_car
  %rvp8141 = call i64 @prim_cdr(i64 %rvp8142)                                        ; call prim_cdr
  %a0h$lst = call i64 @prim_car(i64 %rvp8141)                                        ; call prim_car
  %na8120 = call i64 @prim_cdr(i64 %rvp8141)                                         ; call prim_cdr
  %cloptr10048 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10050 = getelementptr inbounds i64, i64* %cloptr10048, i64 1                  ; &eptr10050[1]
  store i64 %nQf$f, i64* %eptr10050                                                  ; *eptr10050 = %nQf$f
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10048, i64 0                  ; &cloptr10048[0]
  %f10051 = ptrtoint void(i64,i64)* @lam9795 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10051, i64* %eptr10049                                                 ; store fptr
  %arg7217 = ptrtoint i64* %cloptr10048 to i64                                       ; closure cast; i64* -> i64
  %arg7216 = add i64 0, 0                                                            ; quoted ()
  %rva8140 = add i64 0, 0                                                            ; quoted ()
  %rva8139 = call i64 @prim_cons(i64 %a0h$lst, i64 %rva8140)                         ; call prim_cons
  %rva8138 = call i64 @prim_cons(i64 %arg7216, i64 %rva8139)                         ; call prim_cons
  %rva8137 = call i64 @prim_cons(i64 %arg7217, i64 %rva8138)                         ; call prim_cons
  %rva8136 = call i64 @prim_cons(i64 %cont6980, i64 %rva8137)                        ; call prim_cons
  %cloptr10052 = inttoptr i64 %OnZ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10052)                                        ; assert function application
  %i0ptr10053 = getelementptr inbounds i64, i64* %cloptr10052, i64 0                 ; &cloptr10052[0]
  %f10055 = load i64, i64* %i0ptr10053, align 8                                      ; load; *i0ptr10053
  %fptr10054 = inttoptr i64 %f10055 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10054(i64 %OnZ$_37foldr1, i64 %rva8136)             ; tail call
  ret void
}


define void @lam9795(i64 %env9796, i64 %rvp8135) {
  %envptr10056 = inttoptr i64 %env9796 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10057 = getelementptr inbounds i64, i64* %envptr10056, i64 1                ; &envptr10056[1]
  %nQf$f = load i64, i64* %envptr10057, align 8                                      ; load; *envptr10057
  %cont6981 = call i64 @prim_car(i64 %rvp8135)                                       ; call prim_car
  %rvp8134 = call i64 @prim_cdr(i64 %rvp8135)                                        ; call prim_cdr
  %sMj$v = call i64 @prim_car(i64 %rvp8134)                                          ; call prim_car
  %rvp8133 = call i64 @prim_cdr(i64 %rvp8134)                                        ; call prim_cdr
  %PXa$r = call i64 @prim_car(i64 %rvp8133)                                          ; call prim_car
  %na8122 = call i64 @prim_cdr(i64 %rvp8133)                                         ; call prim_cdr
  %cloptr10058 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10060 = getelementptr inbounds i64, i64* %cloptr10058, i64 1                  ; &eptr10060[1]
  %eptr10061 = getelementptr inbounds i64, i64* %cloptr10058, i64 2                  ; &eptr10061[2]
  store i64 %cont6981, i64* %eptr10060                                               ; *eptr10060 = %cont6981
  store i64 %PXa$r, i64* %eptr10061                                                  ; *eptr10061 = %PXa$r
  %eptr10059 = getelementptr inbounds i64, i64* %cloptr10058, i64 0                  ; &cloptr10058[0]
  %f10062 = ptrtoint void(i64,i64)* @lam9793 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10062, i64* %eptr10059                                                 ; store fptr
  %arg7221 = ptrtoint i64* %cloptr10058 to i64                                       ; closure cast; i64* -> i64
  %rva8132 = add i64 0, 0                                                            ; quoted ()
  %rva8131 = call i64 @prim_cons(i64 %sMj$v, i64 %rva8132)                           ; call prim_cons
  %rva8130 = call i64 @prim_cons(i64 %arg7221, i64 %rva8131)                         ; call prim_cons
  %cloptr10063 = inttoptr i64 %nQf$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10063)                                        ; assert function application
  %i0ptr10064 = getelementptr inbounds i64, i64* %cloptr10063, i64 0                 ; &cloptr10063[0]
  %f10066 = load i64, i64* %i0ptr10064, align 8                                      ; load; *i0ptr10064
  %fptr10065 = inttoptr i64 %f10066 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10065(i64 %nQf$f, i64 %rva8130)                     ; tail call
  ret void
}


define void @lam9793(i64 %env9794, i64 %rvp8129) {
  %envptr10067 = inttoptr i64 %env9794 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10068 = getelementptr inbounds i64, i64* %envptr10067, i64 2                ; &envptr10067[2]
  %PXa$r = load i64, i64* %envptr10068, align 8                                      ; load; *envptr10068
  %envptr10069 = inttoptr i64 %env9794 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10070 = getelementptr inbounds i64, i64* %envptr10069, i64 1                ; &envptr10069[1]
  %cont6981 = load i64, i64* %envptr10070, align 8                                   ; load; *envptr10070
  %_956982 = call i64 @prim_car(i64 %rvp8129)                                        ; call prim_car
  %rvp8128 = call i64 @prim_cdr(i64 %rvp8129)                                        ; call prim_cdr
  %a6879 = call i64 @prim_car(i64 %rvp8128)                                          ; call prim_car
  %na8124 = call i64 @prim_cdr(i64 %rvp8128)                                         ; call prim_cdr
  %retprim6983 = call i64 @prim_cons(i64 %a6879, i64 %PXa$r)                         ; call prim_cons
  %arg7226 = add i64 0, 0                                                            ; quoted ()
  %rva8127 = add i64 0, 0                                                            ; quoted ()
  %rva8126 = call i64 @prim_cons(i64 %retprim6983, i64 %rva8127)                     ; call prim_cons
  %rva8125 = call i64 @prim_cons(i64 %arg7226, i64 %rva8126)                         ; call prim_cons
  %cloptr10071 = inttoptr i64 %cont6981 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10071)                                        ; assert function application
  %i0ptr10072 = getelementptr inbounds i64, i64* %cloptr10071, i64 0                 ; &cloptr10071[0]
  %f10074 = load i64, i64* %i0ptr10072, align 8                                      ; load; *i0ptr10072
  %fptr10073 = inttoptr i64 %f10074 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10073(i64 %cont6981, i64 %rva8125)                  ; tail call
  ret void
}


define void @lam9786(i64 %env9787, i64 %XH7$args6985) {
  %envptr10075 = inttoptr i64 %env9787 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10076 = getelementptr inbounds i64, i64* %envptr10075, i64 3                ; &envptr10075[3]
  %XN3$_37drop_45right = load i64, i64* %envptr10076, align 8                        ; load; *envptr10076
  %envptr10077 = inttoptr i64 %env9787 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10078 = getelementptr inbounds i64, i64* %envptr10077, i64 2                ; &envptr10077[2]
  %K5P$_37foldr = load i64, i64* %envptr10078, align 8                               ; load; *envptr10078
  %envptr10079 = inttoptr i64 %env9787 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10080 = getelementptr inbounds i64, i64* %envptr10079, i64 1                ; &envptr10079[1]
  %xh1$_37last = load i64, i64* %envptr10080, align 8                                ; load; *envptr10080
  %cont6984 = call i64 @prim_car(i64 %XH7$args6985)                                  ; call prim_car
  %XH7$args = call i64 @prim_cdr(i64 %XH7$args6985)                                  ; call prim_cdr
  %LOn$f = call i64 @prim_car(i64 %XH7$args)                                         ; call prim_car
  %IhC$lsts = call i64 @prim_cdr(i64 %XH7$args)                                      ; call prim_cdr
  %arg7233 = add i64 0, 0                                                            ; quoted ()
  %a6883 = call i64 @prim_cons(i64 %arg7233, i64 %IhC$lsts)                          ; call prim_cons
  %cloptr10081 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10083 = getelementptr inbounds i64, i64* %cloptr10081, i64 1                  ; &eptr10083[1]
  %eptr10084 = getelementptr inbounds i64, i64* %cloptr10081, i64 2                  ; &eptr10084[2]
  %eptr10085 = getelementptr inbounds i64, i64* %cloptr10081, i64 3                  ; &eptr10085[3]
  store i64 %xh1$_37last, i64* %eptr10083                                            ; *eptr10083 = %xh1$_37last
  store i64 %LOn$f, i64* %eptr10084                                                  ; *eptr10084 = %LOn$f
  store i64 %XN3$_37drop_45right, i64* %eptr10085                                    ; *eptr10085 = %XN3$_37drop_45right
  %eptr10082 = getelementptr inbounds i64, i64* %cloptr10081, i64 0                  ; &cloptr10081[0]
  %f10086 = ptrtoint void(i64,i64)* @lam9783 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10086, i64* %eptr10082                                                 ; store fptr
  %arg7235 = ptrtoint i64* %cloptr10081 to i64                                       ; closure cast; i64* -> i64
  %a6884 = call i64 @prim_cons(i64 %arg7235, i64 %a6883)                             ; call prim_cons
  %cps_45lst6993 = call i64 @prim_cons(i64 %cont6984, i64 %a6884)                    ; call prim_cons
  %cloptr10087 = inttoptr i64 %K5P$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10087)                                        ; assert function application
  %i0ptr10088 = getelementptr inbounds i64, i64* %cloptr10087, i64 0                 ; &cloptr10087[0]
  %f10090 = load i64, i64* %i0ptr10088, align 8                                      ; load; *i0ptr10088
  %fptr10089 = inttoptr i64 %f10090 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10089(i64 %K5P$_37foldr, i64 %cps_45lst6993)        ; tail call
  ret void
}


define void @lam9783(i64 %env9784, i64 %elM$fargs6987) {
  %envptr10091 = inttoptr i64 %env9784 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10092 = getelementptr inbounds i64, i64* %envptr10091, i64 3                ; &envptr10091[3]
  %XN3$_37drop_45right = load i64, i64* %envptr10092, align 8                        ; load; *envptr10092
  %envptr10093 = inttoptr i64 %env9784 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10094 = getelementptr inbounds i64, i64* %envptr10093, i64 2                ; &envptr10093[2]
  %LOn$f = load i64, i64* %envptr10094, align 8                                      ; load; *envptr10094
  %envptr10095 = inttoptr i64 %env9784 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10096 = getelementptr inbounds i64, i64* %envptr10095, i64 1                ; &envptr10095[1]
  %xh1$_37last = load i64, i64* %envptr10096, align 8                                ; load; *envptr10096
  %cont6986 = call i64 @prim_car(i64 %elM$fargs6987)                                 ; call prim_car
  %elM$fargs = call i64 @prim_cdr(i64 %elM$fargs6987)                                ; call prim_cdr
  %cloptr10097 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10099 = getelementptr inbounds i64, i64* %cloptr10097, i64 1                  ; &eptr10099[1]
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10097, i64 2                  ; &eptr10100[2]
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10097, i64 3                  ; &eptr10101[3]
  %eptr10102 = getelementptr inbounds i64, i64* %cloptr10097, i64 4                  ; &eptr10102[4]
  store i64 %xh1$_37last, i64* %eptr10099                                            ; *eptr10099 = %xh1$_37last
  store i64 %LOn$f, i64* %eptr10100                                                  ; *eptr10100 = %LOn$f
  store i64 %elM$fargs, i64* %eptr10101                                              ; *eptr10101 = %elM$fargs
  store i64 %cont6986, i64* %eptr10102                                               ; *eptr10102 = %cont6986
  %eptr10098 = getelementptr inbounds i64, i64* %cloptr10097, i64 0                  ; &cloptr10097[0]
  %f10103 = ptrtoint void(i64,i64)* @lam9781 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10103, i64* %eptr10098                                                 ; store fptr
  %arg7240 = ptrtoint i64* %cloptr10097 to i64                                       ; closure cast; i64* -> i64
  %arg7238 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva8165 = add i64 0, 0                                                            ; quoted ()
  %rva8164 = call i64 @prim_cons(i64 %arg7238, i64 %rva8165)                         ; call prim_cons
  %rva8163 = call i64 @prim_cons(i64 %elM$fargs, i64 %rva8164)                       ; call prim_cons
  %rva8162 = call i64 @prim_cons(i64 %arg7240, i64 %rva8163)                         ; call prim_cons
  %cloptr10104 = inttoptr i64 %XN3$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10104)                                        ; assert function application
  %i0ptr10105 = getelementptr inbounds i64, i64* %cloptr10104, i64 0                 ; &cloptr10104[0]
  %f10107 = load i64, i64* %i0ptr10105, align 8                                      ; load; *i0ptr10105
  %fptr10106 = inttoptr i64 %f10107 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10106(i64 %XN3$_37drop_45right, i64 %rva8162)       ; tail call
  ret void
}


define void @lam9781(i64 %env9782, i64 %rvp8161) {
  %envptr10108 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10109 = getelementptr inbounds i64, i64* %envptr10108, i64 4                ; &envptr10108[4]
  %cont6986 = load i64, i64* %envptr10109, align 8                                   ; load; *envptr10109
  %envptr10110 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10111 = getelementptr inbounds i64, i64* %envptr10110, i64 3                ; &envptr10110[3]
  %elM$fargs = load i64, i64* %envptr10111, align 8                                  ; load; *envptr10111
  %envptr10112 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10113 = getelementptr inbounds i64, i64* %envptr10112, i64 2                ; &envptr10112[2]
  %LOn$f = load i64, i64* %envptr10113, align 8                                      ; load; *envptr10113
  %envptr10114 = inttoptr i64 %env9782 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10115 = getelementptr inbounds i64, i64* %envptr10114, i64 1                ; &envptr10114[1]
  %xh1$_37last = load i64, i64* %envptr10115, align 8                                ; load; *envptr10115
  %_956988 = call i64 @prim_car(i64 %rvp8161)                                        ; call prim_car
  %rvp8160 = call i64 @prim_cdr(i64 %rvp8161)                                        ; call prim_cdr
  %a6880 = call i64 @prim_car(i64 %rvp8160)                                          ; call prim_car
  %na8145 = call i64 @prim_cdr(i64 %rvp8160)                                         ; call prim_cdr
  %cloptr10116 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10118 = getelementptr inbounds i64, i64* %cloptr10116, i64 1                  ; &eptr10118[1]
  %eptr10119 = getelementptr inbounds i64, i64* %cloptr10116, i64 2                  ; &eptr10119[2]
  %eptr10120 = getelementptr inbounds i64, i64* %cloptr10116, i64 3                  ; &eptr10120[3]
  store i64 %xh1$_37last, i64* %eptr10118                                            ; *eptr10118 = %xh1$_37last
  store i64 %elM$fargs, i64* %eptr10119                                              ; *eptr10119 = %elM$fargs
  store i64 %cont6986, i64* %eptr10120                                               ; *eptr10120 = %cont6986
  %eptr10117 = getelementptr inbounds i64, i64* %cloptr10116, i64 0                  ; &cloptr10116[0]
  %f10121 = ptrtoint void(i64,i64)* @lam9779 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10121, i64* %eptr10117                                                 ; store fptr
  %arg7243 = ptrtoint i64* %cloptr10116 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst6992 = call i64 @prim_cons(i64 %arg7243, i64 %a6880)                     ; call prim_cons
  %cloptr10122 = inttoptr i64 %LOn$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10122)                                        ; assert function application
  %i0ptr10123 = getelementptr inbounds i64, i64* %cloptr10122, i64 0                 ; &cloptr10122[0]
  %f10125 = load i64, i64* %i0ptr10123, align 8                                      ; load; *i0ptr10123
  %fptr10124 = inttoptr i64 %f10125 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10124(i64 %LOn$f, i64 %cps_45lst6992)               ; tail call
  ret void
}


define void @lam9779(i64 %env9780, i64 %rvp8159) {
  %envptr10126 = inttoptr i64 %env9780 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10127 = getelementptr inbounds i64, i64* %envptr10126, i64 3                ; &envptr10126[3]
  %cont6986 = load i64, i64* %envptr10127, align 8                                   ; load; *envptr10127
  %envptr10128 = inttoptr i64 %env9780 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10129 = getelementptr inbounds i64, i64* %envptr10128, i64 2                ; &envptr10128[2]
  %elM$fargs = load i64, i64* %envptr10129, align 8                                  ; load; *envptr10129
  %envptr10130 = inttoptr i64 %env9780 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10131 = getelementptr inbounds i64, i64* %envptr10130, i64 1                ; &envptr10130[1]
  %xh1$_37last = load i64, i64* %envptr10131, align 8                                ; load; *envptr10131
  %_956989 = call i64 @prim_car(i64 %rvp8159)                                        ; call prim_car
  %rvp8158 = call i64 @prim_cdr(i64 %rvp8159)                                        ; call prim_cdr
  %a6881 = call i64 @prim_car(i64 %rvp8158)                                          ; call prim_car
  %na8147 = call i64 @prim_cdr(i64 %rvp8158)                                         ; call prim_cdr
  %cloptr10132 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10134 = getelementptr inbounds i64, i64* %cloptr10132, i64 1                  ; &eptr10134[1]
  %eptr10135 = getelementptr inbounds i64, i64* %cloptr10132, i64 2                  ; &eptr10135[2]
  store i64 %a6881, i64* %eptr10134                                                  ; *eptr10134 = %a6881
  store i64 %cont6986, i64* %eptr10135                                               ; *eptr10135 = %cont6986
  %eptr10133 = getelementptr inbounds i64, i64* %cloptr10132, i64 0                  ; &cloptr10132[0]
  %f10136 = ptrtoint void(i64,i64)* @lam9777 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10136, i64* %eptr10133                                                 ; store fptr
  %arg7245 = ptrtoint i64* %cloptr10132 to i64                                       ; closure cast; i64* -> i64
  %rva8157 = add i64 0, 0                                                            ; quoted ()
  %rva8156 = call i64 @prim_cons(i64 %elM$fargs, i64 %rva8157)                       ; call prim_cons
  %rva8155 = call i64 @prim_cons(i64 %arg7245, i64 %rva8156)                         ; call prim_cons
  %cloptr10137 = inttoptr i64 %xh1$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10137)                                        ; assert function application
  %i0ptr10138 = getelementptr inbounds i64, i64* %cloptr10137, i64 0                 ; &cloptr10137[0]
  %f10140 = load i64, i64* %i0ptr10138, align 8                                      ; load; *i0ptr10138
  %fptr10139 = inttoptr i64 %f10140 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10139(i64 %xh1$_37last, i64 %rva8155)               ; tail call
  ret void
}


define void @lam9777(i64 %env9778, i64 %rvp8154) {
  %envptr10141 = inttoptr i64 %env9778 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10142 = getelementptr inbounds i64, i64* %envptr10141, i64 2                ; &envptr10141[2]
  %cont6986 = load i64, i64* %envptr10142, align 8                                   ; load; *envptr10142
  %envptr10143 = inttoptr i64 %env9778 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10144 = getelementptr inbounds i64, i64* %envptr10143, i64 1                ; &envptr10143[1]
  %a6881 = load i64, i64* %envptr10144, align 8                                      ; load; *envptr10144
  %_956990 = call i64 @prim_car(i64 %rvp8154)                                        ; call prim_car
  %rvp8153 = call i64 @prim_cdr(i64 %rvp8154)                                        ; call prim_cdr
  %a6882 = call i64 @prim_car(i64 %rvp8153)                                          ; call prim_car
  %na8149 = call i64 @prim_cdr(i64 %rvp8153)                                         ; call prim_cdr
  %retprim6991 = call i64 @prim_cons(i64 %a6881, i64 %a6882)                         ; call prim_cons
  %arg7250 = add i64 0, 0                                                            ; quoted ()
  %rva8152 = add i64 0, 0                                                            ; quoted ()
  %rva8151 = call i64 @prim_cons(i64 %retprim6991, i64 %rva8152)                     ; call prim_cons
  %rva8150 = call i64 @prim_cons(i64 %arg7250, i64 %rva8151)                         ; call prim_cons
  %cloptr10145 = inttoptr i64 %cont6986 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10145)                                        ; assert function application
  %i0ptr10146 = getelementptr inbounds i64, i64* %cloptr10145, i64 0                 ; &cloptr10145[0]
  %f10148 = load i64, i64* %i0ptr10146, align 8                                      ; load; *i0ptr10146
  %fptr10147 = inttoptr i64 %f10148 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10147(i64 %cont6986, i64 %rva8150)                  ; tail call
  ret void
}


define void @lam9770(i64 %env9771, i64 %rvp8770) {
  %envptr10149 = inttoptr i64 %env9771 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10150 = getelementptr inbounds i64, i64* %envptr10149, i64 2                ; &envptr10149[2]
  %O5h$_37length = load i64, i64* %envptr10150, align 8                              ; load; *envptr10150
  %envptr10151 = inttoptr i64 %env9771 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10152 = getelementptr inbounds i64, i64* %envptr10151, i64 1                ; &envptr10151[1]
  %yUw$_37foldl1 = load i64, i64* %envptr10152, align 8                              ; load; *envptr10152
  %_956994 = call i64 @prim_car(i64 %rvp8770)                                        ; call prim_car
  %rvp8769 = call i64 @prim_cdr(i64 %rvp8770)                                        ; call prim_cdr
  %TNq$_37foldl = call i64 @prim_car(i64 %rvp8769)                                   ; call prim_car
  %na8167 = call i64 @prim_cdr(i64 %rvp8769)                                         ; call prim_cdr
  %cloptr10153 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10154 = getelementptr inbounds i64, i64* %cloptr10153, i64 0                  ; &cloptr10153[0]
  %f10155 = ptrtoint void(i64,i64)* @lam9768 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10155, i64* %eptr10154                                                 ; store fptr
  %D97$_37_62 = ptrtoint i64* %cloptr10153 to i64                                    ; closure cast; i64* -> i64
  %cloptr10156 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10157 = getelementptr inbounds i64, i64* %cloptr10156, i64 0                  ; &cloptr10156[0]
  %f10158 = ptrtoint void(i64,i64)* @lam9764 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10158, i64* %eptr10157                                                 ; store fptr
  %TcN$_37_62_61 = ptrtoint i64* %cloptr10156 to i64                                 ; closure cast; i64* -> i64
  %arg7270 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7269 = add i64 0, 0                                                            ; quoted ()
  %lnH$_37append = call i64 @prim_make_45vector(i64 %arg7270, i64 %arg7269)          ; call prim_make_45vector
  %arg7272 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10159 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10161 = getelementptr inbounds i64, i64* %cloptr10159, i64 1                  ; &eptr10161[1]
  store i64 %lnH$_37append, i64* %eptr10161                                          ; *eptr10161 = %lnH$_37append
  %eptr10160 = getelementptr inbounds i64, i64* %cloptr10159, i64 0                  ; &cloptr10159[0]
  %f10162 = ptrtoint void(i64,i64)* @lam9757 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10162, i64* %eptr10160                                                 ; store fptr
  %arg7271 = ptrtoint i64* %cloptr10159 to i64                                       ; closure cast; i64* -> i64
  %a9U$_950 = call i64 @prim_vector_45set_33(i64 %lnH$_37append, i64 %arg7272, i64 %arg7271); call prim_vector_45set_33
  %arg7291 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7102 = call i64 @prim_vector_45ref(i64 %lnH$_37append, i64 %arg7291)       ; call prim_vector_45ref
  %cloptr10163 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10165 = getelementptr inbounds i64, i64* %cloptr10163, i64 1                  ; &eptr10165[1]
  %eptr10166 = getelementptr inbounds i64, i64* %cloptr10163, i64 2                  ; &eptr10166[2]
  %eptr10167 = getelementptr inbounds i64, i64* %cloptr10163, i64 3                  ; &eptr10167[3]
  store i64 %D97$_37_62, i64* %eptr10165                                             ; *eptr10165 = %D97$_37_62
  store i64 %yUw$_37foldl1, i64* %eptr10166                                          ; *eptr10166 = %yUw$_37foldl1
  store i64 %O5h$_37length, i64* %eptr10167                                          ; *eptr10167 = %O5h$_37length
  %eptr10164 = getelementptr inbounds i64, i64* %cloptr10163, i64 0                  ; &cloptr10163[0]
  %f10168 = ptrtoint void(i64,i64)* @lam9746 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10168, i64* %eptr10164                                                 ; store fptr
  %arg7295 = ptrtoint i64* %cloptr10163 to i64                                       ; closure cast; i64* -> i64
  %arg7294 = add i64 0, 0                                                            ; quoted ()
  %rva8768 = add i64 0, 0                                                            ; quoted ()
  %rva8767 = call i64 @prim_cons(i64 %retprim7102, i64 %rva8768)                     ; call prim_cons
  %rva8766 = call i64 @prim_cons(i64 %arg7294, i64 %rva8767)                         ; call prim_cons
  %cloptr10169 = inttoptr i64 %arg7295 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10169)                                        ; assert function application
  %i0ptr10170 = getelementptr inbounds i64, i64* %cloptr10169, i64 0                 ; &cloptr10169[0]
  %f10172 = load i64, i64* %i0ptr10170, align 8                                      ; load; *i0ptr10170
  %fptr10171 = inttoptr i64 %f10172 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10171(i64 %arg7295, i64 %rva8766)                   ; tail call
  ret void
}


define void @lam9768(i64 %env9769, i64 %rvp8175) {
  %cont6995 = call i64 @prim_car(i64 %rvp8175)                                       ; call prim_car
  %rvp8174 = call i64 @prim_cdr(i64 %rvp8175)                                        ; call prim_cdr
  %rOf$a = call i64 @prim_car(i64 %rvp8174)                                          ; call prim_car
  %rvp8173 = call i64 @prim_cdr(i64 %rvp8174)                                        ; call prim_cdr
  %MnC$b = call i64 @prim_car(i64 %rvp8173)                                          ; call prim_car
  %na8169 = call i64 @prim_cdr(i64 %rvp8173)                                         ; call prim_cdr
  %a6892 = call i64 @prim__60_61(i64 %rOf$a, i64 %MnC$b)                             ; call prim__60_61
  %retprim6996 = call i64 @prim_not(i64 %a6892)                                      ; call prim_not
  %arg7261 = add i64 0, 0                                                            ; quoted ()
  %rva8172 = add i64 0, 0                                                            ; quoted ()
  %rva8171 = call i64 @prim_cons(i64 %retprim6996, i64 %rva8172)                     ; call prim_cons
  %rva8170 = call i64 @prim_cons(i64 %arg7261, i64 %rva8171)                         ; call prim_cons
  %cloptr10173 = inttoptr i64 %cont6995 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10173)                                        ; assert function application
  %i0ptr10174 = getelementptr inbounds i64, i64* %cloptr10173, i64 0                 ; &cloptr10173[0]
  %f10176 = load i64, i64* %i0ptr10174, align 8                                      ; load; *i0ptr10174
  %fptr10175 = inttoptr i64 %f10176 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10175(i64 %cont6995, i64 %rva8170)                  ; tail call
  ret void
}


define void @lam9764(i64 %env9765, i64 %rvp8183) {
  %cont6997 = call i64 @prim_car(i64 %rvp8183)                                       ; call prim_car
  %rvp8182 = call i64 @prim_cdr(i64 %rvp8183)                                        ; call prim_cdr
  %boG$a = call i64 @prim_car(i64 %rvp8182)                                          ; call prim_car
  %rvp8181 = call i64 @prim_cdr(i64 %rvp8182)                                        ; call prim_cdr
  %qmK$b = call i64 @prim_car(i64 %rvp8181)                                          ; call prim_car
  %na8177 = call i64 @prim_cdr(i64 %rvp8181)                                         ; call prim_cdr
  %a6893 = call i64 @prim__60(i64 %boG$a, i64 %qmK$b)                                ; call prim__60
  %retprim6998 = call i64 @prim_not(i64 %a6893)                                      ; call prim_not
  %arg7267 = add i64 0, 0                                                            ; quoted ()
  %rva8180 = add i64 0, 0                                                            ; quoted ()
  %rva8179 = call i64 @prim_cons(i64 %retprim6998, i64 %rva8180)                     ; call prim_cons
  %rva8178 = call i64 @prim_cons(i64 %arg7267, i64 %rva8179)                         ; call prim_cons
  %cloptr10177 = inttoptr i64 %cont6997 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10177)                                        ; assert function application
  %i0ptr10178 = getelementptr inbounds i64, i64* %cloptr10177, i64 0                 ; &cloptr10177[0]
  %f10180 = load i64, i64* %i0ptr10178, align 8                                      ; load; *i0ptr10178
  %fptr10179 = inttoptr i64 %f10180 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10179(i64 %cont6997, i64 %rva8178)                  ; tail call
  ret void
}


define void @lam9757(i64 %env9758, i64 %rvp8202) {
  %envptr10181 = inttoptr i64 %env9758 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10182 = getelementptr inbounds i64, i64* %envptr10181, i64 1                ; &envptr10181[1]
  %lnH$_37append = load i64, i64* %envptr10182, align 8                              ; load; *envptr10182
  %cont7099 = call i64 @prim_car(i64 %rvp8202)                                       ; call prim_car
  %rvp8201 = call i64 @prim_cdr(i64 %rvp8202)                                        ; call prim_cdr
  %w7w$ls0 = call i64 @prim_car(i64 %rvp8201)                                        ; call prim_car
  %rvp8200 = call i64 @prim_cdr(i64 %rvp8201)                                        ; call prim_cdr
  %neS$ls1 = call i64 @prim_car(i64 %rvp8200)                                        ; call prim_car
  %na8185 = call i64 @prim_cdr(i64 %rvp8200)                                         ; call prim_cdr
  %a6894 = call i64 @prim_null_63(i64 %w7w$ls0)                                      ; call prim_null_63
  %cmp10183 = icmp eq i64 %a6894, 15                                                 ; false?
  br i1 %cmp10183, label %else10185, label %then10184                                ; if

then10184:
  %arg7276 = add i64 0, 0                                                            ; quoted ()
  %rva8188 = add i64 0, 0                                                            ; quoted ()
  %rva8187 = call i64 @prim_cons(i64 %neS$ls1, i64 %rva8188)                         ; call prim_cons
  %rva8186 = call i64 @prim_cons(i64 %arg7276, i64 %rva8187)                         ; call prim_cons
  %cloptr10186 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10186)                                        ; assert function application
  %i0ptr10187 = getelementptr inbounds i64, i64* %cloptr10186, i64 0                 ; &cloptr10186[0]
  %f10189 = load i64, i64* %i0ptr10187, align 8                                      ; load; *i0ptr10187
  %fptr10188 = inttoptr i64 %f10189 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10188(i64 %cont7099, i64 %rva8186)                  ; tail call
  ret void

else10185:
  %a6895 = call i64 @prim_car(i64 %w7w$ls0)                                          ; call prim_car
  %arg7279 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6896 = call i64 @prim_vector_45ref(i64 %lnH$_37append, i64 %arg7279)             ; call prim_vector_45ref
  %a6897 = call i64 @prim_cdr(i64 %w7w$ls0)                                          ; call prim_cdr
  %cloptr10190 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10192 = getelementptr inbounds i64, i64* %cloptr10190, i64 1                  ; &eptr10192[1]
  %eptr10193 = getelementptr inbounds i64, i64* %cloptr10190, i64 2                  ; &eptr10193[2]
  store i64 %cont7099, i64* %eptr10192                                               ; *eptr10192 = %cont7099
  store i64 %a6895, i64* %eptr10193                                                  ; *eptr10193 = %a6895
  %eptr10191 = getelementptr inbounds i64, i64* %cloptr10190, i64 0                  ; &cloptr10190[0]
  %f10194 = ptrtoint void(i64,i64)* @lam9754 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10194, i64* %eptr10191                                                 ; store fptr
  %arg7284 = ptrtoint i64* %cloptr10190 to i64                                       ; closure cast; i64* -> i64
  %rva8199 = add i64 0, 0                                                            ; quoted ()
  %rva8198 = call i64 @prim_cons(i64 %neS$ls1, i64 %rva8199)                         ; call prim_cons
  %rva8197 = call i64 @prim_cons(i64 %a6897, i64 %rva8198)                           ; call prim_cons
  %rva8196 = call i64 @prim_cons(i64 %arg7284, i64 %rva8197)                         ; call prim_cons
  %cloptr10195 = inttoptr i64 %a6896 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10195)                                        ; assert function application
  %i0ptr10196 = getelementptr inbounds i64, i64* %cloptr10195, i64 0                 ; &cloptr10195[0]
  %f10198 = load i64, i64* %i0ptr10196, align 8                                      ; load; *i0ptr10196
  %fptr10197 = inttoptr i64 %f10198 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10197(i64 %a6896, i64 %rva8196)                     ; tail call
  ret void
}


define void @lam9754(i64 %env9755, i64 %rvp8195) {
  %envptr10199 = inttoptr i64 %env9755 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10200 = getelementptr inbounds i64, i64* %envptr10199, i64 2                ; &envptr10199[2]
  %a6895 = load i64, i64* %envptr10200, align 8                                      ; load; *envptr10200
  %envptr10201 = inttoptr i64 %env9755 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10202 = getelementptr inbounds i64, i64* %envptr10201, i64 1                ; &envptr10201[1]
  %cont7099 = load i64, i64* %envptr10202, align 8                                   ; load; *envptr10202
  %_957100 = call i64 @prim_car(i64 %rvp8195)                                        ; call prim_car
  %rvp8194 = call i64 @prim_cdr(i64 %rvp8195)                                        ; call prim_cdr
  %a6898 = call i64 @prim_car(i64 %rvp8194)                                          ; call prim_car
  %na8190 = call i64 @prim_cdr(i64 %rvp8194)                                         ; call prim_cdr
  %retprim7101 = call i64 @prim_cons(i64 %a6895, i64 %a6898)                         ; call prim_cons
  %arg7289 = add i64 0, 0                                                            ; quoted ()
  %rva8193 = add i64 0, 0                                                            ; quoted ()
  %rva8192 = call i64 @prim_cons(i64 %retprim7101, i64 %rva8193)                     ; call prim_cons
  %rva8191 = call i64 @prim_cons(i64 %arg7289, i64 %rva8192)                         ; call prim_cons
  %cloptr10203 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10203)                                        ; assert function application
  %i0ptr10204 = getelementptr inbounds i64, i64* %cloptr10203, i64 0                 ; &cloptr10203[0]
  %f10206 = load i64, i64* %i0ptr10204, align 8                                      ; load; *i0ptr10204
  %fptr10205 = inttoptr i64 %f10206 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10205(i64 %cont7099, i64 %rva8191)                  ; tail call
  ret void
}


define void @lam9746(i64 %env9747, i64 %rvp8765) {
  %envptr10207 = inttoptr i64 %env9747 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10208 = getelementptr inbounds i64, i64* %envptr10207, i64 3                ; &envptr10207[3]
  %O5h$_37length = load i64, i64* %envptr10208, align 8                              ; load; *envptr10208
  %envptr10209 = inttoptr i64 %env9747 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10210 = getelementptr inbounds i64, i64* %envptr10209, i64 2                ; &envptr10209[2]
  %yUw$_37foldl1 = load i64, i64* %envptr10210, align 8                              ; load; *envptr10210
  %envptr10211 = inttoptr i64 %env9747 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10212 = getelementptr inbounds i64, i64* %envptr10211, i64 1                ; &envptr10211[1]
  %D97$_37_62 = load i64, i64* %envptr10212, align 8                                 ; load; *envptr10212
  %_956999 = call i64 @prim_car(i64 %rvp8765)                                        ; call prim_car
  %rvp8764 = call i64 @prim_cdr(i64 %rvp8765)                                        ; call prim_cdr
  %jtJ$_37append = call i64 @prim_car(i64 %rvp8764)                                  ; call prim_car
  %na8204 = call i64 @prim_cdr(i64 %rvp8764)                                         ; call prim_cdr
  %cloptr10213 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10214 = getelementptr inbounds i64, i64* %cloptr10213, i64 0                  ; &cloptr10213[0]
  %f10215 = ptrtoint void(i64,i64)* @lam9744 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10215, i64* %eptr10214                                                 ; store fptr
  %RUN$_37list_63 = ptrtoint i64* %cloptr10213 to i64                                ; closure cast; i64* -> i64
  %cloptr10216 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10217 = getelementptr inbounds i64, i64* %cloptr10216, i64 0                  ; &cloptr10216[0]
  %f10218 = ptrtoint void(i64,i64)* @lam9692 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10218, i64* %eptr10217                                                 ; store fptr
  %WjI$_37drop = ptrtoint i64* %cloptr10216 to i64                                   ; closure cast; i64* -> i64
  %cloptr10219 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10220 = getelementptr inbounds i64, i64* %cloptr10219, i64 0                  ; &cloptr10219[0]
  %f10221 = ptrtoint void(i64,i64)* @lam9642 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10221, i64* %eptr10220                                                 ; store fptr
  %icD$_37memv = ptrtoint i64* %cloptr10219 to i64                                   ; closure cast; i64* -> i64
  %cloptr10222 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10222, i64 1                  ; &eptr10224[1]
  store i64 %yUw$_37foldl1, i64* %eptr10224                                          ; *eptr10224 = %yUw$_37foldl1
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10222, i64 0                  ; &cloptr10222[0]
  %f10225 = ptrtoint void(i64,i64)* @lam9601 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10225, i64* %eptr10223                                                 ; store fptr
  %iPQ$_37_47 = ptrtoint i64* %cloptr10222 to i64                                    ; closure cast; i64* -> i64
  %cloptr10226 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10226, i64 0                  ; &cloptr10226[0]
  %f10228 = ptrtoint void(i64,i64)* @lam9589 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10228, i64* %eptr10227                                                 ; store fptr
  %K76$_37first = ptrtoint i64* %cloptr10226 to i64                                  ; closure cast; i64* -> i64
  %cloptr10229 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10230 = getelementptr inbounds i64, i64* %cloptr10229, i64 0                  ; &cloptr10229[0]
  %f10231 = ptrtoint void(i64,i64)* @lam9585 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10231, i64* %eptr10230                                                 ; store fptr
  %IS3$_37second = ptrtoint i64* %cloptr10229 to i64                                 ; closure cast; i64* -> i64
  %cloptr10232 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10233 = getelementptr inbounds i64, i64* %cloptr10232, i64 0                  ; &cloptr10232[0]
  %f10234 = ptrtoint void(i64,i64)* @lam9581 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10234, i64* %eptr10233                                                 ; store fptr
  %j6j$_37third = ptrtoint i64* %cloptr10232 to i64                                  ; closure cast; i64* -> i64
  %cloptr10235 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10236 = getelementptr inbounds i64, i64* %cloptr10235, i64 0                  ; &cloptr10235[0]
  %f10237 = ptrtoint void(i64,i64)* @lam9577 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10237, i64* %eptr10236                                                 ; store fptr
  %jJx$_37fourth = ptrtoint i64* %cloptr10235 to i64                                 ; closure cast; i64* -> i64
  %cloptr10238 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10239 = getelementptr inbounds i64, i64* %cloptr10238, i64 0                  ; &cloptr10238[0]
  %f10240 = ptrtoint void(i64,i64)* @lam9573 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10240, i64* %eptr10239                                                 ; store fptr
  %lT7$promise_63 = ptrtoint i64* %cloptr10238 to i64                                ; closure cast; i64* -> i64
  %cloptr10241 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10242 = getelementptr inbounds i64, i64* %cloptr10241, i64 0                  ; &cloptr10241[0]
  %f10243 = ptrtoint void(i64,i64)* @lam9565 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10243, i64* %eptr10242                                                 ; store fptr
  %arg7557 = ptrtoint i64* %cloptr10241 to i64                                       ; closure cast; i64* -> i64
  %cloptr10244 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10246 = getelementptr inbounds i64, i64* %cloptr10244, i64 1                  ; &eptr10246[1]
  %eptr10247 = getelementptr inbounds i64, i64* %cloptr10244, i64 2                  ; &eptr10247[2]
  %eptr10248 = getelementptr inbounds i64, i64* %cloptr10244, i64 3                  ; &eptr10248[3]
  store i64 %D97$_37_62, i64* %eptr10246                                             ; *eptr10246 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10247                                            ; *eptr10247 = %WjI$_37drop
  store i64 %O5h$_37length, i64* %eptr10248                                          ; *eptr10248 = %O5h$_37length
  %eptr10245 = getelementptr inbounds i64, i64* %cloptr10244, i64 0                  ; &cloptr10244[0]
  %f10249 = ptrtoint void(i64,i64)* @lam9561 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10249, i64* %eptr10245                                                 ; store fptr
  %arg7556 = ptrtoint i64* %cloptr10244 to i64                                       ; closure cast; i64* -> i64
  %rva8763 = add i64 0, 0                                                            ; quoted ()
  %rva8762 = call i64 @prim_cons(i64 %arg7556, i64 %rva8763)                         ; call prim_cons
  %cloptr10250 = inttoptr i64 %arg7557 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10250)                                        ; assert function application
  %i0ptr10251 = getelementptr inbounds i64, i64* %cloptr10250, i64 0                 ; &cloptr10250[0]
  %f10253 = load i64, i64* %i0ptr10251, align 8                                      ; load; *i0ptr10251
  %fptr10252 = inttoptr i64 %f10253 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10252(i64 %arg7557, i64 %rva8762)                   ; tail call
  ret void
}


define void @lam9744(i64 %env9745, i64 %rvp8272) {
  %cont7000 = call i64 @prim_car(i64 %rvp8272)                                       ; call prim_car
  %rvp8271 = call i64 @prim_cdr(i64 %rvp8272)                                        ; call prim_cdr
  %e59$a = call i64 @prim_car(i64 %rvp8271)                                          ; call prim_car
  %na8206 = call i64 @prim_cdr(i64 %rvp8271)                                         ; call prim_cdr
  %arg7297 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %xbz$a = call i64 @prim_make_45vector(i64 %arg7297, i64 %e59$a)                    ; call prim_make_45vector
  %cloptr10254 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10255 = getelementptr inbounds i64, i64* %cloptr10254, i64 0                  ; &cloptr10254[0]
  %f10256 = ptrtoint void(i64,i64)* @lam9741 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10256, i64* %eptr10255                                                 ; store fptr
  %arg7300 = ptrtoint i64* %cloptr10254 to i64                                       ; closure cast; i64* -> i64
  %cloptr10257 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10259 = getelementptr inbounds i64, i64* %cloptr10257, i64 1                  ; &eptr10259[1]
  %eptr10260 = getelementptr inbounds i64, i64* %cloptr10257, i64 2                  ; &eptr10260[2]
  store i64 %cont7000, i64* %eptr10259                                               ; *eptr10259 = %cont7000
  store i64 %xbz$a, i64* %eptr10260                                                  ; *eptr10260 = %xbz$a
  %eptr10258 = getelementptr inbounds i64, i64* %cloptr10257, i64 0                  ; &cloptr10257[0]
  %f10261 = ptrtoint void(i64,i64)* @lam9737 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10261, i64* %eptr10258                                                 ; store fptr
  %arg7299 = ptrtoint i64* %cloptr10257 to i64                                       ; closure cast; i64* -> i64
  %cloptr10262 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10264 = getelementptr inbounds i64, i64* %cloptr10262, i64 1                  ; &eptr10264[1]
  %eptr10265 = getelementptr inbounds i64, i64* %cloptr10262, i64 2                  ; &eptr10265[2]
  store i64 %cont7000, i64* %eptr10264                                               ; *eptr10264 = %cont7000
  store i64 %xbz$a, i64* %eptr10265                                                  ; *eptr10265 = %xbz$a
  %eptr10263 = getelementptr inbounds i64, i64* %cloptr10262, i64 0                  ; &cloptr10262[0]
  %f10266 = ptrtoint void(i64,i64)* @lam9715 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10266, i64* %eptr10263                                                 ; store fptr
  %arg7298 = ptrtoint i64* %cloptr10262 to i64                                       ; closure cast; i64* -> i64
  %rva8270 = add i64 0, 0                                                            ; quoted ()
  %rva8269 = call i64 @prim_cons(i64 %arg7298, i64 %rva8270)                         ; call prim_cons
  %rva8268 = call i64 @prim_cons(i64 %arg7299, i64 %rva8269)                         ; call prim_cons
  %cloptr10267 = inttoptr i64 %arg7300 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10267)                                        ; assert function application
  %i0ptr10268 = getelementptr inbounds i64, i64* %cloptr10267, i64 0                 ; &cloptr10267[0]
  %f10270 = load i64, i64* %i0ptr10268, align 8                                      ; load; *i0ptr10268
  %fptr10269 = inttoptr i64 %f10270 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10269(i64 %arg7300, i64 %rva8268)                   ; tail call
  ret void
}


define void @lam9741(i64 %env9742, i64 %rvp8213) {
  %cont7006 = call i64 @prim_car(i64 %rvp8213)                                       ; call prim_car
  %rvp8212 = call i64 @prim_cdr(i64 %rvp8213)                                        ; call prim_cdr
  %p7o$k = call i64 @prim_car(i64 %rvp8212)                                          ; call prim_car
  %na8208 = call i64 @prim_cdr(i64 %rvp8212)                                         ; call prim_cdr
  %arg7302 = add i64 0, 0                                                            ; quoted ()
  %rva8211 = add i64 0, 0                                                            ; quoted ()
  %rva8210 = call i64 @prim_cons(i64 %p7o$k, i64 %rva8211)                           ; call prim_cons
  %rva8209 = call i64 @prim_cons(i64 %arg7302, i64 %rva8210)                         ; call prim_cons
  %cloptr10271 = inttoptr i64 %cont7006 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10271)                                        ; assert function application
  %i0ptr10272 = getelementptr inbounds i64, i64* %cloptr10271, i64 0                 ; &cloptr10271[0]
  %f10274 = load i64, i64* %i0ptr10272, align 8                                      ; load; *i0ptr10272
  %fptr10273 = inttoptr i64 %f10274 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10273(i64 %cont7006, i64 %rva8209)                  ; tail call
  ret void
}


define void @lam9737(i64 %env9738, i64 %rvp8240) {
  %envptr10275 = inttoptr i64 %env9738 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10276 = getelementptr inbounds i64, i64* %envptr10275, i64 2                ; &envptr10275[2]
  %xbz$a = load i64, i64* %envptr10276, align 8                                      ; load; *envptr10276
  %envptr10277 = inttoptr i64 %env9738 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10278 = getelementptr inbounds i64, i64* %envptr10277, i64 1                ; &envptr10277[1]
  %cont7000 = load i64, i64* %envptr10278, align 8                                   ; load; *envptr10278
  %_957001 = call i64 @prim_car(i64 %rvp8240)                                        ; call prim_car
  %rvp8239 = call i64 @prim_cdr(i64 %rvp8240)                                        ; call prim_cdr
  %H3u$cc = call i64 @prim_car(i64 %rvp8239)                                         ; call prim_car
  %na8215 = call i64 @prim_cdr(i64 %rvp8239)                                         ; call prim_cdr
  %arg7304 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6899 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7304)                     ; call prim_vector_45ref
  %a6900 = call i64 @prim_null_63(i64 %a6899)                                        ; call prim_null_63
  %cmp10279 = icmp eq i64 %a6900, 15                                                 ; false?
  br i1 %cmp10279, label %else10281, label %then10280                                ; if

then10280:
  %arg7308 = add i64 0, 0                                                            ; quoted ()
  %arg7307 = call i64 @const_init_true()                                             ; quoted #t
  %rva8218 = add i64 0, 0                                                            ; quoted ()
  %rva8217 = call i64 @prim_cons(i64 %arg7307, i64 %rva8218)                         ; call prim_cons
  %rva8216 = call i64 @prim_cons(i64 %arg7308, i64 %rva8217)                         ; call prim_cons
  %cloptr10282 = inttoptr i64 %cont7000 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10282)                                        ; assert function application
  %i0ptr10283 = getelementptr inbounds i64, i64* %cloptr10282, i64 0                 ; &cloptr10282[0]
  %f10285 = load i64, i64* %i0ptr10283, align 8                                      ; load; *i0ptr10283
  %fptr10284 = inttoptr i64 %f10285 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10284(i64 %cont7000, i64 %rva8216)                  ; tail call
  ret void

else10281:
  %arg7310 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6901 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7310)                     ; call prim_vector_45ref
  %a6902 = call i64 @prim_cons_63(i64 %a6901)                                        ; call prim_cons_63
  %cmp10286 = icmp eq i64 %a6902, 15                                                 ; false?
  br i1 %cmp10286, label %else10288, label %then10287                                ; if

then10287:
  %arg7313 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6903 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7313)                     ; call prim_vector_45ref
  %retprim7005 = call i64 @prim_cdr(i64 %a6903)                                      ; call prim_cdr
  %cloptr10289 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10291 = getelementptr inbounds i64, i64* %cloptr10289, i64 1                  ; &eptr10291[1]
  %eptr10292 = getelementptr inbounds i64, i64* %cloptr10289, i64 2                  ; &eptr10292[2]
  %eptr10293 = getelementptr inbounds i64, i64* %cloptr10289, i64 3                  ; &eptr10293[3]
  store i64 %H3u$cc, i64* %eptr10291                                                 ; *eptr10291 = %H3u$cc
  store i64 %cont7000, i64* %eptr10292                                               ; *eptr10292 = %cont7000
  store i64 %xbz$a, i64* %eptr10293                                                  ; *eptr10293 = %xbz$a
  %eptr10290 = getelementptr inbounds i64, i64* %cloptr10289, i64 0                  ; &cloptr10289[0]
  %f10294 = ptrtoint void(i64,i64)* @lam9729 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10294, i64* %eptr10290                                                 ; store fptr
  %arg7318 = ptrtoint i64* %cloptr10289 to i64                                       ; closure cast; i64* -> i64
  %arg7317 = add i64 0, 0                                                            ; quoted ()
  %rva8235 = add i64 0, 0                                                            ; quoted ()
  %rva8234 = call i64 @prim_cons(i64 %retprim7005, i64 %rva8235)                     ; call prim_cons
  %rva8233 = call i64 @prim_cons(i64 %arg7317, i64 %rva8234)                         ; call prim_cons
  %cloptr10295 = inttoptr i64 %arg7318 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10295)                                        ; assert function application
  %i0ptr10296 = getelementptr inbounds i64, i64* %cloptr10295, i64 0                 ; &cloptr10295[0]
  %f10298 = load i64, i64* %i0ptr10296, align 8                                      ; load; *i0ptr10296
  %fptr10297 = inttoptr i64 %f10298 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10297(i64 %arg7318, i64 %rva8233)                   ; tail call
  ret void

else10288:
  %arg7332 = add i64 0, 0                                                            ; quoted ()
  %arg7331 = call i64 @const_init_false()                                            ; quoted #f
  %rva8238 = add i64 0, 0                                                            ; quoted ()
  %rva8237 = call i64 @prim_cons(i64 %arg7331, i64 %rva8238)                         ; call prim_cons
  %rva8236 = call i64 @prim_cons(i64 %arg7332, i64 %rva8237)                         ; call prim_cons
  %cloptr10299 = inttoptr i64 %cont7000 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10299)                                        ; assert function application
  %i0ptr10300 = getelementptr inbounds i64, i64* %cloptr10299, i64 0                 ; &cloptr10299[0]
  %f10302 = load i64, i64* %i0ptr10300, align 8                                      ; load; *i0ptr10300
  %fptr10301 = inttoptr i64 %f10302 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10301(i64 %cont7000, i64 %rva8236)                  ; tail call
  ret void
}


define void @lam9729(i64 %env9730, i64 %rvp8232) {
  %envptr10303 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10304 = getelementptr inbounds i64, i64* %envptr10303, i64 3                ; &envptr10303[3]
  %xbz$a = load i64, i64* %envptr10304, align 8                                      ; load; *envptr10304
  %envptr10305 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10306 = getelementptr inbounds i64, i64* %envptr10305, i64 2                ; &envptr10305[2]
  %cont7000 = load i64, i64* %envptr10306, align 8                                   ; load; *envptr10306
  %envptr10307 = inttoptr i64 %env9730 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10308 = getelementptr inbounds i64, i64* %envptr10307, i64 1                ; &envptr10307[1]
  %H3u$cc = load i64, i64* %envptr10308, align 8                                     ; load; *envptr10308
  %_957002 = call i64 @prim_car(i64 %rvp8232)                                        ; call prim_car
  %rvp8231 = call i64 @prim_cdr(i64 %rvp8232)                                        ; call prim_cdr
  %r2V$b = call i64 @prim_car(i64 %rvp8231)                                          ; call prim_car
  %na8220 = call i64 @prim_cdr(i64 %rvp8231)                                         ; call prim_cdr
  %arg7319 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6904 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7319)                     ; call prim_vector_45ref
  %a6905 = call i64 @prim_cdr(i64 %a6904)                                            ; call prim_cdr
  %arg7323 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7004 = call i64 @prim_vector_45set_33(i64 %xbz$a, i64 %arg7323, i64 %a6905); call prim_vector_45set_33
  %cloptr10309 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10311 = getelementptr inbounds i64, i64* %cloptr10309, i64 1                  ; &eptr10311[1]
  %eptr10312 = getelementptr inbounds i64, i64* %cloptr10309, i64 2                  ; &eptr10312[2]
  store i64 %H3u$cc, i64* %eptr10311                                                 ; *eptr10311 = %H3u$cc
  store i64 %cont7000, i64* %eptr10312                                               ; *eptr10312 = %cont7000
  %eptr10310 = getelementptr inbounds i64, i64* %cloptr10309, i64 0                  ; &cloptr10309[0]
  %f10313 = ptrtoint void(i64,i64)* @lam9725 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10313, i64* %eptr10310                                                 ; store fptr
  %arg7327 = ptrtoint i64* %cloptr10309 to i64                                       ; closure cast; i64* -> i64
  %arg7326 = add i64 0, 0                                                            ; quoted ()
  %rva8230 = add i64 0, 0                                                            ; quoted ()
  %rva8229 = call i64 @prim_cons(i64 %retprim7004, i64 %rva8230)                     ; call prim_cons
  %rva8228 = call i64 @prim_cons(i64 %arg7326, i64 %rva8229)                         ; call prim_cons
  %cloptr10314 = inttoptr i64 %arg7327 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10314)                                        ; assert function application
  %i0ptr10315 = getelementptr inbounds i64, i64* %cloptr10314, i64 0                 ; &cloptr10314[0]
  %f10317 = load i64, i64* %i0ptr10315, align 8                                      ; load; *i0ptr10315
  %fptr10316 = inttoptr i64 %f10317 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10316(i64 %arg7327, i64 %rva8228)                   ; tail call
  ret void
}


define void @lam9725(i64 %env9726, i64 %rvp8227) {
  %envptr10318 = inttoptr i64 %env9726 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10319 = getelementptr inbounds i64, i64* %envptr10318, i64 2                ; &envptr10318[2]
  %cont7000 = load i64, i64* %envptr10319, align 8                                   ; load; *envptr10319
  %envptr10320 = inttoptr i64 %env9726 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10321 = getelementptr inbounds i64, i64* %envptr10320, i64 1                ; &envptr10320[1]
  %H3u$cc = load i64, i64* %envptr10321, align 8                                     ; load; *envptr10321
  %_957003 = call i64 @prim_car(i64 %rvp8227)                                        ; call prim_car
  %rvp8226 = call i64 @prim_cdr(i64 %rvp8227)                                        ; call prim_cdr
  %A3E$_950 = call i64 @prim_car(i64 %rvp8226)                                       ; call prim_car
  %na8222 = call i64 @prim_cdr(i64 %rvp8226)                                         ; call prim_cdr
  %rva8225 = add i64 0, 0                                                            ; quoted ()
  %rva8224 = call i64 @prim_cons(i64 %H3u$cc, i64 %rva8225)                          ; call prim_cons
  %rva8223 = call i64 @prim_cons(i64 %cont7000, i64 %rva8224)                        ; call prim_cons
  %cloptr10322 = inttoptr i64 %H3u$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10322)                                        ; assert function application
  %i0ptr10323 = getelementptr inbounds i64, i64* %cloptr10322, i64 0                 ; &cloptr10322[0]
  %f10325 = load i64, i64* %i0ptr10323, align 8                                      ; load; *i0ptr10323
  %fptr10324 = inttoptr i64 %f10325 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10324(i64 %H3u$cc, i64 %rva8223)                    ; tail call
  ret void
}


define void @lam9715(i64 %env9716, i64 %rvp8267) {
  %envptr10326 = inttoptr i64 %env9716 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10327 = getelementptr inbounds i64, i64* %envptr10326, i64 2                ; &envptr10326[2]
  %xbz$a = load i64, i64* %envptr10327, align 8                                      ; load; *envptr10327
  %envptr10328 = inttoptr i64 %env9716 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10329 = getelementptr inbounds i64, i64* %envptr10328, i64 1                ; &envptr10328[1]
  %cont7000 = load i64, i64* %envptr10329, align 8                                   ; load; *envptr10329
  %_957001 = call i64 @prim_car(i64 %rvp8267)                                        ; call prim_car
  %rvp8266 = call i64 @prim_cdr(i64 %rvp8267)                                        ; call prim_cdr
  %H3u$cc = call i64 @prim_car(i64 %rvp8266)                                         ; call prim_car
  %na8242 = call i64 @prim_cdr(i64 %rvp8266)                                         ; call prim_cdr
  %arg7334 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6899 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7334)                     ; call prim_vector_45ref
  %a6900 = call i64 @prim_null_63(i64 %a6899)                                        ; call prim_null_63
  %cmp10330 = icmp eq i64 %a6900, 15                                                 ; false?
  br i1 %cmp10330, label %else10332, label %then10331                                ; if

then10331:
  %arg7338 = add i64 0, 0                                                            ; quoted ()
  %arg7337 = call i64 @const_init_true()                                             ; quoted #t
  %rva8245 = add i64 0, 0                                                            ; quoted ()
  %rva8244 = call i64 @prim_cons(i64 %arg7337, i64 %rva8245)                         ; call prim_cons
  %rva8243 = call i64 @prim_cons(i64 %arg7338, i64 %rva8244)                         ; call prim_cons
  %cloptr10333 = inttoptr i64 %cont7000 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10333)                                        ; assert function application
  %i0ptr10334 = getelementptr inbounds i64, i64* %cloptr10333, i64 0                 ; &cloptr10333[0]
  %f10336 = load i64, i64* %i0ptr10334, align 8                                      ; load; *i0ptr10334
  %fptr10335 = inttoptr i64 %f10336 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10335(i64 %cont7000, i64 %rva8243)                  ; tail call
  ret void

else10332:
  %arg7340 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6901 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7340)                     ; call prim_vector_45ref
  %a6902 = call i64 @prim_cons_63(i64 %a6901)                                        ; call prim_cons_63
  %cmp10337 = icmp eq i64 %a6902, 15                                                 ; false?
  br i1 %cmp10337, label %else10339, label %then10338                                ; if

then10338:
  %arg7343 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6903 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7343)                     ; call prim_vector_45ref
  %retprim7005 = call i64 @prim_cdr(i64 %a6903)                                      ; call prim_cdr
  %cloptr10340 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10342 = getelementptr inbounds i64, i64* %cloptr10340, i64 1                  ; &eptr10342[1]
  %eptr10343 = getelementptr inbounds i64, i64* %cloptr10340, i64 2                  ; &eptr10343[2]
  %eptr10344 = getelementptr inbounds i64, i64* %cloptr10340, i64 3                  ; &eptr10344[3]
  store i64 %H3u$cc, i64* %eptr10342                                                 ; *eptr10342 = %H3u$cc
  store i64 %cont7000, i64* %eptr10343                                               ; *eptr10343 = %cont7000
  store i64 %xbz$a, i64* %eptr10344                                                  ; *eptr10344 = %xbz$a
  %eptr10341 = getelementptr inbounds i64, i64* %cloptr10340, i64 0                  ; &cloptr10340[0]
  %f10345 = ptrtoint void(i64,i64)* @lam9707 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10345, i64* %eptr10341                                                 ; store fptr
  %arg7348 = ptrtoint i64* %cloptr10340 to i64                                       ; closure cast; i64* -> i64
  %arg7347 = add i64 0, 0                                                            ; quoted ()
  %rva8262 = add i64 0, 0                                                            ; quoted ()
  %rva8261 = call i64 @prim_cons(i64 %retprim7005, i64 %rva8262)                     ; call prim_cons
  %rva8260 = call i64 @prim_cons(i64 %arg7347, i64 %rva8261)                         ; call prim_cons
  %cloptr10346 = inttoptr i64 %arg7348 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10346)                                        ; assert function application
  %i0ptr10347 = getelementptr inbounds i64, i64* %cloptr10346, i64 0                 ; &cloptr10346[0]
  %f10349 = load i64, i64* %i0ptr10347, align 8                                      ; load; *i0ptr10347
  %fptr10348 = inttoptr i64 %f10349 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10348(i64 %arg7348, i64 %rva8260)                   ; tail call
  ret void

else10339:
  %arg7362 = add i64 0, 0                                                            ; quoted ()
  %arg7361 = call i64 @const_init_false()                                            ; quoted #f
  %rva8265 = add i64 0, 0                                                            ; quoted ()
  %rva8264 = call i64 @prim_cons(i64 %arg7361, i64 %rva8265)                         ; call prim_cons
  %rva8263 = call i64 @prim_cons(i64 %arg7362, i64 %rva8264)                         ; call prim_cons
  %cloptr10350 = inttoptr i64 %cont7000 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10350)                                        ; assert function application
  %i0ptr10351 = getelementptr inbounds i64, i64* %cloptr10350, i64 0                 ; &cloptr10350[0]
  %f10353 = load i64, i64* %i0ptr10351, align 8                                      ; load; *i0ptr10351
  %fptr10352 = inttoptr i64 %f10353 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10352(i64 %cont7000, i64 %rva8263)                  ; tail call
  ret void
}


define void @lam9707(i64 %env9708, i64 %rvp8259) {
  %envptr10354 = inttoptr i64 %env9708 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10355 = getelementptr inbounds i64, i64* %envptr10354, i64 3                ; &envptr10354[3]
  %xbz$a = load i64, i64* %envptr10355, align 8                                      ; load; *envptr10355
  %envptr10356 = inttoptr i64 %env9708 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10357 = getelementptr inbounds i64, i64* %envptr10356, i64 2                ; &envptr10356[2]
  %cont7000 = load i64, i64* %envptr10357, align 8                                   ; load; *envptr10357
  %envptr10358 = inttoptr i64 %env9708 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10359 = getelementptr inbounds i64, i64* %envptr10358, i64 1                ; &envptr10358[1]
  %H3u$cc = load i64, i64* %envptr10359, align 8                                     ; load; *envptr10359
  %_957002 = call i64 @prim_car(i64 %rvp8259)                                        ; call prim_car
  %rvp8258 = call i64 @prim_cdr(i64 %rvp8259)                                        ; call prim_cdr
  %r2V$b = call i64 @prim_car(i64 %rvp8258)                                          ; call prim_car
  %na8247 = call i64 @prim_cdr(i64 %rvp8258)                                         ; call prim_cdr
  %arg7349 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6904 = call i64 @prim_vector_45ref(i64 %xbz$a, i64 %arg7349)                     ; call prim_vector_45ref
  %a6905 = call i64 @prim_cdr(i64 %a6904)                                            ; call prim_cdr
  %arg7353 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7004 = call i64 @prim_vector_45set_33(i64 %xbz$a, i64 %arg7353, i64 %a6905); call prim_vector_45set_33
  %cloptr10360 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10362 = getelementptr inbounds i64, i64* %cloptr10360, i64 1                  ; &eptr10362[1]
  %eptr10363 = getelementptr inbounds i64, i64* %cloptr10360, i64 2                  ; &eptr10363[2]
  store i64 %H3u$cc, i64* %eptr10362                                                 ; *eptr10362 = %H3u$cc
  store i64 %cont7000, i64* %eptr10363                                               ; *eptr10363 = %cont7000
  %eptr10361 = getelementptr inbounds i64, i64* %cloptr10360, i64 0                  ; &cloptr10360[0]
  %f10364 = ptrtoint void(i64,i64)* @lam9703 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10364, i64* %eptr10361                                                 ; store fptr
  %arg7357 = ptrtoint i64* %cloptr10360 to i64                                       ; closure cast; i64* -> i64
  %arg7356 = add i64 0, 0                                                            ; quoted ()
  %rva8257 = add i64 0, 0                                                            ; quoted ()
  %rva8256 = call i64 @prim_cons(i64 %retprim7004, i64 %rva8257)                     ; call prim_cons
  %rva8255 = call i64 @prim_cons(i64 %arg7356, i64 %rva8256)                         ; call prim_cons
  %cloptr10365 = inttoptr i64 %arg7357 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10365)                                        ; assert function application
  %i0ptr10366 = getelementptr inbounds i64, i64* %cloptr10365, i64 0                 ; &cloptr10365[0]
  %f10368 = load i64, i64* %i0ptr10366, align 8                                      ; load; *i0ptr10366
  %fptr10367 = inttoptr i64 %f10368 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10367(i64 %arg7357, i64 %rva8255)                   ; tail call
  ret void
}


define void @lam9703(i64 %env9704, i64 %rvp8254) {
  %envptr10369 = inttoptr i64 %env9704 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10370 = getelementptr inbounds i64, i64* %envptr10369, i64 2                ; &envptr10369[2]
  %cont7000 = load i64, i64* %envptr10370, align 8                                   ; load; *envptr10370
  %envptr10371 = inttoptr i64 %env9704 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10372 = getelementptr inbounds i64, i64* %envptr10371, i64 1                ; &envptr10371[1]
  %H3u$cc = load i64, i64* %envptr10372, align 8                                     ; load; *envptr10372
  %_957003 = call i64 @prim_car(i64 %rvp8254)                                        ; call prim_car
  %rvp8253 = call i64 @prim_cdr(i64 %rvp8254)                                        ; call prim_cdr
  %A3E$_950 = call i64 @prim_car(i64 %rvp8253)                                       ; call prim_car
  %na8249 = call i64 @prim_cdr(i64 %rvp8253)                                         ; call prim_cdr
  %rva8252 = add i64 0, 0                                                            ; quoted ()
  %rva8251 = call i64 @prim_cons(i64 %H3u$cc, i64 %rva8252)                          ; call prim_cons
  %rva8250 = call i64 @prim_cons(i64 %cont7000, i64 %rva8251)                        ; call prim_cons
  %cloptr10373 = inttoptr i64 %H3u$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10373)                                        ; assert function application
  %i0ptr10374 = getelementptr inbounds i64, i64* %cloptr10373, i64 0                 ; &cloptr10373[0]
  %f10376 = load i64, i64* %i0ptr10374, align 8                                      ; load; *i0ptr10374
  %fptr10375 = inttoptr i64 %f10376 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10375(i64 %H3u$cc, i64 %rva8250)                    ; tail call
  ret void
}


define void @lam9692(i64 %env9693, i64 %rvp8335) {
  %cont7007 = call i64 @prim_car(i64 %rvp8335)                                       ; call prim_car
  %rvp8334 = call i64 @prim_cdr(i64 %rvp8335)                                        ; call prim_cdr
  %U6I$lst = call i64 @prim_car(i64 %rvp8334)                                        ; call prim_car
  %rvp8333 = call i64 @prim_cdr(i64 %rvp8334)                                        ; call prim_cdr
  %BMj$n = call i64 @prim_car(i64 %rvp8333)                                          ; call prim_car
  %na8274 = call i64 @prim_cdr(i64 %rvp8333)                                         ; call prim_cdr
  %arg7365 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %gCc$lst = call i64 @prim_make_45vector(i64 %arg7365, i64 %U6I$lst)                ; call prim_make_45vector
  %arg7367 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %nn9$n = call i64 @prim_make_45vector(i64 %arg7367, i64 %BMj$n)                    ; call prim_make_45vector
  %cloptr10377 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10378 = getelementptr inbounds i64, i64* %cloptr10377, i64 0                  ; &cloptr10377[0]
  %f10379 = ptrtoint void(i64,i64)* @lam9688 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10379, i64* %eptr10378                                                 ; store fptr
  %arg7370 = ptrtoint i64* %cloptr10377 to i64                                       ; closure cast; i64* -> i64
  %cloptr10380 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10382 = getelementptr inbounds i64, i64* %cloptr10380, i64 1                  ; &eptr10382[1]
  %eptr10383 = getelementptr inbounds i64, i64* %cloptr10380, i64 2                  ; &eptr10383[2]
  %eptr10384 = getelementptr inbounds i64, i64* %cloptr10380, i64 3                  ; &eptr10384[3]
  store i64 %gCc$lst, i64* %eptr10382                                                ; *eptr10382 = %gCc$lst
  store i64 %cont7007, i64* %eptr10383                                               ; *eptr10383 = %cont7007
  store i64 %nn9$n, i64* %eptr10384                                                  ; *eptr10384 = %nn9$n
  %eptr10381 = getelementptr inbounds i64, i64* %cloptr10380, i64 0                  ; &cloptr10380[0]
  %f10385 = ptrtoint void(i64,i64)* @lam9685 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10385, i64* %eptr10381                                                 ; store fptr
  %arg7369 = ptrtoint i64* %cloptr10380 to i64                                       ; closure cast; i64* -> i64
  %cloptr10386 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10388 = getelementptr inbounds i64, i64* %cloptr10386, i64 1                  ; &eptr10388[1]
  %eptr10389 = getelementptr inbounds i64, i64* %cloptr10386, i64 2                  ; &eptr10389[2]
  %eptr10390 = getelementptr inbounds i64, i64* %cloptr10386, i64 3                  ; &eptr10390[3]
  store i64 %gCc$lst, i64* %eptr10388                                                ; *eptr10388 = %gCc$lst
  store i64 %cont7007, i64* %eptr10389                                               ; *eptr10389 = %cont7007
  store i64 %nn9$n, i64* %eptr10390                                                  ; *eptr10390 = %nn9$n
  %eptr10387 = getelementptr inbounds i64, i64* %cloptr10386, i64 0                  ; &cloptr10386[0]
  %f10391 = ptrtoint void(i64,i64)* @lam9664 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10391, i64* %eptr10387                                                 ; store fptr
  %arg7368 = ptrtoint i64* %cloptr10386 to i64                                       ; closure cast; i64* -> i64
  %rva8332 = add i64 0, 0                                                            ; quoted ()
  %rva8331 = call i64 @prim_cons(i64 %arg7368, i64 %rva8332)                         ; call prim_cons
  %rva8330 = call i64 @prim_cons(i64 %arg7369, i64 %rva8331)                         ; call prim_cons
  %cloptr10392 = inttoptr i64 %arg7370 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10392)                                        ; assert function application
  %i0ptr10393 = getelementptr inbounds i64, i64* %cloptr10392, i64 0                 ; &cloptr10392[0]
  %f10395 = load i64, i64* %i0ptr10393, align 8                                      ; load; *i0ptr10393
  %fptr10394 = inttoptr i64 %f10395 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10394(i64 %arg7370, i64 %rva8330)                   ; tail call
  ret void
}


define void @lam9688(i64 %env9689, i64 %rvp8281) {
  %cont7014 = call i64 @prim_car(i64 %rvp8281)                                       ; call prim_car
  %rvp8280 = call i64 @prim_cdr(i64 %rvp8281)                                        ; call prim_cdr
  %Udt$u = call i64 @prim_car(i64 %rvp8280)                                          ; call prim_car
  %na8276 = call i64 @prim_cdr(i64 %rvp8280)                                         ; call prim_cdr
  %rva8279 = add i64 0, 0                                                            ; quoted ()
  %rva8278 = call i64 @prim_cons(i64 %Udt$u, i64 %rva8279)                           ; call prim_cons
  %rva8277 = call i64 @prim_cons(i64 %cont7014, i64 %rva8278)                        ; call prim_cons
  %cloptr10396 = inttoptr i64 %Udt$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10396)                                        ; assert function application
  %i0ptr10397 = getelementptr inbounds i64, i64* %cloptr10396, i64 0                 ; &cloptr10396[0]
  %f10399 = load i64, i64* %i0ptr10397, align 8                                      ; load; *i0ptr10397
  %fptr10398 = inttoptr i64 %f10399 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10398(i64 %Udt$u, i64 %rva8277)                     ; tail call
  ret void
}


define void @lam9685(i64 %env9686, i64 %rvp8305) {
  %envptr10400 = inttoptr i64 %env9686 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10401 = getelementptr inbounds i64, i64* %envptr10400, i64 3                ; &envptr10400[3]
  %nn9$n = load i64, i64* %envptr10401, align 8                                      ; load; *envptr10401
  %envptr10402 = inttoptr i64 %env9686 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10403 = getelementptr inbounds i64, i64* %envptr10402, i64 2                ; &envptr10402[2]
  %cont7007 = load i64, i64* %envptr10403, align 8                                   ; load; *envptr10403
  %envptr10404 = inttoptr i64 %env9686 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10405 = getelementptr inbounds i64, i64* %envptr10404, i64 1                ; &envptr10404[1]
  %gCc$lst = load i64, i64* %envptr10405, align 8                                    ; load; *envptr10405
  %_957008 = call i64 @prim_car(i64 %rvp8305)                                        ; call prim_car
  %rvp8304 = call i64 @prim_cdr(i64 %rvp8305)                                        ; call prim_cdr
  %MBT$cc = call i64 @prim_car(i64 %rvp8304)                                         ; call prim_car
  %na8283 = call i64 @prim_cdr(i64 %rvp8304)                                         ; call prim_cdr
  %arg7374 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6906 = call i64 @prim_vector_45ref(i64 %nn9$n, i64 %arg7374)                     ; call prim_vector_45ref
  %arg7377 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6907 = call i64 @prim__61(i64 %arg7377, i64 %a6906)                              ; call prim__61
  %cmp10406 = icmp eq i64 %a6907, 15                                                 ; false?
  br i1 %cmp10406, label %else10408, label %then10407                                ; if

then10407:
  %arg7378 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7009 = call i64 @prim_vector_45ref(i64 %gCc$lst, i64 %arg7378)             ; call prim_vector_45ref
  %arg7381 = add i64 0, 0                                                            ; quoted ()
  %rva8286 = add i64 0, 0                                                            ; quoted ()
  %rva8285 = call i64 @prim_cons(i64 %retprim7009, i64 %rva8286)                     ; call prim_cons
  %rva8284 = call i64 @prim_cons(i64 %arg7381, i64 %rva8285)                         ; call prim_cons
  %cloptr10409 = inttoptr i64 %cont7007 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10409)                                        ; assert function application
  %i0ptr10410 = getelementptr inbounds i64, i64* %cloptr10409, i64 0                 ; &cloptr10409[0]
  %f10412 = load i64, i64* %i0ptr10410, align 8                                      ; load; *i0ptr10410
  %fptr10411 = inttoptr i64 %f10412 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10411(i64 %cont7007, i64 %rva8284)                  ; tail call
  ret void

else10408:
  %arg7383 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6908 = call i64 @prim_vector_45ref(i64 %gCc$lst, i64 %arg7383)                   ; call prim_vector_45ref
  %a6909 = call i64 @prim_cdr(i64 %a6908)                                            ; call prim_cdr
  %arg7387 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7013 = call i64 @prim_vector_45set_33(i64 %gCc$lst, i64 %arg7387, i64 %a6909); call prim_vector_45set_33
  %cloptr10413 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10415 = getelementptr inbounds i64, i64* %cloptr10413, i64 1                  ; &eptr10415[1]
  %eptr10416 = getelementptr inbounds i64, i64* %cloptr10413, i64 2                  ; &eptr10416[2]
  %eptr10417 = getelementptr inbounds i64, i64* %cloptr10413, i64 3                  ; &eptr10417[3]
  store i64 %cont7007, i64* %eptr10415                                               ; *eptr10415 = %cont7007
  store i64 %nn9$n, i64* %eptr10416                                                  ; *eptr10416 = %nn9$n
  store i64 %MBT$cc, i64* %eptr10417                                                 ; *eptr10417 = %MBT$cc
  %eptr10414 = getelementptr inbounds i64, i64* %cloptr10413, i64 0                  ; &cloptr10413[0]
  %f10418 = ptrtoint void(i64,i64)* @lam9679 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10418, i64* %eptr10414                                                 ; store fptr
  %arg7391 = ptrtoint i64* %cloptr10413 to i64                                       ; closure cast; i64* -> i64
  %arg7390 = add i64 0, 0                                                            ; quoted ()
  %rva8303 = add i64 0, 0                                                            ; quoted ()
  %rva8302 = call i64 @prim_cons(i64 %retprim7013, i64 %rva8303)                     ; call prim_cons
  %rva8301 = call i64 @prim_cons(i64 %arg7390, i64 %rva8302)                         ; call prim_cons
  %cloptr10419 = inttoptr i64 %arg7391 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10419)                                        ; assert function application
  %i0ptr10420 = getelementptr inbounds i64, i64* %cloptr10419, i64 0                 ; &cloptr10419[0]
  %f10422 = load i64, i64* %i0ptr10420, align 8                                      ; load; *i0ptr10420
  %fptr10421 = inttoptr i64 %f10422 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10421(i64 %arg7391, i64 %rva8301)                   ; tail call
  ret void
}


define void @lam9679(i64 %env9680, i64 %rvp8300) {
  %envptr10423 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10424 = getelementptr inbounds i64, i64* %envptr10423, i64 3                ; &envptr10423[3]
  %MBT$cc = load i64, i64* %envptr10424, align 8                                     ; load; *envptr10424
  %envptr10425 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10426 = getelementptr inbounds i64, i64* %envptr10425, i64 2                ; &envptr10425[2]
  %nn9$n = load i64, i64* %envptr10426, align 8                                      ; load; *envptr10426
  %envptr10427 = inttoptr i64 %env9680 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10428 = getelementptr inbounds i64, i64* %envptr10427, i64 1                ; &envptr10427[1]
  %cont7007 = load i64, i64* %envptr10428, align 8                                   ; load; *envptr10428
  %_957010 = call i64 @prim_car(i64 %rvp8300)                                        ; call prim_car
  %rvp8299 = call i64 @prim_cdr(i64 %rvp8300)                                        ; call prim_cdr
  %yLJ$_950 = call i64 @prim_car(i64 %rvp8299)                                       ; call prim_car
  %na8288 = call i64 @prim_cdr(i64 %rvp8299)                                         ; call prim_cdr
  %arg7392 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6910 = call i64 @prim_vector_45ref(i64 %nn9$n, i64 %arg7392)                     ; call prim_vector_45ref
  %arg7394 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6911 = call i64 @prim__45(i64 %a6910, i64 %arg7394)                              ; call prim__45
  %arg7397 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7012 = call i64 @prim_vector_45set_33(i64 %nn9$n, i64 %arg7397, i64 %a6911); call prim_vector_45set_33
  %cloptr10429 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10431 = getelementptr inbounds i64, i64* %cloptr10429, i64 1                  ; &eptr10431[1]
  %eptr10432 = getelementptr inbounds i64, i64* %cloptr10429, i64 2                  ; &eptr10432[2]
  store i64 %cont7007, i64* %eptr10431                                               ; *eptr10431 = %cont7007
  store i64 %MBT$cc, i64* %eptr10432                                                 ; *eptr10432 = %MBT$cc
  %eptr10430 = getelementptr inbounds i64, i64* %cloptr10429, i64 0                  ; &cloptr10429[0]
  %f10433 = ptrtoint void(i64,i64)* @lam9674 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10433, i64* %eptr10430                                                 ; store fptr
  %arg7401 = ptrtoint i64* %cloptr10429 to i64                                       ; closure cast; i64* -> i64
  %arg7400 = add i64 0, 0                                                            ; quoted ()
  %rva8298 = add i64 0, 0                                                            ; quoted ()
  %rva8297 = call i64 @prim_cons(i64 %retprim7012, i64 %rva8298)                     ; call prim_cons
  %rva8296 = call i64 @prim_cons(i64 %arg7400, i64 %rva8297)                         ; call prim_cons
  %cloptr10434 = inttoptr i64 %arg7401 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10434)                                        ; assert function application
  %i0ptr10435 = getelementptr inbounds i64, i64* %cloptr10434, i64 0                 ; &cloptr10434[0]
  %f10437 = load i64, i64* %i0ptr10435, align 8                                      ; load; *i0ptr10435
  %fptr10436 = inttoptr i64 %f10437 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10436(i64 %arg7401, i64 %rva8296)                   ; tail call
  ret void
}


define void @lam9674(i64 %env9675, i64 %rvp8295) {
  %envptr10438 = inttoptr i64 %env9675 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10439 = getelementptr inbounds i64, i64* %envptr10438, i64 2                ; &envptr10438[2]
  %MBT$cc = load i64, i64* %envptr10439, align 8                                     ; load; *envptr10439
  %envptr10440 = inttoptr i64 %env9675 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10441 = getelementptr inbounds i64, i64* %envptr10440, i64 1                ; &envptr10440[1]
  %cont7007 = load i64, i64* %envptr10441, align 8                                   ; load; *envptr10441
  %_957011 = call i64 @prim_car(i64 %rvp8295)                                        ; call prim_car
  %rvp8294 = call i64 @prim_cdr(i64 %rvp8295)                                        ; call prim_cdr
  %imt$_951 = call i64 @prim_car(i64 %rvp8294)                                       ; call prim_car
  %na8290 = call i64 @prim_cdr(i64 %rvp8294)                                         ; call prim_cdr
  %rva8293 = add i64 0, 0                                                            ; quoted ()
  %rva8292 = call i64 @prim_cons(i64 %MBT$cc, i64 %rva8293)                          ; call prim_cons
  %rva8291 = call i64 @prim_cons(i64 %cont7007, i64 %rva8292)                        ; call prim_cons
  %cloptr10442 = inttoptr i64 %MBT$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10442)                                        ; assert function application
  %i0ptr10443 = getelementptr inbounds i64, i64* %cloptr10442, i64 0                 ; &cloptr10442[0]
  %f10445 = load i64, i64* %i0ptr10443, align 8                                      ; load; *i0ptr10443
  %fptr10444 = inttoptr i64 %f10445 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10444(i64 %MBT$cc, i64 %rva8291)                    ; tail call
  ret void
}


define void @lam9664(i64 %env9665, i64 %rvp8329) {
  %envptr10446 = inttoptr i64 %env9665 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10447 = getelementptr inbounds i64, i64* %envptr10446, i64 3                ; &envptr10446[3]
  %nn9$n = load i64, i64* %envptr10447, align 8                                      ; load; *envptr10447
  %envptr10448 = inttoptr i64 %env9665 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10449 = getelementptr inbounds i64, i64* %envptr10448, i64 2                ; &envptr10448[2]
  %cont7007 = load i64, i64* %envptr10449, align 8                                   ; load; *envptr10449
  %envptr10450 = inttoptr i64 %env9665 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10451 = getelementptr inbounds i64, i64* %envptr10450, i64 1                ; &envptr10450[1]
  %gCc$lst = load i64, i64* %envptr10451, align 8                                    ; load; *envptr10451
  %_957008 = call i64 @prim_car(i64 %rvp8329)                                        ; call prim_car
  %rvp8328 = call i64 @prim_cdr(i64 %rvp8329)                                        ; call prim_cdr
  %MBT$cc = call i64 @prim_car(i64 %rvp8328)                                         ; call prim_car
  %na8307 = call i64 @prim_cdr(i64 %rvp8328)                                         ; call prim_cdr
  %arg7405 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6906 = call i64 @prim_vector_45ref(i64 %nn9$n, i64 %arg7405)                     ; call prim_vector_45ref
  %arg7408 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6907 = call i64 @prim__61(i64 %arg7408, i64 %a6906)                              ; call prim__61
  %cmp10452 = icmp eq i64 %a6907, 15                                                 ; false?
  br i1 %cmp10452, label %else10454, label %then10453                                ; if

then10453:
  %arg7409 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7009 = call i64 @prim_vector_45ref(i64 %gCc$lst, i64 %arg7409)             ; call prim_vector_45ref
  %arg7412 = add i64 0, 0                                                            ; quoted ()
  %rva8310 = add i64 0, 0                                                            ; quoted ()
  %rva8309 = call i64 @prim_cons(i64 %retprim7009, i64 %rva8310)                     ; call prim_cons
  %rva8308 = call i64 @prim_cons(i64 %arg7412, i64 %rva8309)                         ; call prim_cons
  %cloptr10455 = inttoptr i64 %cont7007 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10455)                                        ; assert function application
  %i0ptr10456 = getelementptr inbounds i64, i64* %cloptr10455, i64 0                 ; &cloptr10455[0]
  %f10458 = load i64, i64* %i0ptr10456, align 8                                      ; load; *i0ptr10456
  %fptr10457 = inttoptr i64 %f10458 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10457(i64 %cont7007, i64 %rva8308)                  ; tail call
  ret void

else10454:
  %arg7414 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6908 = call i64 @prim_vector_45ref(i64 %gCc$lst, i64 %arg7414)                   ; call prim_vector_45ref
  %a6909 = call i64 @prim_cdr(i64 %a6908)                                            ; call prim_cdr
  %arg7418 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7013 = call i64 @prim_vector_45set_33(i64 %gCc$lst, i64 %arg7418, i64 %a6909); call prim_vector_45set_33
  %cloptr10459 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10461 = getelementptr inbounds i64, i64* %cloptr10459, i64 1                  ; &eptr10461[1]
  %eptr10462 = getelementptr inbounds i64, i64* %cloptr10459, i64 2                  ; &eptr10462[2]
  %eptr10463 = getelementptr inbounds i64, i64* %cloptr10459, i64 3                  ; &eptr10463[3]
  store i64 %cont7007, i64* %eptr10461                                               ; *eptr10461 = %cont7007
  store i64 %nn9$n, i64* %eptr10462                                                  ; *eptr10462 = %nn9$n
  store i64 %MBT$cc, i64* %eptr10463                                                 ; *eptr10463 = %MBT$cc
  %eptr10460 = getelementptr inbounds i64, i64* %cloptr10459, i64 0                  ; &cloptr10459[0]
  %f10464 = ptrtoint void(i64,i64)* @lam9658 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10464, i64* %eptr10460                                                 ; store fptr
  %arg7422 = ptrtoint i64* %cloptr10459 to i64                                       ; closure cast; i64* -> i64
  %arg7421 = add i64 0, 0                                                            ; quoted ()
  %rva8327 = add i64 0, 0                                                            ; quoted ()
  %rva8326 = call i64 @prim_cons(i64 %retprim7013, i64 %rva8327)                     ; call prim_cons
  %rva8325 = call i64 @prim_cons(i64 %arg7421, i64 %rva8326)                         ; call prim_cons
  %cloptr10465 = inttoptr i64 %arg7422 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10465)                                        ; assert function application
  %i0ptr10466 = getelementptr inbounds i64, i64* %cloptr10465, i64 0                 ; &cloptr10465[0]
  %f10468 = load i64, i64* %i0ptr10466, align 8                                      ; load; *i0ptr10466
  %fptr10467 = inttoptr i64 %f10468 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10467(i64 %arg7422, i64 %rva8325)                   ; tail call
  ret void
}


define void @lam9658(i64 %env9659, i64 %rvp8324) {
  %envptr10469 = inttoptr i64 %env9659 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10470 = getelementptr inbounds i64, i64* %envptr10469, i64 3                ; &envptr10469[3]
  %MBT$cc = load i64, i64* %envptr10470, align 8                                     ; load; *envptr10470
  %envptr10471 = inttoptr i64 %env9659 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10472 = getelementptr inbounds i64, i64* %envptr10471, i64 2                ; &envptr10471[2]
  %nn9$n = load i64, i64* %envptr10472, align 8                                      ; load; *envptr10472
  %envptr10473 = inttoptr i64 %env9659 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10474 = getelementptr inbounds i64, i64* %envptr10473, i64 1                ; &envptr10473[1]
  %cont7007 = load i64, i64* %envptr10474, align 8                                   ; load; *envptr10474
  %_957010 = call i64 @prim_car(i64 %rvp8324)                                        ; call prim_car
  %rvp8323 = call i64 @prim_cdr(i64 %rvp8324)                                        ; call prim_cdr
  %yLJ$_950 = call i64 @prim_car(i64 %rvp8323)                                       ; call prim_car
  %na8312 = call i64 @prim_cdr(i64 %rvp8323)                                         ; call prim_cdr
  %arg7423 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6910 = call i64 @prim_vector_45ref(i64 %nn9$n, i64 %arg7423)                     ; call prim_vector_45ref
  %arg7425 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6911 = call i64 @prim__45(i64 %a6910, i64 %arg7425)                              ; call prim__45
  %arg7428 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7012 = call i64 @prim_vector_45set_33(i64 %nn9$n, i64 %arg7428, i64 %a6911); call prim_vector_45set_33
  %cloptr10475 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10477 = getelementptr inbounds i64, i64* %cloptr10475, i64 1                  ; &eptr10477[1]
  %eptr10478 = getelementptr inbounds i64, i64* %cloptr10475, i64 2                  ; &eptr10478[2]
  store i64 %cont7007, i64* %eptr10477                                               ; *eptr10477 = %cont7007
  store i64 %MBT$cc, i64* %eptr10478                                                 ; *eptr10478 = %MBT$cc
  %eptr10476 = getelementptr inbounds i64, i64* %cloptr10475, i64 0                  ; &cloptr10475[0]
  %f10479 = ptrtoint void(i64,i64)* @lam9653 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10479, i64* %eptr10476                                                 ; store fptr
  %arg7432 = ptrtoint i64* %cloptr10475 to i64                                       ; closure cast; i64* -> i64
  %arg7431 = add i64 0, 0                                                            ; quoted ()
  %rva8322 = add i64 0, 0                                                            ; quoted ()
  %rva8321 = call i64 @prim_cons(i64 %retprim7012, i64 %rva8322)                     ; call prim_cons
  %rva8320 = call i64 @prim_cons(i64 %arg7431, i64 %rva8321)                         ; call prim_cons
  %cloptr10480 = inttoptr i64 %arg7432 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10480)                                        ; assert function application
  %i0ptr10481 = getelementptr inbounds i64, i64* %cloptr10480, i64 0                 ; &cloptr10480[0]
  %f10483 = load i64, i64* %i0ptr10481, align 8                                      ; load; *i0ptr10481
  %fptr10482 = inttoptr i64 %f10483 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10482(i64 %arg7432, i64 %rva8320)                   ; tail call
  ret void
}


define void @lam9653(i64 %env9654, i64 %rvp8319) {
  %envptr10484 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10485 = getelementptr inbounds i64, i64* %envptr10484, i64 2                ; &envptr10484[2]
  %MBT$cc = load i64, i64* %envptr10485, align 8                                     ; load; *envptr10485
  %envptr10486 = inttoptr i64 %env9654 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10487 = getelementptr inbounds i64, i64* %envptr10486, i64 1                ; &envptr10486[1]
  %cont7007 = load i64, i64* %envptr10487, align 8                                   ; load; *envptr10487
  %_957011 = call i64 @prim_car(i64 %rvp8319)                                        ; call prim_car
  %rvp8318 = call i64 @prim_cdr(i64 %rvp8319)                                        ; call prim_cdr
  %imt$_951 = call i64 @prim_car(i64 %rvp8318)                                       ; call prim_car
  %na8314 = call i64 @prim_cdr(i64 %rvp8318)                                         ; call prim_cdr
  %rva8317 = add i64 0, 0                                                            ; quoted ()
  %rva8316 = call i64 @prim_cons(i64 %MBT$cc, i64 %rva8317)                          ; call prim_cons
  %rva8315 = call i64 @prim_cons(i64 %cont7007, i64 %rva8316)                        ; call prim_cons
  %cloptr10488 = inttoptr i64 %MBT$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10488)                                        ; assert function application
  %i0ptr10489 = getelementptr inbounds i64, i64* %cloptr10488, i64 0                 ; &cloptr10488[0]
  %f10491 = load i64, i64* %i0ptr10489, align 8                                      ; load; *i0ptr10489
  %fptr10490 = inttoptr i64 %f10491 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10490(i64 %MBT$cc, i64 %rva8315)                    ; tail call
  ret void
}


define void @lam9642(i64 %env9643, i64 %rvp8390) {
  %cont7015 = call i64 @prim_car(i64 %rvp8390)                                       ; call prim_car
  %rvp8389 = call i64 @prim_cdr(i64 %rvp8390)                                        ; call prim_cdr
  %TeZ$v = call i64 @prim_car(i64 %rvp8389)                                          ; call prim_car
  %rvp8388 = call i64 @prim_cdr(i64 %rvp8389)                                        ; call prim_cdr
  %Jde$lst = call i64 @prim_car(i64 %rvp8388)                                        ; call prim_car
  %na8337 = call i64 @prim_cdr(i64 %rvp8388)                                         ; call prim_cdr
  %arg7437 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %YoY$lst = call i64 @prim_make_45vector(i64 %arg7437, i64 %Jde$lst)                ; call prim_make_45vector
  %cloptr10492 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10493 = getelementptr inbounds i64, i64* %cloptr10492, i64 0                  ; &cloptr10492[0]
  %f10494 = ptrtoint void(i64,i64)* @lam9639 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10494, i64* %eptr10493                                                 ; store fptr
  %arg7440 = ptrtoint i64* %cloptr10492 to i64                                       ; closure cast; i64* -> i64
  %cloptr10495 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10497 = getelementptr inbounds i64, i64* %cloptr10495, i64 1                  ; &eptr10497[1]
  %eptr10498 = getelementptr inbounds i64, i64* %cloptr10495, i64 2                  ; &eptr10498[2]
  %eptr10499 = getelementptr inbounds i64, i64* %cloptr10495, i64 3                  ; &eptr10499[3]
  store i64 %TeZ$v, i64* %eptr10497                                                  ; *eptr10497 = %TeZ$v
  store i64 %YoY$lst, i64* %eptr10498                                                ; *eptr10498 = %YoY$lst
  store i64 %cont7015, i64* %eptr10499                                               ; *eptr10499 = %cont7015
  %eptr10496 = getelementptr inbounds i64, i64* %cloptr10495, i64 0                  ; &cloptr10495[0]
  %f10500 = ptrtoint void(i64,i64)* @lam9636 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10500, i64* %eptr10496                                                 ; store fptr
  %arg7439 = ptrtoint i64* %cloptr10495 to i64                                       ; closure cast; i64* -> i64
  %cloptr10501 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10503 = getelementptr inbounds i64, i64* %cloptr10501, i64 1                  ; &eptr10503[1]
  %eptr10504 = getelementptr inbounds i64, i64* %cloptr10501, i64 2                  ; &eptr10504[2]
  %eptr10505 = getelementptr inbounds i64, i64* %cloptr10501, i64 3                  ; &eptr10505[3]
  store i64 %TeZ$v, i64* %eptr10503                                                  ; *eptr10503 = %TeZ$v
  store i64 %YoY$lst, i64* %eptr10504                                                ; *eptr10504 = %YoY$lst
  store i64 %cont7015, i64* %eptr10505                                               ; *eptr10505 = %cont7015
  %eptr10502 = getelementptr inbounds i64, i64* %cloptr10501, i64 0                  ; &cloptr10501[0]
  %f10506 = ptrtoint void(i64,i64)* @lam9619 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10506, i64* %eptr10502                                                 ; store fptr
  %arg7438 = ptrtoint i64* %cloptr10501 to i64                                       ; closure cast; i64* -> i64
  %rva8387 = add i64 0, 0                                                            ; quoted ()
  %rva8386 = call i64 @prim_cons(i64 %arg7438, i64 %rva8387)                         ; call prim_cons
  %rva8385 = call i64 @prim_cons(i64 %arg7439, i64 %rva8386)                         ; call prim_cons
  %cloptr10507 = inttoptr i64 %arg7440 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10507)                                        ; assert function application
  %i0ptr10508 = getelementptr inbounds i64, i64* %cloptr10507, i64 0                 ; &cloptr10507[0]
  %f10510 = load i64, i64* %i0ptr10508, align 8                                      ; load; *i0ptr10508
  %fptr10509 = inttoptr i64 %f10510 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10509(i64 %arg7440, i64 %rva8385)                   ; tail call
  ret void
}


define void @lam9639(i64 %env9640, i64 %rvp8344) {
  %cont7020 = call i64 @prim_car(i64 %rvp8344)                                       ; call prim_car
  %rvp8343 = call i64 @prim_cdr(i64 %rvp8344)                                        ; call prim_cdr
  %oO6$u = call i64 @prim_car(i64 %rvp8343)                                          ; call prim_car
  %na8339 = call i64 @prim_cdr(i64 %rvp8343)                                         ; call prim_cdr
  %rva8342 = add i64 0, 0                                                            ; quoted ()
  %rva8341 = call i64 @prim_cons(i64 %oO6$u, i64 %rva8342)                           ; call prim_cons
  %rva8340 = call i64 @prim_cons(i64 %cont7020, i64 %rva8341)                        ; call prim_cons
  %cloptr10511 = inttoptr i64 %oO6$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10511)                                        ; assert function application
  %i0ptr10512 = getelementptr inbounds i64, i64* %cloptr10511, i64 0                 ; &cloptr10511[0]
  %f10514 = load i64, i64* %i0ptr10512, align 8                                      ; load; *i0ptr10512
  %fptr10513 = inttoptr i64 %f10514 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10513(i64 %oO6$u, i64 %rva8340)                     ; tail call
  ret void
}


define void @lam9636(i64 %env9637, i64 %rvp8364) {
  %envptr10515 = inttoptr i64 %env9637 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10516 = getelementptr inbounds i64, i64* %envptr10515, i64 3                ; &envptr10515[3]
  %cont7015 = load i64, i64* %envptr10516, align 8                                   ; load; *envptr10516
  %envptr10517 = inttoptr i64 %env9637 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10518 = getelementptr inbounds i64, i64* %envptr10517, i64 2                ; &envptr10517[2]
  %YoY$lst = load i64, i64* %envptr10518, align 8                                    ; load; *envptr10518
  %envptr10519 = inttoptr i64 %env9637 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10520 = getelementptr inbounds i64, i64* %envptr10519, i64 1                ; &envptr10519[1]
  %TeZ$v = load i64, i64* %envptr10520, align 8                                      ; load; *envptr10520
  %_957016 = call i64 @prim_car(i64 %rvp8364)                                        ; call prim_car
  %rvp8363 = call i64 @prim_cdr(i64 %rvp8364)                                        ; call prim_cdr
  %crD$cc = call i64 @prim_car(i64 %rvp8363)                                         ; call prim_car
  %na8346 = call i64 @prim_cdr(i64 %rvp8363)                                         ; call prim_cdr
  %arg7444 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6912 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7444)                   ; call prim_vector_45ref
  %a6913 = call i64 @prim_null_63(i64 %a6912)                                        ; call prim_null_63
  %cmp10521 = icmp eq i64 %a6913, 15                                                 ; false?
  br i1 %cmp10521, label %else10523, label %then10522                                ; if

then10522:
  %arg7448 = add i64 0, 0                                                            ; quoted ()
  %arg7447 = call i64 @const_init_false()                                            ; quoted #f
  %rva8349 = add i64 0, 0                                                            ; quoted ()
  %rva8348 = call i64 @prim_cons(i64 %arg7447, i64 %rva8349)                         ; call prim_cons
  %rva8347 = call i64 @prim_cons(i64 %arg7448, i64 %rva8348)                         ; call prim_cons
  %cloptr10524 = inttoptr i64 %cont7015 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10524)                                        ; assert function application
  %i0ptr10525 = getelementptr inbounds i64, i64* %cloptr10524, i64 0                 ; &cloptr10524[0]
  %f10527 = load i64, i64* %i0ptr10525, align 8                                      ; load; *i0ptr10525
  %fptr10526 = inttoptr i64 %f10527 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10526(i64 %cont7015, i64 %rva8347)                  ; tail call
  ret void

else10523:
  %arg7450 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6914 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7450)                   ; call prim_vector_45ref
  %a6915 = call i64 @prim_car(i64 %a6914)                                            ; call prim_car
  %a6916 = call i64 @prim_eqv_63(i64 %a6915, i64 %TeZ$v)                             ; call prim_eqv_63
  %cmp10528 = icmp eq i64 %a6916, 15                                                 ; false?
  br i1 %cmp10528, label %else10530, label %then10529                                ; if

then10529:
  %arg7455 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7017 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7455)             ; call prim_vector_45ref
  %arg7458 = add i64 0, 0                                                            ; quoted ()
  %rva8352 = add i64 0, 0                                                            ; quoted ()
  %rva8351 = call i64 @prim_cons(i64 %retprim7017, i64 %rva8352)                     ; call prim_cons
  %rva8350 = call i64 @prim_cons(i64 %arg7458, i64 %rva8351)                         ; call prim_cons
  %cloptr10531 = inttoptr i64 %cont7015 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10531)                                        ; assert function application
  %i0ptr10532 = getelementptr inbounds i64, i64* %cloptr10531, i64 0                 ; &cloptr10531[0]
  %f10534 = load i64, i64* %i0ptr10532, align 8                                      ; load; *i0ptr10532
  %fptr10533 = inttoptr i64 %f10534 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10533(i64 %cont7015, i64 %rva8350)                  ; tail call
  ret void

else10530:
  %arg7460 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6917 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7460)                   ; call prim_vector_45ref
  %a6918 = call i64 @prim_cdr(i64 %a6917)                                            ; call prim_cdr
  %arg7464 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7019 = call i64 @prim_vector_45set_33(i64 %YoY$lst, i64 %arg7464, i64 %a6918); call prim_vector_45set_33
  %cloptr10535 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10537 = getelementptr inbounds i64, i64* %cloptr10535, i64 1                  ; &eptr10537[1]
  %eptr10538 = getelementptr inbounds i64, i64* %cloptr10535, i64 2                  ; &eptr10538[2]
  store i64 %crD$cc, i64* %eptr10537                                                 ; *eptr10537 = %crD$cc
  store i64 %cont7015, i64* %eptr10538                                               ; *eptr10538 = %cont7015
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10535, i64 0                  ; &cloptr10535[0]
  %f10539 = ptrtoint void(i64,i64)* @lam9630 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10539, i64* %eptr10536                                                 ; store fptr
  %arg7468 = ptrtoint i64* %cloptr10535 to i64                                       ; closure cast; i64* -> i64
  %arg7467 = add i64 0, 0                                                            ; quoted ()
  %rva8362 = add i64 0, 0                                                            ; quoted ()
  %rva8361 = call i64 @prim_cons(i64 %retprim7019, i64 %rva8362)                     ; call prim_cons
  %rva8360 = call i64 @prim_cons(i64 %arg7467, i64 %rva8361)                         ; call prim_cons
  %cloptr10540 = inttoptr i64 %arg7468 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10540)                                        ; assert function application
  %i0ptr10541 = getelementptr inbounds i64, i64* %cloptr10540, i64 0                 ; &cloptr10540[0]
  %f10543 = load i64, i64* %i0ptr10541, align 8                                      ; load; *i0ptr10541
  %fptr10542 = inttoptr i64 %f10543 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10542(i64 %arg7468, i64 %rva8360)                   ; tail call
  ret void
}


define void @lam9630(i64 %env9631, i64 %rvp8359) {
  %envptr10544 = inttoptr i64 %env9631 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10545 = getelementptr inbounds i64, i64* %envptr10544, i64 2                ; &envptr10544[2]
  %cont7015 = load i64, i64* %envptr10545, align 8                                   ; load; *envptr10545
  %envptr10546 = inttoptr i64 %env9631 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10547 = getelementptr inbounds i64, i64* %envptr10546, i64 1                ; &envptr10546[1]
  %crD$cc = load i64, i64* %envptr10547, align 8                                     ; load; *envptr10547
  %_957018 = call i64 @prim_car(i64 %rvp8359)                                        ; call prim_car
  %rvp8358 = call i64 @prim_cdr(i64 %rvp8359)                                        ; call prim_cdr
  %qML$_950 = call i64 @prim_car(i64 %rvp8358)                                       ; call prim_car
  %na8354 = call i64 @prim_cdr(i64 %rvp8358)                                         ; call prim_cdr
  %rva8357 = add i64 0, 0                                                            ; quoted ()
  %rva8356 = call i64 @prim_cons(i64 %crD$cc, i64 %rva8357)                          ; call prim_cons
  %rva8355 = call i64 @prim_cons(i64 %cont7015, i64 %rva8356)                        ; call prim_cons
  %cloptr10548 = inttoptr i64 %crD$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10548)                                        ; assert function application
  %i0ptr10549 = getelementptr inbounds i64, i64* %cloptr10548, i64 0                 ; &cloptr10548[0]
  %f10551 = load i64, i64* %i0ptr10549, align 8                                      ; load; *i0ptr10549
  %fptr10550 = inttoptr i64 %f10551 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10550(i64 %crD$cc, i64 %rva8355)                    ; tail call
  ret void
}


define void @lam9619(i64 %env9620, i64 %rvp8384) {
  %envptr10552 = inttoptr i64 %env9620 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10553 = getelementptr inbounds i64, i64* %envptr10552, i64 3                ; &envptr10552[3]
  %cont7015 = load i64, i64* %envptr10553, align 8                                   ; load; *envptr10553
  %envptr10554 = inttoptr i64 %env9620 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10555 = getelementptr inbounds i64, i64* %envptr10554, i64 2                ; &envptr10554[2]
  %YoY$lst = load i64, i64* %envptr10555, align 8                                    ; load; *envptr10555
  %envptr10556 = inttoptr i64 %env9620 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10557 = getelementptr inbounds i64, i64* %envptr10556, i64 1                ; &envptr10556[1]
  %TeZ$v = load i64, i64* %envptr10557, align 8                                      ; load; *envptr10557
  %_957016 = call i64 @prim_car(i64 %rvp8384)                                        ; call prim_car
  %rvp8383 = call i64 @prim_cdr(i64 %rvp8384)                                        ; call prim_cdr
  %crD$cc = call i64 @prim_car(i64 %rvp8383)                                         ; call prim_car
  %na8366 = call i64 @prim_cdr(i64 %rvp8383)                                         ; call prim_cdr
  %arg7472 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6912 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7472)                   ; call prim_vector_45ref
  %a6913 = call i64 @prim_null_63(i64 %a6912)                                        ; call prim_null_63
  %cmp10558 = icmp eq i64 %a6913, 15                                                 ; false?
  br i1 %cmp10558, label %else10560, label %then10559                                ; if

then10559:
  %arg7476 = add i64 0, 0                                                            ; quoted ()
  %arg7475 = call i64 @const_init_false()                                            ; quoted #f
  %rva8369 = add i64 0, 0                                                            ; quoted ()
  %rva8368 = call i64 @prim_cons(i64 %arg7475, i64 %rva8369)                         ; call prim_cons
  %rva8367 = call i64 @prim_cons(i64 %arg7476, i64 %rva8368)                         ; call prim_cons
  %cloptr10561 = inttoptr i64 %cont7015 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10561)                                        ; assert function application
  %i0ptr10562 = getelementptr inbounds i64, i64* %cloptr10561, i64 0                 ; &cloptr10561[0]
  %f10564 = load i64, i64* %i0ptr10562, align 8                                      ; load; *i0ptr10562
  %fptr10563 = inttoptr i64 %f10564 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10563(i64 %cont7015, i64 %rva8367)                  ; tail call
  ret void

else10560:
  %arg7478 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6914 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7478)                   ; call prim_vector_45ref
  %a6915 = call i64 @prim_car(i64 %a6914)                                            ; call prim_car
  %a6916 = call i64 @prim_eqv_63(i64 %a6915, i64 %TeZ$v)                             ; call prim_eqv_63
  %cmp10565 = icmp eq i64 %a6916, 15                                                 ; false?
  br i1 %cmp10565, label %else10567, label %then10566                                ; if

then10566:
  %arg7483 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7017 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7483)             ; call prim_vector_45ref
  %arg7486 = add i64 0, 0                                                            ; quoted ()
  %rva8372 = add i64 0, 0                                                            ; quoted ()
  %rva8371 = call i64 @prim_cons(i64 %retprim7017, i64 %rva8372)                     ; call prim_cons
  %rva8370 = call i64 @prim_cons(i64 %arg7486, i64 %rva8371)                         ; call prim_cons
  %cloptr10568 = inttoptr i64 %cont7015 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10568)                                        ; assert function application
  %i0ptr10569 = getelementptr inbounds i64, i64* %cloptr10568, i64 0                 ; &cloptr10568[0]
  %f10571 = load i64, i64* %i0ptr10569, align 8                                      ; load; *i0ptr10569
  %fptr10570 = inttoptr i64 %f10571 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10570(i64 %cont7015, i64 %rva8370)                  ; tail call
  ret void

else10567:
  %arg7488 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6917 = call i64 @prim_vector_45ref(i64 %YoY$lst, i64 %arg7488)                   ; call prim_vector_45ref
  %a6918 = call i64 @prim_cdr(i64 %a6917)                                            ; call prim_cdr
  %arg7492 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7019 = call i64 @prim_vector_45set_33(i64 %YoY$lst, i64 %arg7492, i64 %a6918); call prim_vector_45set_33
  %cloptr10572 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10574 = getelementptr inbounds i64, i64* %cloptr10572, i64 1                  ; &eptr10574[1]
  %eptr10575 = getelementptr inbounds i64, i64* %cloptr10572, i64 2                  ; &eptr10575[2]
  store i64 %crD$cc, i64* %eptr10574                                                 ; *eptr10574 = %crD$cc
  store i64 %cont7015, i64* %eptr10575                                               ; *eptr10575 = %cont7015
  %eptr10573 = getelementptr inbounds i64, i64* %cloptr10572, i64 0                  ; &cloptr10572[0]
  %f10576 = ptrtoint void(i64,i64)* @lam9613 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10576, i64* %eptr10573                                                 ; store fptr
  %arg7496 = ptrtoint i64* %cloptr10572 to i64                                       ; closure cast; i64* -> i64
  %arg7495 = add i64 0, 0                                                            ; quoted ()
  %rva8382 = add i64 0, 0                                                            ; quoted ()
  %rva8381 = call i64 @prim_cons(i64 %retprim7019, i64 %rva8382)                     ; call prim_cons
  %rva8380 = call i64 @prim_cons(i64 %arg7495, i64 %rva8381)                         ; call prim_cons
  %cloptr10577 = inttoptr i64 %arg7496 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10577)                                        ; assert function application
  %i0ptr10578 = getelementptr inbounds i64, i64* %cloptr10577, i64 0                 ; &cloptr10577[0]
  %f10580 = load i64, i64* %i0ptr10578, align 8                                      ; load; *i0ptr10578
  %fptr10579 = inttoptr i64 %f10580 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10579(i64 %arg7496, i64 %rva8380)                   ; tail call
  ret void
}


define void @lam9613(i64 %env9614, i64 %rvp8379) {
  %envptr10581 = inttoptr i64 %env9614 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10582 = getelementptr inbounds i64, i64* %envptr10581, i64 2                ; &envptr10581[2]
  %cont7015 = load i64, i64* %envptr10582, align 8                                   ; load; *envptr10582
  %envptr10583 = inttoptr i64 %env9614 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10584 = getelementptr inbounds i64, i64* %envptr10583, i64 1                ; &envptr10583[1]
  %crD$cc = load i64, i64* %envptr10584, align 8                                     ; load; *envptr10584
  %_957018 = call i64 @prim_car(i64 %rvp8379)                                        ; call prim_car
  %rvp8378 = call i64 @prim_cdr(i64 %rvp8379)                                        ; call prim_cdr
  %qML$_950 = call i64 @prim_car(i64 %rvp8378)                                       ; call prim_car
  %na8374 = call i64 @prim_cdr(i64 %rvp8378)                                         ; call prim_cdr
  %rva8377 = add i64 0, 0                                                            ; quoted ()
  %rva8376 = call i64 @prim_cons(i64 %crD$cc, i64 %rva8377)                          ; call prim_cons
  %rva8375 = call i64 @prim_cons(i64 %cont7015, i64 %rva8376)                        ; call prim_cons
  %cloptr10585 = inttoptr i64 %crD$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10585)                                        ; assert function application
  %i0ptr10586 = getelementptr inbounds i64, i64* %cloptr10585, i64 0                 ; &cloptr10585[0]
  %f10588 = load i64, i64* %i0ptr10586, align 8                                      ; load; *i0ptr10586
  %fptr10587 = inttoptr i64 %f10588 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10587(i64 %crD$cc, i64 %rva8375)                    ; tail call
  ret void
}


define void @lam9601(i64 %env9602, i64 %BtY$args7022) {
  %envptr10589 = inttoptr i64 %env9602 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10590 = getelementptr inbounds i64, i64* %envptr10589, i64 1                ; &envptr10589[1]
  %yUw$_37foldl1 = load i64, i64* %envptr10590, align 8                              ; load; *envptr10590
  %cont7021 = call i64 @prim_car(i64 %BtY$args7022)                                  ; call prim_car
  %BtY$args = call i64 @prim_cdr(i64 %BtY$args7022)                                  ; call prim_cdr
  %a6919 = call i64 @prim_null_63(i64 %BtY$args)                                     ; call prim_null_63
  %cmp10591 = icmp eq i64 %a6919, 15                                                 ; false?
  br i1 %cmp10591, label %else10593, label %then10592                                ; if

then10592:
  %arg7504 = add i64 0, 0                                                            ; quoted ()
  %arg7503 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva8393 = add i64 0, 0                                                            ; quoted ()
  %rva8392 = call i64 @prim_cons(i64 %arg7503, i64 %rva8393)                         ; call prim_cons
  %rva8391 = call i64 @prim_cons(i64 %arg7504, i64 %rva8392)                         ; call prim_cons
  %cloptr10594 = inttoptr i64 %cont7021 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10594)                                        ; assert function application
  %i0ptr10595 = getelementptr inbounds i64, i64* %cloptr10594, i64 0                 ; &cloptr10594[0]
  %f10597 = load i64, i64* %i0ptr10595, align 8                                      ; load; *i0ptr10595
  %fptr10596 = inttoptr i64 %f10597 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10596(i64 %cont7021, i64 %rva8391)                  ; tail call
  ret void

else10593:
  %a6920 = call i64 @prim_cdr(i64 %BtY$args)                                         ; call prim_cdr
  %a6921 = call i64 @prim_null_63(i64 %a6920)                                        ; call prim_null_63
  %cmp10598 = icmp eq i64 %a6921, 15                                                 ; false?
  br i1 %cmp10598, label %else10600, label %then10599                                ; if

then10599:
  %retprim7023 = call i64 @prim_car(i64 %BtY$args)                                   ; call prim_car
  %arg7510 = add i64 0, 0                                                            ; quoted ()
  %rva8396 = add i64 0, 0                                                            ; quoted ()
  %rva8395 = call i64 @prim_cons(i64 %retprim7023, i64 %rva8396)                     ; call prim_cons
  %rva8394 = call i64 @prim_cons(i64 %arg7510, i64 %rva8395)                         ; call prim_cons
  %cloptr10601 = inttoptr i64 %cont7021 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10601)                                        ; assert function application
  %i0ptr10602 = getelementptr inbounds i64, i64* %cloptr10601, i64 0                 ; &cloptr10601[0]
  %f10604 = load i64, i64* %i0ptr10602, align 8                                      ; load; *i0ptr10602
  %fptr10603 = inttoptr i64 %f10604 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10603(i64 %cont7021, i64 %rva8394)                  ; tail call
  ret void

else10600:
  %a6922 = call i64 @prim_car(i64 %BtY$args)                                         ; call prim_car
  %a6923 = call i64 @prim_cdr(i64 %BtY$args)                                         ; call prim_cdr
  %cloptr10605 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10606 = getelementptr inbounds i64, i64* %cloptr10605, i64 0                  ; &cloptr10605[0]
  %f10607 = ptrtoint void(i64,i64)* @lam9599 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10607, i64* %eptr10606                                                 ; store fptr
  %arg7516 = ptrtoint i64* %cloptr10605 to i64                                       ; closure cast; i64* -> i64
  %rva8409 = add i64 0, 0                                                            ; quoted ()
  %rva8408 = call i64 @prim_cons(i64 %a6923, i64 %rva8409)                           ; call prim_cons
  %rva8407 = call i64 @prim_cons(i64 %a6922, i64 %rva8408)                           ; call prim_cons
  %rva8406 = call i64 @prim_cons(i64 %arg7516, i64 %rva8407)                         ; call prim_cons
  %rva8405 = call i64 @prim_cons(i64 %cont7021, i64 %rva8406)                        ; call prim_cons
  %cloptr10608 = inttoptr i64 %yUw$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10608)                                        ; assert function application
  %i0ptr10609 = getelementptr inbounds i64, i64* %cloptr10608, i64 0                 ; &cloptr10608[0]
  %f10611 = load i64, i64* %i0ptr10609, align 8                                      ; load; *i0ptr10609
  %fptr10610 = inttoptr i64 %f10611 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10610(i64 %yUw$_37foldl1, i64 %rva8405)             ; tail call
  ret void
}


define void @lam9599(i64 %env9600, i64 %rvp8404) {
  %cont7024 = call i64 @prim_car(i64 %rvp8404)                                       ; call prim_car
  %rvp8403 = call i64 @prim_cdr(i64 %rvp8404)                                        ; call prim_cdr
  %evX$n = call i64 @prim_car(i64 %rvp8403)                                          ; call prim_car
  %rvp8402 = call i64 @prim_cdr(i64 %rvp8403)                                        ; call prim_cdr
  %ejV$v = call i64 @prim_car(i64 %rvp8402)                                          ; call prim_car
  %na8398 = call i64 @prim_cdr(i64 %rvp8402)                                         ; call prim_cdr
  %retprim7025 = call i64 @prim__47(i64 %ejV$v, i64 %evX$n)                          ; call prim__47
  %arg7522 = add i64 0, 0                                                            ; quoted ()
  %rva8401 = add i64 0, 0                                                            ; quoted ()
  %rva8400 = call i64 @prim_cons(i64 %retprim7025, i64 %rva8401)                     ; call prim_cons
  %rva8399 = call i64 @prim_cons(i64 %arg7522, i64 %rva8400)                         ; call prim_cons
  %cloptr10612 = inttoptr i64 %cont7024 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10612)                                        ; assert function application
  %i0ptr10613 = getelementptr inbounds i64, i64* %cloptr10612, i64 0                 ; &cloptr10612[0]
  %f10615 = load i64, i64* %i0ptr10613, align 8                                      ; load; *i0ptr10613
  %fptr10614 = inttoptr i64 %f10615 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10614(i64 %cont7024, i64 %rva8399)                  ; tail call
  ret void
}


define void @lam9589(i64 %env9590, i64 %rvp8416) {
  %cont7026 = call i64 @prim_car(i64 %rvp8416)                                       ; call prim_car
  %rvp8415 = call i64 @prim_cdr(i64 %rvp8416)                                        ; call prim_cdr
  %iml$x = call i64 @prim_car(i64 %rvp8415)                                          ; call prim_car
  %na8411 = call i64 @prim_cdr(i64 %rvp8415)                                         ; call prim_cdr
  %retprim7027 = call i64 @prim_car(i64 %iml$x)                                      ; call prim_car
  %arg7526 = add i64 0, 0                                                            ; quoted ()
  %rva8414 = add i64 0, 0                                                            ; quoted ()
  %rva8413 = call i64 @prim_cons(i64 %retprim7027, i64 %rva8414)                     ; call prim_cons
  %rva8412 = call i64 @prim_cons(i64 %arg7526, i64 %rva8413)                         ; call prim_cons
  %cloptr10616 = inttoptr i64 %cont7026 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10616)                                        ; assert function application
  %i0ptr10617 = getelementptr inbounds i64, i64* %cloptr10616, i64 0                 ; &cloptr10616[0]
  %f10619 = load i64, i64* %i0ptr10617, align 8                                      ; load; *i0ptr10617
  %fptr10618 = inttoptr i64 %f10619 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10618(i64 %cont7026, i64 %rva8412)                  ; tail call
  ret void
}


define void @lam9585(i64 %env9586, i64 %rvp8423) {
  %cont7028 = call i64 @prim_car(i64 %rvp8423)                                       ; call prim_car
  %rvp8422 = call i64 @prim_cdr(i64 %rvp8423)                                        ; call prim_cdr
  %Ejy$x = call i64 @prim_car(i64 %rvp8422)                                          ; call prim_car
  %na8418 = call i64 @prim_cdr(i64 %rvp8422)                                         ; call prim_cdr
  %a6924 = call i64 @prim_cdr(i64 %Ejy$x)                                            ; call prim_cdr
  %retprim7029 = call i64 @prim_car(i64 %a6924)                                      ; call prim_car
  %arg7531 = add i64 0, 0                                                            ; quoted ()
  %rva8421 = add i64 0, 0                                                            ; quoted ()
  %rva8420 = call i64 @prim_cons(i64 %retprim7029, i64 %rva8421)                     ; call prim_cons
  %rva8419 = call i64 @prim_cons(i64 %arg7531, i64 %rva8420)                         ; call prim_cons
  %cloptr10620 = inttoptr i64 %cont7028 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10620)                                        ; assert function application
  %i0ptr10621 = getelementptr inbounds i64, i64* %cloptr10620, i64 0                 ; &cloptr10620[0]
  %f10623 = load i64, i64* %i0ptr10621, align 8                                      ; load; *i0ptr10621
  %fptr10622 = inttoptr i64 %f10623 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10622(i64 %cont7028, i64 %rva8419)                  ; tail call
  ret void
}


define void @lam9581(i64 %env9582, i64 %rvp8430) {
  %cont7030 = call i64 @prim_car(i64 %rvp8430)                                       ; call prim_car
  %rvp8429 = call i64 @prim_cdr(i64 %rvp8430)                                        ; call prim_cdr
  %vVE$x = call i64 @prim_car(i64 %rvp8429)                                          ; call prim_car
  %na8425 = call i64 @prim_cdr(i64 %rvp8429)                                         ; call prim_cdr
  %a6925 = call i64 @prim_cdr(i64 %vVE$x)                                            ; call prim_cdr
  %a6926 = call i64 @prim_cdr(i64 %a6925)                                            ; call prim_cdr
  %retprim7031 = call i64 @prim_car(i64 %a6926)                                      ; call prim_car
  %arg7537 = add i64 0, 0                                                            ; quoted ()
  %rva8428 = add i64 0, 0                                                            ; quoted ()
  %rva8427 = call i64 @prim_cons(i64 %retprim7031, i64 %rva8428)                     ; call prim_cons
  %rva8426 = call i64 @prim_cons(i64 %arg7537, i64 %rva8427)                         ; call prim_cons
  %cloptr10624 = inttoptr i64 %cont7030 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10624)                                        ; assert function application
  %i0ptr10625 = getelementptr inbounds i64, i64* %cloptr10624, i64 0                 ; &cloptr10624[0]
  %f10627 = load i64, i64* %i0ptr10625, align 8                                      ; load; *i0ptr10625
  %fptr10626 = inttoptr i64 %f10627 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10626(i64 %cont7030, i64 %rva8426)                  ; tail call
  ret void
}


define void @lam9577(i64 %env9578, i64 %rvp8437) {
  %cont7032 = call i64 @prim_car(i64 %rvp8437)                                       ; call prim_car
  %rvp8436 = call i64 @prim_cdr(i64 %rvp8437)                                        ; call prim_cdr
  %Mhf$x = call i64 @prim_car(i64 %rvp8436)                                          ; call prim_car
  %na8432 = call i64 @prim_cdr(i64 %rvp8436)                                         ; call prim_cdr
  %a6927 = call i64 @prim_cdr(i64 %Mhf$x)                                            ; call prim_cdr
  %a6928 = call i64 @prim_cdr(i64 %a6927)                                            ; call prim_cdr
  %a6929 = call i64 @prim_cdr(i64 %a6928)                                            ; call prim_cdr
  %retprim7033 = call i64 @prim_car(i64 %a6929)                                      ; call prim_car
  %arg7544 = add i64 0, 0                                                            ; quoted ()
  %rva8435 = add i64 0, 0                                                            ; quoted ()
  %rva8434 = call i64 @prim_cons(i64 %retprim7033, i64 %rva8435)                     ; call prim_cons
  %rva8433 = call i64 @prim_cons(i64 %arg7544, i64 %rva8434)                         ; call prim_cons
  %cloptr10628 = inttoptr i64 %cont7032 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10628)                                        ; assert function application
  %i0ptr10629 = getelementptr inbounds i64, i64* %cloptr10628, i64 0                 ; &cloptr10628[0]
  %f10631 = load i64, i64* %i0ptr10629, align 8                                      ; load; *i0ptr10629
  %fptr10630 = inttoptr i64 %f10631 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10630(i64 %cont7032, i64 %rva8433)                  ; tail call
  ret void
}


define void @lam9573(i64 %env9574, i64 %rvp8447) {
  %cont7034 = call i64 @prim_car(i64 %rvp8447)                                       ; call prim_car
  %rvp8446 = call i64 @prim_cdr(i64 %rvp8447)                                        ; call prim_cdr
  %Zoj$p = call i64 @prim_car(i64 %rvp8446)                                          ; call prim_car
  %na8439 = call i64 @prim_cdr(i64 %rvp8446)                                         ; call prim_cdr
  %a6930 = call i64 @prim_cons_63(i64 %Zoj$p)                                        ; call prim_cons_63
  %cmp10632 = icmp eq i64 %a6930, 15                                                 ; false?
  br i1 %cmp10632, label %else10634, label %then10633                                ; if

then10633:
  %a6931 = call i64 @prim_car(i64 %Zoj$p)                                            ; call prim_car
  %arg7548 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym10635, i32 0, i32 0)); quoted string
  %retprim7035 = call i64 @prim_eq_63(i64 %a6931, i64 %arg7548)                      ; call prim_eq_63
  %arg7551 = add i64 0, 0                                                            ; quoted ()
  %rva8442 = add i64 0, 0                                                            ; quoted ()
  %rva8441 = call i64 @prim_cons(i64 %retprim7035, i64 %rva8442)                     ; call prim_cons
  %rva8440 = call i64 @prim_cons(i64 %arg7551, i64 %rva8441)                         ; call prim_cons
  %cloptr10636 = inttoptr i64 %cont7034 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10636)                                        ; assert function application
  %i0ptr10637 = getelementptr inbounds i64, i64* %cloptr10636, i64 0                 ; &cloptr10636[0]
  %f10639 = load i64, i64* %i0ptr10637, align 8                                      ; load; *i0ptr10637
  %fptr10638 = inttoptr i64 %f10639 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10638(i64 %cont7034, i64 %rva8440)                  ; tail call
  ret void

else10634:
  %arg7554 = add i64 0, 0                                                            ; quoted ()
  %arg7553 = call i64 @const_init_false()                                            ; quoted #f
  %rva8445 = add i64 0, 0                                                            ; quoted ()
  %rva8444 = call i64 @prim_cons(i64 %arg7553, i64 %rva8445)                         ; call prim_cons
  %rva8443 = call i64 @prim_cons(i64 %arg7554, i64 %rva8444)                         ; call prim_cons
  %cloptr10640 = inttoptr i64 %cont7034 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10640)                                        ; assert function application
  %i0ptr10641 = getelementptr inbounds i64, i64* %cloptr10640, i64 0                 ; &cloptr10640[0]
  %f10643 = load i64, i64* %i0ptr10641, align 8                                      ; load; *i0ptr10641
  %fptr10642 = inttoptr i64 %f10643 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10642(i64 %cont7034, i64 %rva8443)                  ; tail call
  ret void
}


define void @lam9565(i64 %env9566, i64 %hPs$lst7098) {
  %cont7097 = call i64 @prim_car(i64 %hPs$lst7098)                                   ; call prim_car
  %hPs$lst = call i64 @prim_cdr(i64 %hPs$lst7098)                                    ; call prim_cdr
  %arg7561 = add i64 0, 0                                                            ; quoted ()
  %rva8450 = add i64 0, 0                                                            ; quoted ()
  %rva8449 = call i64 @prim_cons(i64 %hPs$lst, i64 %rva8450)                         ; call prim_cons
  %rva8448 = call i64 @prim_cons(i64 %arg7561, i64 %rva8449)                         ; call prim_cons
  %cloptr10644 = inttoptr i64 %cont7097 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10644)                                        ; assert function application
  %i0ptr10645 = getelementptr inbounds i64, i64* %cloptr10644, i64 0                 ; &cloptr10644[0]
  %f10647 = load i64, i64* %i0ptr10645, align 8                                      ; load; *i0ptr10645
  %fptr10646 = inttoptr i64 %f10647 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10646(i64 %cont7097, i64 %rva8448)                  ; tail call
  ret void
}


define void @lam9561(i64 %env9562, i64 %rvp8761) {
  %envptr10648 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10649 = getelementptr inbounds i64, i64* %envptr10648, i64 3                ; &envptr10648[3]
  %O5h$_37length = load i64, i64* %envptr10649, align 8                              ; load; *envptr10649
  %envptr10650 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10651 = getelementptr inbounds i64, i64* %envptr10650, i64 2                ; &envptr10650[2]
  %WjI$_37drop = load i64, i64* %envptr10651, align 8                                ; load; *envptr10651
  %envptr10652 = inttoptr i64 %env9562 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10653 = getelementptr inbounds i64, i64* %envptr10652, i64 1                ; &envptr10652[1]
  %D97$_37_62 = load i64, i64* %envptr10653, align 8                                 ; load; *envptr10653
  %_957036 = call i64 @prim_car(i64 %rvp8761)                                        ; call prim_car
  %rvp8760 = call i64 @prim_cdr(i64 %rvp8761)                                        ; call prim_cdr
  %z5U$_37raise_45handler = call i64 @prim_car(i64 %rvp8760)                         ; call prim_car
  %na8452 = call i64 @prim_cdr(i64 %rvp8760)                                         ; call prim_cdr
  %cloptr10654 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10655 = getelementptr inbounds i64, i64* %cloptr10654, i64 0                  ; &cloptr10654[0]
  %f10656 = ptrtoint void(i64,i64)* @lam9559 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10656, i64* %eptr10655                                                 ; store fptr
  %arg7564 = ptrtoint i64* %cloptr10654 to i64                                       ; closure cast; i64* -> i64
  %cloptr10657 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10659 = getelementptr inbounds i64, i64* %cloptr10657, i64 1                  ; &eptr10659[1]
  %eptr10660 = getelementptr inbounds i64, i64* %cloptr10657, i64 2                  ; &eptr10660[2]
  %eptr10661 = getelementptr inbounds i64, i64* %cloptr10657, i64 3                  ; &eptr10661[3]
  store i64 %D97$_37_62, i64* %eptr10659                                             ; *eptr10659 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10660                                            ; *eptr10660 = %WjI$_37drop
  store i64 %O5h$_37length, i64* %eptr10661                                          ; *eptr10661 = %O5h$_37length
  %eptr10658 = getelementptr inbounds i64, i64* %cloptr10657, i64 0                  ; &cloptr10657[0]
  %f10662 = ptrtoint void(i64,i64)* @lam9555 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10662, i64* %eptr10658                                                 ; store fptr
  %arg7563 = ptrtoint i64* %cloptr10657 to i64                                       ; closure cast; i64* -> i64
  %rva8759 = add i64 0, 0                                                            ; quoted ()
  %rva8758 = call i64 @prim_cons(i64 %arg7563, i64 %rva8759)                         ; call prim_cons
  %cloptr10663 = inttoptr i64 %arg7564 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10663)                                        ; assert function application
  %i0ptr10664 = getelementptr inbounds i64, i64* %cloptr10663, i64 0                 ; &cloptr10663[0]
  %f10666 = load i64, i64* %i0ptr10664, align 8                                      ; load; *i0ptr10664
  %fptr10665 = inttoptr i64 %f10666 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10665(i64 %arg7564, i64 %rva8758)                   ; tail call
  ret void
}


define void @lam9559(i64 %env9560, i64 %wNb$lst7096) {
  %cont7095 = call i64 @prim_car(i64 %wNb$lst7096)                                   ; call prim_car
  %wNb$lst = call i64 @prim_cdr(i64 %wNb$lst7096)                                    ; call prim_cdr
  %arg7568 = add i64 0, 0                                                            ; quoted ()
  %rva8455 = add i64 0, 0                                                            ; quoted ()
  %rva8454 = call i64 @prim_cons(i64 %wNb$lst, i64 %rva8455)                         ; call prim_cons
  %rva8453 = call i64 @prim_cons(i64 %arg7568, i64 %rva8454)                         ; call prim_cons
  %cloptr10667 = inttoptr i64 %cont7095 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10667)                                        ; assert function application
  %i0ptr10668 = getelementptr inbounds i64, i64* %cloptr10667, i64 0                 ; &cloptr10667[0]
  %f10670 = load i64, i64* %i0ptr10668, align 8                                      ; load; *i0ptr10668
  %fptr10669 = inttoptr i64 %f10670 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10669(i64 %cont7095, i64 %rva8453)                  ; tail call
  ret void
}


define void @lam9555(i64 %env9556, i64 %rvp8757) {
  %envptr10671 = inttoptr i64 %env9556 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10672 = getelementptr inbounds i64, i64* %envptr10671, i64 3                ; &envptr10671[3]
  %O5h$_37length = load i64, i64* %envptr10672, align 8                              ; load; *envptr10672
  %envptr10673 = inttoptr i64 %env9556 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10674 = getelementptr inbounds i64, i64* %envptr10673, i64 2                ; &envptr10673[2]
  %WjI$_37drop = load i64, i64* %envptr10674, align 8                                ; load; *envptr10674
  %envptr10675 = inttoptr i64 %env9556 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10676 = getelementptr inbounds i64, i64* %envptr10675, i64 1                ; &envptr10675[1]
  %D97$_37_62 = load i64, i64* %envptr10676, align 8                                 ; load; *envptr10676
  %_957093 = call i64 @prim_car(i64 %rvp8757)                                        ; call prim_car
  %rvp8756 = call i64 @prim_cdr(i64 %rvp8757)                                        ; call prim_cdr
  %a6932 = call i64 @prim_car(i64 %rvp8756)                                          ; call prim_car
  %na8457 = call i64 @prim_cdr(i64 %rvp8756)                                         ; call prim_cdr
  %arg7571 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7094 = call i64 @prim_make_45vector(i64 %arg7571, i64 %a6932)              ; call prim_make_45vector
  %cloptr10677 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10679 = getelementptr inbounds i64, i64* %cloptr10677, i64 1                  ; &eptr10679[1]
  %eptr10680 = getelementptr inbounds i64, i64* %cloptr10677, i64 2                  ; &eptr10680[2]
  %eptr10681 = getelementptr inbounds i64, i64* %cloptr10677, i64 3                  ; &eptr10681[3]
  store i64 %D97$_37_62, i64* %eptr10679                                             ; *eptr10679 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10680                                            ; *eptr10680 = %WjI$_37drop
  store i64 %O5h$_37length, i64* %eptr10681                                          ; *eptr10681 = %O5h$_37length
  %eptr10678 = getelementptr inbounds i64, i64* %cloptr10677, i64 0                  ; &cloptr10677[0]
  %f10682 = ptrtoint void(i64,i64)* @lam9552 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10682, i64* %eptr10678                                                 ; store fptr
  %arg7574 = ptrtoint i64* %cloptr10677 to i64                                       ; closure cast; i64* -> i64
  %arg7573 = add i64 0, 0                                                            ; quoted ()
  %rva8755 = add i64 0, 0                                                            ; quoted ()
  %rva8754 = call i64 @prim_cons(i64 %retprim7094, i64 %rva8755)                     ; call prim_cons
  %rva8753 = call i64 @prim_cons(i64 %arg7573, i64 %rva8754)                         ; call prim_cons
  %cloptr10683 = inttoptr i64 %arg7574 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10683)                                        ; assert function application
  %i0ptr10684 = getelementptr inbounds i64, i64* %cloptr10683, i64 0                 ; &cloptr10683[0]
  %f10686 = load i64, i64* %i0ptr10684, align 8                                      ; load; *i0ptr10684
  %fptr10685 = inttoptr i64 %f10686 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10685(i64 %arg7574, i64 %rva8753)                   ; tail call
  ret void
}


define void @lam9552(i64 %env9553, i64 %rvp8752) {
  %envptr10687 = inttoptr i64 %env9553 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10688 = getelementptr inbounds i64, i64* %envptr10687, i64 3                ; &envptr10687[3]
  %O5h$_37length = load i64, i64* %envptr10688, align 8                              ; load; *envptr10688
  %envptr10689 = inttoptr i64 %env9553 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10690 = getelementptr inbounds i64, i64* %envptr10689, i64 2                ; &envptr10689[2]
  %WjI$_37drop = load i64, i64* %envptr10690, align 8                                ; load; *envptr10690
  %envptr10691 = inttoptr i64 %env9553 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10692 = getelementptr inbounds i64, i64* %envptr10691, i64 1                ; &envptr10691[1]
  %D97$_37_62 = load i64, i64* %envptr10692, align 8                                 ; load; *envptr10692
  %_957037 = call i64 @prim_car(i64 %rvp8752)                                        ; call prim_car
  %rvp8751 = call i64 @prim_cdr(i64 %rvp8752)                                        ; call prim_cdr
  %p3x$_37wind_45stack = call i64 @prim_car(i64 %rvp8751)                            ; call prim_car
  %na8459 = call i64 @prim_cdr(i64 %rvp8751)                                         ; call prim_cdr
  %cloptr10693 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10695 = getelementptr inbounds i64, i64* %cloptr10693, i64 1                  ; &eptr10695[1]
  %eptr10696 = getelementptr inbounds i64, i64* %cloptr10693, i64 2                  ; &eptr10696[2]
  %eptr10697 = getelementptr inbounds i64, i64* %cloptr10693, i64 3                  ; &eptr10697[3]
  store i64 %D97$_37_62, i64* %eptr10695                                             ; *eptr10695 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10696                                            ; *eptr10696 = %WjI$_37drop
  store i64 %O5h$_37length, i64* %eptr10697                                          ; *eptr10697 = %O5h$_37length
  %eptr10694 = getelementptr inbounds i64, i64* %cloptr10693, i64 0                  ; &cloptr10693[0]
  %f10698 = ptrtoint void(i64,i64)* @lam9550 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10698, i64* %eptr10694                                                 ; store fptr
  %YZ3$_37common_45tail = ptrtoint i64* %cloptr10693 to i64                          ; closure cast; i64* -> i64
  %cloptr10699 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10701 = getelementptr inbounds i64, i64* %cloptr10699, i64 1                  ; &eptr10701[1]
  %eptr10702 = getelementptr inbounds i64, i64* %cloptr10699, i64 2                  ; &eptr10702[2]
  store i64 %p3x$_37wind_45stack, i64* %eptr10701                                    ; *eptr10701 = %p3x$_37wind_45stack
  store i64 %YZ3$_37common_45tail, i64* %eptr10702                                   ; *eptr10702 = %YZ3$_37common_45tail
  %eptr10700 = getelementptr inbounds i64, i64* %cloptr10699, i64 0                  ; &cloptr10699[0]
  %f10703 = ptrtoint void(i64,i64)* @lam9488 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10703, i64* %eptr10700                                                 ; store fptr
  %PtU$_37do_45wind = ptrtoint i64* %cloptr10699 to i64                              ; closure cast; i64* -> i64
  %cloptr10704 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10705 = getelementptr inbounds i64, i64* %cloptr10704, i64 0                  ; &cloptr10704[0]
  %f10706 = ptrtoint void(i64,i64)* @lam9421 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10706, i64* %eptr10705                                                 ; store fptr
  %arg7760 = ptrtoint i64* %cloptr10704 to i64                                       ; closure cast; i64* -> i64
  %cloptr10707 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10708 = getelementptr inbounds i64, i64* %cloptr10707, i64 0                  ; &cloptr10707[0]
  %f10709 = ptrtoint void(i64,i64)* @lam9417 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10709, i64* %eptr10708                                                 ; store fptr
  %arg7759 = ptrtoint i64* %cloptr10707 to i64                                       ; closure cast; i64* -> i64
  %rva8750 = add i64 0, 0                                                            ; quoted ()
  %rva8749 = call i64 @prim_cons(i64 %arg7759, i64 %rva8750)                         ; call prim_cons
  %cloptr10710 = inttoptr i64 %arg7760 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10710)                                        ; assert function application
  %i0ptr10711 = getelementptr inbounds i64, i64* %cloptr10710, i64 0                 ; &cloptr10710[0]
  %f10713 = load i64, i64* %i0ptr10711, align 8                                      ; load; *i0ptr10711
  %fptr10712 = inttoptr i64 %f10713 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10712(i64 %arg7760, i64 %rva8749)                   ; tail call
  ret void
}


define void @lam9550(i64 %env9551, i64 %rvp8591) {
  %envptr10714 = inttoptr i64 %env9551 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10715 = getelementptr inbounds i64, i64* %envptr10714, i64 3                ; &envptr10714[3]
  %O5h$_37length = load i64, i64* %envptr10715, align 8                              ; load; *envptr10715
  %envptr10716 = inttoptr i64 %env9551 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10717 = getelementptr inbounds i64, i64* %envptr10716, i64 2                ; &envptr10716[2]
  %WjI$_37drop = load i64, i64* %envptr10717, align 8                                ; load; *envptr10717
  %envptr10718 = inttoptr i64 %env9551 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10719 = getelementptr inbounds i64, i64* %envptr10718, i64 1                ; &envptr10718[1]
  %D97$_37_62 = load i64, i64* %envptr10719, align 8                                 ; load; *envptr10719
  %cont7038 = call i64 @prim_car(i64 %rvp8591)                                       ; call prim_car
  %rvp8590 = call i64 @prim_cdr(i64 %rvp8591)                                        ; call prim_cdr
  %O1l$x = call i64 @prim_car(i64 %rvp8590)                                          ; call prim_car
  %rvp8589 = call i64 @prim_cdr(i64 %rvp8590)                                        ; call prim_cdr
  %n6V$y = call i64 @prim_car(i64 %rvp8589)                                          ; call prim_car
  %na8461 = call i64 @prim_cdr(i64 %rvp8589)                                         ; call prim_cdr
  %cloptr10720 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10722 = getelementptr inbounds i64, i64* %cloptr10720, i64 1                  ; &eptr10722[1]
  %eptr10723 = getelementptr inbounds i64, i64* %cloptr10720, i64 2                  ; &eptr10723[2]
  %eptr10724 = getelementptr inbounds i64, i64* %cloptr10720, i64 3                  ; &eptr10724[3]
  %eptr10725 = getelementptr inbounds i64, i64* %cloptr10720, i64 4                  ; &eptr10725[4]
  %eptr10726 = getelementptr inbounds i64, i64* %cloptr10720, i64 5                  ; &eptr10726[5]
  %eptr10727 = getelementptr inbounds i64, i64* %cloptr10720, i64 6                  ; &eptr10727[6]
  store i64 %D97$_37_62, i64* %eptr10722                                             ; *eptr10722 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10723                                            ; *eptr10723 = %WjI$_37drop
  store i64 %O5h$_37length, i64* %eptr10724                                          ; *eptr10724 = %O5h$_37length
  store i64 %O1l$x, i64* %eptr10725                                                  ; *eptr10725 = %O1l$x
  store i64 %n6V$y, i64* %eptr10726                                                  ; *eptr10726 = %n6V$y
  store i64 %cont7038, i64* %eptr10727                                               ; *eptr10727 = %cont7038
  %eptr10721 = getelementptr inbounds i64, i64* %cloptr10720, i64 0                  ; &cloptr10720[0]
  %f10728 = ptrtoint void(i64,i64)* @lam9548 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10728, i64* %eptr10721                                                 ; store fptr
  %arg7576 = ptrtoint i64* %cloptr10720 to i64                                       ; closure cast; i64* -> i64
  %rva8588 = add i64 0, 0                                                            ; quoted ()
  %rva8587 = call i64 @prim_cons(i64 %O1l$x, i64 %rva8588)                           ; call prim_cons
  %rva8586 = call i64 @prim_cons(i64 %arg7576, i64 %rva8587)                         ; call prim_cons
  %cloptr10729 = inttoptr i64 %O5h$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10729)                                        ; assert function application
  %i0ptr10730 = getelementptr inbounds i64, i64* %cloptr10729, i64 0                 ; &cloptr10729[0]
  %f10732 = load i64, i64* %i0ptr10730, align 8                                      ; load; *i0ptr10730
  %fptr10731 = inttoptr i64 %f10732 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10731(i64 %O5h$_37length, i64 %rva8586)             ; tail call
  ret void
}


define void @lam9548(i64 %env9549, i64 %rvp8585) {
  %envptr10733 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10734 = getelementptr inbounds i64, i64* %envptr10733, i64 6                ; &envptr10733[6]
  %cont7038 = load i64, i64* %envptr10734, align 8                                   ; load; *envptr10734
  %envptr10735 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10736 = getelementptr inbounds i64, i64* %envptr10735, i64 5                ; &envptr10735[5]
  %n6V$y = load i64, i64* %envptr10736, align 8                                      ; load; *envptr10736
  %envptr10737 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10738 = getelementptr inbounds i64, i64* %envptr10737, i64 4                ; &envptr10737[4]
  %O1l$x = load i64, i64* %envptr10738, align 8                                      ; load; *envptr10738
  %envptr10739 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10740 = getelementptr inbounds i64, i64* %envptr10739, i64 3                ; &envptr10739[3]
  %O5h$_37length = load i64, i64* %envptr10740, align 8                              ; load; *envptr10740
  %envptr10741 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10742 = getelementptr inbounds i64, i64* %envptr10741, i64 2                ; &envptr10741[2]
  %WjI$_37drop = load i64, i64* %envptr10742, align 8                                ; load; *envptr10742
  %envptr10743 = inttoptr i64 %env9549 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10744 = getelementptr inbounds i64, i64* %envptr10743, i64 1                ; &envptr10743[1]
  %D97$_37_62 = load i64, i64* %envptr10744, align 8                                 ; load; *envptr10744
  %_957039 = call i64 @prim_car(i64 %rvp8585)                                        ; call prim_car
  %rvp8584 = call i64 @prim_cdr(i64 %rvp8585)                                        ; call prim_cdr
  %Uyx$lx = call i64 @prim_car(i64 %rvp8584)                                         ; call prim_car
  %na8463 = call i64 @prim_cdr(i64 %rvp8584)                                         ; call prim_cdr
  %cloptr10745 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10747 = getelementptr inbounds i64, i64* %cloptr10745, i64 1                  ; &eptr10747[1]
  %eptr10748 = getelementptr inbounds i64, i64* %cloptr10745, i64 2                  ; &eptr10748[2]
  %eptr10749 = getelementptr inbounds i64, i64* %cloptr10745, i64 3                  ; &eptr10749[3]
  %eptr10750 = getelementptr inbounds i64, i64* %cloptr10745, i64 4                  ; &eptr10750[4]
  %eptr10751 = getelementptr inbounds i64, i64* %cloptr10745, i64 5                  ; &eptr10751[5]
  %eptr10752 = getelementptr inbounds i64, i64* %cloptr10745, i64 6                  ; &eptr10752[6]
  store i64 %D97$_37_62, i64* %eptr10747                                             ; *eptr10747 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10748                                            ; *eptr10748 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10749                                                 ; *eptr10749 = %Uyx$lx
  store i64 %O1l$x, i64* %eptr10750                                                  ; *eptr10750 = %O1l$x
  store i64 %n6V$y, i64* %eptr10751                                                  ; *eptr10751 = %n6V$y
  store i64 %cont7038, i64* %eptr10752                                               ; *eptr10752 = %cont7038
  %eptr10746 = getelementptr inbounds i64, i64* %cloptr10745, i64 0                  ; &cloptr10745[0]
  %f10753 = ptrtoint void(i64,i64)* @lam9546 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10753, i64* %eptr10746                                                 ; store fptr
  %arg7579 = ptrtoint i64* %cloptr10745 to i64                                       ; closure cast; i64* -> i64
  %rva8583 = add i64 0, 0                                                            ; quoted ()
  %rva8582 = call i64 @prim_cons(i64 %n6V$y, i64 %rva8583)                           ; call prim_cons
  %rva8581 = call i64 @prim_cons(i64 %arg7579, i64 %rva8582)                         ; call prim_cons
  %cloptr10754 = inttoptr i64 %O5h$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10754)                                        ; assert function application
  %i0ptr10755 = getelementptr inbounds i64, i64* %cloptr10754, i64 0                 ; &cloptr10754[0]
  %f10757 = load i64, i64* %i0ptr10755, align 8                                      ; load; *i0ptr10755
  %fptr10756 = inttoptr i64 %f10757 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10756(i64 %O5h$_37length, i64 %rva8581)             ; tail call
  ret void
}


define void @lam9546(i64 %env9547, i64 %rvp8580) {
  %envptr10758 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10759 = getelementptr inbounds i64, i64* %envptr10758, i64 6                ; &envptr10758[6]
  %cont7038 = load i64, i64* %envptr10759, align 8                                   ; load; *envptr10759
  %envptr10760 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10761 = getelementptr inbounds i64, i64* %envptr10760, i64 5                ; &envptr10760[5]
  %n6V$y = load i64, i64* %envptr10761, align 8                                      ; load; *envptr10761
  %envptr10762 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10763 = getelementptr inbounds i64, i64* %envptr10762, i64 4                ; &envptr10762[4]
  %O1l$x = load i64, i64* %envptr10763, align 8                                      ; load; *envptr10763
  %envptr10764 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10765 = getelementptr inbounds i64, i64* %envptr10764, i64 3                ; &envptr10764[3]
  %Uyx$lx = load i64, i64* %envptr10765, align 8                                     ; load; *envptr10765
  %envptr10766 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10767 = getelementptr inbounds i64, i64* %envptr10766, i64 2                ; &envptr10766[2]
  %WjI$_37drop = load i64, i64* %envptr10767, align 8                                ; load; *envptr10767
  %envptr10768 = inttoptr i64 %env9547 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10769 = getelementptr inbounds i64, i64* %envptr10768, i64 1                ; &envptr10768[1]
  %D97$_37_62 = load i64, i64* %envptr10769, align 8                                 ; load; *envptr10769
  %_957040 = call i64 @prim_car(i64 %rvp8580)                                        ; call prim_car
  %rvp8579 = call i64 @prim_cdr(i64 %rvp8580)                                        ; call prim_cdr
  %xJs$ly = call i64 @prim_car(i64 %rvp8579)                                         ; call prim_car
  %na8465 = call i64 @prim_cdr(i64 %rvp8579)                                         ; call prim_cdr
  %cloptr10770 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10771 = getelementptr inbounds i64, i64* %cloptr10770, i64 0                  ; &cloptr10770[0]
  %f10772 = ptrtoint void(i64,i64)* @lam9544 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10772, i64* %eptr10771                                                 ; store fptr
  %arg7582 = ptrtoint i64* %cloptr10770 to i64                                       ; closure cast; i64* -> i64
  %cloptr10773 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10775 = getelementptr inbounds i64, i64* %cloptr10773, i64 1                  ; &eptr10775[1]
  %eptr10776 = getelementptr inbounds i64, i64* %cloptr10773, i64 2                  ; &eptr10776[2]
  %eptr10777 = getelementptr inbounds i64, i64* %cloptr10773, i64 3                  ; &eptr10777[3]
  %eptr10778 = getelementptr inbounds i64, i64* %cloptr10773, i64 4                  ; &eptr10778[4]
  %eptr10779 = getelementptr inbounds i64, i64* %cloptr10773, i64 5                  ; &eptr10779[5]
  %eptr10780 = getelementptr inbounds i64, i64* %cloptr10773, i64 6                  ; &eptr10780[6]
  %eptr10781 = getelementptr inbounds i64, i64* %cloptr10773, i64 7                  ; &eptr10781[7]
  store i64 %D97$_37_62, i64* %eptr10775                                             ; *eptr10775 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10776                                            ; *eptr10776 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10777                                                 ; *eptr10777 = %Uyx$lx
  store i64 %O1l$x, i64* %eptr10778                                                  ; *eptr10778 = %O1l$x
  store i64 %xJs$ly, i64* %eptr10779                                                 ; *eptr10779 = %xJs$ly
  store i64 %n6V$y, i64* %eptr10780                                                  ; *eptr10780 = %n6V$y
  store i64 %cont7038, i64* %eptr10781                                               ; *eptr10781 = %cont7038
  %eptr10774 = getelementptr inbounds i64, i64* %cloptr10773, i64 0                  ; &cloptr10773[0]
  %f10782 = ptrtoint void(i64,i64)* @lam9540 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10782, i64* %eptr10774                                                 ; store fptr
  %arg7581 = ptrtoint i64* %cloptr10773 to i64                                       ; closure cast; i64* -> i64
  %rva8578 = add i64 0, 0                                                            ; quoted ()
  %rva8577 = call i64 @prim_cons(i64 %arg7581, i64 %rva8578)                         ; call prim_cons
  %cloptr10783 = inttoptr i64 %arg7582 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10783)                                        ; assert function application
  %i0ptr10784 = getelementptr inbounds i64, i64* %cloptr10783, i64 0                 ; &cloptr10783[0]
  %f10786 = load i64, i64* %i0ptr10784, align 8                                      ; load; *i0ptr10784
  %fptr10785 = inttoptr i64 %f10786 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10785(i64 %arg7582, i64 %rva8577)                   ; tail call
  ret void
}


define void @lam9544(i64 %env9545, i64 %x3d$lst7050) {
  %cont7049 = call i64 @prim_car(i64 %x3d$lst7050)                                   ; call prim_car
  %x3d$lst = call i64 @prim_cdr(i64 %x3d$lst7050)                                    ; call prim_cdr
  %arg7586 = add i64 0, 0                                                            ; quoted ()
  %rva8468 = add i64 0, 0                                                            ; quoted ()
  %rva8467 = call i64 @prim_cons(i64 %x3d$lst, i64 %rva8468)                         ; call prim_cons
  %rva8466 = call i64 @prim_cons(i64 %arg7586, i64 %rva8467)                         ; call prim_cons
  %cloptr10787 = inttoptr i64 %cont7049 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10787)                                        ; assert function application
  %i0ptr10788 = getelementptr inbounds i64, i64* %cloptr10787, i64 0                 ; &cloptr10787[0]
  %f10790 = load i64, i64* %i0ptr10788, align 8                                      ; load; *i0ptr10788
  %fptr10789 = inttoptr i64 %f10790 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10789(i64 %cont7049, i64 %rva8466)                  ; tail call
  ret void
}


define void @lam9540(i64 %env9541, i64 %rvp8576) {
  %envptr10791 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10792 = getelementptr inbounds i64, i64* %envptr10791, i64 7                ; &envptr10791[7]
  %cont7038 = load i64, i64* %envptr10792, align 8                                   ; load; *envptr10792
  %envptr10793 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10794 = getelementptr inbounds i64, i64* %envptr10793, i64 6                ; &envptr10793[6]
  %n6V$y = load i64, i64* %envptr10794, align 8                                      ; load; *envptr10794
  %envptr10795 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10796 = getelementptr inbounds i64, i64* %envptr10795, i64 5                ; &envptr10795[5]
  %xJs$ly = load i64, i64* %envptr10796, align 8                                     ; load; *envptr10796
  %envptr10797 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10798 = getelementptr inbounds i64, i64* %envptr10797, i64 4                ; &envptr10797[4]
  %O1l$x = load i64, i64* %envptr10798, align 8                                      ; load; *envptr10798
  %envptr10799 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10800 = getelementptr inbounds i64, i64* %envptr10799, i64 3                ; &envptr10799[3]
  %Uyx$lx = load i64, i64* %envptr10800, align 8                                     ; load; *envptr10800
  %envptr10801 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10802 = getelementptr inbounds i64, i64* %envptr10801, i64 2                ; &envptr10801[2]
  %WjI$_37drop = load i64, i64* %envptr10802, align 8                                ; load; *envptr10802
  %envptr10803 = inttoptr i64 %env9541 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10804 = getelementptr inbounds i64, i64* %envptr10803, i64 1                ; &envptr10803[1]
  %D97$_37_62 = load i64, i64* %envptr10804, align 8                                 ; load; *envptr10804
  %_957047 = call i64 @prim_car(i64 %rvp8576)                                        ; call prim_car
  %rvp8575 = call i64 @prim_cdr(i64 %rvp8576)                                        ; call prim_cdr
  %a6933 = call i64 @prim_car(i64 %rvp8575)                                          ; call prim_car
  %na8470 = call i64 @prim_cdr(i64 %rvp8575)                                         ; call prim_cdr
  %arg7589 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7048 = call i64 @prim_make_45vector(i64 %arg7589, i64 %a6933)              ; call prim_make_45vector
  %cloptr10805 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10807 = getelementptr inbounds i64, i64* %cloptr10805, i64 1                  ; &eptr10807[1]
  %eptr10808 = getelementptr inbounds i64, i64* %cloptr10805, i64 2                  ; &eptr10808[2]
  %eptr10809 = getelementptr inbounds i64, i64* %cloptr10805, i64 3                  ; &eptr10809[3]
  %eptr10810 = getelementptr inbounds i64, i64* %cloptr10805, i64 4                  ; &eptr10810[4]
  %eptr10811 = getelementptr inbounds i64, i64* %cloptr10805, i64 5                  ; &eptr10811[5]
  %eptr10812 = getelementptr inbounds i64, i64* %cloptr10805, i64 6                  ; &eptr10812[6]
  %eptr10813 = getelementptr inbounds i64, i64* %cloptr10805, i64 7                  ; &eptr10813[7]
  store i64 %D97$_37_62, i64* %eptr10807                                             ; *eptr10807 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10808                                            ; *eptr10808 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10809                                                 ; *eptr10809 = %Uyx$lx
  store i64 %O1l$x, i64* %eptr10810                                                  ; *eptr10810 = %O1l$x
  store i64 %xJs$ly, i64* %eptr10811                                                 ; *eptr10811 = %xJs$ly
  store i64 %n6V$y, i64* %eptr10812                                                  ; *eptr10812 = %n6V$y
  store i64 %cont7038, i64* %eptr10813                                               ; *eptr10813 = %cont7038
  %eptr10806 = getelementptr inbounds i64, i64* %cloptr10805, i64 0                  ; &cloptr10805[0]
  %f10814 = ptrtoint void(i64,i64)* @lam9537 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10814, i64* %eptr10806                                                 ; store fptr
  %arg7592 = ptrtoint i64* %cloptr10805 to i64                                       ; closure cast; i64* -> i64
  %arg7591 = add i64 0, 0                                                            ; quoted ()
  %rva8574 = add i64 0, 0                                                            ; quoted ()
  %rva8573 = call i64 @prim_cons(i64 %retprim7048, i64 %rva8574)                     ; call prim_cons
  %rva8572 = call i64 @prim_cons(i64 %arg7591, i64 %rva8573)                         ; call prim_cons
  %cloptr10815 = inttoptr i64 %arg7592 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10815)                                        ; assert function application
  %i0ptr10816 = getelementptr inbounds i64, i64* %cloptr10815, i64 0                 ; &cloptr10815[0]
  %f10818 = load i64, i64* %i0ptr10816, align 8                                      ; load; *i0ptr10816
  %fptr10817 = inttoptr i64 %f10818 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10817(i64 %arg7592, i64 %rva8572)                   ; tail call
  ret void
}


define void @lam9537(i64 %env9538, i64 %rvp8571) {
  %envptr10819 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10820 = getelementptr inbounds i64, i64* %envptr10819, i64 7                ; &envptr10819[7]
  %cont7038 = load i64, i64* %envptr10820, align 8                                   ; load; *envptr10820
  %envptr10821 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10822 = getelementptr inbounds i64, i64* %envptr10821, i64 6                ; &envptr10821[6]
  %n6V$y = load i64, i64* %envptr10822, align 8                                      ; load; *envptr10822
  %envptr10823 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10824 = getelementptr inbounds i64, i64* %envptr10823, i64 5                ; &envptr10823[5]
  %xJs$ly = load i64, i64* %envptr10824, align 8                                     ; load; *envptr10824
  %envptr10825 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10826 = getelementptr inbounds i64, i64* %envptr10825, i64 4                ; &envptr10825[4]
  %O1l$x = load i64, i64* %envptr10826, align 8                                      ; load; *envptr10826
  %envptr10827 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10828 = getelementptr inbounds i64, i64* %envptr10827, i64 3                ; &envptr10827[3]
  %Uyx$lx = load i64, i64* %envptr10828, align 8                                     ; load; *envptr10828
  %envptr10829 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10830 = getelementptr inbounds i64, i64* %envptr10829, i64 2                ; &envptr10829[2]
  %WjI$_37drop = load i64, i64* %envptr10830, align 8                                ; load; *envptr10830
  %envptr10831 = inttoptr i64 %env9538 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10832 = getelementptr inbounds i64, i64* %envptr10831, i64 1                ; &envptr10831[1]
  %D97$_37_62 = load i64, i64* %envptr10832, align 8                                 ; load; *envptr10832
  %_957041 = call i64 @prim_car(i64 %rvp8571)                                        ; call prim_car
  %rvp8570 = call i64 @prim_cdr(i64 %rvp8571)                                        ; call prim_cdr
  %Sn0$loop = call i64 @prim_car(i64 %rvp8570)                                       ; call prim_car
  %na8472 = call i64 @prim_cdr(i64 %rvp8570)                                         ; call prim_cdr
  %arg7594 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10833 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10835 = getelementptr inbounds i64, i64* %cloptr10833, i64 1                  ; &eptr10835[1]
  store i64 %Sn0$loop, i64* %eptr10835                                               ; *eptr10835 = %Sn0$loop
  %eptr10834 = getelementptr inbounds i64, i64* %cloptr10833, i64 0                  ; &cloptr10833[0]
  %f10836 = ptrtoint void(i64,i64)* @lam9534 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10836, i64* %eptr10834                                                 ; store fptr
  %arg7593 = ptrtoint i64* %cloptr10833 to i64                                       ; closure cast; i64* -> i64
  %oR4$_956835 = call i64 @prim_vector_45set_33(i64 %Sn0$loop, i64 %arg7594, i64 %arg7593); call prim_vector_45set_33
  %arg7609 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6938 = call i64 @prim_vector_45ref(i64 %Sn0$loop, i64 %arg7609)                  ; call prim_vector_45ref
  %cloptr10837 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr10839 = getelementptr inbounds i64, i64* %cloptr10837, i64 1                  ; &eptr10839[1]
  %eptr10840 = getelementptr inbounds i64, i64* %cloptr10837, i64 2                  ; &eptr10840[2]
  %eptr10841 = getelementptr inbounds i64, i64* %cloptr10837, i64 3                  ; &eptr10841[3]
  %eptr10842 = getelementptr inbounds i64, i64* %cloptr10837, i64 4                  ; &eptr10842[4]
  %eptr10843 = getelementptr inbounds i64, i64* %cloptr10837, i64 5                  ; &eptr10843[5]
  %eptr10844 = getelementptr inbounds i64, i64* %cloptr10837, i64 6                  ; &eptr10844[6]
  %eptr10845 = getelementptr inbounds i64, i64* %cloptr10837, i64 7                  ; &eptr10845[7]
  %eptr10846 = getelementptr inbounds i64, i64* %cloptr10837, i64 8                  ; &eptr10846[8]
  store i64 %D97$_37_62, i64* %eptr10839                                             ; *eptr10839 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10840                                            ; *eptr10840 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10841                                                 ; *eptr10841 = %Uyx$lx
  store i64 %O1l$x, i64* %eptr10842                                                  ; *eptr10842 = %O1l$x
  store i64 %xJs$ly, i64* %eptr10843                                                 ; *eptr10843 = %xJs$ly
  store i64 %a6938, i64* %eptr10844                                                  ; *eptr10844 = %a6938
  store i64 %n6V$y, i64* %eptr10845                                                  ; *eptr10845 = %n6V$y
  store i64 %cont7038, i64* %eptr10846                                               ; *eptr10846 = %cont7038
  %eptr10838 = getelementptr inbounds i64, i64* %cloptr10837, i64 0                  ; &cloptr10837[0]
  %f10847 = ptrtoint void(i64,i64)* @lam9527 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10847, i64* %eptr10838                                                 ; store fptr
  %arg7613 = ptrtoint i64* %cloptr10837 to i64                                       ; closure cast; i64* -> i64
  %rva8569 = add i64 0, 0                                                            ; quoted ()
  %rva8568 = call i64 @prim_cons(i64 %xJs$ly, i64 %rva8569)                          ; call prim_cons
  %rva8567 = call i64 @prim_cons(i64 %Uyx$lx, i64 %rva8568)                          ; call prim_cons
  %rva8566 = call i64 @prim_cons(i64 %arg7613, i64 %rva8567)                         ; call prim_cons
  %cloptr10848 = inttoptr i64 %D97$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10848)                                        ; assert function application
  %i0ptr10849 = getelementptr inbounds i64, i64* %cloptr10848, i64 0                 ; &cloptr10848[0]
  %f10851 = load i64, i64* %i0ptr10849, align 8                                      ; load; *i0ptr10849
  %fptr10850 = inttoptr i64 %f10851 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10850(i64 %D97$_37_62, i64 %rva8566)                ; tail call
  ret void
}


define void @lam9534(i64 %env9535, i64 %rvp8484) {
  %envptr10852 = inttoptr i64 %env9535 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10853 = getelementptr inbounds i64, i64* %envptr10852, i64 1                ; &envptr10852[1]
  %Sn0$loop = load i64, i64* %envptr10853, align 8                                   ; load; *envptr10853
  %cont7042 = call i64 @prim_car(i64 %rvp8484)                                       ; call prim_car
  %rvp8483 = call i64 @prim_cdr(i64 %rvp8484)                                        ; call prim_cdr
  %vWV$x = call i64 @prim_car(i64 %rvp8483)                                          ; call prim_car
  %rvp8482 = call i64 @prim_cdr(i64 %rvp8483)                                        ; call prim_cdr
  %FMC$y = call i64 @prim_car(i64 %rvp8482)                                          ; call prim_car
  %na8474 = call i64 @prim_cdr(i64 %rvp8482)                                         ; call prim_cdr
  %a6934 = call i64 @prim_eq_63(i64 %vWV$x, i64 %FMC$y)                              ; call prim_eq_63
  %cmp10854 = icmp eq i64 %a6934, 15                                                 ; false?
  br i1 %cmp10854, label %else10856, label %then10855                                ; if

then10855:
  %arg7599 = add i64 0, 0                                                            ; quoted ()
  %rva8477 = add i64 0, 0                                                            ; quoted ()
  %rva8476 = call i64 @prim_cons(i64 %vWV$x, i64 %rva8477)                           ; call prim_cons
  %rva8475 = call i64 @prim_cons(i64 %arg7599, i64 %rva8476)                         ; call prim_cons
  %cloptr10857 = inttoptr i64 %cont7042 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10857)                                        ; assert function application
  %i0ptr10858 = getelementptr inbounds i64, i64* %cloptr10857, i64 0                 ; &cloptr10857[0]
  %f10860 = load i64, i64* %i0ptr10858, align 8                                      ; load; *i0ptr10858
  %fptr10859 = inttoptr i64 %f10860 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10859(i64 %cont7042, i64 %rva8475)                  ; tail call
  ret void

else10856:
  %arg7601 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6935 = call i64 @prim_vector_45ref(i64 %Sn0$loop, i64 %arg7601)                  ; call prim_vector_45ref
  %a6936 = call i64 @prim_cdr(i64 %vWV$x)                                            ; call prim_cdr
  %a6937 = call i64 @prim_cdr(i64 %FMC$y)                                            ; call prim_cdr
  %rva8481 = add i64 0, 0                                                            ; quoted ()
  %rva8480 = call i64 @prim_cons(i64 %a6937, i64 %rva8481)                           ; call prim_cons
  %rva8479 = call i64 @prim_cons(i64 %a6936, i64 %rva8480)                           ; call prim_cons
  %rva8478 = call i64 @prim_cons(i64 %cont7042, i64 %rva8479)                        ; call prim_cons
  %cloptr10861 = inttoptr i64 %a6935 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10861)                                        ; assert function application
  %i0ptr10862 = getelementptr inbounds i64, i64* %cloptr10861, i64 0                 ; &cloptr10861[0]
  %f10864 = load i64, i64* %i0ptr10862, align 8                                      ; load; *i0ptr10862
  %fptr10863 = inttoptr i64 %f10864 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10863(i64 %a6935, i64 %rva8478)                     ; tail call
  ret void
}


define void @lam9527(i64 %env9528, i64 %rvp8565) {
  %envptr10865 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10866 = getelementptr inbounds i64, i64* %envptr10865, i64 8                ; &envptr10865[8]
  %cont7038 = load i64, i64* %envptr10866, align 8                                   ; load; *envptr10866
  %envptr10867 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10868 = getelementptr inbounds i64, i64* %envptr10867, i64 7                ; &envptr10867[7]
  %n6V$y = load i64, i64* %envptr10868, align 8                                      ; load; *envptr10868
  %envptr10869 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10870 = getelementptr inbounds i64, i64* %envptr10869, i64 6                ; &envptr10869[6]
  %a6938 = load i64, i64* %envptr10870, align 8                                      ; load; *envptr10870
  %envptr10871 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10872 = getelementptr inbounds i64, i64* %envptr10871, i64 5                ; &envptr10871[5]
  %xJs$ly = load i64, i64* %envptr10872, align 8                                     ; load; *envptr10872
  %envptr10873 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10874 = getelementptr inbounds i64, i64* %envptr10873, i64 4                ; &envptr10873[4]
  %O1l$x = load i64, i64* %envptr10874, align 8                                      ; load; *envptr10874
  %envptr10875 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10876 = getelementptr inbounds i64, i64* %envptr10875, i64 3                ; &envptr10875[3]
  %Uyx$lx = load i64, i64* %envptr10876, align 8                                     ; load; *envptr10876
  %envptr10877 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10878 = getelementptr inbounds i64, i64* %envptr10877, i64 2                ; &envptr10877[2]
  %WjI$_37drop = load i64, i64* %envptr10878, align 8                                ; load; *envptr10878
  %envptr10879 = inttoptr i64 %env9528 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10880 = getelementptr inbounds i64, i64* %envptr10879, i64 1                ; &envptr10879[1]
  %D97$_37_62 = load i64, i64* %envptr10880, align 8                                 ; load; *envptr10880
  %_957043 = call i64 @prim_car(i64 %rvp8565)                                        ; call prim_car
  %rvp8564 = call i64 @prim_cdr(i64 %rvp8565)                                        ; call prim_cdr
  %a6939 = call i64 @prim_car(i64 %rvp8564)                                          ; call prim_car
  %na8486 = call i64 @prim_cdr(i64 %rvp8564)                                         ; call prim_cdr
  %cmp10881 = icmp eq i64 %a6939, 15                                                 ; false?
  br i1 %cmp10881, label %else10883, label %then10882                                ; if

then10882:
  %a6940 = call i64 @prim__45(i64 %Uyx$lx, i64 %xJs$ly)                              ; call prim__45
  %cloptr10884 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10886 = getelementptr inbounds i64, i64* %cloptr10884, i64 1                  ; &eptr10886[1]
  %eptr10887 = getelementptr inbounds i64, i64* %cloptr10884, i64 2                  ; &eptr10887[2]
  %eptr10888 = getelementptr inbounds i64, i64* %cloptr10884, i64 3                  ; &eptr10888[3]
  %eptr10889 = getelementptr inbounds i64, i64* %cloptr10884, i64 4                  ; &eptr10889[4]
  %eptr10890 = getelementptr inbounds i64, i64* %cloptr10884, i64 5                  ; &eptr10890[5]
  %eptr10891 = getelementptr inbounds i64, i64* %cloptr10884, i64 6                  ; &eptr10891[6]
  %eptr10892 = getelementptr inbounds i64, i64* %cloptr10884, i64 7                  ; &eptr10892[7]
  store i64 %D97$_37_62, i64* %eptr10886                                             ; *eptr10886 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10887                                            ; *eptr10887 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10888                                                 ; *eptr10888 = %Uyx$lx
  store i64 %xJs$ly, i64* %eptr10889                                                 ; *eptr10889 = %xJs$ly
  store i64 %a6938, i64* %eptr10890                                                  ; *eptr10890 = %a6938
  store i64 %n6V$y, i64* %eptr10891                                                  ; *eptr10891 = %n6V$y
  store i64 %cont7038, i64* %eptr10892                                               ; *eptr10892 = %cont7038
  %eptr10885 = getelementptr inbounds i64, i64* %cloptr10884, i64 0                  ; &cloptr10884[0]
  %f10893 = ptrtoint void(i64,i64)* @lam9509 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10893, i64* %eptr10885                                                 ; store fptr
  %arg7619 = ptrtoint i64* %cloptr10884 to i64                                       ; closure cast; i64* -> i64
  %rva8525 = add i64 0, 0                                                            ; quoted ()
  %rva8524 = call i64 @prim_cons(i64 %a6940, i64 %rva8525)                           ; call prim_cons
  %rva8523 = call i64 @prim_cons(i64 %O1l$x, i64 %rva8524)                           ; call prim_cons
  %rva8522 = call i64 @prim_cons(i64 %arg7619, i64 %rva8523)                         ; call prim_cons
  %cloptr10894 = inttoptr i64 %WjI$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10894)                                        ; assert function application
  %i0ptr10895 = getelementptr inbounds i64, i64* %cloptr10894, i64 0                 ; &cloptr10894[0]
  %f10897 = load i64, i64* %i0ptr10895, align 8                                      ; load; *i0ptr10895
  %fptr10896 = inttoptr i64 %f10897 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10896(i64 %WjI$_37drop, i64 %rva8522)               ; tail call
  ret void

else10883:
  %cloptr10898 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10900 = getelementptr inbounds i64, i64* %cloptr10898, i64 1                  ; &eptr10900[1]
  %eptr10901 = getelementptr inbounds i64, i64* %cloptr10898, i64 2                  ; &eptr10901[2]
  %eptr10902 = getelementptr inbounds i64, i64* %cloptr10898, i64 3                  ; &eptr10902[3]
  %eptr10903 = getelementptr inbounds i64, i64* %cloptr10898, i64 4                  ; &eptr10903[4]
  %eptr10904 = getelementptr inbounds i64, i64* %cloptr10898, i64 5                  ; &eptr10904[5]
  %eptr10905 = getelementptr inbounds i64, i64* %cloptr10898, i64 6                  ; &eptr10905[6]
  %eptr10906 = getelementptr inbounds i64, i64* %cloptr10898, i64 7                  ; &eptr10906[7]
  store i64 %D97$_37_62, i64* %eptr10900                                             ; *eptr10900 = %D97$_37_62
  store i64 %WjI$_37drop, i64* %eptr10901                                            ; *eptr10901 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10902                                                 ; *eptr10902 = %Uyx$lx
  store i64 %xJs$ly, i64* %eptr10903                                                 ; *eptr10903 = %xJs$ly
  store i64 %a6938, i64* %eptr10904                                                  ; *eptr10904 = %a6938
  store i64 %n6V$y, i64* %eptr10905                                                  ; *eptr10905 = %n6V$y
  store i64 %cont7038, i64* %eptr10906                                               ; *eptr10906 = %cont7038
  %eptr10899 = getelementptr inbounds i64, i64* %cloptr10898, i64 0                  ; &cloptr10898[0]
  %f10907 = ptrtoint void(i64,i64)* @lam9525 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10907, i64* %eptr10899                                                 ; store fptr
  %arg7644 = ptrtoint i64* %cloptr10898 to i64                                       ; closure cast; i64* -> i64
  %arg7643 = add i64 0, 0                                                            ; quoted ()
  %rva8563 = add i64 0, 0                                                            ; quoted ()
  %rva8562 = call i64 @prim_cons(i64 %O1l$x, i64 %rva8563)                           ; call prim_cons
  %rva8561 = call i64 @prim_cons(i64 %arg7643, i64 %rva8562)                         ; call prim_cons
  %cloptr10908 = inttoptr i64 %arg7644 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10908)                                        ; assert function application
  %i0ptr10909 = getelementptr inbounds i64, i64* %cloptr10908, i64 0                 ; &cloptr10908[0]
  %f10911 = load i64, i64* %i0ptr10909, align 8                                      ; load; *i0ptr10909
  %fptr10910 = inttoptr i64 %f10911 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10910(i64 %arg7644, i64 %rva8561)                   ; tail call
  ret void
}


define void @lam9525(i64 %env9526, i64 %rvp8560) {
  %envptr10912 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10913 = getelementptr inbounds i64, i64* %envptr10912, i64 7                ; &envptr10912[7]
  %cont7038 = load i64, i64* %envptr10913, align 8                                   ; load; *envptr10913
  %envptr10914 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10915 = getelementptr inbounds i64, i64* %envptr10914, i64 6                ; &envptr10914[6]
  %n6V$y = load i64, i64* %envptr10915, align 8                                      ; load; *envptr10915
  %envptr10916 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10917 = getelementptr inbounds i64, i64* %envptr10916, i64 5                ; &envptr10916[5]
  %a6938 = load i64, i64* %envptr10917, align 8                                      ; load; *envptr10917
  %envptr10918 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10919 = getelementptr inbounds i64, i64* %envptr10918, i64 4                ; &envptr10918[4]
  %xJs$ly = load i64, i64* %envptr10919, align 8                                     ; load; *envptr10919
  %envptr10920 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10921 = getelementptr inbounds i64, i64* %envptr10920, i64 3                ; &envptr10920[3]
  %Uyx$lx = load i64, i64* %envptr10921, align 8                                     ; load; *envptr10921
  %envptr10922 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10923 = getelementptr inbounds i64, i64* %envptr10922, i64 2                ; &envptr10922[2]
  %WjI$_37drop = load i64, i64* %envptr10923, align 8                                ; load; *envptr10923
  %envptr10924 = inttoptr i64 %env9526 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10925 = getelementptr inbounds i64, i64* %envptr10924, i64 1                ; &envptr10924[1]
  %D97$_37_62 = load i64, i64* %envptr10925, align 8                                 ; load; *envptr10925
  %_957044 = call i64 @prim_car(i64 %rvp8560)                                        ; call prim_car
  %rvp8559 = call i64 @prim_cdr(i64 %rvp8560)                                        ; call prim_cdr
  %a6941 = call i64 @prim_car(i64 %rvp8559)                                          ; call prim_car
  %na8527 = call i64 @prim_cdr(i64 %rvp8559)                                         ; call prim_cdr
  %cloptr10926 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10928 = getelementptr inbounds i64, i64* %cloptr10926, i64 1                  ; &eptr10928[1]
  %eptr10929 = getelementptr inbounds i64, i64* %cloptr10926, i64 2                  ; &eptr10929[2]
  %eptr10930 = getelementptr inbounds i64, i64* %cloptr10926, i64 3                  ; &eptr10930[3]
  %eptr10931 = getelementptr inbounds i64, i64* %cloptr10926, i64 4                  ; &eptr10931[4]
  %eptr10932 = getelementptr inbounds i64, i64* %cloptr10926, i64 5                  ; &eptr10932[5]
  %eptr10933 = getelementptr inbounds i64, i64* %cloptr10926, i64 6                  ; &eptr10933[6]
  %eptr10934 = getelementptr inbounds i64, i64* %cloptr10926, i64 7                  ; &eptr10934[7]
  store i64 %WjI$_37drop, i64* %eptr10928                                            ; *eptr10928 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr10929                                                 ; *eptr10929 = %Uyx$lx
  store i64 %xJs$ly, i64* %eptr10930                                                 ; *eptr10930 = %xJs$ly
  store i64 %a6938, i64* %eptr10931                                                  ; *eptr10931 = %a6938
  store i64 %n6V$y, i64* %eptr10932                                                  ; *eptr10932 = %n6V$y
  store i64 %a6941, i64* %eptr10933                                                  ; *eptr10933 = %a6941
  store i64 %cont7038, i64* %eptr10934                                               ; *eptr10934 = %cont7038
  %eptr10927 = getelementptr inbounds i64, i64* %cloptr10926, i64 0                  ; &cloptr10926[0]
  %f10935 = ptrtoint void(i64,i64)* @lam9523 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10935, i64* %eptr10927                                                 ; store fptr
  %arg7647 = ptrtoint i64* %cloptr10926 to i64                                       ; closure cast; i64* -> i64
  %rva8558 = add i64 0, 0                                                            ; quoted ()
  %rva8557 = call i64 @prim_cons(i64 %Uyx$lx, i64 %rva8558)                          ; call prim_cons
  %rva8556 = call i64 @prim_cons(i64 %xJs$ly, i64 %rva8557)                          ; call prim_cons
  %rva8555 = call i64 @prim_cons(i64 %arg7647, i64 %rva8556)                         ; call prim_cons
  %cloptr10936 = inttoptr i64 %D97$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10936)                                        ; assert function application
  %i0ptr10937 = getelementptr inbounds i64, i64* %cloptr10936, i64 0                 ; &cloptr10936[0]
  %f10939 = load i64, i64* %i0ptr10937, align 8                                      ; load; *i0ptr10937
  %fptr10938 = inttoptr i64 %f10939 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10938(i64 %D97$_37_62, i64 %rva8555)                ; tail call
  ret void
}


define void @lam9523(i64 %env9524, i64 %rvp8554) {
  %envptr10940 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10941 = getelementptr inbounds i64, i64* %envptr10940, i64 7                ; &envptr10940[7]
  %cont7038 = load i64, i64* %envptr10941, align 8                                   ; load; *envptr10941
  %envptr10942 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10943 = getelementptr inbounds i64, i64* %envptr10942, i64 6                ; &envptr10942[6]
  %a6941 = load i64, i64* %envptr10943, align 8                                      ; load; *envptr10943
  %envptr10944 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10945 = getelementptr inbounds i64, i64* %envptr10944, i64 5                ; &envptr10944[5]
  %n6V$y = load i64, i64* %envptr10945, align 8                                      ; load; *envptr10945
  %envptr10946 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10947 = getelementptr inbounds i64, i64* %envptr10946, i64 4                ; &envptr10946[4]
  %a6938 = load i64, i64* %envptr10947, align 8                                      ; load; *envptr10947
  %envptr10948 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10949 = getelementptr inbounds i64, i64* %envptr10948, i64 3                ; &envptr10948[3]
  %xJs$ly = load i64, i64* %envptr10949, align 8                                     ; load; *envptr10949
  %envptr10950 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10951 = getelementptr inbounds i64, i64* %envptr10950, i64 2                ; &envptr10950[2]
  %Uyx$lx = load i64, i64* %envptr10951, align 8                                     ; load; *envptr10951
  %envptr10952 = inttoptr i64 %env9524 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10953 = getelementptr inbounds i64, i64* %envptr10952, i64 1                ; &envptr10952[1]
  %WjI$_37drop = load i64, i64* %envptr10953, align 8                                ; load; *envptr10953
  %_957045 = call i64 @prim_car(i64 %rvp8554)                                        ; call prim_car
  %rvp8553 = call i64 @prim_cdr(i64 %rvp8554)                                        ; call prim_cdr
  %a6942 = call i64 @prim_car(i64 %rvp8553)                                          ; call prim_car
  %na8529 = call i64 @prim_cdr(i64 %rvp8553)                                         ; call prim_cdr
  %cmp10954 = icmp eq i64 %a6942, 15                                                 ; false?
  br i1 %cmp10954, label %else10956, label %then10955                                ; if

then10955:
  %a6943 = call i64 @prim__45(i64 %xJs$ly, i64 %Uyx$lx)                              ; call prim__45
  %cloptr10957 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10959 = getelementptr inbounds i64, i64* %cloptr10957, i64 1                  ; &eptr10959[1]
  %eptr10960 = getelementptr inbounds i64, i64* %cloptr10957, i64 2                  ; &eptr10960[2]
  %eptr10961 = getelementptr inbounds i64, i64* %cloptr10957, i64 3                  ; &eptr10961[3]
  store i64 %a6938, i64* %eptr10959                                                  ; *eptr10959 = %a6938
  store i64 %a6941, i64* %eptr10960                                                  ; *eptr10960 = %a6941
  store i64 %cont7038, i64* %eptr10961                                               ; *eptr10961 = %cont7038
  %eptr10958 = getelementptr inbounds i64, i64* %cloptr10957, i64 0                  ; &cloptr10957[0]
  %f10962 = ptrtoint void(i64,i64)* @lam9516 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10962, i64* %eptr10958                                                 ; store fptr
  %arg7653 = ptrtoint i64* %cloptr10957 to i64                                       ; closure cast; i64* -> i64
  %rva8541 = add i64 0, 0                                                            ; quoted ()
  %rva8540 = call i64 @prim_cons(i64 %a6943, i64 %rva8541)                           ; call prim_cons
  %rva8539 = call i64 @prim_cons(i64 %n6V$y, i64 %rva8540)                           ; call prim_cons
  %rva8538 = call i64 @prim_cons(i64 %arg7653, i64 %rva8539)                         ; call prim_cons
  %cloptr10963 = inttoptr i64 %WjI$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10963)                                        ; assert function application
  %i0ptr10964 = getelementptr inbounds i64, i64* %cloptr10963, i64 0                 ; &cloptr10963[0]
  %f10966 = load i64, i64* %i0ptr10964, align 8                                      ; load; *i0ptr10964
  %fptr10965 = inttoptr i64 %f10966 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10965(i64 %WjI$_37drop, i64 %rva8538)               ; tail call
  ret void

else10956:
  %cloptr10967 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10969 = getelementptr inbounds i64, i64* %cloptr10967, i64 1                  ; &eptr10969[1]
  %eptr10970 = getelementptr inbounds i64, i64* %cloptr10967, i64 2                  ; &eptr10970[2]
  %eptr10971 = getelementptr inbounds i64, i64* %cloptr10967, i64 3                  ; &eptr10971[3]
  store i64 %a6938, i64* %eptr10969                                                  ; *eptr10969 = %a6938
  store i64 %a6941, i64* %eptr10970                                                  ; *eptr10970 = %a6941
  store i64 %cont7038, i64* %eptr10971                                               ; *eptr10971 = %cont7038
  %eptr10968 = getelementptr inbounds i64, i64* %cloptr10967, i64 0                  ; &cloptr10967[0]
  %f10972 = ptrtoint void(i64,i64)* @lam9521 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10972, i64* %eptr10968                                                 ; store fptr
  %arg7661 = ptrtoint i64* %cloptr10967 to i64                                       ; closure cast; i64* -> i64
  %arg7660 = add i64 0, 0                                                            ; quoted ()
  %rva8552 = add i64 0, 0                                                            ; quoted ()
  %rva8551 = call i64 @prim_cons(i64 %n6V$y, i64 %rva8552)                           ; call prim_cons
  %rva8550 = call i64 @prim_cons(i64 %arg7660, i64 %rva8551)                         ; call prim_cons
  %cloptr10973 = inttoptr i64 %arg7661 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10973)                                        ; assert function application
  %i0ptr10974 = getelementptr inbounds i64, i64* %cloptr10973, i64 0                 ; &cloptr10973[0]
  %f10976 = load i64, i64* %i0ptr10974, align 8                                      ; load; *i0ptr10974
  %fptr10975 = inttoptr i64 %f10976 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10975(i64 %arg7661, i64 %rva8550)                   ; tail call
  ret void
}


define void @lam9521(i64 %env9522, i64 %rvp8549) {
  %envptr10977 = inttoptr i64 %env9522 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10978 = getelementptr inbounds i64, i64* %envptr10977, i64 3                ; &envptr10977[3]
  %cont7038 = load i64, i64* %envptr10978, align 8                                   ; load; *envptr10978
  %envptr10979 = inttoptr i64 %env9522 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10980 = getelementptr inbounds i64, i64* %envptr10979, i64 2                ; &envptr10979[2]
  %a6941 = load i64, i64* %envptr10980, align 8                                      ; load; *envptr10980
  %envptr10981 = inttoptr i64 %env9522 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10982 = getelementptr inbounds i64, i64* %envptr10981, i64 1                ; &envptr10981[1]
  %a6938 = load i64, i64* %envptr10982, align 8                                      ; load; *envptr10982
  %_957046 = call i64 @prim_car(i64 %rvp8549)                                        ; call prim_car
  %rvp8548 = call i64 @prim_cdr(i64 %rvp8549)                                        ; call prim_cdr
  %a6944 = call i64 @prim_car(i64 %rvp8548)                                          ; call prim_car
  %na8543 = call i64 @prim_cdr(i64 %rvp8548)                                         ; call prim_cdr
  %rva8547 = add i64 0, 0                                                            ; quoted ()
  %rva8546 = call i64 @prim_cons(i64 %a6944, i64 %rva8547)                           ; call prim_cons
  %rva8545 = call i64 @prim_cons(i64 %a6941, i64 %rva8546)                           ; call prim_cons
  %rva8544 = call i64 @prim_cons(i64 %cont7038, i64 %rva8545)                        ; call prim_cons
  %cloptr10983 = inttoptr i64 %a6938 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10983)                                        ; assert function application
  %i0ptr10984 = getelementptr inbounds i64, i64* %cloptr10983, i64 0                 ; &cloptr10983[0]
  %f10986 = load i64, i64* %i0ptr10984, align 8                                      ; load; *i0ptr10984
  %fptr10985 = inttoptr i64 %f10986 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10985(i64 %a6938, i64 %rva8544)                     ; tail call
  ret void
}


define void @lam9516(i64 %env9517, i64 %rvp8537) {
  %envptr10987 = inttoptr i64 %env9517 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10988 = getelementptr inbounds i64, i64* %envptr10987, i64 3                ; &envptr10987[3]
  %cont7038 = load i64, i64* %envptr10988, align 8                                   ; load; *envptr10988
  %envptr10989 = inttoptr i64 %env9517 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10990 = getelementptr inbounds i64, i64* %envptr10989, i64 2                ; &envptr10989[2]
  %a6941 = load i64, i64* %envptr10990, align 8                                      ; load; *envptr10990
  %envptr10991 = inttoptr i64 %env9517 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10992 = getelementptr inbounds i64, i64* %envptr10991, i64 1                ; &envptr10991[1]
  %a6938 = load i64, i64* %envptr10992, align 8                                      ; load; *envptr10992
  %_957046 = call i64 @prim_car(i64 %rvp8537)                                        ; call prim_car
  %rvp8536 = call i64 @prim_cdr(i64 %rvp8537)                                        ; call prim_cdr
  %a6944 = call i64 @prim_car(i64 %rvp8536)                                          ; call prim_car
  %na8531 = call i64 @prim_cdr(i64 %rvp8536)                                         ; call prim_cdr
  %rva8535 = add i64 0, 0                                                            ; quoted ()
  %rva8534 = call i64 @prim_cons(i64 %a6944, i64 %rva8535)                           ; call prim_cons
  %rva8533 = call i64 @prim_cons(i64 %a6941, i64 %rva8534)                           ; call prim_cons
  %rva8532 = call i64 @prim_cons(i64 %cont7038, i64 %rva8533)                        ; call prim_cons
  %cloptr10993 = inttoptr i64 %a6938 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10993)                                        ; assert function application
  %i0ptr10994 = getelementptr inbounds i64, i64* %cloptr10993, i64 0                 ; &cloptr10993[0]
  %f10996 = load i64, i64* %i0ptr10994, align 8                                      ; load; *i0ptr10994
  %fptr10995 = inttoptr i64 %f10996 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10995(i64 %a6938, i64 %rva8532)                     ; tail call
  ret void
}


define void @lam9509(i64 %env9510, i64 %rvp8521) {
  %envptr10997 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10998 = getelementptr inbounds i64, i64* %envptr10997, i64 7                ; &envptr10997[7]
  %cont7038 = load i64, i64* %envptr10998, align 8                                   ; load; *envptr10998
  %envptr10999 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11000 = getelementptr inbounds i64, i64* %envptr10999, i64 6                ; &envptr10999[6]
  %n6V$y = load i64, i64* %envptr11000, align 8                                      ; load; *envptr11000
  %envptr11001 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11002 = getelementptr inbounds i64, i64* %envptr11001, i64 5                ; &envptr11001[5]
  %a6938 = load i64, i64* %envptr11002, align 8                                      ; load; *envptr11002
  %envptr11003 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11004 = getelementptr inbounds i64, i64* %envptr11003, i64 4                ; &envptr11003[4]
  %xJs$ly = load i64, i64* %envptr11004, align 8                                     ; load; *envptr11004
  %envptr11005 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11006 = getelementptr inbounds i64, i64* %envptr11005, i64 3                ; &envptr11005[3]
  %Uyx$lx = load i64, i64* %envptr11006, align 8                                     ; load; *envptr11006
  %envptr11007 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11008 = getelementptr inbounds i64, i64* %envptr11007, i64 2                ; &envptr11007[2]
  %WjI$_37drop = load i64, i64* %envptr11008, align 8                                ; load; *envptr11008
  %envptr11009 = inttoptr i64 %env9510 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11010 = getelementptr inbounds i64, i64* %envptr11009, i64 1                ; &envptr11009[1]
  %D97$_37_62 = load i64, i64* %envptr11010, align 8                                 ; load; *envptr11010
  %_957044 = call i64 @prim_car(i64 %rvp8521)                                        ; call prim_car
  %rvp8520 = call i64 @prim_cdr(i64 %rvp8521)                                        ; call prim_cdr
  %a6941 = call i64 @prim_car(i64 %rvp8520)                                          ; call prim_car
  %na8488 = call i64 @prim_cdr(i64 %rvp8520)                                         ; call prim_cdr
  %cloptr11011 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11013 = getelementptr inbounds i64, i64* %cloptr11011, i64 1                  ; &eptr11013[1]
  %eptr11014 = getelementptr inbounds i64, i64* %cloptr11011, i64 2                  ; &eptr11014[2]
  %eptr11015 = getelementptr inbounds i64, i64* %cloptr11011, i64 3                  ; &eptr11015[3]
  %eptr11016 = getelementptr inbounds i64, i64* %cloptr11011, i64 4                  ; &eptr11016[4]
  %eptr11017 = getelementptr inbounds i64, i64* %cloptr11011, i64 5                  ; &eptr11017[5]
  %eptr11018 = getelementptr inbounds i64, i64* %cloptr11011, i64 6                  ; &eptr11018[6]
  %eptr11019 = getelementptr inbounds i64, i64* %cloptr11011, i64 7                  ; &eptr11019[7]
  store i64 %WjI$_37drop, i64* %eptr11013                                            ; *eptr11013 = %WjI$_37drop
  store i64 %Uyx$lx, i64* %eptr11014                                                 ; *eptr11014 = %Uyx$lx
  store i64 %xJs$ly, i64* %eptr11015                                                 ; *eptr11015 = %xJs$ly
  store i64 %a6938, i64* %eptr11016                                                  ; *eptr11016 = %a6938
  store i64 %n6V$y, i64* %eptr11017                                                  ; *eptr11017 = %n6V$y
  store i64 %a6941, i64* %eptr11018                                                  ; *eptr11018 = %a6941
  store i64 %cont7038, i64* %eptr11019                                               ; *eptr11019 = %cont7038
  %eptr11012 = getelementptr inbounds i64, i64* %cloptr11011, i64 0                  ; &cloptr11011[0]
  %f11020 = ptrtoint void(i64,i64)* @lam9507 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11020, i64* %eptr11012                                                 ; store fptr
  %arg7623 = ptrtoint i64* %cloptr11011 to i64                                       ; closure cast; i64* -> i64
  %rva8519 = add i64 0, 0                                                            ; quoted ()
  %rva8518 = call i64 @prim_cons(i64 %Uyx$lx, i64 %rva8519)                          ; call prim_cons
  %rva8517 = call i64 @prim_cons(i64 %xJs$ly, i64 %rva8518)                          ; call prim_cons
  %rva8516 = call i64 @prim_cons(i64 %arg7623, i64 %rva8517)                         ; call prim_cons
  %cloptr11021 = inttoptr i64 %D97$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11021)                                        ; assert function application
  %i0ptr11022 = getelementptr inbounds i64, i64* %cloptr11021, i64 0                 ; &cloptr11021[0]
  %f11024 = load i64, i64* %i0ptr11022, align 8                                      ; load; *i0ptr11022
  %fptr11023 = inttoptr i64 %f11024 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11023(i64 %D97$_37_62, i64 %rva8516)                ; tail call
  ret void
}


define void @lam9507(i64 %env9508, i64 %rvp8515) {
  %envptr11025 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11026 = getelementptr inbounds i64, i64* %envptr11025, i64 7                ; &envptr11025[7]
  %cont7038 = load i64, i64* %envptr11026, align 8                                   ; load; *envptr11026
  %envptr11027 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11028 = getelementptr inbounds i64, i64* %envptr11027, i64 6                ; &envptr11027[6]
  %a6941 = load i64, i64* %envptr11028, align 8                                      ; load; *envptr11028
  %envptr11029 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11030 = getelementptr inbounds i64, i64* %envptr11029, i64 5                ; &envptr11029[5]
  %n6V$y = load i64, i64* %envptr11030, align 8                                      ; load; *envptr11030
  %envptr11031 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11032 = getelementptr inbounds i64, i64* %envptr11031, i64 4                ; &envptr11031[4]
  %a6938 = load i64, i64* %envptr11032, align 8                                      ; load; *envptr11032
  %envptr11033 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11034 = getelementptr inbounds i64, i64* %envptr11033, i64 3                ; &envptr11033[3]
  %xJs$ly = load i64, i64* %envptr11034, align 8                                     ; load; *envptr11034
  %envptr11035 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11036 = getelementptr inbounds i64, i64* %envptr11035, i64 2                ; &envptr11035[2]
  %Uyx$lx = load i64, i64* %envptr11036, align 8                                     ; load; *envptr11036
  %envptr11037 = inttoptr i64 %env9508 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11038 = getelementptr inbounds i64, i64* %envptr11037, i64 1                ; &envptr11037[1]
  %WjI$_37drop = load i64, i64* %envptr11038, align 8                                ; load; *envptr11038
  %_957045 = call i64 @prim_car(i64 %rvp8515)                                        ; call prim_car
  %rvp8514 = call i64 @prim_cdr(i64 %rvp8515)                                        ; call prim_cdr
  %a6942 = call i64 @prim_car(i64 %rvp8514)                                          ; call prim_car
  %na8490 = call i64 @prim_cdr(i64 %rvp8514)                                         ; call prim_cdr
  %cmp11039 = icmp eq i64 %a6942, 15                                                 ; false?
  br i1 %cmp11039, label %else11041, label %then11040                                ; if

then11040:
  %a6943 = call i64 @prim__45(i64 %xJs$ly, i64 %Uyx$lx)                              ; call prim__45
  %cloptr11042 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11044 = getelementptr inbounds i64, i64* %cloptr11042, i64 1                  ; &eptr11044[1]
  %eptr11045 = getelementptr inbounds i64, i64* %cloptr11042, i64 2                  ; &eptr11045[2]
  %eptr11046 = getelementptr inbounds i64, i64* %cloptr11042, i64 3                  ; &eptr11046[3]
  store i64 %a6938, i64* %eptr11044                                                  ; *eptr11044 = %a6938
  store i64 %a6941, i64* %eptr11045                                                  ; *eptr11045 = %a6941
  store i64 %cont7038, i64* %eptr11046                                               ; *eptr11046 = %cont7038
  %eptr11043 = getelementptr inbounds i64, i64* %cloptr11042, i64 0                  ; &cloptr11042[0]
  %f11047 = ptrtoint void(i64,i64)* @lam9500 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11047, i64* %eptr11043                                                 ; store fptr
  %arg7629 = ptrtoint i64* %cloptr11042 to i64                                       ; closure cast; i64* -> i64
  %rva8502 = add i64 0, 0                                                            ; quoted ()
  %rva8501 = call i64 @prim_cons(i64 %a6943, i64 %rva8502)                           ; call prim_cons
  %rva8500 = call i64 @prim_cons(i64 %n6V$y, i64 %rva8501)                           ; call prim_cons
  %rva8499 = call i64 @prim_cons(i64 %arg7629, i64 %rva8500)                         ; call prim_cons
  %cloptr11048 = inttoptr i64 %WjI$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11048)                                        ; assert function application
  %i0ptr11049 = getelementptr inbounds i64, i64* %cloptr11048, i64 0                 ; &cloptr11048[0]
  %f11051 = load i64, i64* %i0ptr11049, align 8                                      ; load; *i0ptr11049
  %fptr11050 = inttoptr i64 %f11051 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11050(i64 %WjI$_37drop, i64 %rva8499)               ; tail call
  ret void

else11041:
  %cloptr11052 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11054 = getelementptr inbounds i64, i64* %cloptr11052, i64 1                  ; &eptr11054[1]
  %eptr11055 = getelementptr inbounds i64, i64* %cloptr11052, i64 2                  ; &eptr11055[2]
  %eptr11056 = getelementptr inbounds i64, i64* %cloptr11052, i64 3                  ; &eptr11056[3]
  store i64 %a6938, i64* %eptr11054                                                  ; *eptr11054 = %a6938
  store i64 %a6941, i64* %eptr11055                                                  ; *eptr11055 = %a6941
  store i64 %cont7038, i64* %eptr11056                                               ; *eptr11056 = %cont7038
  %eptr11053 = getelementptr inbounds i64, i64* %cloptr11052, i64 0                  ; &cloptr11052[0]
  %f11057 = ptrtoint void(i64,i64)* @lam9505 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11057, i64* %eptr11053                                                 ; store fptr
  %arg7637 = ptrtoint i64* %cloptr11052 to i64                                       ; closure cast; i64* -> i64
  %arg7636 = add i64 0, 0                                                            ; quoted ()
  %rva8513 = add i64 0, 0                                                            ; quoted ()
  %rva8512 = call i64 @prim_cons(i64 %n6V$y, i64 %rva8513)                           ; call prim_cons
  %rva8511 = call i64 @prim_cons(i64 %arg7636, i64 %rva8512)                         ; call prim_cons
  %cloptr11058 = inttoptr i64 %arg7637 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11058)                                        ; assert function application
  %i0ptr11059 = getelementptr inbounds i64, i64* %cloptr11058, i64 0                 ; &cloptr11058[0]
  %f11061 = load i64, i64* %i0ptr11059, align 8                                      ; load; *i0ptr11059
  %fptr11060 = inttoptr i64 %f11061 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11060(i64 %arg7637, i64 %rva8511)                   ; tail call
  ret void
}


define void @lam9505(i64 %env9506, i64 %rvp8510) {
  %envptr11062 = inttoptr i64 %env9506 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11063 = getelementptr inbounds i64, i64* %envptr11062, i64 3                ; &envptr11062[3]
  %cont7038 = load i64, i64* %envptr11063, align 8                                   ; load; *envptr11063
  %envptr11064 = inttoptr i64 %env9506 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11065 = getelementptr inbounds i64, i64* %envptr11064, i64 2                ; &envptr11064[2]
  %a6941 = load i64, i64* %envptr11065, align 8                                      ; load; *envptr11065
  %envptr11066 = inttoptr i64 %env9506 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11067 = getelementptr inbounds i64, i64* %envptr11066, i64 1                ; &envptr11066[1]
  %a6938 = load i64, i64* %envptr11067, align 8                                      ; load; *envptr11067
  %_957046 = call i64 @prim_car(i64 %rvp8510)                                        ; call prim_car
  %rvp8509 = call i64 @prim_cdr(i64 %rvp8510)                                        ; call prim_cdr
  %a6944 = call i64 @prim_car(i64 %rvp8509)                                          ; call prim_car
  %na8504 = call i64 @prim_cdr(i64 %rvp8509)                                         ; call prim_cdr
  %rva8508 = add i64 0, 0                                                            ; quoted ()
  %rva8507 = call i64 @prim_cons(i64 %a6944, i64 %rva8508)                           ; call prim_cons
  %rva8506 = call i64 @prim_cons(i64 %a6941, i64 %rva8507)                           ; call prim_cons
  %rva8505 = call i64 @prim_cons(i64 %cont7038, i64 %rva8506)                        ; call prim_cons
  %cloptr11068 = inttoptr i64 %a6938 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11068)                                        ; assert function application
  %i0ptr11069 = getelementptr inbounds i64, i64* %cloptr11068, i64 0                 ; &cloptr11068[0]
  %f11071 = load i64, i64* %i0ptr11069, align 8                                      ; load; *i0ptr11069
  %fptr11070 = inttoptr i64 %f11071 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11070(i64 %a6938, i64 %rva8505)                     ; tail call
  ret void
}


define void @lam9500(i64 %env9501, i64 %rvp8498) {
  %envptr11072 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11073 = getelementptr inbounds i64, i64* %envptr11072, i64 3                ; &envptr11072[3]
  %cont7038 = load i64, i64* %envptr11073, align 8                                   ; load; *envptr11073
  %envptr11074 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11075 = getelementptr inbounds i64, i64* %envptr11074, i64 2                ; &envptr11074[2]
  %a6941 = load i64, i64* %envptr11075, align 8                                      ; load; *envptr11075
  %envptr11076 = inttoptr i64 %env9501 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11077 = getelementptr inbounds i64, i64* %envptr11076, i64 1                ; &envptr11076[1]
  %a6938 = load i64, i64* %envptr11077, align 8                                      ; load; *envptr11077
  %_957046 = call i64 @prim_car(i64 %rvp8498)                                        ; call prim_car
  %rvp8497 = call i64 @prim_cdr(i64 %rvp8498)                                        ; call prim_cdr
  %a6944 = call i64 @prim_car(i64 %rvp8497)                                          ; call prim_car
  %na8492 = call i64 @prim_cdr(i64 %rvp8497)                                         ; call prim_cdr
  %rva8496 = add i64 0, 0                                                            ; quoted ()
  %rva8495 = call i64 @prim_cons(i64 %a6944, i64 %rva8496)                           ; call prim_cons
  %rva8494 = call i64 @prim_cons(i64 %a6941, i64 %rva8495)                           ; call prim_cons
  %rva8493 = call i64 @prim_cons(i64 %cont7038, i64 %rva8494)                        ; call prim_cons
  %cloptr11078 = inttoptr i64 %a6938 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11078)                                        ; assert function application
  %i0ptr11079 = getelementptr inbounds i64, i64* %cloptr11078, i64 0                 ; &cloptr11078[0]
  %f11081 = load i64, i64* %i0ptr11079, align 8                                      ; load; *i0ptr11079
  %fptr11080 = inttoptr i64 %f11081 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11080(i64 %a6938, i64 %rva8493)                     ; tail call
  ret void
}


define void @lam9488(i64 %env9489, i64 %rvp8691) {
  %envptr11082 = inttoptr i64 %env9489 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11083 = getelementptr inbounds i64, i64* %envptr11082, i64 2                ; &envptr11082[2]
  %YZ3$_37common_45tail = load i64, i64* %envptr11083, align 8                       ; load; *envptr11083
  %envptr11084 = inttoptr i64 %env9489 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11085 = getelementptr inbounds i64, i64* %envptr11084, i64 1                ; &envptr11084[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11085, align 8                        ; load; *envptr11085
  %cont7051 = call i64 @prim_car(i64 %rvp8691)                                       ; call prim_car
  %rvp8690 = call i64 @prim_cdr(i64 %rvp8691)                                        ; call prim_cdr
  %Ls2$new = call i64 @prim_car(i64 %rvp8690)                                        ; call prim_car
  %na8593 = call i64 @prim_cdr(i64 %rvp8690)                                         ; call prim_cdr
  %arg7666 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6945 = call i64 @prim_vector_45ref(i64 %p3x$_37wind_45stack, i64 %arg7666)       ; call prim_vector_45ref
  %cloptr11086 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11088 = getelementptr inbounds i64, i64* %cloptr11086, i64 1                  ; &eptr11088[1]
  %eptr11089 = getelementptr inbounds i64, i64* %cloptr11086, i64 2                  ; &eptr11089[2]
  %eptr11090 = getelementptr inbounds i64, i64* %cloptr11086, i64 3                  ; &eptr11090[3]
  store i64 %p3x$_37wind_45stack, i64* %eptr11088                                    ; *eptr11088 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11089                                               ; *eptr11089 = %cont7051
  store i64 %Ls2$new, i64* %eptr11090                                                ; *eptr11090 = %Ls2$new
  %eptr11087 = getelementptr inbounds i64, i64* %cloptr11086, i64 0                  ; &cloptr11086[0]
  %f11091 = ptrtoint void(i64,i64)* @lam9485 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11091, i64* %eptr11087                                                 ; store fptr
  %arg7670 = ptrtoint i64* %cloptr11086 to i64                                       ; closure cast; i64* -> i64
  %rva8689 = add i64 0, 0                                                            ; quoted ()
  %rva8688 = call i64 @prim_cons(i64 %a6945, i64 %rva8689)                           ; call prim_cons
  %rva8687 = call i64 @prim_cons(i64 %Ls2$new, i64 %rva8688)                         ; call prim_cons
  %rva8686 = call i64 @prim_cons(i64 %arg7670, i64 %rva8687)                         ; call prim_cons
  %cloptr11092 = inttoptr i64 %YZ3$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11092)                                        ; assert function application
  %i0ptr11093 = getelementptr inbounds i64, i64* %cloptr11092, i64 0                 ; &cloptr11092[0]
  %f11095 = load i64, i64* %i0ptr11093, align 8                                      ; load; *i0ptr11093
  %fptr11094 = inttoptr i64 %f11095 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11094(i64 %YZ3$_37common_45tail, i64 %rva8686)      ; tail call
  ret void
}


define void @lam9485(i64 %env9486, i64 %rvp8685) {
  %envptr11096 = inttoptr i64 %env9486 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11097 = getelementptr inbounds i64, i64* %envptr11096, i64 3                ; &envptr11096[3]
  %Ls2$new = load i64, i64* %envptr11097, align 8                                    ; load; *envptr11097
  %envptr11098 = inttoptr i64 %env9486 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11099 = getelementptr inbounds i64, i64* %envptr11098, i64 2                ; &envptr11098[2]
  %cont7051 = load i64, i64* %envptr11099, align 8                                   ; load; *envptr11099
  %envptr11100 = inttoptr i64 %env9486 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11101 = getelementptr inbounds i64, i64* %envptr11100, i64 1                ; &envptr11100[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11101, align 8                        ; load; *envptr11101
  %_957052 = call i64 @prim_car(i64 %rvp8685)                                        ; call prim_car
  %rvp8684 = call i64 @prim_cdr(i64 %rvp8685)                                        ; call prim_cdr
  %hMy$tail = call i64 @prim_car(i64 %rvp8684)                                       ; call prim_car
  %na8595 = call i64 @prim_cdr(i64 %rvp8684)                                         ; call prim_cdr
  %cloptr11102 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11103 = getelementptr inbounds i64, i64* %cloptr11102, i64 0                  ; &cloptr11102[0]
  %f11104 = ptrtoint void(i64,i64)* @lam9483 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11104, i64* %eptr11103                                                 ; store fptr
  %arg7673 = ptrtoint i64* %cloptr11102 to i64                                       ; closure cast; i64* -> i64
  %cloptr11105 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11107 = getelementptr inbounds i64, i64* %cloptr11105, i64 1                  ; &eptr11107[1]
  %eptr11108 = getelementptr inbounds i64, i64* %cloptr11105, i64 2                  ; &eptr11108[2]
  %eptr11109 = getelementptr inbounds i64, i64* %cloptr11105, i64 3                  ; &eptr11109[3]
  %eptr11110 = getelementptr inbounds i64, i64* %cloptr11105, i64 4                  ; &eptr11110[4]
  store i64 %p3x$_37wind_45stack, i64* %eptr11107                                    ; *eptr11107 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11108                                               ; *eptr11108 = %cont7051
  store i64 %hMy$tail, i64* %eptr11109                                               ; *eptr11109 = %hMy$tail
  store i64 %Ls2$new, i64* %eptr11110                                                ; *eptr11110 = %Ls2$new
  %eptr11106 = getelementptr inbounds i64, i64* %cloptr11105, i64 0                  ; &cloptr11105[0]
  %f11111 = ptrtoint void(i64,i64)* @lam9479 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11111, i64* %eptr11106                                                 ; store fptr
  %arg7672 = ptrtoint i64* %cloptr11105 to i64                                       ; closure cast; i64* -> i64
  %rva8683 = add i64 0, 0                                                            ; quoted ()
  %rva8682 = call i64 @prim_cons(i64 %arg7672, i64 %rva8683)                         ; call prim_cons
  %cloptr11112 = inttoptr i64 %arg7673 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11112)                                        ; assert function application
  %i0ptr11113 = getelementptr inbounds i64, i64* %cloptr11112, i64 0                 ; &cloptr11112[0]
  %f11115 = load i64, i64* %i0ptr11113, align 8                                      ; load; *i0ptr11113
  %fptr11114 = inttoptr i64 %f11115 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11114(i64 %arg7673, i64 %rva8682)                   ; tail call
  ret void
}


define void @lam9483(i64 %env9484, i64 %gKl$lst7073) {
  %cont7072 = call i64 @prim_car(i64 %gKl$lst7073)                                   ; call prim_car
  %gKl$lst = call i64 @prim_cdr(i64 %gKl$lst7073)                                    ; call prim_cdr
  %arg7677 = add i64 0, 0                                                            ; quoted ()
  %rva8598 = add i64 0, 0                                                            ; quoted ()
  %rva8597 = call i64 @prim_cons(i64 %gKl$lst, i64 %rva8598)                         ; call prim_cons
  %rva8596 = call i64 @prim_cons(i64 %arg7677, i64 %rva8597)                         ; call prim_cons
  %cloptr11116 = inttoptr i64 %cont7072 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11116)                                        ; assert function application
  %i0ptr11117 = getelementptr inbounds i64, i64* %cloptr11116, i64 0                 ; &cloptr11116[0]
  %f11119 = load i64, i64* %i0ptr11117, align 8                                      ; load; *i0ptr11117
  %fptr11118 = inttoptr i64 %f11119 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11118(i64 %cont7072, i64 %rva8596)                  ; tail call
  ret void
}


define void @lam9479(i64 %env9480, i64 %rvp8681) {
  %envptr11120 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11121 = getelementptr inbounds i64, i64* %envptr11120, i64 4                ; &envptr11120[4]
  %Ls2$new = load i64, i64* %envptr11121, align 8                                    ; load; *envptr11121
  %envptr11122 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11123 = getelementptr inbounds i64, i64* %envptr11122, i64 3                ; &envptr11122[3]
  %hMy$tail = load i64, i64* %envptr11123, align 8                                   ; load; *envptr11123
  %envptr11124 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11125 = getelementptr inbounds i64, i64* %envptr11124, i64 2                ; &envptr11124[2]
  %cont7051 = load i64, i64* %envptr11125, align 8                                   ; load; *envptr11125
  %envptr11126 = inttoptr i64 %env9480 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11127 = getelementptr inbounds i64, i64* %envptr11126, i64 1                ; &envptr11126[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11127, align 8                        ; load; *envptr11127
  %_957070 = call i64 @prim_car(i64 %rvp8681)                                        ; call prim_car
  %rvp8680 = call i64 @prim_cdr(i64 %rvp8681)                                        ; call prim_cdr
  %a6946 = call i64 @prim_car(i64 %rvp8680)                                          ; call prim_car
  %na8600 = call i64 @prim_cdr(i64 %rvp8680)                                         ; call prim_cdr
  %arg7680 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7071 = call i64 @prim_make_45vector(i64 %arg7680, i64 %a6946)              ; call prim_make_45vector
  %cloptr11128 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11130 = getelementptr inbounds i64, i64* %cloptr11128, i64 1                  ; &eptr11130[1]
  %eptr11131 = getelementptr inbounds i64, i64* %cloptr11128, i64 2                  ; &eptr11131[2]
  %eptr11132 = getelementptr inbounds i64, i64* %cloptr11128, i64 3                  ; &eptr11132[3]
  %eptr11133 = getelementptr inbounds i64, i64* %cloptr11128, i64 4                  ; &eptr11133[4]
  store i64 %p3x$_37wind_45stack, i64* %eptr11130                                    ; *eptr11130 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11131                                               ; *eptr11131 = %cont7051
  store i64 %hMy$tail, i64* %eptr11132                                               ; *eptr11132 = %hMy$tail
  store i64 %Ls2$new, i64* %eptr11133                                                ; *eptr11133 = %Ls2$new
  %eptr11129 = getelementptr inbounds i64, i64* %cloptr11128, i64 0                  ; &cloptr11128[0]
  %f11134 = ptrtoint void(i64,i64)* @lam9476 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11134, i64* %eptr11129                                                 ; store fptr
  %arg7683 = ptrtoint i64* %cloptr11128 to i64                                       ; closure cast; i64* -> i64
  %arg7682 = add i64 0, 0                                                            ; quoted ()
  %rva8679 = add i64 0, 0                                                            ; quoted ()
  %rva8678 = call i64 @prim_cons(i64 %retprim7071, i64 %rva8679)                     ; call prim_cons
  %rva8677 = call i64 @prim_cons(i64 %arg7682, i64 %rva8678)                         ; call prim_cons
  %cloptr11135 = inttoptr i64 %arg7683 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11135)                                        ; assert function application
  %i0ptr11136 = getelementptr inbounds i64, i64* %cloptr11135, i64 0                 ; &cloptr11135[0]
  %f11138 = load i64, i64* %i0ptr11136, align 8                                      ; load; *i0ptr11136
  %fptr11137 = inttoptr i64 %f11138 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11137(i64 %arg7683, i64 %rva8677)                   ; tail call
  ret void
}


define void @lam9476(i64 %env9477, i64 %rvp8676) {
  %envptr11139 = inttoptr i64 %env9477 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11140 = getelementptr inbounds i64, i64* %envptr11139, i64 4                ; &envptr11139[4]
  %Ls2$new = load i64, i64* %envptr11140, align 8                                    ; load; *envptr11140
  %envptr11141 = inttoptr i64 %env9477 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11142 = getelementptr inbounds i64, i64* %envptr11141, i64 3                ; &envptr11141[3]
  %hMy$tail = load i64, i64* %envptr11142, align 8                                   ; load; *envptr11142
  %envptr11143 = inttoptr i64 %env9477 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11144 = getelementptr inbounds i64, i64* %envptr11143, i64 2                ; &envptr11143[2]
  %cont7051 = load i64, i64* %envptr11144, align 8                                   ; load; *envptr11144
  %envptr11145 = inttoptr i64 %env9477 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11146 = getelementptr inbounds i64, i64* %envptr11145, i64 1                ; &envptr11145[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11146, align 8                        ; load; *envptr11146
  %_957064 = call i64 @prim_car(i64 %rvp8676)                                        ; call prim_car
  %rvp8675 = call i64 @prim_cdr(i64 %rvp8676)                                        ; call prim_cdr
  %UgS$f = call i64 @prim_car(i64 %rvp8675)                                          ; call prim_car
  %na8602 = call i64 @prim_cdr(i64 %rvp8675)                                         ; call prim_cdr
  %arg7685 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11147 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11149 = getelementptr inbounds i64, i64* %cloptr11147, i64 1                  ; &eptr11149[1]
  %eptr11150 = getelementptr inbounds i64, i64* %cloptr11147, i64 2                  ; &eptr11150[2]
  %eptr11151 = getelementptr inbounds i64, i64* %cloptr11147, i64 3                  ; &eptr11151[3]
  store i64 %p3x$_37wind_45stack, i64* %eptr11149                                    ; *eptr11149 = %p3x$_37wind_45stack
  store i64 %UgS$f, i64* %eptr11150                                                  ; *eptr11150 = %UgS$f
  store i64 %hMy$tail, i64* %eptr11151                                               ; *eptr11151 = %hMy$tail
  %eptr11148 = getelementptr inbounds i64, i64* %cloptr11147, i64 0                  ; &cloptr11147[0]
  %f11152 = ptrtoint void(i64,i64)* @lam9473 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11152, i64* %eptr11148                                                 ; store fptr
  %arg7684 = ptrtoint i64* %cloptr11147 to i64                                       ; closure cast; i64* -> i64
  %OCx$_956837 = call i64 @prim_vector_45set_33(i64 %UgS$f, i64 %arg7685, i64 %arg7684); call prim_vector_45set_33
  %arg7710 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6954 = call i64 @prim_vector_45ref(i64 %UgS$f, i64 %arg7710)                     ; call prim_vector_45ref
  %arg7712 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6955 = call i64 @prim_vector_45ref(i64 %p3x$_37wind_45stack, i64 %arg7712)       ; call prim_vector_45ref
  %cloptr11153 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11155 = getelementptr inbounds i64, i64* %cloptr11153, i64 1                  ; &eptr11155[1]
  %eptr11156 = getelementptr inbounds i64, i64* %cloptr11153, i64 2                  ; &eptr11156[2]
  %eptr11157 = getelementptr inbounds i64, i64* %cloptr11153, i64 3                  ; &eptr11157[3]
  %eptr11158 = getelementptr inbounds i64, i64* %cloptr11153, i64 4                  ; &eptr11158[4]
  store i64 %p3x$_37wind_45stack, i64* %eptr11155                                    ; *eptr11155 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11156                                               ; *eptr11156 = %cont7051
  store i64 %hMy$tail, i64* %eptr11157                                               ; *eptr11157 = %hMy$tail
  store i64 %Ls2$new, i64* %eptr11158                                                ; *eptr11158 = %Ls2$new
  %eptr11154 = getelementptr inbounds i64, i64* %cloptr11153, i64 0                  ; &cloptr11153[0]
  %f11159 = ptrtoint void(i64,i64)* @lam9457 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11159, i64* %eptr11154                                                 ; store fptr
  %arg7715 = ptrtoint i64* %cloptr11153 to i64                                       ; closure cast; i64* -> i64
  %rva8674 = add i64 0, 0                                                            ; quoted ()
  %rva8673 = call i64 @prim_cons(i64 %a6955, i64 %rva8674)                           ; call prim_cons
  %rva8672 = call i64 @prim_cons(i64 %arg7715, i64 %rva8673)                         ; call prim_cons
  %cloptr11160 = inttoptr i64 %a6954 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11160)                                        ; assert function application
  %i0ptr11161 = getelementptr inbounds i64, i64* %cloptr11160, i64 0                 ; &cloptr11160[0]
  %f11163 = load i64, i64* %i0ptr11161, align 8                                      ; load; *i0ptr11161
  %fptr11162 = inttoptr i64 %f11163 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11162(i64 %a6954, i64 %rva8672)                     ; tail call
  ret void
}


define void @lam9473(i64 %env9474, i64 %rvp8625) {
  %envptr11164 = inttoptr i64 %env9474 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11165 = getelementptr inbounds i64, i64* %envptr11164, i64 3                ; &envptr11164[3]
  %hMy$tail = load i64, i64* %envptr11165, align 8                                   ; load; *envptr11165
  %envptr11166 = inttoptr i64 %env9474 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11167 = getelementptr inbounds i64, i64* %envptr11166, i64 2                ; &envptr11166[2]
  %UgS$f = load i64, i64* %envptr11167, align 8                                      ; load; *envptr11167
  %envptr11168 = inttoptr i64 %env9474 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11169 = getelementptr inbounds i64, i64* %envptr11168, i64 1                ; &envptr11168[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11169, align 8                        ; load; *envptr11169
  %cont7065 = call i64 @prim_car(i64 %rvp8625)                                       ; call prim_car
  %rvp8624 = call i64 @prim_cdr(i64 %rvp8625)                                        ; call prim_cdr
  %VGv$l = call i64 @prim_car(i64 %rvp8624)                                          ; call prim_car
  %na8604 = call i64 @prim_cdr(i64 %rvp8624)                                         ; call prim_cdr
  %a6947 = call i64 @prim_eq_63(i64 %VGv$l, i64 %hMy$tail)                           ; call prim_eq_63
  %a6948 = call i64 @prim_not(i64 %a6947)                                            ; call prim_not
  %cmp11170 = icmp eq i64 %a6948, 15                                                 ; false?
  br i1 %cmp11170, label %else11172, label %then11171                                ; if

then11171:
  %a6949 = call i64 @prim_cdr(i64 %VGv$l)                                            ; call prim_cdr
  %arg7692 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7068 = call i64 @prim_vector_45set_33(i64 %p3x$_37wind_45stack, i64 %arg7692, i64 %a6949); call prim_vector_45set_33
  %cloptr11173 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11175 = getelementptr inbounds i64, i64* %cloptr11173, i64 1                  ; &eptr11175[1]
  %eptr11176 = getelementptr inbounds i64, i64* %cloptr11173, i64 2                  ; &eptr11176[2]
  %eptr11177 = getelementptr inbounds i64, i64* %cloptr11173, i64 3                  ; &eptr11177[3]
  store i64 %UgS$f, i64* %eptr11175                                                  ; *eptr11175 = %UgS$f
  store i64 %VGv$l, i64* %eptr11176                                                  ; *eptr11176 = %VGv$l
  store i64 %cont7065, i64* %eptr11177                                               ; *eptr11177 = %cont7065
  %eptr11174 = getelementptr inbounds i64, i64* %cloptr11173, i64 0                  ; &cloptr11173[0]
  %f11178 = ptrtoint void(i64,i64)* @lam9468 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11178, i64* %eptr11174                                                 ; store fptr
  %arg7696 = ptrtoint i64* %cloptr11173 to i64                                       ; closure cast; i64* -> i64
  %arg7695 = add i64 0, 0                                                            ; quoted ()
  %rva8620 = add i64 0, 0                                                            ; quoted ()
  %rva8619 = call i64 @prim_cons(i64 %retprim7068, i64 %rva8620)                     ; call prim_cons
  %rva8618 = call i64 @prim_cons(i64 %arg7695, i64 %rva8619)                         ; call prim_cons
  %cloptr11179 = inttoptr i64 %arg7696 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11179)                                        ; assert function application
  %i0ptr11180 = getelementptr inbounds i64, i64* %cloptr11179, i64 0                 ; &cloptr11179[0]
  %f11182 = load i64, i64* %i0ptr11180, align 8                                      ; load; *i0ptr11180
  %fptr11181 = inttoptr i64 %f11182 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11181(i64 %arg7696, i64 %rva8618)                   ; tail call
  ret void

else11172:
  %retprim7069 = call i64 @prim_void()                                               ; call prim_void
  %arg7708 = add i64 0, 0                                                            ; quoted ()
  %rva8623 = add i64 0, 0                                                            ; quoted ()
  %rva8622 = call i64 @prim_cons(i64 %retprim7069, i64 %rva8623)                     ; call prim_cons
  %rva8621 = call i64 @prim_cons(i64 %arg7708, i64 %rva8622)                         ; call prim_cons
  %cloptr11183 = inttoptr i64 %cont7065 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11183)                                        ; assert function application
  %i0ptr11184 = getelementptr inbounds i64, i64* %cloptr11183, i64 0                 ; &cloptr11183[0]
  %f11186 = load i64, i64* %i0ptr11184, align 8                                      ; load; *i0ptr11184
  %fptr11185 = inttoptr i64 %f11186 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11185(i64 %cont7065, i64 %rva8621)                  ; tail call
  ret void
}


define void @lam9468(i64 %env9469, i64 %rvp8617) {
  %envptr11187 = inttoptr i64 %env9469 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11188 = getelementptr inbounds i64, i64* %envptr11187, i64 3                ; &envptr11187[3]
  %cont7065 = load i64, i64* %envptr11188, align 8                                   ; load; *envptr11188
  %envptr11189 = inttoptr i64 %env9469 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11190 = getelementptr inbounds i64, i64* %envptr11189, i64 2                ; &envptr11189[2]
  %VGv$l = load i64, i64* %envptr11190, align 8                                      ; load; *envptr11190
  %envptr11191 = inttoptr i64 %env9469 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11192 = getelementptr inbounds i64, i64* %envptr11191, i64 1                ; &envptr11191[1]
  %UgS$f = load i64, i64* %envptr11192, align 8                                      ; load; *envptr11192
  %_957066 = call i64 @prim_car(i64 %rvp8617)                                        ; call prim_car
  %rvp8616 = call i64 @prim_cdr(i64 %rvp8617)                                        ; call prim_cdr
  %rA4$_956838 = call i64 @prim_car(i64 %rvp8616)                                    ; call prim_car
  %na8606 = call i64 @prim_cdr(i64 %rvp8616)                                         ; call prim_cdr
  %a6950 = call i64 @prim_car(i64 %VGv$l)                                            ; call prim_car
  %a6951 = call i64 @prim_cdr(i64 %a6950)                                            ; call prim_cdr
  %cloptr11193 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11195 = getelementptr inbounds i64, i64* %cloptr11193, i64 1                  ; &eptr11195[1]
  %eptr11196 = getelementptr inbounds i64, i64* %cloptr11193, i64 2                  ; &eptr11196[2]
  %eptr11197 = getelementptr inbounds i64, i64* %cloptr11193, i64 3                  ; &eptr11197[3]
  store i64 %UgS$f, i64* %eptr11195                                                  ; *eptr11195 = %UgS$f
  store i64 %VGv$l, i64* %eptr11196                                                  ; *eptr11196 = %VGv$l
  store i64 %cont7065, i64* %eptr11197                                               ; *eptr11197 = %cont7065
  %eptr11194 = getelementptr inbounds i64, i64* %cloptr11193, i64 0                  ; &cloptr11193[0]
  %f11198 = ptrtoint void(i64,i64)* @lam9466 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11198, i64* %eptr11194                                                 ; store fptr
  %arg7699 = ptrtoint i64* %cloptr11193 to i64                                       ; closure cast; i64* -> i64
  %rva8615 = add i64 0, 0                                                            ; quoted ()
  %rva8614 = call i64 @prim_cons(i64 %arg7699, i64 %rva8615)                         ; call prim_cons
  %cloptr11199 = inttoptr i64 %a6951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11199)                                        ; assert function application
  %i0ptr11200 = getelementptr inbounds i64, i64* %cloptr11199, i64 0                 ; &cloptr11199[0]
  %f11202 = load i64, i64* %i0ptr11200, align 8                                      ; load; *i0ptr11200
  %fptr11201 = inttoptr i64 %f11202 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11201(i64 %a6951, i64 %rva8614)                     ; tail call
  ret void
}


define void @lam9466(i64 %env9467, i64 %rvp8613) {
  %envptr11203 = inttoptr i64 %env9467 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11204 = getelementptr inbounds i64, i64* %envptr11203, i64 3                ; &envptr11203[3]
  %cont7065 = load i64, i64* %envptr11204, align 8                                   ; load; *envptr11204
  %envptr11205 = inttoptr i64 %env9467 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11206 = getelementptr inbounds i64, i64* %envptr11205, i64 2                ; &envptr11205[2]
  %VGv$l = load i64, i64* %envptr11206, align 8                                      ; load; *envptr11206
  %envptr11207 = inttoptr i64 %env9467 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11208 = getelementptr inbounds i64, i64* %envptr11207, i64 1                ; &envptr11207[1]
  %UgS$f = load i64, i64* %envptr11208, align 8                                      ; load; *envptr11208
  %_957067 = call i64 @prim_car(i64 %rvp8613)                                        ; call prim_car
  %rvp8612 = call i64 @prim_cdr(i64 %rvp8613)                                        ; call prim_cdr
  %edV$_956839 = call i64 @prim_car(i64 %rvp8612)                                    ; call prim_car
  %na8608 = call i64 @prim_cdr(i64 %rvp8612)                                         ; call prim_cdr
  %arg7701 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6952 = call i64 @prim_vector_45ref(i64 %UgS$f, i64 %arg7701)                     ; call prim_vector_45ref
  %a6953 = call i64 @prim_cdr(i64 %VGv$l)                                            ; call prim_cdr
  %rva8611 = add i64 0, 0                                                            ; quoted ()
  %rva8610 = call i64 @prim_cons(i64 %a6953, i64 %rva8611)                           ; call prim_cons
  %rva8609 = call i64 @prim_cons(i64 %cont7065, i64 %rva8610)                        ; call prim_cons
  %cloptr11209 = inttoptr i64 %a6952 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11209)                                        ; assert function application
  %i0ptr11210 = getelementptr inbounds i64, i64* %cloptr11209, i64 0                 ; &cloptr11209[0]
  %f11212 = load i64, i64* %i0ptr11210, align 8                                      ; load; *i0ptr11210
  %fptr11211 = inttoptr i64 %f11212 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11211(i64 %a6952, i64 %rva8609)                     ; tail call
  ret void
}


define void @lam9457(i64 %env9458, i64 %rvp8671) {
  %envptr11213 = inttoptr i64 %env9458 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11214 = getelementptr inbounds i64, i64* %envptr11213, i64 4                ; &envptr11213[4]
  %Ls2$new = load i64, i64* %envptr11214, align 8                                    ; load; *envptr11214
  %envptr11215 = inttoptr i64 %env9458 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11216 = getelementptr inbounds i64, i64* %envptr11215, i64 3                ; &envptr11215[3]
  %hMy$tail = load i64, i64* %envptr11216, align 8                                   ; load; *envptr11216
  %envptr11217 = inttoptr i64 %env9458 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11218 = getelementptr inbounds i64, i64* %envptr11217, i64 2                ; &envptr11217[2]
  %cont7051 = load i64, i64* %envptr11218, align 8                                   ; load; *envptr11218
  %envptr11219 = inttoptr i64 %env9458 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11220 = getelementptr inbounds i64, i64* %envptr11219, i64 1                ; &envptr11219[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11220, align 8                        ; load; *envptr11220
  %_957053 = call i64 @prim_car(i64 %rvp8671)                                        ; call prim_car
  %rvp8670 = call i64 @prim_cdr(i64 %rvp8671)                                        ; call prim_cdr
  %qbI$_956836 = call i64 @prim_car(i64 %rvp8670)                                    ; call prim_car
  %na8627 = call i64 @prim_cdr(i64 %rvp8670)                                         ; call prim_cdr
  %cloptr11221 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11222 = getelementptr inbounds i64, i64* %cloptr11221, i64 0                  ; &cloptr11221[0]
  %f11223 = ptrtoint void(i64,i64)* @lam9455 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11223, i64* %eptr11222                                                 ; store fptr
  %arg7718 = ptrtoint i64* %cloptr11221 to i64                                       ; closure cast; i64* -> i64
  %cloptr11224 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11226 = getelementptr inbounds i64, i64* %cloptr11224, i64 1                  ; &eptr11226[1]
  %eptr11227 = getelementptr inbounds i64, i64* %cloptr11224, i64 2                  ; &eptr11227[2]
  %eptr11228 = getelementptr inbounds i64, i64* %cloptr11224, i64 3                  ; &eptr11228[3]
  %eptr11229 = getelementptr inbounds i64, i64* %cloptr11224, i64 4                  ; &eptr11229[4]
  store i64 %p3x$_37wind_45stack, i64* %eptr11226                                    ; *eptr11226 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11227                                               ; *eptr11227 = %cont7051
  store i64 %hMy$tail, i64* %eptr11228                                               ; *eptr11228 = %hMy$tail
  store i64 %Ls2$new, i64* %eptr11229                                                ; *eptr11229 = %Ls2$new
  %eptr11225 = getelementptr inbounds i64, i64* %cloptr11224, i64 0                  ; &cloptr11224[0]
  %f11230 = ptrtoint void(i64,i64)* @lam9451 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11230, i64* %eptr11225                                                 ; store fptr
  %arg7717 = ptrtoint i64* %cloptr11224 to i64                                       ; closure cast; i64* -> i64
  %rva8669 = add i64 0, 0                                                            ; quoted ()
  %rva8668 = call i64 @prim_cons(i64 %arg7717, i64 %rva8669)                         ; call prim_cons
  %cloptr11231 = inttoptr i64 %arg7718 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11231)                                        ; assert function application
  %i0ptr11232 = getelementptr inbounds i64, i64* %cloptr11231, i64 0                 ; &cloptr11231[0]
  %f11234 = load i64, i64* %i0ptr11232, align 8                                      ; load; *i0ptr11232
  %fptr11233 = inttoptr i64 %f11234 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11233(i64 %arg7718, i64 %rva8668)                   ; tail call
  ret void
}


define void @lam9455(i64 %env9456, i64 %I0o$lst7063) {
  %cont7062 = call i64 @prim_car(i64 %I0o$lst7063)                                   ; call prim_car
  %I0o$lst = call i64 @prim_cdr(i64 %I0o$lst7063)                                    ; call prim_cdr
  %arg7722 = add i64 0, 0                                                            ; quoted ()
  %rva8630 = add i64 0, 0                                                            ; quoted ()
  %rva8629 = call i64 @prim_cons(i64 %I0o$lst, i64 %rva8630)                         ; call prim_cons
  %rva8628 = call i64 @prim_cons(i64 %arg7722, i64 %rva8629)                         ; call prim_cons
  %cloptr11235 = inttoptr i64 %cont7062 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11235)                                        ; assert function application
  %i0ptr11236 = getelementptr inbounds i64, i64* %cloptr11235, i64 0                 ; &cloptr11235[0]
  %f11238 = load i64, i64* %i0ptr11236, align 8                                      ; load; *i0ptr11236
  %fptr11237 = inttoptr i64 %f11238 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11237(i64 %cont7062, i64 %rva8628)                  ; tail call
  ret void
}


define void @lam9451(i64 %env9452, i64 %rvp8667) {
  %envptr11239 = inttoptr i64 %env9452 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11240 = getelementptr inbounds i64, i64* %envptr11239, i64 4                ; &envptr11239[4]
  %Ls2$new = load i64, i64* %envptr11240, align 8                                    ; load; *envptr11240
  %envptr11241 = inttoptr i64 %env9452 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11242 = getelementptr inbounds i64, i64* %envptr11241, i64 3                ; &envptr11241[3]
  %hMy$tail = load i64, i64* %envptr11242, align 8                                   ; load; *envptr11242
  %envptr11243 = inttoptr i64 %env9452 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11244 = getelementptr inbounds i64, i64* %envptr11243, i64 2                ; &envptr11243[2]
  %cont7051 = load i64, i64* %envptr11244, align 8                                   ; load; *envptr11244
  %envptr11245 = inttoptr i64 %env9452 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11246 = getelementptr inbounds i64, i64* %envptr11245, i64 1                ; &envptr11245[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11246, align 8                        ; load; *envptr11246
  %_957060 = call i64 @prim_car(i64 %rvp8667)                                        ; call prim_car
  %rvp8666 = call i64 @prim_cdr(i64 %rvp8667)                                        ; call prim_cdr
  %a6956 = call i64 @prim_car(i64 %rvp8666)                                          ; call prim_car
  %na8632 = call i64 @prim_cdr(i64 %rvp8666)                                         ; call prim_cdr
  %arg7725 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7061 = call i64 @prim_make_45vector(i64 %arg7725, i64 %a6956)              ; call prim_make_45vector
  %cloptr11247 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11249 = getelementptr inbounds i64, i64* %cloptr11247, i64 1                  ; &eptr11249[1]
  %eptr11250 = getelementptr inbounds i64, i64* %cloptr11247, i64 2                  ; &eptr11250[2]
  %eptr11251 = getelementptr inbounds i64, i64* %cloptr11247, i64 3                  ; &eptr11251[3]
  %eptr11252 = getelementptr inbounds i64, i64* %cloptr11247, i64 4                  ; &eptr11252[4]
  store i64 %p3x$_37wind_45stack, i64* %eptr11249                                    ; *eptr11249 = %p3x$_37wind_45stack
  store i64 %cont7051, i64* %eptr11250                                               ; *eptr11250 = %cont7051
  store i64 %hMy$tail, i64* %eptr11251                                               ; *eptr11251 = %hMy$tail
  store i64 %Ls2$new, i64* %eptr11252                                                ; *eptr11252 = %Ls2$new
  %eptr11248 = getelementptr inbounds i64, i64* %cloptr11247, i64 0                  ; &cloptr11247[0]
  %f11253 = ptrtoint void(i64,i64)* @lam9448 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11253, i64* %eptr11248                                                 ; store fptr
  %arg7728 = ptrtoint i64* %cloptr11247 to i64                                       ; closure cast; i64* -> i64
  %arg7727 = add i64 0, 0                                                            ; quoted ()
  %rva8665 = add i64 0, 0                                                            ; quoted ()
  %rva8664 = call i64 @prim_cons(i64 %retprim7061, i64 %rva8665)                     ; call prim_cons
  %rva8663 = call i64 @prim_cons(i64 %arg7727, i64 %rva8664)                         ; call prim_cons
  %cloptr11254 = inttoptr i64 %arg7728 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11254)                                        ; assert function application
  %i0ptr11255 = getelementptr inbounds i64, i64* %cloptr11254, i64 0                 ; &cloptr11254[0]
  %f11257 = load i64, i64* %i0ptr11255, align 8                                      ; load; *i0ptr11255
  %fptr11256 = inttoptr i64 %f11257 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11256(i64 %arg7728, i64 %rva8663)                   ; tail call
  ret void
}


define void @lam9448(i64 %env9449, i64 %rvp8662) {
  %envptr11258 = inttoptr i64 %env9449 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11259 = getelementptr inbounds i64, i64* %envptr11258, i64 4                ; &envptr11258[4]
  %Ls2$new = load i64, i64* %envptr11259, align 8                                    ; load; *envptr11259
  %envptr11260 = inttoptr i64 %env9449 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11261 = getelementptr inbounds i64, i64* %envptr11260, i64 3                ; &envptr11260[3]
  %hMy$tail = load i64, i64* %envptr11261, align 8                                   ; load; *envptr11261
  %envptr11262 = inttoptr i64 %env9449 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11263 = getelementptr inbounds i64, i64* %envptr11262, i64 2                ; &envptr11262[2]
  %cont7051 = load i64, i64* %envptr11263, align 8                                   ; load; *envptr11263
  %envptr11264 = inttoptr i64 %env9449 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11265 = getelementptr inbounds i64, i64* %envptr11264, i64 1                ; &envptr11264[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11265, align 8                        ; load; *envptr11265
  %_957054 = call i64 @prim_car(i64 %rvp8662)                                        ; call prim_car
  %rvp8661 = call i64 @prim_cdr(i64 %rvp8662)                                        ; call prim_cdr
  %kM8$f = call i64 @prim_car(i64 %rvp8661)                                          ; call prim_car
  %na8634 = call i64 @prim_cdr(i64 %rvp8661)                                         ; call prim_cdr
  %arg7730 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11266 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11268 = getelementptr inbounds i64, i64* %cloptr11266, i64 1                  ; &eptr11268[1]
  %eptr11269 = getelementptr inbounds i64, i64* %cloptr11266, i64 2                  ; &eptr11269[2]
  %eptr11270 = getelementptr inbounds i64, i64* %cloptr11266, i64 3                  ; &eptr11270[3]
  store i64 %p3x$_37wind_45stack, i64* %eptr11268                                    ; *eptr11268 = %p3x$_37wind_45stack
  store i64 %kM8$f, i64* %eptr11269                                                  ; *eptr11269 = %kM8$f
  store i64 %hMy$tail, i64* %eptr11270                                               ; *eptr11270 = %hMy$tail
  %eptr11267 = getelementptr inbounds i64, i64* %cloptr11266, i64 0                  ; &cloptr11266[0]
  %f11271 = ptrtoint void(i64,i64)* @lam9445 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11271, i64* %eptr11267                                                 ; store fptr
  %arg7729 = ptrtoint i64* %cloptr11266 to i64                                       ; closure cast; i64* -> i64
  %zsY$_956840 = call i64 @prim_vector_45set_33(i64 %kM8$f, i64 %arg7730, i64 %arg7729); call prim_vector_45set_33
  %arg7754 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6963 = call i64 @prim_vector_45ref(i64 %kM8$f, i64 %arg7754)                     ; call prim_vector_45ref
  %rva8660 = add i64 0, 0                                                            ; quoted ()
  %rva8659 = call i64 @prim_cons(i64 %Ls2$new, i64 %rva8660)                         ; call prim_cons
  %rva8658 = call i64 @prim_cons(i64 %cont7051, i64 %rva8659)                        ; call prim_cons
  %cloptr11272 = inttoptr i64 %a6963 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11272)                                        ; assert function application
  %i0ptr11273 = getelementptr inbounds i64, i64* %cloptr11272, i64 0                 ; &cloptr11272[0]
  %f11275 = load i64, i64* %i0ptr11273, align 8                                      ; load; *i0ptr11273
  %fptr11274 = inttoptr i64 %f11275 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11274(i64 %a6963, i64 %rva8658)                     ; tail call
  ret void
}


define void @lam9445(i64 %env9446, i64 %rvp8657) {
  %envptr11276 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11277 = getelementptr inbounds i64, i64* %envptr11276, i64 3                ; &envptr11276[3]
  %hMy$tail = load i64, i64* %envptr11277, align 8                                   ; load; *envptr11277
  %envptr11278 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11279 = getelementptr inbounds i64, i64* %envptr11278, i64 2                ; &envptr11278[2]
  %kM8$f = load i64, i64* %envptr11279, align 8                                      ; load; *envptr11279
  %envptr11280 = inttoptr i64 %env9446 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11281 = getelementptr inbounds i64, i64* %envptr11280, i64 1                ; &envptr11280[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11281, align 8                        ; load; *envptr11281
  %cont7055 = call i64 @prim_car(i64 %rvp8657)                                       ; call prim_car
  %rvp8656 = call i64 @prim_cdr(i64 %rvp8657)                                        ; call prim_cdr
  %Rg5$l = call i64 @prim_car(i64 %rvp8656)                                          ; call prim_car
  %na8636 = call i64 @prim_cdr(i64 %rvp8656)                                         ; call prim_cdr
  %a6957 = call i64 @prim_eq_63(i64 %Rg5$l, i64 %hMy$tail)                           ; call prim_eq_63
  %a6958 = call i64 @prim_not(i64 %a6957)                                            ; call prim_not
  %cmp11282 = icmp eq i64 %a6958, 15                                                 ; false?
  br i1 %cmp11282, label %else11284, label %then11283                                ; if

then11283:
  %arg7735 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6959 = call i64 @prim_vector_45ref(i64 %kM8$f, i64 %arg7735)                     ; call prim_vector_45ref
  %a6960 = call i64 @prim_cdr(i64 %Rg5$l)                                            ; call prim_cdr
  %cloptr11285 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11287 = getelementptr inbounds i64, i64* %cloptr11285, i64 1                  ; &eptr11287[1]
  %eptr11288 = getelementptr inbounds i64, i64* %cloptr11285, i64 2                  ; &eptr11288[2]
  %eptr11289 = getelementptr inbounds i64, i64* %cloptr11285, i64 3                  ; &eptr11289[3]
  store i64 %p3x$_37wind_45stack, i64* %eptr11287                                    ; *eptr11287 = %p3x$_37wind_45stack
  store i64 %cont7055, i64* %eptr11288                                               ; *eptr11288 = %cont7055
  store i64 %Rg5$l, i64* %eptr11289                                                  ; *eptr11289 = %Rg5$l
  %eptr11286 = getelementptr inbounds i64, i64* %cloptr11285, i64 0                  ; &cloptr11285[0]
  %f11290 = ptrtoint void(i64,i64)* @lam9440 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11290, i64* %eptr11286                                                 ; store fptr
  %arg7739 = ptrtoint i64* %cloptr11285 to i64                                       ; closure cast; i64* -> i64
  %rva8652 = add i64 0, 0                                                            ; quoted ()
  %rva8651 = call i64 @prim_cons(i64 %a6960, i64 %rva8652)                           ; call prim_cons
  %rva8650 = call i64 @prim_cons(i64 %arg7739, i64 %rva8651)                         ; call prim_cons
  %cloptr11291 = inttoptr i64 %a6959 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11291)                                        ; assert function application
  %i0ptr11292 = getelementptr inbounds i64, i64* %cloptr11291, i64 0                 ; &cloptr11291[0]
  %f11294 = load i64, i64* %i0ptr11292, align 8                                      ; load; *i0ptr11292
  %fptr11293 = inttoptr i64 %f11294 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11293(i64 %a6959, i64 %rva8650)                     ; tail call
  ret void

else11284:
  %retprim7059 = call i64 @prim_void()                                               ; call prim_void
  %arg7752 = add i64 0, 0                                                            ; quoted ()
  %rva8655 = add i64 0, 0                                                            ; quoted ()
  %rva8654 = call i64 @prim_cons(i64 %retprim7059, i64 %rva8655)                     ; call prim_cons
  %rva8653 = call i64 @prim_cons(i64 %arg7752, i64 %rva8654)                         ; call prim_cons
  %cloptr11295 = inttoptr i64 %cont7055 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11295)                                        ; assert function application
  %i0ptr11296 = getelementptr inbounds i64, i64* %cloptr11295, i64 0                 ; &cloptr11295[0]
  %f11298 = load i64, i64* %i0ptr11296, align 8                                      ; load; *i0ptr11296
  %fptr11297 = inttoptr i64 %f11298 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11297(i64 %cont7055, i64 %rva8653)                  ; tail call
  ret void
}


define void @lam9440(i64 %env9441, i64 %rvp8649) {
  %envptr11299 = inttoptr i64 %env9441 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11300 = getelementptr inbounds i64, i64* %envptr11299, i64 3                ; &envptr11299[3]
  %Rg5$l = load i64, i64* %envptr11300, align 8                                      ; load; *envptr11300
  %envptr11301 = inttoptr i64 %env9441 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11302 = getelementptr inbounds i64, i64* %envptr11301, i64 2                ; &envptr11301[2]
  %cont7055 = load i64, i64* %envptr11302, align 8                                   ; load; *envptr11302
  %envptr11303 = inttoptr i64 %env9441 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11304 = getelementptr inbounds i64, i64* %envptr11303, i64 1                ; &envptr11303[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11304, align 8                        ; load; *envptr11304
  %_957056 = call i64 @prim_car(i64 %rvp8649)                                        ; call prim_car
  %rvp8648 = call i64 @prim_cdr(i64 %rvp8649)                                        ; call prim_cdr
  %LRR$_956841 = call i64 @prim_car(i64 %rvp8648)                                    ; call prim_car
  %na8638 = call i64 @prim_cdr(i64 %rvp8648)                                         ; call prim_cdr
  %a6961 = call i64 @prim_car(i64 %Rg5$l)                                            ; call prim_car
  %a6962 = call i64 @prim_car(i64 %a6961)                                            ; call prim_car
  %cloptr11305 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11307 = getelementptr inbounds i64, i64* %cloptr11305, i64 1                  ; &eptr11307[1]
  %eptr11308 = getelementptr inbounds i64, i64* %cloptr11305, i64 2                  ; &eptr11308[2]
  %eptr11309 = getelementptr inbounds i64, i64* %cloptr11305, i64 3                  ; &eptr11309[3]
  store i64 %p3x$_37wind_45stack, i64* %eptr11307                                    ; *eptr11307 = %p3x$_37wind_45stack
  store i64 %cont7055, i64* %eptr11308                                               ; *eptr11308 = %cont7055
  store i64 %Rg5$l, i64* %eptr11309                                                  ; *eptr11309 = %Rg5$l
  %eptr11306 = getelementptr inbounds i64, i64* %cloptr11305, i64 0                  ; &cloptr11305[0]
  %f11310 = ptrtoint void(i64,i64)* @lam9438 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11310, i64* %eptr11306                                                 ; store fptr
  %arg7743 = ptrtoint i64* %cloptr11305 to i64                                       ; closure cast; i64* -> i64
  %rva8647 = add i64 0, 0                                                            ; quoted ()
  %rva8646 = call i64 @prim_cons(i64 %arg7743, i64 %rva8647)                         ; call prim_cons
  %cloptr11311 = inttoptr i64 %a6962 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11311)                                        ; assert function application
  %i0ptr11312 = getelementptr inbounds i64, i64* %cloptr11311, i64 0                 ; &cloptr11311[0]
  %f11314 = load i64, i64* %i0ptr11312, align 8                                      ; load; *i0ptr11312
  %fptr11313 = inttoptr i64 %f11314 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11313(i64 %a6962, i64 %rva8646)                     ; tail call
  ret void
}


define void @lam9438(i64 %env9439, i64 %rvp8645) {
  %envptr11315 = inttoptr i64 %env9439 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11316 = getelementptr inbounds i64, i64* %envptr11315, i64 3                ; &envptr11315[3]
  %Rg5$l = load i64, i64* %envptr11316, align 8                                      ; load; *envptr11316
  %envptr11317 = inttoptr i64 %env9439 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11318 = getelementptr inbounds i64, i64* %envptr11317, i64 2                ; &envptr11317[2]
  %cont7055 = load i64, i64* %envptr11318, align 8                                   ; load; *envptr11318
  %envptr11319 = inttoptr i64 %env9439 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11320 = getelementptr inbounds i64, i64* %envptr11319, i64 1                ; &envptr11319[1]
  %p3x$_37wind_45stack = load i64, i64* %envptr11320, align 8                        ; load; *envptr11320
  %_957057 = call i64 @prim_car(i64 %rvp8645)                                        ; call prim_car
  %rvp8644 = call i64 @prim_cdr(i64 %rvp8645)                                        ; call prim_cdr
  %E1U$_956842 = call i64 @prim_car(i64 %rvp8644)                                    ; call prim_car
  %na8640 = call i64 @prim_cdr(i64 %rvp8644)                                         ; call prim_cdr
  %arg7746 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7058 = call i64 @prim_vector_45set_33(i64 %p3x$_37wind_45stack, i64 %arg7746, i64 %Rg5$l); call prim_vector_45set_33
  %arg7749 = add i64 0, 0                                                            ; quoted ()
  %rva8643 = add i64 0, 0                                                            ; quoted ()
  %rva8642 = call i64 @prim_cons(i64 %retprim7058, i64 %rva8643)                     ; call prim_cons
  %rva8641 = call i64 @prim_cons(i64 %arg7749, i64 %rva8642)                         ; call prim_cons
  %cloptr11321 = inttoptr i64 %cont7055 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11321)                                        ; assert function application
  %i0ptr11322 = getelementptr inbounds i64, i64* %cloptr11321, i64 0                 ; &cloptr11321[0]
  %f11324 = load i64, i64* %i0ptr11322, align 8                                      ; load; *i0ptr11322
  %fptr11323 = inttoptr i64 %f11324 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11323(i64 %cont7055, i64 %rva8641)                  ; tail call
  ret void
}


define void @lam9421(i64 %env9422, i64 %qxc$lst7092) {
  %cont7091 = call i64 @prim_car(i64 %qxc$lst7092)                                   ; call prim_car
  %qxc$lst = call i64 @prim_cdr(i64 %qxc$lst7092)                                    ; call prim_cdr
  %arg7764 = add i64 0, 0                                                            ; quoted ()
  %rva8694 = add i64 0, 0                                                            ; quoted ()
  %rva8693 = call i64 @prim_cons(i64 %qxc$lst, i64 %rva8694)                         ; call prim_cons
  %rva8692 = call i64 @prim_cons(i64 %arg7764, i64 %rva8693)                         ; call prim_cons
  %cloptr11325 = inttoptr i64 %cont7091 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11325)                                        ; assert function application
  %i0ptr11326 = getelementptr inbounds i64, i64* %cloptr11325, i64 0                 ; &cloptr11325[0]
  %f11328 = load i64, i64* %i0ptr11326, align 8                                      ; load; *i0ptr11326
  %fptr11327 = inttoptr i64 %f11328 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11327(i64 %cont7091, i64 %rva8692)                  ; tail call
  ret void
}


define void @lam9417(i64 %env9418, i64 %rvp8748) {
  %_957089 = call i64 @prim_car(i64 %rvp8748)                                        ; call prim_car
  %rvp8747 = call i64 @prim_cdr(i64 %rvp8748)                                        ; call prim_cdr
  %a6964 = call i64 @prim_car(i64 %rvp8747)                                          ; call prim_car
  %na8696 = call i64 @prim_cdr(i64 %rvp8747)                                         ; call prim_cdr
  %arg7767 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7090 = call i64 @prim_make_45vector(i64 %arg7767, i64 %a6964)              ; call prim_make_45vector
  %cloptr11329 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11330 = getelementptr inbounds i64, i64* %cloptr11329, i64 0                  ; &cloptr11329[0]
  %f11331 = ptrtoint void(i64,i64)* @lam9414 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11331, i64* %eptr11330                                                 ; store fptr
  %arg7770 = ptrtoint i64* %cloptr11329 to i64                                       ; closure cast; i64* -> i64
  %arg7769 = add i64 0, 0                                                            ; quoted ()
  %rva8746 = add i64 0, 0                                                            ; quoted ()
  %rva8745 = call i64 @prim_cons(i64 %retprim7090, i64 %rva8746)                     ; call prim_cons
  %rva8744 = call i64 @prim_cons(i64 %arg7769, i64 %rva8745)                         ; call prim_cons
  %cloptr11332 = inttoptr i64 %arg7770 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11332)                                        ; assert function application
  %i0ptr11333 = getelementptr inbounds i64, i64* %cloptr11332, i64 0                 ; &cloptr11332[0]
  %f11335 = load i64, i64* %i0ptr11333, align 8                                      ; load; *i0ptr11333
  %fptr11334 = inttoptr i64 %f11335 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11334(i64 %arg7770, i64 %rva8744)                   ; tail call
  ret void
}


define void @lam9414(i64 %env9415, i64 %rvp8743) {
  %_957074 = call i64 @prim_car(i64 %rvp8743)                                        ; call prim_car
  %rvp8742 = call i64 @prim_cdr(i64 %rvp8743)                                        ; call prim_cdr
  %L7m$x = call i64 @prim_car(i64 %rvp8742)                                          ; call prim_car
  %na8698 = call i64 @prim_cdr(i64 %rvp8742)                                         ; call prim_cdr
  %cloptr11336 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11337 = getelementptr inbounds i64, i64* %cloptr11336, i64 0                  ; &cloptr11336[0]
  %f11338 = ptrtoint void(i64,i64)* @lam9412 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11338, i64* %eptr11337                                                 ; store fptr
  %arg7772 = ptrtoint i64* %cloptr11336 to i64                                       ; closure cast; i64* -> i64
  %cloptr11339 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11341 = getelementptr inbounds i64, i64* %cloptr11339, i64 1                  ; &eptr11341[1]
  store i64 %L7m$x, i64* %eptr11341                                                  ; *eptr11341 = %L7m$x
  %eptr11340 = getelementptr inbounds i64, i64* %cloptr11339, i64 0                  ; &cloptr11339[0]
  %f11342 = ptrtoint void(i64,i64)* @lam9408 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11342, i64* %eptr11340                                                 ; store fptr
  %arg7771 = ptrtoint i64* %cloptr11339 to i64                                       ; closure cast; i64* -> i64
  %rva8741 = add i64 0, 0                                                            ; quoted ()
  %rva8740 = call i64 @prim_cons(i64 %arg7771, i64 %rva8741)                         ; call prim_cons
  %cloptr11343 = inttoptr i64 %arg7772 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11343)                                        ; assert function application
  %i0ptr11344 = getelementptr inbounds i64, i64* %cloptr11343, i64 0                 ; &cloptr11343[0]
  %f11346 = load i64, i64* %i0ptr11344, align 8                                      ; load; *i0ptr11344
  %fptr11345 = inttoptr i64 %f11346 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11345(i64 %arg7772, i64 %rva8740)                   ; tail call
  ret void
}


define void @lam9412(i64 %env9413, i64 %Kru$lst7088) {
  %cont7087 = call i64 @prim_car(i64 %Kru$lst7088)                                   ; call prim_car
  %Kru$lst = call i64 @prim_cdr(i64 %Kru$lst7088)                                    ; call prim_cdr
  %arg7776 = add i64 0, 0                                                            ; quoted ()
  %rva8701 = add i64 0, 0                                                            ; quoted ()
  %rva8700 = call i64 @prim_cons(i64 %Kru$lst, i64 %rva8701)                         ; call prim_cons
  %rva8699 = call i64 @prim_cons(i64 %arg7776, i64 %rva8700)                         ; call prim_cons
  %cloptr11347 = inttoptr i64 %cont7087 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11347)                                        ; assert function application
  %i0ptr11348 = getelementptr inbounds i64, i64* %cloptr11347, i64 0                 ; &cloptr11347[0]
  %f11350 = load i64, i64* %i0ptr11348, align 8                                      ; load; *i0ptr11348
  %fptr11349 = inttoptr i64 %f11350 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11349(i64 %cont7087, i64 %rva8699)                  ; tail call
  ret void
}


define void @lam9408(i64 %env9409, i64 %rvp8739) {
  %envptr11351 = inttoptr i64 %env9409 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11352 = getelementptr inbounds i64, i64* %envptr11351, i64 1                ; &envptr11351[1]
  %L7m$x = load i64, i64* %envptr11352, align 8                                      ; load; *envptr11352
  %_957085 = call i64 @prim_car(i64 %rvp8739)                                        ; call prim_car
  %rvp8738 = call i64 @prim_cdr(i64 %rvp8739)                                        ; call prim_cdr
  %a6965 = call i64 @prim_car(i64 %rvp8738)                                          ; call prim_car
  %na8703 = call i64 @prim_cdr(i64 %rvp8738)                                         ; call prim_cdr
  %arg7779 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7086 = call i64 @prim_make_45vector(i64 %arg7779, i64 %a6965)              ; call prim_make_45vector
  %cloptr11353 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11355 = getelementptr inbounds i64, i64* %cloptr11353, i64 1                  ; &eptr11355[1]
  store i64 %L7m$x, i64* %eptr11355                                                  ; *eptr11355 = %L7m$x
  %eptr11354 = getelementptr inbounds i64, i64* %cloptr11353, i64 0                  ; &cloptr11353[0]
  %f11356 = ptrtoint void(i64,i64)* @lam9405 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11356, i64* %eptr11354                                                 ; store fptr
  %arg7782 = ptrtoint i64* %cloptr11353 to i64                                       ; closure cast; i64* -> i64
  %arg7781 = add i64 0, 0                                                            ; quoted ()
  %rva8737 = add i64 0, 0                                                            ; quoted ()
  %rva8736 = call i64 @prim_cons(i64 %retprim7086, i64 %rva8737)                     ; call prim_cons
  %rva8735 = call i64 @prim_cons(i64 %arg7781, i64 %rva8736)                         ; call prim_cons
  %cloptr11357 = inttoptr i64 %arg7782 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11357)                                        ; assert function application
  %i0ptr11358 = getelementptr inbounds i64, i64* %cloptr11357, i64 0                 ; &cloptr11357[0]
  %f11360 = load i64, i64* %i0ptr11358, align 8                                      ; load; *i0ptr11358
  %fptr11359 = inttoptr i64 %f11360 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11359(i64 %arg7782, i64 %rva8735)                   ; tail call
  ret void
}


define void @lam9405(i64 %env9406, i64 %rvp8734) {
  %envptr11361 = inttoptr i64 %env9406 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11362 = getelementptr inbounds i64, i64* %envptr11361, i64 1                ; &envptr11361[1]
  %L7m$x = load i64, i64* %envptr11362, align 8                                      ; load; *envptr11362
  %_957075 = call i64 @prim_car(i64 %rvp8734)                                        ; call prim_car
  %rvp8733 = call i64 @prim_cdr(i64 %rvp8734)                                        ; call prim_cdr
  %vVl$y = call i64 @prim_car(i64 %rvp8733)                                          ; call prim_car
  %na8705 = call i64 @prim_cdr(i64 %rvp8733)                                         ; call prim_cdr
  %arg7784 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11363 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11364 = getelementptr inbounds i64, i64* %cloptr11363, i64 0                  ; &cloptr11363[0]
  %f11365 = ptrtoint void(i64,i64)* @lam9402 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11365, i64* %eptr11364                                                 ; store fptr
  %arg7783 = ptrtoint i64* %cloptr11363 to i64                                       ; closure cast; i64* -> i64
  %GFp$_956843 = call i64 @prim_vector_45set_33(i64 %L7m$x, i64 %arg7784, i64 %arg7783); call prim_vector_45set_33
  %arg7797 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6966 = call i64 @prim_vector_45ref(i64 %L7m$x, i64 %arg7797)                     ; call prim_vector_45ref
  %cloptr11366 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11368 = getelementptr inbounds i64, i64* %cloptr11366, i64 1                  ; &eptr11368[1]
  store i64 %vVl$y, i64* %eptr11368                                                  ; *eptr11368 = %vVl$y
  %eptr11367 = getelementptr inbounds i64, i64* %cloptr11366, i64 0                  ; &cloptr11366[0]
  %f11369 = ptrtoint void(i64,i64)* @lam9395 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11369, i64* %eptr11367                                                 ; store fptr
  %arg7802 = ptrtoint i64* %cloptr11366 to i64                                       ; closure cast; i64* -> i64
  %arg7801 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7800 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %arg7799 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %rva8732 = add i64 0, 0                                                            ; quoted ()
  %rva8731 = call i64 @prim_cons(i64 %arg7799, i64 %rva8732)                         ; call prim_cons
  %rva8730 = call i64 @prim_cons(i64 %arg7800, i64 %rva8731)                         ; call prim_cons
  %rva8729 = call i64 @prim_cons(i64 %arg7801, i64 %rva8730)                         ; call prim_cons
  %rva8728 = call i64 @prim_cons(i64 %arg7802, i64 %rva8729)                         ; call prim_cons
  %cloptr11370 = inttoptr i64 %a6966 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11370)                                        ; assert function application
  %i0ptr11371 = getelementptr inbounds i64, i64* %cloptr11370, i64 0                 ; &cloptr11370[0]
  %f11373 = load i64, i64* %i0ptr11371, align 8                                      ; load; *i0ptr11371
  %fptr11372 = inttoptr i64 %f11373 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11372(i64 %a6966, i64 %rva8728)                     ; tail call
  ret void
}


define void @lam9402(i64 %env9403, i64 %quC$t7077) {
  %cont7076 = call i64 @prim_car(i64 %quC$t7077)                                     ; call prim_car
  %quC$t = call i64 @prim_cdr(i64 %quC$t7077)                                        ; call prim_cdr
  %cps_45lst7078 = call i64 @prim_cons(i64 %cont7076, i64 %quC$t)                    ; call prim_cons
  %cloptr11374 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11375 = getelementptr inbounds i64, i64* %cloptr11374, i64 0                  ; &cloptr11374[0]
  %f11376 = ptrtoint void(i64,i64)* @lam9400 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11376, i64* %eptr11375                                                 ; store fptr
  %lam7790 = ptrtoint i64* %cloptr11374 to i64                                       ; closure cast; i64* -> i64
  %cloptr11377 = inttoptr i64 %lam7790 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11377)                                        ; assert function application
  %i0ptr11378 = getelementptr inbounds i64, i64* %cloptr11377, i64 0                 ; &cloptr11377[0]
  %f11380 = load i64, i64* %i0ptr11378, align 8                                      ; load; *i0ptr11378
  %fptr11379 = inttoptr i64 %f11380 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11379(i64 %lam7790, i64 %cps_45lst7078)             ; tail call
  ret void
}


define void @lam9400(i64 %env9401, i64 %UfD$args7080) {
  %cont7079 = call i64 @prim_car(i64 %UfD$args7080)                                  ; call prim_car
  %UfD$args = call i64 @prim_cdr(i64 %UfD$args7080)                                  ; call prim_cdr
  %retprim7081 = call i64 @applyprim__43(i64 %UfD$args)                              ; call applyprim__43
  %arg7795 = add i64 0, 0                                                            ; quoted ()
  %rva8708 = add i64 0, 0                                                            ; quoted ()
  %rva8707 = call i64 @prim_cons(i64 %retprim7081, i64 %rva8708)                     ; call prim_cons
  %rva8706 = call i64 @prim_cons(i64 %arg7795, i64 %rva8707)                         ; call prim_cons
  %cloptr11381 = inttoptr i64 %cont7079 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11381)                                        ; assert function application
  %i0ptr11382 = getelementptr inbounds i64, i64* %cloptr11381, i64 0                 ; &cloptr11381[0]
  %f11384 = load i64, i64* %i0ptr11382, align 8                                      ; load; *i0ptr11382
  %fptr11383 = inttoptr i64 %f11384 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11383(i64 %cont7079, i64 %rva8706)                  ; tail call
  ret void
}


define void @lam9395(i64 %env9396, i64 %rvp8727) {
  %envptr11385 = inttoptr i64 %env9396 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11386 = getelementptr inbounds i64, i64* %envptr11385, i64 1                ; &envptr11385[1]
  %vVl$y = load i64, i64* %envptr11386, align 8                                      ; load; *envptr11386
  %_957083 = call i64 @prim_car(i64 %rvp8727)                                        ; call prim_car
  %rvp8726 = call i64 @prim_cdr(i64 %rvp8727)                                        ; call prim_cdr
  %a6967 = call i64 @prim_car(i64 %rvp8726)                                          ; call prim_car
  %na8710 = call i64 @prim_cdr(i64 %rvp8726)                                         ; call prim_cdr
  %arg7805 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7084 = call i64 @prim_vector_45set_33(i64 %vVl$y, i64 %arg7805, i64 %a6967); call prim_vector_45set_33
  %cloptr11387 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11389 = getelementptr inbounds i64, i64* %cloptr11387, i64 1                  ; &eptr11389[1]
  store i64 %vVl$y, i64* %eptr11389                                                  ; *eptr11389 = %vVl$y
  %eptr11388 = getelementptr inbounds i64, i64* %cloptr11387, i64 0                  ; &cloptr11387[0]
  %f11390 = ptrtoint void(i64,i64)* @lam9392 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11390, i64* %eptr11388                                                 ; store fptr
  %arg7809 = ptrtoint i64* %cloptr11387 to i64                                       ; closure cast; i64* -> i64
  %arg7808 = add i64 0, 0                                                            ; quoted ()
  %rva8725 = add i64 0, 0                                                            ; quoted ()
  %rva8724 = call i64 @prim_cons(i64 %retprim7084, i64 %rva8725)                     ; call prim_cons
  %rva8723 = call i64 @prim_cons(i64 %arg7808, i64 %rva8724)                         ; call prim_cons
  %cloptr11391 = inttoptr i64 %arg7809 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11391)                                        ; assert function application
  %i0ptr11392 = getelementptr inbounds i64, i64* %cloptr11391, i64 0                 ; &cloptr11391[0]
  %f11394 = load i64, i64* %i0ptr11392, align 8                                      ; load; *i0ptr11392
  %fptr11393 = inttoptr i64 %f11394 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11393(i64 %arg7809, i64 %rva8723)                   ; tail call
  ret void
}


define void @lam9392(i64 %env9393, i64 %rvp8722) {
  %envptr11395 = inttoptr i64 %env9393 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11396 = getelementptr inbounds i64, i64* %envptr11395, i64 1                ; &envptr11395[1]
  %vVl$y = load i64, i64* %envptr11396, align 8                                      ; load; *envptr11396
  %_957082 = call i64 @prim_car(i64 %rvp8722)                                        ; call prim_car
  %rvp8721 = call i64 @prim_cdr(i64 %rvp8722)                                        ; call prim_cdr
  %ez0$_956844 = call i64 @prim_car(i64 %rvp8721)                                    ; call prim_car
  %na8712 = call i64 @prim_cdr(i64 %rvp8721)                                         ; call prim_cdr
  %arg7810 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6968 = call i64 @prim_vector_45ref(i64 %vVl$y, i64 %arg7810)                     ; call prim_vector_45ref
  %cloptr11397 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11398 = getelementptr inbounds i64, i64* %cloptr11397, i64 0                  ; &cloptr11397[0]
  %f11399 = ptrtoint void(i64,i64)* @lam9389 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11399, i64* %eptr11398                                                 ; store fptr
  %arg7812 = ptrtoint i64* %cloptr11397 to i64                                       ; closure cast; i64* -> i64
  %rva8720 = add i64 0, 0                                                            ; quoted ()
  %rva8719 = call i64 @prim_cons(i64 %arg7812, i64 %rva8720)                         ; call prim_cons
  %cloptr11400 = inttoptr i64 %a6968 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11400)                                        ; assert function application
  %i0ptr11401 = getelementptr inbounds i64, i64* %cloptr11400, i64 0                 ; &cloptr11400[0]
  %f11403 = load i64, i64* %i0ptr11401, align 8                                      ; load; *i0ptr11401
  %fptr11402 = inttoptr i64 %f11403 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11402(i64 %a6968, i64 %rva8719)                     ; tail call
  ret void
}


define void @lam9389(i64 %env9390, i64 %rvp8718) {
  %_950 = call i64 @prim_car(i64 %rvp8718)                                           ; call prim_car
  %rvp8717 = call i64 @prim_cdr(i64 %rvp8718)                                        ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp8717)                                              ; call prim_car
  %na8714 = call i64 @prim_cdr(i64 %rvp8717)                                         ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva8716 = add i64 0, 0                                                            ; quoted ()
  %rva8715 = call i64 @prim_cons(i64 %_951, i64 %rva8716)                            ; call prim_cons
  %cloptr11404 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11404)                                        ; assert function application
  %i0ptr11405 = getelementptr inbounds i64, i64* %cloptr11404, i64 0                 ; &cloptr11404[0]
  %f11407 = load i64, i64* %i0ptr11405, align 8                                      ; load; *i0ptr11405
  %fptr11406 = inttoptr i64 %f11407 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11406(i64 %_951, i64 %rva8715)                      ; tail call
  ret void
}


define void @lam9367(i64 %env9368, i64 %rvp8865) {
  %envptr11408 = inttoptr i64 %env9368 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11409 = getelementptr inbounds i64, i64* %envptr11408, i64 3                ; &envptr11408[3]
  %OnZ$_37foldr1 = load i64, i64* %envptr11409, align 8                              ; load; *envptr11409
  %envptr11410 = inttoptr i64 %env9368 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11411 = getelementptr inbounds i64, i64* %envptr11410, i64 2                ; &envptr11410[2]
  %K5P$_37foldr = load i64, i64* %envptr11411, align 8                               ; load; *envptr11411
  %envptr11412 = inttoptr i64 %env9368 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11413 = getelementptr inbounds i64, i64* %envptr11412, i64 1                ; &envptr11412[1]
  %krC$_37map1 = load i64, i64* %envptr11413, align 8                                ; load; *envptr11413
  %cont7103 = call i64 @prim_car(i64 %rvp8865)                                       ; call prim_car
  %rvp8864 = call i64 @prim_cdr(i64 %rvp8865)                                        ; call prim_cdr
  %Dcu$_37foldl = call i64 @prim_car(i64 %rvp8864)                                   ; call prim_car
  %na8772 = call i64 @prim_cdr(i64 %rvp8864)                                         ; call prim_cdr
  %arg7818 = add i64 0, 0                                                            ; quoted ()
  %cloptr11414 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11416 = getelementptr inbounds i64, i64* %cloptr11414, i64 1                  ; &eptr11416[1]
  %eptr11417 = getelementptr inbounds i64, i64* %cloptr11414, i64 2                  ; &eptr11417[2]
  %eptr11418 = getelementptr inbounds i64, i64* %cloptr11414, i64 3                  ; &eptr11418[3]
  %eptr11419 = getelementptr inbounds i64, i64* %cloptr11414, i64 4                  ; &eptr11419[4]
  store i64 %krC$_37map1, i64* %eptr11416                                            ; *eptr11416 = %krC$_37map1
  store i64 %Dcu$_37foldl, i64* %eptr11417                                           ; *eptr11417 = %Dcu$_37foldl
  store i64 %K5P$_37foldr, i64* %eptr11418                                           ; *eptr11418 = %K5P$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11419                                          ; *eptr11419 = %OnZ$_37foldr1
  %eptr11415 = getelementptr inbounds i64, i64* %cloptr11414, i64 0                  ; &cloptr11414[0]
  %f11420 = ptrtoint void(i64,i64)* @lam9364 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11420, i64* %eptr11415                                                 ; store fptr
  %arg7817 = ptrtoint i64* %cloptr11414 to i64                                       ; closure cast; i64* -> i64
  %rva8863 = add i64 0, 0                                                            ; quoted ()
  %rva8862 = call i64 @prim_cons(i64 %arg7817, i64 %rva8863)                         ; call prim_cons
  %rva8861 = call i64 @prim_cons(i64 %arg7818, i64 %rva8862)                         ; call prim_cons
  %cloptr11421 = inttoptr i64 %cont7103 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11421)                                        ; assert function application
  %i0ptr11422 = getelementptr inbounds i64, i64* %cloptr11421, i64 0                 ; &cloptr11421[0]
  %f11424 = load i64, i64* %i0ptr11422, align 8                                      ; load; *i0ptr11422
  %fptr11423 = inttoptr i64 %f11424 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11423(i64 %cont7103, i64 %rva8861)                  ; tail call
  ret void
}


define void @lam9364(i64 %env9365, i64 %uEU$args7105) {
  %envptr11425 = inttoptr i64 %env9365 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11426 = getelementptr inbounds i64, i64* %envptr11425, i64 4                ; &envptr11425[4]
  %OnZ$_37foldr1 = load i64, i64* %envptr11426, align 8                              ; load; *envptr11426
  %envptr11427 = inttoptr i64 %env9365 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11428 = getelementptr inbounds i64, i64* %envptr11427, i64 3                ; &envptr11427[3]
  %K5P$_37foldr = load i64, i64* %envptr11428, align 8                               ; load; *envptr11428
  %envptr11429 = inttoptr i64 %env9365 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11430 = getelementptr inbounds i64, i64* %envptr11429, i64 2                ; &envptr11429[2]
  %Dcu$_37foldl = load i64, i64* %envptr11430, align 8                               ; load; *envptr11430
  %envptr11431 = inttoptr i64 %env9365 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11432 = getelementptr inbounds i64, i64* %envptr11431, i64 1                ; &envptr11431[1]
  %krC$_37map1 = load i64, i64* %envptr11432, align 8                                ; load; *envptr11432
  %cont7104 = call i64 @prim_car(i64 %uEU$args7105)                                  ; call prim_car
  %uEU$args = call i64 @prim_cdr(i64 %uEU$args7105)                                  ; call prim_cdr
  %juO$f = call i64 @prim_car(i64 %uEU$args)                                         ; call prim_car
  %a6885 = call i64 @prim_cdr(i64 %uEU$args)                                         ; call prim_cdr
  %retprim7124 = call i64 @prim_car(i64 %a6885)                                      ; call prim_car
  %cloptr11433 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11435 = getelementptr inbounds i64, i64* %cloptr11433, i64 1                  ; &eptr11435[1]
  %eptr11436 = getelementptr inbounds i64, i64* %cloptr11433, i64 2                  ; &eptr11436[2]
  %eptr11437 = getelementptr inbounds i64, i64* %cloptr11433, i64 3                  ; &eptr11437[3]
  %eptr11438 = getelementptr inbounds i64, i64* %cloptr11433, i64 4                  ; &eptr11438[4]
  %eptr11439 = getelementptr inbounds i64, i64* %cloptr11433, i64 5                  ; &eptr11439[5]
  %eptr11440 = getelementptr inbounds i64, i64* %cloptr11433, i64 6                  ; &eptr11440[6]
  %eptr11441 = getelementptr inbounds i64, i64* %cloptr11433, i64 7                  ; &eptr11441[7]
  store i64 %krC$_37map1, i64* %eptr11435                                            ; *eptr11435 = %krC$_37map1
  store i64 %juO$f, i64* %eptr11436                                                  ; *eptr11436 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11437                                           ; *eptr11437 = %Dcu$_37foldl
  store i64 %K5P$_37foldr, i64* %eptr11438                                           ; *eptr11438 = %K5P$_37foldr
  store i64 %uEU$args, i64* %eptr11439                                               ; *eptr11439 = %uEU$args
  store i64 %OnZ$_37foldr1, i64* %eptr11440                                          ; *eptr11440 = %OnZ$_37foldr1
  store i64 %cont7104, i64* %eptr11441                                               ; *eptr11441 = %cont7104
  %eptr11434 = getelementptr inbounds i64, i64* %cloptr11433, i64 0                  ; &cloptr11433[0]
  %f11442 = ptrtoint void(i64,i64)* @lam9362 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11442, i64* %eptr11434                                                 ; store fptr
  %arg7827 = ptrtoint i64* %cloptr11433 to i64                                       ; closure cast; i64* -> i64
  %arg7826 = add i64 0, 0                                                            ; quoted ()
  %rva8860 = add i64 0, 0                                                            ; quoted ()
  %rva8859 = call i64 @prim_cons(i64 %retprim7124, i64 %rva8860)                     ; call prim_cons
  %rva8858 = call i64 @prim_cons(i64 %arg7826, i64 %rva8859)                         ; call prim_cons
  %cloptr11443 = inttoptr i64 %arg7827 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11443)                                        ; assert function application
  %i0ptr11444 = getelementptr inbounds i64, i64* %cloptr11443, i64 0                 ; &cloptr11443[0]
  %f11446 = load i64, i64* %i0ptr11444, align 8                                      ; load; *i0ptr11444
  %fptr11445 = inttoptr i64 %f11446 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11445(i64 %arg7827, i64 %rva8858)                   ; tail call
  ret void
}


define void @lam9362(i64 %env9363, i64 %rvp8857) {
  %envptr11447 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11448 = getelementptr inbounds i64, i64* %envptr11447, i64 7                ; &envptr11447[7]
  %cont7104 = load i64, i64* %envptr11448, align 8                                   ; load; *envptr11448
  %envptr11449 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11450 = getelementptr inbounds i64, i64* %envptr11449, i64 6                ; &envptr11449[6]
  %OnZ$_37foldr1 = load i64, i64* %envptr11450, align 8                              ; load; *envptr11450
  %envptr11451 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11452 = getelementptr inbounds i64, i64* %envptr11451, i64 5                ; &envptr11451[5]
  %uEU$args = load i64, i64* %envptr11452, align 8                                   ; load; *envptr11452
  %envptr11453 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11454 = getelementptr inbounds i64, i64* %envptr11453, i64 4                ; &envptr11453[4]
  %K5P$_37foldr = load i64, i64* %envptr11454, align 8                               ; load; *envptr11454
  %envptr11455 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11456 = getelementptr inbounds i64, i64* %envptr11455, i64 3                ; &envptr11455[3]
  %Dcu$_37foldl = load i64, i64* %envptr11456, align 8                               ; load; *envptr11456
  %envptr11457 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11458 = getelementptr inbounds i64, i64* %envptr11457, i64 2                ; &envptr11457[2]
  %juO$f = load i64, i64* %envptr11458, align 8                                      ; load; *envptr11458
  %envptr11459 = inttoptr i64 %env9363 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11460 = getelementptr inbounds i64, i64* %envptr11459, i64 1                ; &envptr11459[1]
  %krC$_37map1 = load i64, i64* %envptr11460, align 8                                ; load; *envptr11460
  %_957106 = call i64 @prim_car(i64 %rvp8857)                                        ; call prim_car
  %rvp8856 = call i64 @prim_cdr(i64 %rvp8857)                                        ; call prim_cdr
  %wO3$acc = call i64 @prim_car(i64 %rvp8856)                                        ; call prim_car
  %na8774 = call i64 @prim_cdr(i64 %rvp8856)                                         ; call prim_cdr
  %a6886 = call i64 @prim_cdr(i64 %uEU$args)                                         ; call prim_cdr
  %retprim7123 = call i64 @prim_cdr(i64 %a6886)                                      ; call prim_cdr
  %cloptr11461 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11463 = getelementptr inbounds i64, i64* %cloptr11461, i64 1                  ; &eptr11463[1]
  %eptr11464 = getelementptr inbounds i64, i64* %cloptr11461, i64 2                  ; &eptr11464[2]
  %eptr11465 = getelementptr inbounds i64, i64* %cloptr11461, i64 3                  ; &eptr11465[3]
  %eptr11466 = getelementptr inbounds i64, i64* %cloptr11461, i64 4                  ; &eptr11466[4]
  %eptr11467 = getelementptr inbounds i64, i64* %cloptr11461, i64 5                  ; &eptr11467[5]
  %eptr11468 = getelementptr inbounds i64, i64* %cloptr11461, i64 6                  ; &eptr11468[6]
  %eptr11469 = getelementptr inbounds i64, i64* %cloptr11461, i64 7                  ; &eptr11469[7]
  store i64 %krC$_37map1, i64* %eptr11463                                            ; *eptr11463 = %krC$_37map1
  store i64 %juO$f, i64* %eptr11464                                                  ; *eptr11464 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11465                                           ; *eptr11465 = %Dcu$_37foldl
  store i64 %K5P$_37foldr, i64* %eptr11466                                           ; *eptr11466 = %K5P$_37foldr
  store i64 %wO3$acc, i64* %eptr11467                                                ; *eptr11467 = %wO3$acc
  store i64 %OnZ$_37foldr1, i64* %eptr11468                                          ; *eptr11468 = %OnZ$_37foldr1
  store i64 %cont7104, i64* %eptr11469                                               ; *eptr11469 = %cont7104
  %eptr11462 = getelementptr inbounds i64, i64* %cloptr11461, i64 0                  ; &cloptr11461[0]
  %f11470 = ptrtoint void(i64,i64)* @lam9360 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11470, i64* %eptr11462                                                 ; store fptr
  %arg7832 = ptrtoint i64* %cloptr11461 to i64                                       ; closure cast; i64* -> i64
  %arg7831 = add i64 0, 0                                                            ; quoted ()
  %rva8855 = add i64 0, 0                                                            ; quoted ()
  %rva8854 = call i64 @prim_cons(i64 %retprim7123, i64 %rva8855)                     ; call prim_cons
  %rva8853 = call i64 @prim_cons(i64 %arg7831, i64 %rva8854)                         ; call prim_cons
  %cloptr11471 = inttoptr i64 %arg7832 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11471)                                        ; assert function application
  %i0ptr11472 = getelementptr inbounds i64, i64* %cloptr11471, i64 0                 ; &cloptr11471[0]
  %f11474 = load i64, i64* %i0ptr11472, align 8                                      ; load; *i0ptr11472
  %fptr11473 = inttoptr i64 %f11474 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11473(i64 %arg7832, i64 %rva8853)                   ; tail call
  ret void
}


define void @lam9360(i64 %env9361, i64 %rvp8852) {
  %envptr11475 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11476 = getelementptr inbounds i64, i64* %envptr11475, i64 7                ; &envptr11475[7]
  %cont7104 = load i64, i64* %envptr11476, align 8                                   ; load; *envptr11476
  %envptr11477 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11478 = getelementptr inbounds i64, i64* %envptr11477, i64 6                ; &envptr11477[6]
  %OnZ$_37foldr1 = load i64, i64* %envptr11478, align 8                              ; load; *envptr11478
  %envptr11479 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11480 = getelementptr inbounds i64, i64* %envptr11479, i64 5                ; &envptr11479[5]
  %wO3$acc = load i64, i64* %envptr11480, align 8                                    ; load; *envptr11480
  %envptr11481 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11482 = getelementptr inbounds i64, i64* %envptr11481, i64 4                ; &envptr11481[4]
  %K5P$_37foldr = load i64, i64* %envptr11482, align 8                               ; load; *envptr11482
  %envptr11483 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11484 = getelementptr inbounds i64, i64* %envptr11483, i64 3                ; &envptr11483[3]
  %Dcu$_37foldl = load i64, i64* %envptr11484, align 8                               ; load; *envptr11484
  %envptr11485 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11486 = getelementptr inbounds i64, i64* %envptr11485, i64 2                ; &envptr11485[2]
  %juO$f = load i64, i64* %envptr11486, align 8                                      ; load; *envptr11486
  %envptr11487 = inttoptr i64 %env9361 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11488 = getelementptr inbounds i64, i64* %envptr11487, i64 1                ; &envptr11487[1]
  %krC$_37map1 = load i64, i64* %envptr11488, align 8                                ; load; *envptr11488
  %_957107 = call i64 @prim_car(i64 %rvp8852)                                        ; call prim_car
  %rvp8851 = call i64 @prim_cdr(i64 %rvp8852)                                        ; call prim_cdr
  %D0E$lsts = call i64 @prim_car(i64 %rvp8851)                                       ; call prim_car
  %na8776 = call i64 @prim_cdr(i64 %rvp8851)                                         ; call prim_cdr
  %cloptr11489 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11491 = getelementptr inbounds i64, i64* %cloptr11489, i64 1                  ; &eptr11491[1]
  %eptr11492 = getelementptr inbounds i64, i64* %cloptr11489, i64 2                  ; &eptr11492[2]
  %eptr11493 = getelementptr inbounds i64, i64* %cloptr11489, i64 3                  ; &eptr11493[3]
  %eptr11494 = getelementptr inbounds i64, i64* %cloptr11489, i64 4                  ; &eptr11494[4]
  %eptr11495 = getelementptr inbounds i64, i64* %cloptr11489, i64 5                  ; &eptr11495[5]
  %eptr11496 = getelementptr inbounds i64, i64* %cloptr11489, i64 6                  ; &eptr11496[6]
  %eptr11497 = getelementptr inbounds i64, i64* %cloptr11489, i64 7                  ; &eptr11497[7]
  store i64 %krC$_37map1, i64* %eptr11491                                            ; *eptr11491 = %krC$_37map1
  store i64 %juO$f, i64* %eptr11492                                                  ; *eptr11492 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11493                                           ; *eptr11493 = %Dcu$_37foldl
  store i64 %D0E$lsts, i64* %eptr11494                                               ; *eptr11494 = %D0E$lsts
  store i64 %K5P$_37foldr, i64* %eptr11495                                           ; *eptr11495 = %K5P$_37foldr
  store i64 %wO3$acc, i64* %eptr11496                                                ; *eptr11496 = %wO3$acc
  store i64 %cont7104, i64* %eptr11497                                               ; *eptr11497 = %cont7104
  %eptr11490 = getelementptr inbounds i64, i64* %cloptr11489, i64 0                  ; &cloptr11489[0]
  %f11498 = ptrtoint void(i64,i64)* @lam9358 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11498, i64* %eptr11490                                                 ; store fptr
  %arg7836 = ptrtoint i64* %cloptr11489 to i64                                       ; closure cast; i64* -> i64
  %cloptr11499 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11500 = getelementptr inbounds i64, i64* %cloptr11499, i64 0                  ; &cloptr11499[0]
  %f11501 = ptrtoint void(i64,i64)* @lam9330 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11501, i64* %eptr11500                                                 ; store fptr
  %arg7835 = ptrtoint i64* %cloptr11499 to i64                                       ; closure cast; i64* -> i64
  %arg7834 = call i64 @const_init_false()                                            ; quoted #f
  %rva8850 = add i64 0, 0                                                            ; quoted ()
  %rva8849 = call i64 @prim_cons(i64 %D0E$lsts, i64 %rva8850)                        ; call prim_cons
  %rva8848 = call i64 @prim_cons(i64 %arg7834, i64 %rva8849)                         ; call prim_cons
  %rva8847 = call i64 @prim_cons(i64 %arg7835, i64 %rva8848)                         ; call prim_cons
  %rva8846 = call i64 @prim_cons(i64 %arg7836, i64 %rva8847)                         ; call prim_cons
  %cloptr11502 = inttoptr i64 %OnZ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11502)                                        ; assert function application
  %i0ptr11503 = getelementptr inbounds i64, i64* %cloptr11502, i64 0                 ; &cloptr11502[0]
  %f11505 = load i64, i64* %i0ptr11503, align 8                                      ; load; *i0ptr11503
  %fptr11504 = inttoptr i64 %f11505 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11504(i64 %OnZ$_37foldr1, i64 %rva8846)             ; tail call
  ret void
}


define void @lam9358(i64 %env9359, i64 %rvp8834) {
  %envptr11506 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11507 = getelementptr inbounds i64, i64* %envptr11506, i64 7                ; &envptr11506[7]
  %cont7104 = load i64, i64* %envptr11507, align 8                                   ; load; *envptr11507
  %envptr11508 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11509 = getelementptr inbounds i64, i64* %envptr11508, i64 6                ; &envptr11508[6]
  %wO3$acc = load i64, i64* %envptr11509, align 8                                    ; load; *envptr11509
  %envptr11510 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11511 = getelementptr inbounds i64, i64* %envptr11510, i64 5                ; &envptr11510[5]
  %K5P$_37foldr = load i64, i64* %envptr11511, align 8                               ; load; *envptr11511
  %envptr11512 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11513 = getelementptr inbounds i64, i64* %envptr11512, i64 4                ; &envptr11512[4]
  %D0E$lsts = load i64, i64* %envptr11513, align 8                                   ; load; *envptr11513
  %envptr11514 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11515 = getelementptr inbounds i64, i64* %envptr11514, i64 3                ; &envptr11514[3]
  %Dcu$_37foldl = load i64, i64* %envptr11515, align 8                               ; load; *envptr11515
  %envptr11516 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11517 = getelementptr inbounds i64, i64* %envptr11516, i64 2                ; &envptr11516[2]
  %juO$f = load i64, i64* %envptr11517, align 8                                      ; load; *envptr11517
  %envptr11518 = inttoptr i64 %env9359 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11519 = getelementptr inbounds i64, i64* %envptr11518, i64 1                ; &envptr11518[1]
  %krC$_37map1 = load i64, i64* %envptr11519, align 8                                ; load; *envptr11519
  %_957108 = call i64 @prim_car(i64 %rvp8834)                                        ; call prim_car
  %rvp8833 = call i64 @prim_cdr(i64 %rvp8834)                                        ; call prim_cdr
  %a6887 = call i64 @prim_car(i64 %rvp8833)                                          ; call prim_car
  %na8778 = call i64 @prim_cdr(i64 %rvp8833)                                         ; call prim_cdr
  %cmp11520 = icmp eq i64 %a6887, 15                                                 ; false?
  br i1 %cmp11520, label %else11522, label %then11521                                ; if

then11521:
  %arg7839 = add i64 0, 0                                                            ; quoted ()
  %rva8781 = add i64 0, 0                                                            ; quoted ()
  %rva8780 = call i64 @prim_cons(i64 %wO3$acc, i64 %rva8781)                         ; call prim_cons
  %rva8779 = call i64 @prim_cons(i64 %arg7839, i64 %rva8780)                         ; call prim_cons
  %cloptr11523 = inttoptr i64 %cont7104 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11523)                                        ; assert function application
  %i0ptr11524 = getelementptr inbounds i64, i64* %cloptr11523, i64 0                 ; &cloptr11523[0]
  %f11526 = load i64, i64* %i0ptr11524, align 8                                      ; load; *i0ptr11524
  %fptr11525 = inttoptr i64 %f11526 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11525(i64 %cont7104, i64 %rva8779)                  ; tail call
  ret void

else11522:
  %cloptr11527 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11529 = getelementptr inbounds i64, i64* %cloptr11527, i64 1                  ; &eptr11529[1]
  %eptr11530 = getelementptr inbounds i64, i64* %cloptr11527, i64 2                  ; &eptr11530[2]
  %eptr11531 = getelementptr inbounds i64, i64* %cloptr11527, i64 3                  ; &eptr11531[3]
  %eptr11532 = getelementptr inbounds i64, i64* %cloptr11527, i64 4                  ; &eptr11532[4]
  %eptr11533 = getelementptr inbounds i64, i64* %cloptr11527, i64 5                  ; &eptr11533[5]
  %eptr11534 = getelementptr inbounds i64, i64* %cloptr11527, i64 6                  ; &eptr11534[6]
  %eptr11535 = getelementptr inbounds i64, i64* %cloptr11527, i64 7                  ; &eptr11535[7]
  store i64 %krC$_37map1, i64* %eptr11529                                            ; *eptr11529 = %krC$_37map1
  store i64 %juO$f, i64* %eptr11530                                                  ; *eptr11530 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11531                                           ; *eptr11531 = %Dcu$_37foldl
  store i64 %D0E$lsts, i64* %eptr11532                                               ; *eptr11532 = %D0E$lsts
  store i64 %K5P$_37foldr, i64* %eptr11533                                           ; *eptr11533 = %K5P$_37foldr
  store i64 %wO3$acc, i64* %eptr11534                                                ; *eptr11534 = %wO3$acc
  store i64 %cont7104, i64* %eptr11535                                               ; *eptr11535 = %cont7104
  %eptr11528 = getelementptr inbounds i64, i64* %cloptr11527, i64 0                  ; &cloptr11527[0]
  %f11536 = ptrtoint void(i64,i64)* @lam9356 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11536, i64* %eptr11528                                                 ; store fptr
  %arg7843 = ptrtoint i64* %cloptr11527 to i64                                       ; closure cast; i64* -> i64
  %cloptr11537 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11538 = getelementptr inbounds i64, i64* %cloptr11537, i64 0                  ; &cloptr11537[0]
  %f11539 = ptrtoint void(i64,i64)* @lam9337 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11539, i64* %eptr11538                                                 ; store fptr
  %arg7842 = ptrtoint i64* %cloptr11537 to i64                                       ; closure cast; i64* -> i64
  %rva8832 = add i64 0, 0                                                            ; quoted ()
  %rva8831 = call i64 @prim_cons(i64 %D0E$lsts, i64 %rva8832)                        ; call prim_cons
  %rva8830 = call i64 @prim_cons(i64 %arg7842, i64 %rva8831)                         ; call prim_cons
  %rva8829 = call i64 @prim_cons(i64 %arg7843, i64 %rva8830)                         ; call prim_cons
  %cloptr11540 = inttoptr i64 %krC$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11540)                                        ; assert function application
  %i0ptr11541 = getelementptr inbounds i64, i64* %cloptr11540, i64 0                 ; &cloptr11540[0]
  %f11543 = load i64, i64* %i0ptr11541, align 8                                      ; load; *i0ptr11541
  %fptr11542 = inttoptr i64 %f11543 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11542(i64 %krC$_37map1, i64 %rva8829)               ; tail call
  ret void
}


define void @lam9356(i64 %env9357, i64 %rvp8821) {
  %envptr11544 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11545 = getelementptr inbounds i64, i64* %envptr11544, i64 7                ; &envptr11544[7]
  %cont7104 = load i64, i64* %envptr11545, align 8                                   ; load; *envptr11545
  %envptr11546 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11547 = getelementptr inbounds i64, i64* %envptr11546, i64 6                ; &envptr11546[6]
  %wO3$acc = load i64, i64* %envptr11547, align 8                                    ; load; *envptr11547
  %envptr11548 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11549 = getelementptr inbounds i64, i64* %envptr11548, i64 5                ; &envptr11548[5]
  %K5P$_37foldr = load i64, i64* %envptr11549, align 8                               ; load; *envptr11549
  %envptr11550 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11551 = getelementptr inbounds i64, i64* %envptr11550, i64 4                ; &envptr11550[4]
  %D0E$lsts = load i64, i64* %envptr11551, align 8                                   ; load; *envptr11551
  %envptr11552 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11553 = getelementptr inbounds i64, i64* %envptr11552, i64 3                ; &envptr11552[3]
  %Dcu$_37foldl = load i64, i64* %envptr11553, align 8                               ; load; *envptr11553
  %envptr11554 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11555 = getelementptr inbounds i64, i64* %envptr11554, i64 2                ; &envptr11554[2]
  %juO$f = load i64, i64* %envptr11555, align 8                                      ; load; *envptr11555
  %envptr11556 = inttoptr i64 %env9357 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11557 = getelementptr inbounds i64, i64* %envptr11556, i64 1                ; &envptr11556[1]
  %krC$_37map1 = load i64, i64* %envptr11557, align 8                                ; load; *envptr11557
  %_957109 = call i64 @prim_car(i64 %rvp8821)                                        ; call prim_car
  %rvp8820 = call i64 @prim_cdr(i64 %rvp8821)                                        ; call prim_cdr
  %tYZ$lsts_43 = call i64 @prim_car(i64 %rvp8820)                                    ; call prim_car
  %na8783 = call i64 @prim_cdr(i64 %rvp8820)                                         ; call prim_cdr
  %cloptr11558 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11560 = getelementptr inbounds i64, i64* %cloptr11558, i64 1                  ; &eptr11560[1]
  %eptr11561 = getelementptr inbounds i64, i64* %cloptr11558, i64 2                  ; &eptr11561[2]
  %eptr11562 = getelementptr inbounds i64, i64* %cloptr11558, i64 3                  ; &eptr11562[3]
  %eptr11563 = getelementptr inbounds i64, i64* %cloptr11558, i64 4                  ; &eptr11563[4]
  %eptr11564 = getelementptr inbounds i64, i64* %cloptr11558, i64 5                  ; &eptr11564[5]
  %eptr11565 = getelementptr inbounds i64, i64* %cloptr11558, i64 6                  ; &eptr11565[6]
  store i64 %juO$f, i64* %eptr11560                                                  ; *eptr11560 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11561                                           ; *eptr11561 = %Dcu$_37foldl
  store i64 %tYZ$lsts_43, i64* %eptr11562                                            ; *eptr11562 = %tYZ$lsts_43
  store i64 %K5P$_37foldr, i64* %eptr11563                                           ; *eptr11563 = %K5P$_37foldr
  store i64 %wO3$acc, i64* %eptr11564                                                ; *eptr11564 = %wO3$acc
  store i64 %cont7104, i64* %eptr11565                                               ; *eptr11565 = %cont7104
  %eptr11559 = getelementptr inbounds i64, i64* %cloptr11558, i64 0                  ; &cloptr11558[0]
  %f11566 = ptrtoint void(i64,i64)* @lam9354 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11566, i64* %eptr11559                                                 ; store fptr
  %arg7847 = ptrtoint i64* %cloptr11558 to i64                                       ; closure cast; i64* -> i64
  %cloptr11567 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11568 = getelementptr inbounds i64, i64* %cloptr11567, i64 0                  ; &cloptr11567[0]
  %f11569 = ptrtoint void(i64,i64)* @lam9342 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11569, i64* %eptr11568                                                 ; store fptr
  %arg7846 = ptrtoint i64* %cloptr11567 to i64                                       ; closure cast; i64* -> i64
  %rva8819 = add i64 0, 0                                                            ; quoted ()
  %rva8818 = call i64 @prim_cons(i64 %D0E$lsts, i64 %rva8819)                        ; call prim_cons
  %rva8817 = call i64 @prim_cons(i64 %arg7846, i64 %rva8818)                         ; call prim_cons
  %rva8816 = call i64 @prim_cons(i64 %arg7847, i64 %rva8817)                         ; call prim_cons
  %cloptr11570 = inttoptr i64 %krC$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11570)                                        ; assert function application
  %i0ptr11571 = getelementptr inbounds i64, i64* %cloptr11570, i64 0                 ; &cloptr11570[0]
  %f11573 = load i64, i64* %i0ptr11571, align 8                                      ; load; *i0ptr11571
  %fptr11572 = inttoptr i64 %f11573 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11572(i64 %krC$_37map1, i64 %rva8816)               ; tail call
  ret void
}


define void @lam9354(i64 %env9355, i64 %rvp8808) {
  %envptr11574 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11575 = getelementptr inbounds i64, i64* %envptr11574, i64 6                ; &envptr11574[6]
  %cont7104 = load i64, i64* %envptr11575, align 8                                   ; load; *envptr11575
  %envptr11576 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11577 = getelementptr inbounds i64, i64* %envptr11576, i64 5                ; &envptr11576[5]
  %wO3$acc = load i64, i64* %envptr11577, align 8                                    ; load; *envptr11577
  %envptr11578 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11579 = getelementptr inbounds i64, i64* %envptr11578, i64 4                ; &envptr11578[4]
  %K5P$_37foldr = load i64, i64* %envptr11579, align 8                               ; load; *envptr11579
  %envptr11580 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11581 = getelementptr inbounds i64, i64* %envptr11580, i64 3                ; &envptr11580[3]
  %tYZ$lsts_43 = load i64, i64* %envptr11581, align 8                                ; load; *envptr11581
  %envptr11582 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11583 = getelementptr inbounds i64, i64* %envptr11582, i64 2                ; &envptr11582[2]
  %Dcu$_37foldl = load i64, i64* %envptr11583, align 8                               ; load; *envptr11583
  %envptr11584 = inttoptr i64 %env9355 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11585 = getelementptr inbounds i64, i64* %envptr11584, i64 1                ; &envptr11584[1]
  %juO$f = load i64, i64* %envptr11585, align 8                                      ; load; *envptr11585
  %_957110 = call i64 @prim_car(i64 %rvp8808)                                        ; call prim_car
  %rvp8807 = call i64 @prim_cdr(i64 %rvp8808)                                        ; call prim_cdr
  %pnT$vs = call i64 @prim_car(i64 %rvp8807)                                         ; call prim_car
  %na8785 = call i64 @prim_cdr(i64 %rvp8807)                                         ; call prim_cdr
  %arg7849 = add i64 0, 0                                                            ; quoted ()
  %a6888 = call i64 @prim_cons(i64 %wO3$acc, i64 %arg7849)                           ; call prim_cons
  %cloptr11586 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11588 = getelementptr inbounds i64, i64* %cloptr11586, i64 1                  ; &eptr11588[1]
  %eptr11589 = getelementptr inbounds i64, i64* %cloptr11586, i64 2                  ; &eptr11589[2]
  %eptr11590 = getelementptr inbounds i64, i64* %cloptr11586, i64 3                  ; &eptr11590[3]
  %eptr11591 = getelementptr inbounds i64, i64* %cloptr11586, i64 4                  ; &eptr11591[4]
  store i64 %juO$f, i64* %eptr11588                                                  ; *eptr11588 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11589                                           ; *eptr11589 = %Dcu$_37foldl
  store i64 %tYZ$lsts_43, i64* %eptr11590                                            ; *eptr11590 = %tYZ$lsts_43
  store i64 %cont7104, i64* %eptr11591                                               ; *eptr11591 = %cont7104
  %eptr11587 = getelementptr inbounds i64, i64* %cloptr11586, i64 0                  ; &cloptr11586[0]
  %f11592 = ptrtoint void(i64,i64)* @lam9351 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11592, i64* %eptr11587                                                 ; store fptr
  %arg7854 = ptrtoint i64* %cloptr11586 to i64                                       ; closure cast; i64* -> i64
  %cloptr11593 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11594 = getelementptr inbounds i64, i64* %cloptr11593, i64 0                  ; &cloptr11593[0]
  %f11595 = ptrtoint void(i64,i64)* @lam9347 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11595, i64* %eptr11594                                                 ; store fptr
  %arg7853 = ptrtoint i64* %cloptr11593 to i64                                       ; closure cast; i64* -> i64
  %rva8806 = add i64 0, 0                                                            ; quoted ()
  %rva8805 = call i64 @prim_cons(i64 %pnT$vs, i64 %rva8806)                          ; call prim_cons
  %rva8804 = call i64 @prim_cons(i64 %a6888, i64 %rva8805)                           ; call prim_cons
  %rva8803 = call i64 @prim_cons(i64 %arg7853, i64 %rva8804)                         ; call prim_cons
  %rva8802 = call i64 @prim_cons(i64 %arg7854, i64 %rva8803)                         ; call prim_cons
  %cloptr11596 = inttoptr i64 %K5P$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11596)                                        ; assert function application
  %i0ptr11597 = getelementptr inbounds i64, i64* %cloptr11596, i64 0                 ; &cloptr11596[0]
  %f11599 = load i64, i64* %i0ptr11597, align 8                                      ; load; *i0ptr11597
  %fptr11598 = inttoptr i64 %f11599 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11598(i64 %K5P$_37foldr, i64 %rva8802)              ; tail call
  ret void
}


define void @lam9351(i64 %env9352, i64 %rvp8793) {
  %envptr11600 = inttoptr i64 %env9352 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11601 = getelementptr inbounds i64, i64* %envptr11600, i64 4                ; &envptr11600[4]
  %cont7104 = load i64, i64* %envptr11601, align 8                                   ; load; *envptr11601
  %envptr11602 = inttoptr i64 %env9352 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11603 = getelementptr inbounds i64, i64* %envptr11602, i64 3                ; &envptr11602[3]
  %tYZ$lsts_43 = load i64, i64* %envptr11603, align 8                                ; load; *envptr11603
  %envptr11604 = inttoptr i64 %env9352 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11605 = getelementptr inbounds i64, i64* %envptr11604, i64 2                ; &envptr11604[2]
  %Dcu$_37foldl = load i64, i64* %envptr11605, align 8                               ; load; *envptr11605
  %envptr11606 = inttoptr i64 %env9352 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11607 = getelementptr inbounds i64, i64* %envptr11606, i64 1                ; &envptr11606[1]
  %juO$f = load i64, i64* %envptr11607, align 8                                      ; load; *envptr11607
  %_957113 = call i64 @prim_car(i64 %rvp8793)                                        ; call prim_car
  %rvp8792 = call i64 @prim_cdr(i64 %rvp8793)                                        ; call prim_cdr
  %a6889 = call i64 @prim_car(i64 %rvp8792)                                          ; call prim_car
  %na8787 = call i64 @prim_cdr(i64 %rvp8792)                                         ; call prim_cdr
  %cloptr11608 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11610 = getelementptr inbounds i64, i64* %cloptr11608, i64 1                  ; &eptr11610[1]
  %eptr11611 = getelementptr inbounds i64, i64* %cloptr11608, i64 2                  ; &eptr11611[2]
  %eptr11612 = getelementptr inbounds i64, i64* %cloptr11608, i64 3                  ; &eptr11612[3]
  %eptr11613 = getelementptr inbounds i64, i64* %cloptr11608, i64 4                  ; &eptr11613[4]
  store i64 %juO$f, i64* %eptr11610                                                  ; *eptr11610 = %juO$f
  store i64 %Dcu$_37foldl, i64* %eptr11611                                           ; *eptr11611 = %Dcu$_37foldl
  store i64 %tYZ$lsts_43, i64* %eptr11612                                            ; *eptr11612 = %tYZ$lsts_43
  store i64 %cont7104, i64* %eptr11613                                               ; *eptr11613 = %cont7104
  %eptr11609 = getelementptr inbounds i64, i64* %cloptr11608, i64 0                  ; &cloptr11608[0]
  %f11614 = ptrtoint void(i64,i64)* @lam9349 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11614, i64* %eptr11609                                                 ; store fptr
  %arg7857 = ptrtoint i64* %cloptr11608 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7114 = call i64 @prim_cons(i64 %arg7857, i64 %a6889)                     ; call prim_cons
  %cloptr11615 = inttoptr i64 %juO$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11615)                                        ; assert function application
  %i0ptr11616 = getelementptr inbounds i64, i64* %cloptr11615, i64 0                 ; &cloptr11615[0]
  %f11618 = load i64, i64* %i0ptr11616, align 8                                      ; load; *i0ptr11616
  %fptr11617 = inttoptr i64 %f11618 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11617(i64 %juO$f, i64 %cps_45lst7114)               ; tail call
  ret void
}


define void @lam9349(i64 %env9350, i64 %rvp8791) {
  %envptr11619 = inttoptr i64 %env9350 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11620 = getelementptr inbounds i64, i64* %envptr11619, i64 4                ; &envptr11619[4]
  %cont7104 = load i64, i64* %envptr11620, align 8                                   ; load; *envptr11620
  %envptr11621 = inttoptr i64 %env9350 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11622 = getelementptr inbounds i64, i64* %envptr11621, i64 3                ; &envptr11621[3]
  %tYZ$lsts_43 = load i64, i64* %envptr11622, align 8                                ; load; *envptr11622
  %envptr11623 = inttoptr i64 %env9350 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11624 = getelementptr inbounds i64, i64* %envptr11623, i64 2                ; &envptr11623[2]
  %Dcu$_37foldl = load i64, i64* %envptr11624, align 8                               ; load; *envptr11624
  %envptr11625 = inttoptr i64 %env9350 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11626 = getelementptr inbounds i64, i64* %envptr11625, i64 1                ; &envptr11625[1]
  %juO$f = load i64, i64* %envptr11626, align 8                                      ; load; *envptr11626
  %_957111 = call i64 @prim_car(i64 %rvp8791)                                        ; call prim_car
  %rvp8790 = call i64 @prim_cdr(i64 %rvp8791)                                        ; call prim_cdr
  %rEG$acc_43 = call i64 @prim_car(i64 %rvp8790)                                     ; call prim_car
  %na8789 = call i64 @prim_cdr(i64 %rvp8790)                                         ; call prim_cdr
  %a6890 = call i64 @prim_cons(i64 %rEG$acc_43, i64 %tYZ$lsts_43)                    ; call prim_cons
  %a6891 = call i64 @prim_cons(i64 %juO$f, i64 %a6890)                               ; call prim_cons
  %cps_45lst7112 = call i64 @prim_cons(i64 %cont7104, i64 %a6891)                    ; call prim_cons
  %cloptr11627 = inttoptr i64 %Dcu$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11627)                                        ; assert function application
  %i0ptr11628 = getelementptr inbounds i64, i64* %cloptr11627, i64 0                 ; &cloptr11627[0]
  %f11630 = load i64, i64* %i0ptr11628, align 8                                      ; load; *i0ptr11628
  %fptr11629 = inttoptr i64 %f11630 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11629(i64 %Dcu$_37foldl, i64 %cps_45lst7112)        ; tail call
  ret void
}


define void @lam9347(i64 %env9348, i64 %rvp8801) {
  %cont7115 = call i64 @prim_car(i64 %rvp8801)                                       ; call prim_car
  %rvp8800 = call i64 @prim_cdr(i64 %rvp8801)                                        ; call prim_cdr
  %RYN$a = call i64 @prim_car(i64 %rvp8800)                                          ; call prim_car
  %rvp8799 = call i64 @prim_cdr(i64 %rvp8800)                                        ; call prim_cdr
  %iAz$b = call i64 @prim_car(i64 %rvp8799)                                          ; call prim_car
  %na8795 = call i64 @prim_cdr(i64 %rvp8799)                                         ; call prim_cdr
  %retprim7116 = call i64 @prim_cons(i64 %RYN$a, i64 %iAz$b)                         ; call prim_cons
  %arg7867 = add i64 0, 0                                                            ; quoted ()
  %rva8798 = add i64 0, 0                                                            ; quoted ()
  %rva8797 = call i64 @prim_cons(i64 %retprim7116, i64 %rva8798)                     ; call prim_cons
  %rva8796 = call i64 @prim_cons(i64 %arg7867, i64 %rva8797)                         ; call prim_cons
  %cloptr11631 = inttoptr i64 %cont7115 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11631)                                        ; assert function application
  %i0ptr11632 = getelementptr inbounds i64, i64* %cloptr11631, i64 0                 ; &cloptr11631[0]
  %f11634 = load i64, i64* %i0ptr11632, align 8                                      ; load; *i0ptr11632
  %fptr11633 = inttoptr i64 %f11634 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11633(i64 %cont7115, i64 %rva8796)                  ; tail call
  ret void
}


define void @lam9342(i64 %env9343, i64 %rvp8815) {
  %cont7117 = call i64 @prim_car(i64 %rvp8815)                                       ; call prim_car
  %rvp8814 = call i64 @prim_cdr(i64 %rvp8815)                                        ; call prim_cdr
  %TS2$x = call i64 @prim_car(i64 %rvp8814)                                          ; call prim_car
  %na8810 = call i64 @prim_cdr(i64 %rvp8814)                                         ; call prim_cdr
  %retprim7118 = call i64 @prim_car(i64 %TS2$x)                                      ; call prim_car
  %arg7871 = add i64 0, 0                                                            ; quoted ()
  %rva8813 = add i64 0, 0                                                            ; quoted ()
  %rva8812 = call i64 @prim_cons(i64 %retprim7118, i64 %rva8813)                     ; call prim_cons
  %rva8811 = call i64 @prim_cons(i64 %arg7871, i64 %rva8812)                         ; call prim_cons
  %cloptr11635 = inttoptr i64 %cont7117 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11635)                                        ; assert function application
  %i0ptr11636 = getelementptr inbounds i64, i64* %cloptr11635, i64 0                 ; &cloptr11635[0]
  %f11638 = load i64, i64* %i0ptr11636, align 8                                      ; load; *i0ptr11636
  %fptr11637 = inttoptr i64 %f11638 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11637(i64 %cont7117, i64 %rva8811)                  ; tail call
  ret void
}


define void @lam9337(i64 %env9338, i64 %rvp8828) {
  %cont7119 = call i64 @prim_car(i64 %rvp8828)                                       ; call prim_car
  %rvp8827 = call i64 @prim_cdr(i64 %rvp8828)                                        ; call prim_cdr
  %Cuh$x = call i64 @prim_car(i64 %rvp8827)                                          ; call prim_car
  %na8823 = call i64 @prim_cdr(i64 %rvp8827)                                         ; call prim_cdr
  %retprim7120 = call i64 @prim_cdr(i64 %Cuh$x)                                      ; call prim_cdr
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %rva8826 = add i64 0, 0                                                            ; quoted ()
  %rva8825 = call i64 @prim_cons(i64 %retprim7120, i64 %rva8826)                     ; call prim_cons
  %rva8824 = call i64 @prim_cons(i64 %arg7875, i64 %rva8825)                         ; call prim_cons
  %cloptr11639 = inttoptr i64 %cont7119 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11639)                                        ; assert function application
  %i0ptr11640 = getelementptr inbounds i64, i64* %cloptr11639, i64 0                 ; &cloptr11639[0]
  %f11642 = load i64, i64* %i0ptr11640, align 8                                      ; load; *i0ptr11640
  %fptr11641 = inttoptr i64 %f11642 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11641(i64 %cont7119, i64 %rva8824)                  ; tail call
  ret void
}


define void @lam9330(i64 %env9331, i64 %rvp8845) {
  %cont7121 = call i64 @prim_car(i64 %rvp8845)                                       ; call prim_car
  %rvp8844 = call i64 @prim_cdr(i64 %rvp8845)                                        ; call prim_cdr
  %QrR$lst = call i64 @prim_car(i64 %rvp8844)                                        ; call prim_car
  %rvp8843 = call i64 @prim_cdr(i64 %rvp8844)                                        ; call prim_cdr
  %GMu$b = call i64 @prim_car(i64 %rvp8843)                                          ; call prim_car
  %na8836 = call i64 @prim_cdr(i64 %rvp8843)                                         ; call prim_cdr
  %cmp11643 = icmp eq i64 %GMu$b, 15                                                 ; false?
  br i1 %cmp11643, label %else11645, label %then11644                                ; if

then11644:
  %arg7878 = add i64 0, 0                                                            ; quoted ()
  %rva8839 = add i64 0, 0                                                            ; quoted ()
  %rva8838 = call i64 @prim_cons(i64 %GMu$b, i64 %rva8839)                           ; call prim_cons
  %rva8837 = call i64 @prim_cons(i64 %arg7878, i64 %rva8838)                         ; call prim_cons
  %cloptr11646 = inttoptr i64 %cont7121 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11646)                                        ; assert function application
  %i0ptr11647 = getelementptr inbounds i64, i64* %cloptr11646, i64 0                 ; &cloptr11646[0]
  %f11649 = load i64, i64* %i0ptr11647, align 8                                      ; load; *i0ptr11647
  %fptr11648 = inttoptr i64 %f11649 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11648(i64 %cont7121, i64 %rva8837)                  ; tail call
  ret void

else11645:
  %retprim7122 = call i64 @prim_null_63(i64 %QrR$lst)                                ; call prim_null_63
  %arg7882 = add i64 0, 0                                                            ; quoted ()
  %rva8842 = add i64 0, 0                                                            ; quoted ()
  %rva8841 = call i64 @prim_cons(i64 %retprim7122, i64 %rva8842)                     ; call prim_cons
  %rva8840 = call i64 @prim_cons(i64 %arg7882, i64 %rva8841)                         ; call prim_cons
  %cloptr11650 = inttoptr i64 %cont7121 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11650)                                        ; assert function application
  %i0ptr11651 = getelementptr inbounds i64, i64* %cloptr11650, i64 0                 ; &cloptr11650[0]
  %f11653 = load i64, i64* %i0ptr11651, align 8                                      ; load; *i0ptr11651
  %fptr11652 = inttoptr i64 %f11653 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11652(i64 %cont7121, i64 %rva8840)                  ; tail call
  ret void
}


define void @lam9316(i64 %env9317, i64 %rvp8965) {
  %envptr11654 = inttoptr i64 %env9317 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11655 = getelementptr inbounds i64, i64* %envptr11654, i64 2                ; &envptr11654[2]
  %OnZ$_37foldr1 = load i64, i64* %envptr11655, align 8                              ; load; *envptr11655
  %envptr11656 = inttoptr i64 %env9317 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11657 = getelementptr inbounds i64, i64* %envptr11656, i64 1                ; &envptr11656[1]
  %UcZ$_37map1 = load i64, i64* %envptr11657, align 8                                ; load; *envptr11657
  %cont7125 = call i64 @prim_car(i64 %rvp8965)                                       ; call prim_car
  %rvp8964 = call i64 @prim_cdr(i64 %rvp8965)                                        ; call prim_cdr
  %AlZ$_37foldr = call i64 @prim_car(i64 %rvp8964)                                   ; call prim_car
  %na8872 = call i64 @prim_cdr(i64 %rvp8964)                                         ; call prim_cdr
  %arg7885 = add i64 0, 0                                                            ; quoted ()
  %cloptr11658 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11660 = getelementptr inbounds i64, i64* %cloptr11658, i64 1                  ; &eptr11660[1]
  %eptr11661 = getelementptr inbounds i64, i64* %cloptr11658, i64 2                  ; &eptr11661[2]
  %eptr11662 = getelementptr inbounds i64, i64* %cloptr11658, i64 3                  ; &eptr11662[3]
  store i64 %UcZ$_37map1, i64* %eptr11660                                            ; *eptr11660 = %UcZ$_37map1
  store i64 %AlZ$_37foldr, i64* %eptr11661                                           ; *eptr11661 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11662                                          ; *eptr11662 = %OnZ$_37foldr1
  %eptr11659 = getelementptr inbounds i64, i64* %cloptr11658, i64 0                  ; &cloptr11658[0]
  %f11663 = ptrtoint void(i64,i64)* @lam9313 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11663, i64* %eptr11659                                                 ; store fptr
  %arg7884 = ptrtoint i64* %cloptr11658 to i64                                       ; closure cast; i64* -> i64
  %rva8963 = add i64 0, 0                                                            ; quoted ()
  %rva8962 = call i64 @prim_cons(i64 %arg7884, i64 %rva8963)                         ; call prim_cons
  %rva8961 = call i64 @prim_cons(i64 %arg7885, i64 %rva8962)                         ; call prim_cons
  %cloptr11664 = inttoptr i64 %cont7125 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11664)                                        ; assert function application
  %i0ptr11665 = getelementptr inbounds i64, i64* %cloptr11664, i64 0                 ; &cloptr11664[0]
  %f11667 = load i64, i64* %i0ptr11665, align 8                                      ; load; *i0ptr11665
  %fptr11666 = inttoptr i64 %f11667 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11666(i64 %cont7125, i64 %rva8961)                  ; tail call
  ret void
}


define void @lam9313(i64 %env9314, i64 %JnR$args7127) {
  %envptr11668 = inttoptr i64 %env9314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11669 = getelementptr inbounds i64, i64* %envptr11668, i64 3                ; &envptr11668[3]
  %OnZ$_37foldr1 = load i64, i64* %envptr11669, align 8                              ; load; *envptr11669
  %envptr11670 = inttoptr i64 %env9314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11671 = getelementptr inbounds i64, i64* %envptr11670, i64 2                ; &envptr11670[2]
  %AlZ$_37foldr = load i64, i64* %envptr11671, align 8                               ; load; *envptr11671
  %envptr11672 = inttoptr i64 %env9314 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11673 = getelementptr inbounds i64, i64* %envptr11672, i64 1                ; &envptr11672[1]
  %UcZ$_37map1 = load i64, i64* %envptr11673, align 8                                ; load; *envptr11673
  %cont7126 = call i64 @prim_car(i64 %JnR$args7127)                                  ; call prim_car
  %JnR$args = call i64 @prim_cdr(i64 %JnR$args7127)                                  ; call prim_cdr
  %dg6$f = call i64 @prim_car(i64 %JnR$args)                                         ; call prim_car
  %a6871 = call i64 @prim_cdr(i64 %JnR$args)                                         ; call prim_cdr
  %retprim7146 = call i64 @prim_car(i64 %a6871)                                      ; call prim_car
  %cloptr11674 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11676 = getelementptr inbounds i64, i64* %cloptr11674, i64 1                  ; &eptr11676[1]
  %eptr11677 = getelementptr inbounds i64, i64* %cloptr11674, i64 2                  ; &eptr11677[2]
  %eptr11678 = getelementptr inbounds i64, i64* %cloptr11674, i64 3                  ; &eptr11678[3]
  %eptr11679 = getelementptr inbounds i64, i64* %cloptr11674, i64 4                  ; &eptr11679[4]
  %eptr11680 = getelementptr inbounds i64, i64* %cloptr11674, i64 5                  ; &eptr11680[5]
  %eptr11681 = getelementptr inbounds i64, i64* %cloptr11674, i64 6                  ; &eptr11681[6]
  store i64 %dg6$f, i64* %eptr11676                                                  ; *eptr11676 = %dg6$f
  store i64 %JnR$args, i64* %eptr11677                                               ; *eptr11677 = %JnR$args
  store i64 %UcZ$_37map1, i64* %eptr11678                                            ; *eptr11678 = %UcZ$_37map1
  store i64 %AlZ$_37foldr, i64* %eptr11679                                           ; *eptr11679 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11680                                          ; *eptr11680 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11681                                               ; *eptr11681 = %cont7126
  %eptr11675 = getelementptr inbounds i64, i64* %cloptr11674, i64 0                  ; &cloptr11674[0]
  %f11682 = ptrtoint void(i64,i64)* @lam9311 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11682, i64* %eptr11675                                                 ; store fptr
  %arg7894 = ptrtoint i64* %cloptr11674 to i64                                       ; closure cast; i64* -> i64
  %arg7893 = add i64 0, 0                                                            ; quoted ()
  %rva8960 = add i64 0, 0                                                            ; quoted ()
  %rva8959 = call i64 @prim_cons(i64 %retprim7146, i64 %rva8960)                     ; call prim_cons
  %rva8958 = call i64 @prim_cons(i64 %arg7893, i64 %rva8959)                         ; call prim_cons
  %cloptr11683 = inttoptr i64 %arg7894 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11683)                                        ; assert function application
  %i0ptr11684 = getelementptr inbounds i64, i64* %cloptr11683, i64 0                 ; &cloptr11683[0]
  %f11686 = load i64, i64* %i0ptr11684, align 8                                      ; load; *i0ptr11684
  %fptr11685 = inttoptr i64 %f11686 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11685(i64 %arg7894, i64 %rva8958)                   ; tail call
  ret void
}


define void @lam9311(i64 %env9312, i64 %rvp8957) {
  %envptr11687 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11688 = getelementptr inbounds i64, i64* %envptr11687, i64 6                ; &envptr11687[6]
  %cont7126 = load i64, i64* %envptr11688, align 8                                   ; load; *envptr11688
  %envptr11689 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11690 = getelementptr inbounds i64, i64* %envptr11689, i64 5                ; &envptr11689[5]
  %OnZ$_37foldr1 = load i64, i64* %envptr11690, align 8                              ; load; *envptr11690
  %envptr11691 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11692 = getelementptr inbounds i64, i64* %envptr11691, i64 4                ; &envptr11691[4]
  %AlZ$_37foldr = load i64, i64* %envptr11692, align 8                               ; load; *envptr11692
  %envptr11693 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11694 = getelementptr inbounds i64, i64* %envptr11693, i64 3                ; &envptr11693[3]
  %UcZ$_37map1 = load i64, i64* %envptr11694, align 8                                ; load; *envptr11694
  %envptr11695 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11696 = getelementptr inbounds i64, i64* %envptr11695, i64 2                ; &envptr11695[2]
  %JnR$args = load i64, i64* %envptr11696, align 8                                   ; load; *envptr11696
  %envptr11697 = inttoptr i64 %env9312 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11698 = getelementptr inbounds i64, i64* %envptr11697, i64 1                ; &envptr11697[1]
  %dg6$f = load i64, i64* %envptr11698, align 8                                      ; load; *envptr11698
  %_957128 = call i64 @prim_car(i64 %rvp8957)                                        ; call prim_car
  %rvp8956 = call i64 @prim_cdr(i64 %rvp8957)                                        ; call prim_cdr
  %vkP$acc = call i64 @prim_car(i64 %rvp8956)                                        ; call prim_car
  %na8874 = call i64 @prim_cdr(i64 %rvp8956)                                         ; call prim_cdr
  %a6872 = call i64 @prim_cdr(i64 %JnR$args)                                         ; call prim_cdr
  %retprim7145 = call i64 @prim_cdr(i64 %a6872)                                      ; call prim_cdr
  %cloptr11699 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11701 = getelementptr inbounds i64, i64* %cloptr11699, i64 1                  ; &eptr11701[1]
  %eptr11702 = getelementptr inbounds i64, i64* %cloptr11699, i64 2                  ; &eptr11702[2]
  %eptr11703 = getelementptr inbounds i64, i64* %cloptr11699, i64 3                  ; &eptr11703[3]
  %eptr11704 = getelementptr inbounds i64, i64* %cloptr11699, i64 4                  ; &eptr11704[4]
  %eptr11705 = getelementptr inbounds i64, i64* %cloptr11699, i64 5                  ; &eptr11705[5]
  %eptr11706 = getelementptr inbounds i64, i64* %cloptr11699, i64 6                  ; &eptr11706[6]
  store i64 %vkP$acc, i64* %eptr11701                                                ; *eptr11701 = %vkP$acc
  store i64 %dg6$f, i64* %eptr11702                                                  ; *eptr11702 = %dg6$f
  store i64 %UcZ$_37map1, i64* %eptr11703                                            ; *eptr11703 = %UcZ$_37map1
  store i64 %AlZ$_37foldr, i64* %eptr11704                                           ; *eptr11704 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11705                                          ; *eptr11705 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11706                                               ; *eptr11706 = %cont7126
  %eptr11700 = getelementptr inbounds i64, i64* %cloptr11699, i64 0                  ; &cloptr11699[0]
  %f11707 = ptrtoint void(i64,i64)* @lam9309 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11707, i64* %eptr11700                                                 ; store fptr
  %arg7899 = ptrtoint i64* %cloptr11699 to i64                                       ; closure cast; i64* -> i64
  %arg7898 = add i64 0, 0                                                            ; quoted ()
  %rva8955 = add i64 0, 0                                                            ; quoted ()
  %rva8954 = call i64 @prim_cons(i64 %retprim7145, i64 %rva8955)                     ; call prim_cons
  %rva8953 = call i64 @prim_cons(i64 %arg7898, i64 %rva8954)                         ; call prim_cons
  %cloptr11708 = inttoptr i64 %arg7899 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11708)                                        ; assert function application
  %i0ptr11709 = getelementptr inbounds i64, i64* %cloptr11708, i64 0                 ; &cloptr11708[0]
  %f11711 = load i64, i64* %i0ptr11709, align 8                                      ; load; *i0ptr11709
  %fptr11710 = inttoptr i64 %f11711 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11710(i64 %arg7899, i64 %rva8953)                   ; tail call
  ret void
}


define void @lam9309(i64 %env9310, i64 %rvp8952) {
  %envptr11712 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11713 = getelementptr inbounds i64, i64* %envptr11712, i64 6                ; &envptr11712[6]
  %cont7126 = load i64, i64* %envptr11713, align 8                                   ; load; *envptr11713
  %envptr11714 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11715 = getelementptr inbounds i64, i64* %envptr11714, i64 5                ; &envptr11714[5]
  %OnZ$_37foldr1 = load i64, i64* %envptr11715, align 8                              ; load; *envptr11715
  %envptr11716 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11717 = getelementptr inbounds i64, i64* %envptr11716, i64 4                ; &envptr11716[4]
  %AlZ$_37foldr = load i64, i64* %envptr11717, align 8                               ; load; *envptr11717
  %envptr11718 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11719 = getelementptr inbounds i64, i64* %envptr11718, i64 3                ; &envptr11718[3]
  %UcZ$_37map1 = load i64, i64* %envptr11719, align 8                                ; load; *envptr11719
  %envptr11720 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11721 = getelementptr inbounds i64, i64* %envptr11720, i64 2                ; &envptr11720[2]
  %dg6$f = load i64, i64* %envptr11721, align 8                                      ; load; *envptr11721
  %envptr11722 = inttoptr i64 %env9310 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11723 = getelementptr inbounds i64, i64* %envptr11722, i64 1                ; &envptr11722[1]
  %vkP$acc = load i64, i64* %envptr11723, align 8                                    ; load; *envptr11723
  %_957129 = call i64 @prim_car(i64 %rvp8952)                                        ; call prim_car
  %rvp8951 = call i64 @prim_cdr(i64 %rvp8952)                                        ; call prim_cdr
  %rgX$lsts = call i64 @prim_car(i64 %rvp8951)                                       ; call prim_car
  %na8876 = call i64 @prim_cdr(i64 %rvp8951)                                         ; call prim_cdr
  %cloptr11724 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11726 = getelementptr inbounds i64, i64* %cloptr11724, i64 1                  ; &eptr11726[1]
  %eptr11727 = getelementptr inbounds i64, i64* %cloptr11724, i64 2                  ; &eptr11727[2]
  %eptr11728 = getelementptr inbounds i64, i64* %cloptr11724, i64 3                  ; &eptr11728[3]
  %eptr11729 = getelementptr inbounds i64, i64* %cloptr11724, i64 4                  ; &eptr11729[4]
  %eptr11730 = getelementptr inbounds i64, i64* %cloptr11724, i64 5                  ; &eptr11730[5]
  %eptr11731 = getelementptr inbounds i64, i64* %cloptr11724, i64 6                  ; &eptr11731[6]
  %eptr11732 = getelementptr inbounds i64, i64* %cloptr11724, i64 7                  ; &eptr11732[7]
  store i64 %vkP$acc, i64* %eptr11726                                                ; *eptr11726 = %vkP$acc
  store i64 %dg6$f, i64* %eptr11727                                                  ; *eptr11727 = %dg6$f
  store i64 %rgX$lsts, i64* %eptr11728                                               ; *eptr11728 = %rgX$lsts
  store i64 %UcZ$_37map1, i64* %eptr11729                                            ; *eptr11729 = %UcZ$_37map1
  store i64 %AlZ$_37foldr, i64* %eptr11730                                           ; *eptr11730 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11731                                          ; *eptr11731 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11732                                               ; *eptr11732 = %cont7126
  %eptr11725 = getelementptr inbounds i64, i64* %cloptr11724, i64 0                  ; &cloptr11724[0]
  %f11733 = ptrtoint void(i64,i64)* @lam9307 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11733, i64* %eptr11725                                                 ; store fptr
  %arg7903 = ptrtoint i64* %cloptr11724 to i64                                       ; closure cast; i64* -> i64
  %cloptr11734 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11735 = getelementptr inbounds i64, i64* %cloptr11734, i64 0                  ; &cloptr11734[0]
  %f11736 = ptrtoint void(i64,i64)* @lam9279 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11736, i64* %eptr11735                                                 ; store fptr
  %arg7902 = ptrtoint i64* %cloptr11734 to i64                                       ; closure cast; i64* -> i64
  %arg7901 = call i64 @const_init_false()                                            ; quoted #f
  %rva8950 = add i64 0, 0                                                            ; quoted ()
  %rva8949 = call i64 @prim_cons(i64 %rgX$lsts, i64 %rva8950)                        ; call prim_cons
  %rva8948 = call i64 @prim_cons(i64 %arg7901, i64 %rva8949)                         ; call prim_cons
  %rva8947 = call i64 @prim_cons(i64 %arg7902, i64 %rva8948)                         ; call prim_cons
  %rva8946 = call i64 @prim_cons(i64 %arg7903, i64 %rva8947)                         ; call prim_cons
  %cloptr11737 = inttoptr i64 %OnZ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11737)                                        ; assert function application
  %i0ptr11738 = getelementptr inbounds i64, i64* %cloptr11737, i64 0                 ; &cloptr11737[0]
  %f11740 = load i64, i64* %i0ptr11738, align 8                                      ; load; *i0ptr11738
  %fptr11739 = inttoptr i64 %f11740 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11739(i64 %OnZ$_37foldr1, i64 %rva8946)             ; tail call
  ret void
}


define void @lam9307(i64 %env9308, i64 %rvp8934) {
  %envptr11741 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11742 = getelementptr inbounds i64, i64* %envptr11741, i64 7                ; &envptr11741[7]
  %cont7126 = load i64, i64* %envptr11742, align 8                                   ; load; *envptr11742
  %envptr11743 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11744 = getelementptr inbounds i64, i64* %envptr11743, i64 6                ; &envptr11743[6]
  %OnZ$_37foldr1 = load i64, i64* %envptr11744, align 8                              ; load; *envptr11744
  %envptr11745 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11746 = getelementptr inbounds i64, i64* %envptr11745, i64 5                ; &envptr11745[5]
  %AlZ$_37foldr = load i64, i64* %envptr11746, align 8                               ; load; *envptr11746
  %envptr11747 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11748 = getelementptr inbounds i64, i64* %envptr11747, i64 4                ; &envptr11747[4]
  %UcZ$_37map1 = load i64, i64* %envptr11748, align 8                                ; load; *envptr11748
  %envptr11749 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11750 = getelementptr inbounds i64, i64* %envptr11749, i64 3                ; &envptr11749[3]
  %rgX$lsts = load i64, i64* %envptr11750, align 8                                   ; load; *envptr11750
  %envptr11751 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11752 = getelementptr inbounds i64, i64* %envptr11751, i64 2                ; &envptr11751[2]
  %dg6$f = load i64, i64* %envptr11752, align 8                                      ; load; *envptr11752
  %envptr11753 = inttoptr i64 %env9308 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11754 = getelementptr inbounds i64, i64* %envptr11753, i64 1                ; &envptr11753[1]
  %vkP$acc = load i64, i64* %envptr11754, align 8                                    ; load; *envptr11754
  %_957130 = call i64 @prim_car(i64 %rvp8934)                                        ; call prim_car
  %rvp8933 = call i64 @prim_cdr(i64 %rvp8934)                                        ; call prim_cdr
  %a6873 = call i64 @prim_car(i64 %rvp8933)                                          ; call prim_car
  %na8878 = call i64 @prim_cdr(i64 %rvp8933)                                         ; call prim_cdr
  %cmp11755 = icmp eq i64 %a6873, 15                                                 ; false?
  br i1 %cmp11755, label %else11757, label %then11756                                ; if

then11756:
  %arg7906 = add i64 0, 0                                                            ; quoted ()
  %rva8881 = add i64 0, 0                                                            ; quoted ()
  %rva8880 = call i64 @prim_cons(i64 %vkP$acc, i64 %rva8881)                         ; call prim_cons
  %rva8879 = call i64 @prim_cons(i64 %arg7906, i64 %rva8880)                         ; call prim_cons
  %cloptr11758 = inttoptr i64 %cont7126 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11758)                                        ; assert function application
  %i0ptr11759 = getelementptr inbounds i64, i64* %cloptr11758, i64 0                 ; &cloptr11758[0]
  %f11761 = load i64, i64* %i0ptr11759, align 8                                      ; load; *i0ptr11759
  %fptr11760 = inttoptr i64 %f11761 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11760(i64 %cont7126, i64 %rva8879)                  ; tail call
  ret void

else11757:
  %cloptr11762 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr11764 = getelementptr inbounds i64, i64* %cloptr11762, i64 1                  ; &eptr11764[1]
  %eptr11765 = getelementptr inbounds i64, i64* %cloptr11762, i64 2                  ; &eptr11765[2]
  %eptr11766 = getelementptr inbounds i64, i64* %cloptr11762, i64 3                  ; &eptr11766[3]
  %eptr11767 = getelementptr inbounds i64, i64* %cloptr11762, i64 4                  ; &eptr11767[4]
  %eptr11768 = getelementptr inbounds i64, i64* %cloptr11762, i64 5                  ; &eptr11768[5]
  %eptr11769 = getelementptr inbounds i64, i64* %cloptr11762, i64 6                  ; &eptr11769[6]
  %eptr11770 = getelementptr inbounds i64, i64* %cloptr11762, i64 7                  ; &eptr11770[7]
  store i64 %vkP$acc, i64* %eptr11764                                                ; *eptr11764 = %vkP$acc
  store i64 %dg6$f, i64* %eptr11765                                                  ; *eptr11765 = %dg6$f
  store i64 %rgX$lsts, i64* %eptr11766                                               ; *eptr11766 = %rgX$lsts
  store i64 %UcZ$_37map1, i64* %eptr11767                                            ; *eptr11767 = %UcZ$_37map1
  store i64 %AlZ$_37foldr, i64* %eptr11768                                           ; *eptr11768 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11769                                          ; *eptr11769 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11770                                               ; *eptr11770 = %cont7126
  %eptr11763 = getelementptr inbounds i64, i64* %cloptr11762, i64 0                  ; &cloptr11762[0]
  %f11771 = ptrtoint void(i64,i64)* @lam9305 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11771, i64* %eptr11763                                                 ; store fptr
  %arg7910 = ptrtoint i64* %cloptr11762 to i64                                       ; closure cast; i64* -> i64
  %cloptr11772 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11773 = getelementptr inbounds i64, i64* %cloptr11772, i64 0                  ; &cloptr11772[0]
  %f11774 = ptrtoint void(i64,i64)* @lam9286 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11774, i64* %eptr11773                                                 ; store fptr
  %arg7909 = ptrtoint i64* %cloptr11772 to i64                                       ; closure cast; i64* -> i64
  %rva8932 = add i64 0, 0                                                            ; quoted ()
  %rva8931 = call i64 @prim_cons(i64 %rgX$lsts, i64 %rva8932)                        ; call prim_cons
  %rva8930 = call i64 @prim_cons(i64 %arg7909, i64 %rva8931)                         ; call prim_cons
  %rva8929 = call i64 @prim_cons(i64 %arg7910, i64 %rva8930)                         ; call prim_cons
  %cloptr11775 = inttoptr i64 %UcZ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11775)                                        ; assert function application
  %i0ptr11776 = getelementptr inbounds i64, i64* %cloptr11775, i64 0                 ; &cloptr11775[0]
  %f11778 = load i64, i64* %i0ptr11776, align 8                                      ; load; *i0ptr11776
  %fptr11777 = inttoptr i64 %f11778 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11777(i64 %UcZ$_37map1, i64 %rva8929)               ; tail call
  ret void
}


define void @lam9305(i64 %env9306, i64 %rvp8921) {
  %envptr11779 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11780 = getelementptr inbounds i64, i64* %envptr11779, i64 7                ; &envptr11779[7]
  %cont7126 = load i64, i64* %envptr11780, align 8                                   ; load; *envptr11780
  %envptr11781 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11782 = getelementptr inbounds i64, i64* %envptr11781, i64 6                ; &envptr11781[6]
  %OnZ$_37foldr1 = load i64, i64* %envptr11782, align 8                              ; load; *envptr11782
  %envptr11783 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11784 = getelementptr inbounds i64, i64* %envptr11783, i64 5                ; &envptr11783[5]
  %AlZ$_37foldr = load i64, i64* %envptr11784, align 8                               ; load; *envptr11784
  %envptr11785 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11786 = getelementptr inbounds i64, i64* %envptr11785, i64 4                ; &envptr11785[4]
  %UcZ$_37map1 = load i64, i64* %envptr11786, align 8                                ; load; *envptr11786
  %envptr11787 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11788 = getelementptr inbounds i64, i64* %envptr11787, i64 3                ; &envptr11787[3]
  %rgX$lsts = load i64, i64* %envptr11788, align 8                                   ; load; *envptr11788
  %envptr11789 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11790 = getelementptr inbounds i64, i64* %envptr11789, i64 2                ; &envptr11789[2]
  %dg6$f = load i64, i64* %envptr11790, align 8                                      ; load; *envptr11790
  %envptr11791 = inttoptr i64 %env9306 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11792 = getelementptr inbounds i64, i64* %envptr11791, i64 1                ; &envptr11791[1]
  %vkP$acc = load i64, i64* %envptr11792, align 8                                    ; load; *envptr11792
  %_957131 = call i64 @prim_car(i64 %rvp8921)                                        ; call prim_car
  %rvp8920 = call i64 @prim_cdr(i64 %rvp8921)                                        ; call prim_cdr
  %Al5$lsts_43 = call i64 @prim_car(i64 %rvp8920)                                    ; call prim_car
  %na8883 = call i64 @prim_cdr(i64 %rvp8920)                                         ; call prim_cdr
  %cloptr11793 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11795 = getelementptr inbounds i64, i64* %cloptr11793, i64 1                  ; &eptr11795[1]
  %eptr11796 = getelementptr inbounds i64, i64* %cloptr11793, i64 2                  ; &eptr11796[2]
  %eptr11797 = getelementptr inbounds i64, i64* %cloptr11793, i64 3                  ; &eptr11797[3]
  %eptr11798 = getelementptr inbounds i64, i64* %cloptr11793, i64 4                  ; &eptr11798[4]
  %eptr11799 = getelementptr inbounds i64, i64* %cloptr11793, i64 5                  ; &eptr11799[5]
  %eptr11800 = getelementptr inbounds i64, i64* %cloptr11793, i64 6                  ; &eptr11800[6]
  store i64 %vkP$acc, i64* %eptr11795                                                ; *eptr11795 = %vkP$acc
  store i64 %dg6$f, i64* %eptr11796                                                  ; *eptr11796 = %dg6$f
  store i64 %Al5$lsts_43, i64* %eptr11797                                            ; *eptr11797 = %Al5$lsts_43
  store i64 %AlZ$_37foldr, i64* %eptr11798                                           ; *eptr11798 = %AlZ$_37foldr
  store i64 %OnZ$_37foldr1, i64* %eptr11799                                          ; *eptr11799 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11800                                               ; *eptr11800 = %cont7126
  %eptr11794 = getelementptr inbounds i64, i64* %cloptr11793, i64 0                  ; &cloptr11793[0]
  %f11801 = ptrtoint void(i64,i64)* @lam9303 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11801, i64* %eptr11794                                                 ; store fptr
  %arg7914 = ptrtoint i64* %cloptr11793 to i64                                       ; closure cast; i64* -> i64
  %cloptr11802 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11803 = getelementptr inbounds i64, i64* %cloptr11802, i64 0                  ; &cloptr11802[0]
  %f11804 = ptrtoint void(i64,i64)* @lam9291 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11804, i64* %eptr11803                                                 ; store fptr
  %arg7913 = ptrtoint i64* %cloptr11802 to i64                                       ; closure cast; i64* -> i64
  %rva8919 = add i64 0, 0                                                            ; quoted ()
  %rva8918 = call i64 @prim_cons(i64 %rgX$lsts, i64 %rva8919)                        ; call prim_cons
  %rva8917 = call i64 @prim_cons(i64 %arg7913, i64 %rva8918)                         ; call prim_cons
  %rva8916 = call i64 @prim_cons(i64 %arg7914, i64 %rva8917)                         ; call prim_cons
  %cloptr11805 = inttoptr i64 %UcZ$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11805)                                        ; assert function application
  %i0ptr11806 = getelementptr inbounds i64, i64* %cloptr11805, i64 0                 ; &cloptr11805[0]
  %f11808 = load i64, i64* %i0ptr11806, align 8                                      ; load; *i0ptr11806
  %fptr11807 = inttoptr i64 %f11808 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11807(i64 %UcZ$_37map1, i64 %rva8916)               ; tail call
  ret void
}


define void @lam9303(i64 %env9304, i64 %rvp8908) {
  %envptr11809 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11810 = getelementptr inbounds i64, i64* %envptr11809, i64 6                ; &envptr11809[6]
  %cont7126 = load i64, i64* %envptr11810, align 8                                   ; load; *envptr11810
  %envptr11811 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11812 = getelementptr inbounds i64, i64* %envptr11811, i64 5                ; &envptr11811[5]
  %OnZ$_37foldr1 = load i64, i64* %envptr11812, align 8                              ; load; *envptr11812
  %envptr11813 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11814 = getelementptr inbounds i64, i64* %envptr11813, i64 4                ; &envptr11813[4]
  %AlZ$_37foldr = load i64, i64* %envptr11814, align 8                               ; load; *envptr11814
  %envptr11815 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11816 = getelementptr inbounds i64, i64* %envptr11815, i64 3                ; &envptr11815[3]
  %Al5$lsts_43 = load i64, i64* %envptr11816, align 8                                ; load; *envptr11816
  %envptr11817 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11818 = getelementptr inbounds i64, i64* %envptr11817, i64 2                ; &envptr11817[2]
  %dg6$f = load i64, i64* %envptr11818, align 8                                      ; load; *envptr11818
  %envptr11819 = inttoptr i64 %env9304 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11820 = getelementptr inbounds i64, i64* %envptr11819, i64 1                ; &envptr11819[1]
  %vkP$acc = load i64, i64* %envptr11820, align 8                                    ; load; *envptr11820
  %_957132 = call i64 @prim_car(i64 %rvp8908)                                        ; call prim_car
  %rvp8907 = call i64 @prim_cdr(i64 %rvp8908)                                        ; call prim_cdr
  %F78$vs = call i64 @prim_car(i64 %rvp8907)                                         ; call prim_car
  %na8885 = call i64 @prim_cdr(i64 %rvp8907)                                         ; call prim_cdr
  %a6874 = call i64 @prim_cons(i64 %vkP$acc, i64 %Al5$lsts_43)                       ; call prim_cons
  %a6875 = call i64 @prim_cons(i64 %dg6$f, i64 %a6874)                               ; call prim_cons
  %cloptr11821 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11823 = getelementptr inbounds i64, i64* %cloptr11821, i64 1                  ; &eptr11823[1]
  %eptr11824 = getelementptr inbounds i64, i64* %cloptr11821, i64 2                  ; &eptr11824[2]
  %eptr11825 = getelementptr inbounds i64, i64* %cloptr11821, i64 3                  ; &eptr11825[3]
  %eptr11826 = getelementptr inbounds i64, i64* %cloptr11821, i64 4                  ; &eptr11826[4]
  store i64 %F78$vs, i64* %eptr11823                                                 ; *eptr11823 = %F78$vs
  store i64 %dg6$f, i64* %eptr11824                                                  ; *eptr11824 = %dg6$f
  store i64 %OnZ$_37foldr1, i64* %eptr11825                                          ; *eptr11825 = %OnZ$_37foldr1
  store i64 %cont7126, i64* %eptr11826                                               ; *eptr11826 = %cont7126
  %eptr11822 = getelementptr inbounds i64, i64* %cloptr11821, i64 0                  ; &cloptr11821[0]
  %f11827 = ptrtoint void(i64,i64)* @lam9301 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11827, i64* %eptr11822                                                 ; store fptr
  %arg7921 = ptrtoint i64* %cloptr11821 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7138 = call i64 @prim_cons(i64 %arg7921, i64 %a6875)                     ; call prim_cons
  %cloptr11828 = inttoptr i64 %AlZ$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11828)                                        ; assert function application
  %i0ptr11829 = getelementptr inbounds i64, i64* %cloptr11828, i64 0                 ; &cloptr11828[0]
  %f11831 = load i64, i64* %i0ptr11829, align 8                                      ; load; *i0ptr11829
  %fptr11830 = inttoptr i64 %f11831 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11830(i64 %AlZ$_37foldr, i64 %cps_45lst7138)        ; tail call
  ret void
}


define void @lam9301(i64 %env9302, i64 %rvp8906) {
  %envptr11832 = inttoptr i64 %env9302 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11833 = getelementptr inbounds i64, i64* %envptr11832, i64 4                ; &envptr11832[4]
  %cont7126 = load i64, i64* %envptr11833, align 8                                   ; load; *envptr11833
  %envptr11834 = inttoptr i64 %env9302 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11835 = getelementptr inbounds i64, i64* %envptr11834, i64 3                ; &envptr11834[3]
  %OnZ$_37foldr1 = load i64, i64* %envptr11835, align 8                              ; load; *envptr11835
  %envptr11836 = inttoptr i64 %env9302 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11837 = getelementptr inbounds i64, i64* %envptr11836, i64 2                ; &envptr11836[2]
  %dg6$f = load i64, i64* %envptr11837, align 8                                      ; load; *envptr11837
  %envptr11838 = inttoptr i64 %env9302 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11839 = getelementptr inbounds i64, i64* %envptr11838, i64 1                ; &envptr11838[1]
  %F78$vs = load i64, i64* %envptr11839, align 8                                     ; load; *envptr11839
  %_957133 = call i64 @prim_car(i64 %rvp8906)                                        ; call prim_car
  %rvp8905 = call i64 @prim_cdr(i64 %rvp8906)                                        ; call prim_cdr
  %a6876 = call i64 @prim_car(i64 %rvp8905)                                          ; call prim_car
  %na8887 = call i64 @prim_cdr(i64 %rvp8905)                                         ; call prim_cdr
  %arg7922 = add i64 0, 0                                                            ; quoted ()
  %a6877 = call i64 @prim_cons(i64 %a6876, i64 %arg7922)                             ; call prim_cons
  %cloptr11840 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11842 = getelementptr inbounds i64, i64* %cloptr11840, i64 1                  ; &eptr11842[1]
  %eptr11843 = getelementptr inbounds i64, i64* %cloptr11840, i64 2                  ; &eptr11843[2]
  store i64 %dg6$f, i64* %eptr11842                                                  ; *eptr11842 = %dg6$f
  store i64 %cont7126, i64* %eptr11843                                               ; *eptr11843 = %cont7126
  %eptr11841 = getelementptr inbounds i64, i64* %cloptr11840, i64 0                  ; &cloptr11840[0]
  %f11844 = ptrtoint void(i64,i64)* @lam9298 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11844, i64* %eptr11841                                                 ; store fptr
  %arg7927 = ptrtoint i64* %cloptr11840 to i64                                       ; closure cast; i64* -> i64
  %cloptr11845 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11846 = getelementptr inbounds i64, i64* %cloptr11845, i64 0                  ; &cloptr11845[0]
  %f11847 = ptrtoint void(i64,i64)* @lam9296 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11847, i64* %eptr11846                                                 ; store fptr
  %arg7926 = ptrtoint i64* %cloptr11845 to i64                                       ; closure cast; i64* -> i64
  %rva8904 = add i64 0, 0                                                            ; quoted ()
  %rva8903 = call i64 @prim_cons(i64 %F78$vs, i64 %rva8904)                          ; call prim_cons
  %rva8902 = call i64 @prim_cons(i64 %a6877, i64 %rva8903)                           ; call prim_cons
  %rva8901 = call i64 @prim_cons(i64 %arg7926, i64 %rva8902)                         ; call prim_cons
  %rva8900 = call i64 @prim_cons(i64 %arg7927, i64 %rva8901)                         ; call prim_cons
  %cloptr11848 = inttoptr i64 %OnZ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11848)                                        ; assert function application
  %i0ptr11849 = getelementptr inbounds i64, i64* %cloptr11848, i64 0                 ; &cloptr11848[0]
  %f11851 = load i64, i64* %i0ptr11849, align 8                                      ; load; *i0ptr11849
  %fptr11850 = inttoptr i64 %f11851 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11850(i64 %OnZ$_37foldr1, i64 %rva8900)             ; tail call
  ret void
}


define void @lam9298(i64 %env9299, i64 %rvp8891) {
  %envptr11852 = inttoptr i64 %env9299 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11853 = getelementptr inbounds i64, i64* %envptr11852, i64 2                ; &envptr11852[2]
  %cont7126 = load i64, i64* %envptr11853, align 8                                   ; load; *envptr11853
  %envptr11854 = inttoptr i64 %env9299 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11855 = getelementptr inbounds i64, i64* %envptr11854, i64 1                ; &envptr11854[1]
  %dg6$f = load i64, i64* %envptr11855, align 8                                      ; load; *envptr11855
  %_957134 = call i64 @prim_car(i64 %rvp8891)                                        ; call prim_car
  %rvp8890 = call i64 @prim_cdr(i64 %rvp8891)                                        ; call prim_cdr
  %a6878 = call i64 @prim_car(i64 %rvp8890)                                          ; call prim_car
  %na8889 = call i64 @prim_cdr(i64 %rvp8890)                                         ; call prim_cdr
  %cps_45lst7135 = call i64 @prim_cons(i64 %cont7126, i64 %a6878)                    ; call prim_cons
  %cloptr11856 = inttoptr i64 %dg6$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11856)                                        ; assert function application
  %i0ptr11857 = getelementptr inbounds i64, i64* %cloptr11856, i64 0                 ; &cloptr11856[0]
  %f11859 = load i64, i64* %i0ptr11857, align 8                                      ; load; *i0ptr11857
  %fptr11858 = inttoptr i64 %f11859 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11858(i64 %dg6$f, i64 %cps_45lst7135)               ; tail call
  ret void
}


define void @lam9296(i64 %env9297, i64 %rvp8899) {
  %cont7136 = call i64 @prim_car(i64 %rvp8899)                                       ; call prim_car
  %rvp8898 = call i64 @prim_cdr(i64 %rvp8899)                                        ; call prim_cdr
  %bNn$a = call i64 @prim_car(i64 %rvp8898)                                          ; call prim_car
  %rvp8897 = call i64 @prim_cdr(i64 %rvp8898)                                        ; call prim_cdr
  %yDl$b = call i64 @prim_car(i64 %rvp8897)                                          ; call prim_car
  %na8893 = call i64 @prim_cdr(i64 %rvp8897)                                         ; call prim_cdr
  %retprim7137 = call i64 @prim_cons(i64 %bNn$a, i64 %yDl$b)                         ; call prim_cons
  %arg7934 = add i64 0, 0                                                            ; quoted ()
  %rva8896 = add i64 0, 0                                                            ; quoted ()
  %rva8895 = call i64 @prim_cons(i64 %retprim7137, i64 %rva8896)                     ; call prim_cons
  %rva8894 = call i64 @prim_cons(i64 %arg7934, i64 %rva8895)                         ; call prim_cons
  %cloptr11860 = inttoptr i64 %cont7136 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11860)                                        ; assert function application
  %i0ptr11861 = getelementptr inbounds i64, i64* %cloptr11860, i64 0                 ; &cloptr11860[0]
  %f11863 = load i64, i64* %i0ptr11861, align 8                                      ; load; *i0ptr11861
  %fptr11862 = inttoptr i64 %f11863 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11862(i64 %cont7136, i64 %rva8894)                  ; tail call
  ret void
}


define void @lam9291(i64 %env9292, i64 %rvp8915) {
  %cont7139 = call i64 @prim_car(i64 %rvp8915)                                       ; call prim_car
  %rvp8914 = call i64 @prim_cdr(i64 %rvp8915)                                        ; call prim_cdr
  %HNP$x = call i64 @prim_car(i64 %rvp8914)                                          ; call prim_car
  %na8910 = call i64 @prim_cdr(i64 %rvp8914)                                         ; call prim_cdr
  %retprim7140 = call i64 @prim_car(i64 %HNP$x)                                      ; call prim_car
  %arg7938 = add i64 0, 0                                                            ; quoted ()
  %rva8913 = add i64 0, 0                                                            ; quoted ()
  %rva8912 = call i64 @prim_cons(i64 %retprim7140, i64 %rva8913)                     ; call prim_cons
  %rva8911 = call i64 @prim_cons(i64 %arg7938, i64 %rva8912)                         ; call prim_cons
  %cloptr11864 = inttoptr i64 %cont7139 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11864)                                        ; assert function application
  %i0ptr11865 = getelementptr inbounds i64, i64* %cloptr11864, i64 0                 ; &cloptr11864[0]
  %f11867 = load i64, i64* %i0ptr11865, align 8                                      ; load; *i0ptr11865
  %fptr11866 = inttoptr i64 %f11867 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11866(i64 %cont7139, i64 %rva8911)                  ; tail call
  ret void
}


define void @lam9286(i64 %env9287, i64 %rvp8928) {
  %cont7141 = call i64 @prim_car(i64 %rvp8928)                                       ; call prim_car
  %rvp8927 = call i64 @prim_cdr(i64 %rvp8928)                                        ; call prim_cdr
  %bqc$x = call i64 @prim_car(i64 %rvp8927)                                          ; call prim_car
  %na8923 = call i64 @prim_cdr(i64 %rvp8927)                                         ; call prim_cdr
  %retprim7142 = call i64 @prim_cdr(i64 %bqc$x)                                      ; call prim_cdr
  %arg7942 = add i64 0, 0                                                            ; quoted ()
  %rva8926 = add i64 0, 0                                                            ; quoted ()
  %rva8925 = call i64 @prim_cons(i64 %retprim7142, i64 %rva8926)                     ; call prim_cons
  %rva8924 = call i64 @prim_cons(i64 %arg7942, i64 %rva8925)                         ; call prim_cons
  %cloptr11868 = inttoptr i64 %cont7141 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11868)                                        ; assert function application
  %i0ptr11869 = getelementptr inbounds i64, i64* %cloptr11868, i64 0                 ; &cloptr11868[0]
  %f11871 = load i64, i64* %i0ptr11869, align 8                                      ; load; *i0ptr11869
  %fptr11870 = inttoptr i64 %f11871 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11870(i64 %cont7141, i64 %rva8924)                  ; tail call
  ret void
}


define void @lam9279(i64 %env9280, i64 %rvp8945) {
  %cont7143 = call i64 @prim_car(i64 %rvp8945)                                       ; call prim_car
  %rvp8944 = call i64 @prim_cdr(i64 %rvp8945)                                        ; call prim_cdr
  %qQF$lst = call i64 @prim_car(i64 %rvp8944)                                        ; call prim_car
  %rvp8943 = call i64 @prim_cdr(i64 %rvp8944)                                        ; call prim_cdr
  %RiO$b = call i64 @prim_car(i64 %rvp8943)                                          ; call prim_car
  %na8936 = call i64 @prim_cdr(i64 %rvp8943)                                         ; call prim_cdr
  %cmp11872 = icmp eq i64 %RiO$b, 15                                                 ; false?
  br i1 %cmp11872, label %else11874, label %then11873                                ; if

then11873:
  %arg7945 = add i64 0, 0                                                            ; quoted ()
  %rva8939 = add i64 0, 0                                                            ; quoted ()
  %rva8938 = call i64 @prim_cons(i64 %RiO$b, i64 %rva8939)                           ; call prim_cons
  %rva8937 = call i64 @prim_cons(i64 %arg7945, i64 %rva8938)                         ; call prim_cons
  %cloptr11875 = inttoptr i64 %cont7143 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11875)                                        ; assert function application
  %i0ptr11876 = getelementptr inbounds i64, i64* %cloptr11875, i64 0                 ; &cloptr11875[0]
  %f11878 = load i64, i64* %i0ptr11876, align 8                                      ; load; *i0ptr11876
  %fptr11877 = inttoptr i64 %f11878 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11877(i64 %cont7143, i64 %rva8937)                  ; tail call
  ret void

else11874:
  %retprim7144 = call i64 @prim_null_63(i64 %qQF$lst)                                ; call prim_null_63
  %arg7949 = add i64 0, 0                                                            ; quoted ()
  %rva8942 = add i64 0, 0                                                            ; quoted ()
  %rva8941 = call i64 @prim_cons(i64 %retprim7144, i64 %rva8942)                     ; call prim_cons
  %rva8940 = call i64 @prim_cons(i64 %arg7949, i64 %rva8941)                         ; call prim_cons
  %cloptr11879 = inttoptr i64 %cont7143 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11879)                                        ; assert function application
  %i0ptr11880 = getelementptr inbounds i64, i64* %cloptr11879, i64 0                 ; &cloptr11879[0]
  %f11882 = load i64, i64* %i0ptr11880, align 8                                      ; load; *i0ptr11880
  %fptr11881 = inttoptr i64 %f11882 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11881(i64 %cont7143, i64 %rva8940)                  ; tail call
  ret void
}


define void @lam9265(i64 %env9266, i64 %rvp8999) {
  %cont7147 = call i64 @prim_car(i64 %rvp8999)                                       ; call prim_car
  %rvp8998 = call i64 @prim_cdr(i64 %rvp8999)                                        ; call prim_cdr
  %xYw$_37foldl1 = call i64 @prim_car(i64 %rvp8998)                                  ; call prim_car
  %na8972 = call i64 @prim_cdr(i64 %rvp8998)                                         ; call prim_cdr
  %arg7952 = add i64 0, 0                                                            ; quoted ()
  %cloptr11883 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11885 = getelementptr inbounds i64, i64* %cloptr11883, i64 1                  ; &eptr11885[1]
  store i64 %xYw$_37foldl1, i64* %eptr11885                                          ; *eptr11885 = %xYw$_37foldl1
  %eptr11884 = getelementptr inbounds i64, i64* %cloptr11883, i64 0                  ; &cloptr11883[0]
  %f11886 = ptrtoint void(i64,i64)* @lam9262 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11886, i64* %eptr11884                                                 ; store fptr
  %arg7951 = ptrtoint i64* %cloptr11883 to i64                                       ; closure cast; i64* -> i64
  %rva8997 = add i64 0, 0                                                            ; quoted ()
  %rva8996 = call i64 @prim_cons(i64 %arg7951, i64 %rva8997)                         ; call prim_cons
  %rva8995 = call i64 @prim_cons(i64 %arg7952, i64 %rva8996)                         ; call prim_cons
  %cloptr11887 = inttoptr i64 %cont7147 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11887)                                        ; assert function application
  %i0ptr11888 = getelementptr inbounds i64, i64* %cloptr11887, i64 0                 ; &cloptr11887[0]
  %f11890 = load i64, i64* %i0ptr11888, align 8                                      ; load; *i0ptr11888
  %fptr11889 = inttoptr i64 %f11890 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11889(i64 %cont7147, i64 %rva8995)                  ; tail call
  ret void
}


define void @lam9262(i64 %env9263, i64 %rvp8994) {
  %envptr11891 = inttoptr i64 %env9263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11892 = getelementptr inbounds i64, i64* %envptr11891, i64 1                ; &envptr11891[1]
  %xYw$_37foldl1 = load i64, i64* %envptr11892, align 8                              ; load; *envptr11892
  %cont7148 = call i64 @prim_car(i64 %rvp8994)                                       ; call prim_car
  %rvp8993 = call i64 @prim_cdr(i64 %rvp8994)                                        ; call prim_cdr
  %B0i$f = call i64 @prim_car(i64 %rvp8993)                                          ; call prim_car
  %rvp8992 = call i64 @prim_cdr(i64 %rvp8993)                                        ; call prim_cdr
  %aEj$acc = call i64 @prim_car(i64 %rvp8992)                                        ; call prim_car
  %rvp8991 = call i64 @prim_cdr(i64 %rvp8992)                                        ; call prim_cdr
  %PjM$lst = call i64 @prim_car(i64 %rvp8991)                                        ; call prim_car
  %na8974 = call i64 @prim_cdr(i64 %rvp8991)                                         ; call prim_cdr
  %a6865 = call i64 @prim_null_63(i64 %PjM$lst)                                      ; call prim_null_63
  %cmp11893 = icmp eq i64 %a6865, 15                                                 ; false?
  br i1 %cmp11893, label %else11895, label %then11894                                ; if

then11894:
  %arg7956 = add i64 0, 0                                                            ; quoted ()
  %rva8977 = add i64 0, 0                                                            ; quoted ()
  %rva8976 = call i64 @prim_cons(i64 %aEj$acc, i64 %rva8977)                         ; call prim_cons
  %rva8975 = call i64 @prim_cons(i64 %arg7956, i64 %rva8976)                         ; call prim_cons
  %cloptr11896 = inttoptr i64 %cont7148 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11896)                                        ; assert function application
  %i0ptr11897 = getelementptr inbounds i64, i64* %cloptr11896, i64 0                 ; &cloptr11896[0]
  %f11899 = load i64, i64* %i0ptr11897, align 8                                      ; load; *i0ptr11897
  %fptr11898 = inttoptr i64 %f11899 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11898(i64 %cont7148, i64 %rva8975)                  ; tail call
  ret void

else11895:
  %a6866 = call i64 @prim_car(i64 %PjM$lst)                                          ; call prim_car
  %cloptr11900 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11902 = getelementptr inbounds i64, i64* %cloptr11900, i64 1                  ; &eptr11902[1]
  %eptr11903 = getelementptr inbounds i64, i64* %cloptr11900, i64 2                  ; &eptr11903[2]
  %eptr11904 = getelementptr inbounds i64, i64* %cloptr11900, i64 3                  ; &eptr11904[3]
  %eptr11905 = getelementptr inbounds i64, i64* %cloptr11900, i64 4                  ; &eptr11905[4]
  store i64 %PjM$lst, i64* %eptr11902                                                ; *eptr11902 = %PjM$lst
  store i64 %cont7148, i64* %eptr11903                                               ; *eptr11903 = %cont7148
  store i64 %B0i$f, i64* %eptr11904                                                  ; *eptr11904 = %B0i$f
  store i64 %xYw$_37foldl1, i64* %eptr11905                                          ; *eptr11905 = %xYw$_37foldl1
  %eptr11901 = getelementptr inbounds i64, i64* %cloptr11900, i64 0                  ; &cloptr11900[0]
  %f11906 = ptrtoint void(i64,i64)* @lam9260 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11906, i64* %eptr11901                                                 ; store fptr
  %arg7961 = ptrtoint i64* %cloptr11900 to i64                                       ; closure cast; i64* -> i64
  %rva8990 = add i64 0, 0                                                            ; quoted ()
  %rva8989 = call i64 @prim_cons(i64 %aEj$acc, i64 %rva8990)                         ; call prim_cons
  %rva8988 = call i64 @prim_cons(i64 %a6866, i64 %rva8989)                           ; call prim_cons
  %rva8987 = call i64 @prim_cons(i64 %arg7961, i64 %rva8988)                         ; call prim_cons
  %cloptr11907 = inttoptr i64 %B0i$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11907)                                        ; assert function application
  %i0ptr11908 = getelementptr inbounds i64, i64* %cloptr11907, i64 0                 ; &cloptr11907[0]
  %f11910 = load i64, i64* %i0ptr11908, align 8                                      ; load; *i0ptr11908
  %fptr11909 = inttoptr i64 %f11910 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11909(i64 %B0i$f, i64 %rva8987)                     ; tail call
  ret void
}


define void @lam9260(i64 %env9261, i64 %rvp8986) {
  %envptr11911 = inttoptr i64 %env9261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11912 = getelementptr inbounds i64, i64* %envptr11911, i64 4                ; &envptr11911[4]
  %xYw$_37foldl1 = load i64, i64* %envptr11912, align 8                              ; load; *envptr11912
  %envptr11913 = inttoptr i64 %env9261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11914 = getelementptr inbounds i64, i64* %envptr11913, i64 3                ; &envptr11913[3]
  %B0i$f = load i64, i64* %envptr11914, align 8                                      ; load; *envptr11914
  %envptr11915 = inttoptr i64 %env9261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11916 = getelementptr inbounds i64, i64* %envptr11915, i64 2                ; &envptr11915[2]
  %cont7148 = load i64, i64* %envptr11916, align 8                                   ; load; *envptr11916
  %envptr11917 = inttoptr i64 %env9261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11918 = getelementptr inbounds i64, i64* %envptr11917, i64 1                ; &envptr11917[1]
  %PjM$lst = load i64, i64* %envptr11918, align 8                                    ; load; *envptr11918
  %_957149 = call i64 @prim_car(i64 %rvp8986)                                        ; call prim_car
  %rvp8985 = call i64 @prim_cdr(i64 %rvp8986)                                        ; call prim_cdr
  %a6867 = call i64 @prim_car(i64 %rvp8985)                                          ; call prim_car
  %na8979 = call i64 @prim_cdr(i64 %rvp8985)                                         ; call prim_cdr
  %a6868 = call i64 @prim_cdr(i64 %PjM$lst)                                          ; call prim_cdr
  %rva8984 = add i64 0, 0                                                            ; quoted ()
  %rva8983 = call i64 @prim_cons(i64 %a6868, i64 %rva8984)                           ; call prim_cons
  %rva8982 = call i64 @prim_cons(i64 %a6867, i64 %rva8983)                           ; call prim_cons
  %rva8981 = call i64 @prim_cons(i64 %B0i$f, i64 %rva8982)                           ; call prim_cons
  %rva8980 = call i64 @prim_cons(i64 %cont7148, i64 %rva8981)                        ; call prim_cons
  %cloptr11919 = inttoptr i64 %xYw$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11919)                                        ; assert function application
  %i0ptr11920 = getelementptr inbounds i64, i64* %cloptr11919, i64 0                 ; &cloptr11919[0]
  %f11922 = load i64, i64* %i0ptr11920, align 8                                      ; load; *i0ptr11920
  %fptr11921 = inttoptr i64 %f11922 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11921(i64 %xYw$_37foldl1, i64 %rva8980)             ; tail call
  ret void
}


define void @lam9252(i64 %env9253, i64 %rvp9028) {
  %cont7150 = call i64 @prim_car(i64 %rvp9028)                                       ; call prim_car
  %rvp9027 = call i64 @prim_cdr(i64 %rvp9028)                                        ; call prim_cdr
  %hl9$_37length = call i64 @prim_car(i64 %rvp9027)                                  ; call prim_car
  %na9006 = call i64 @prim_cdr(i64 %rvp9027)                                         ; call prim_cdr
  %arg7970 = add i64 0, 0                                                            ; quoted ()
  %cloptr11923 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11925 = getelementptr inbounds i64, i64* %cloptr11923, i64 1                  ; &eptr11925[1]
  store i64 %hl9$_37length, i64* %eptr11925                                          ; *eptr11925 = %hl9$_37length
  %eptr11924 = getelementptr inbounds i64, i64* %cloptr11923, i64 0                  ; &cloptr11923[0]
  %f11926 = ptrtoint void(i64,i64)* @lam9249 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11926, i64* %eptr11924                                                 ; store fptr
  %arg7969 = ptrtoint i64* %cloptr11923 to i64                                       ; closure cast; i64* -> i64
  %rva9026 = add i64 0, 0                                                            ; quoted ()
  %rva9025 = call i64 @prim_cons(i64 %arg7969, i64 %rva9026)                         ; call prim_cons
  %rva9024 = call i64 @prim_cons(i64 %arg7970, i64 %rva9025)                         ; call prim_cons
  %cloptr11927 = inttoptr i64 %cont7150 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11927)                                        ; assert function application
  %i0ptr11928 = getelementptr inbounds i64, i64* %cloptr11927, i64 0                 ; &cloptr11927[0]
  %f11930 = load i64, i64* %i0ptr11928, align 8                                      ; load; *i0ptr11928
  %fptr11929 = inttoptr i64 %f11930 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11929(i64 %cont7150, i64 %rva9024)                  ; tail call
  ret void
}


define void @lam9249(i64 %env9250, i64 %rvp9023) {
  %envptr11931 = inttoptr i64 %env9250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11932 = getelementptr inbounds i64, i64* %envptr11931, i64 1                ; &envptr11931[1]
  %hl9$_37length = load i64, i64* %envptr11932, align 8                              ; load; *envptr11932
  %cont7151 = call i64 @prim_car(i64 %rvp9023)                                       ; call prim_car
  %rvp9022 = call i64 @prim_cdr(i64 %rvp9023)                                        ; call prim_cdr
  %Uz8$lst = call i64 @prim_car(i64 %rvp9022)                                        ; call prim_car
  %na9008 = call i64 @prim_cdr(i64 %rvp9022)                                         ; call prim_cdr
  %a6862 = call i64 @prim_null_63(i64 %Uz8$lst)                                      ; call prim_null_63
  %cmp11933 = icmp eq i64 %a6862, 15                                                 ; false?
  br i1 %cmp11933, label %else11935, label %then11934                                ; if

then11934:
  %arg7974 = add i64 0, 0                                                            ; quoted ()
  %arg7973 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %rva9011 = add i64 0, 0                                                            ; quoted ()
  %rva9010 = call i64 @prim_cons(i64 %arg7973, i64 %rva9011)                         ; call prim_cons
  %rva9009 = call i64 @prim_cons(i64 %arg7974, i64 %rva9010)                         ; call prim_cons
  %cloptr11936 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11936)                                        ; assert function application
  %i0ptr11937 = getelementptr inbounds i64, i64* %cloptr11936, i64 0                 ; &cloptr11936[0]
  %f11939 = load i64, i64* %i0ptr11937, align 8                                      ; load; *i0ptr11937
  %fptr11938 = inttoptr i64 %f11939 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11938(i64 %cont7151, i64 %rva9009)                  ; tail call
  ret void

else11935:
  %a6863 = call i64 @prim_cdr(i64 %Uz8$lst)                                          ; call prim_cdr
  %cloptr11940 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11942 = getelementptr inbounds i64, i64* %cloptr11940, i64 1                  ; &eptr11942[1]
  store i64 %cont7151, i64* %eptr11942                                               ; *eptr11942 = %cont7151
  %eptr11941 = getelementptr inbounds i64, i64* %cloptr11940, i64 0                  ; &cloptr11940[0]
  %f11943 = ptrtoint void(i64,i64)* @lam9247 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11943, i64* %eptr11941                                                 ; store fptr
  %arg7978 = ptrtoint i64* %cloptr11940 to i64                                       ; closure cast; i64* -> i64
  %rva9021 = add i64 0, 0                                                            ; quoted ()
  %rva9020 = call i64 @prim_cons(i64 %a6863, i64 %rva9021)                           ; call prim_cons
  %rva9019 = call i64 @prim_cons(i64 %arg7978, i64 %rva9020)                         ; call prim_cons
  %cloptr11944 = inttoptr i64 %hl9$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11944)                                        ; assert function application
  %i0ptr11945 = getelementptr inbounds i64, i64* %cloptr11944, i64 0                 ; &cloptr11944[0]
  %f11947 = load i64, i64* %i0ptr11945, align 8                                      ; load; *i0ptr11945
  %fptr11946 = inttoptr i64 %f11947 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11946(i64 %hl9$_37length, i64 %rva9019)             ; tail call
  ret void
}


define void @lam9247(i64 %env9248, i64 %rvp9018) {
  %envptr11948 = inttoptr i64 %env9248 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11949 = getelementptr inbounds i64, i64* %envptr11948, i64 1                ; &envptr11948[1]
  %cont7151 = load i64, i64* %envptr11949, align 8                                   ; load; *envptr11949
  %_957152 = call i64 @prim_car(i64 %rvp9018)                                        ; call prim_car
  %rvp9017 = call i64 @prim_cdr(i64 %rvp9018)                                        ; call prim_cdr
  %a6864 = call i64 @prim_car(i64 %rvp9017)                                          ; call prim_car
  %na9013 = call i64 @prim_cdr(i64 %rvp9017)                                         ; call prim_cdr
  %arg7981 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7153 = call i64 @prim__43(i64 %arg7981, i64 %a6864)                        ; call prim__43
  %arg7983 = add i64 0, 0                                                            ; quoted ()
  %rva9016 = add i64 0, 0                                                            ; quoted ()
  %rva9015 = call i64 @prim_cons(i64 %retprim7153, i64 %rva9016)                     ; call prim_cons
  %rva9014 = call i64 @prim_cons(i64 %arg7983, i64 %rva9015)                         ; call prim_cons
  %cloptr11950 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11950)                                        ; assert function application
  %i0ptr11951 = getelementptr inbounds i64, i64* %cloptr11950, i64 0                 ; &cloptr11950[0]
  %f11953 = load i64, i64* %i0ptr11951, align 8                                      ; load; *i0ptr11951
  %fptr11952 = inttoptr i64 %f11953 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11952(i64 %cont7151, i64 %rva9014)                  ; tail call
  ret void
}


define void @lam9236(i64 %env9237, i64 %rvp9062) {
  %cont7154 = call i64 @prim_car(i64 %rvp9062)                                       ; call prim_car
  %rvp9061 = call i64 @prim_cdr(i64 %rvp9062)                                        ; call prim_cdr
  %yFd$_37take = call i64 @prim_car(i64 %rvp9061)                                    ; call prim_car
  %na9035 = call i64 @prim_cdr(i64 %rvp9061)                                         ; call prim_cdr
  %arg7986 = add i64 0, 0                                                            ; quoted ()
  %cloptr11954 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11956 = getelementptr inbounds i64, i64* %cloptr11954, i64 1                  ; &eptr11956[1]
  store i64 %yFd$_37take, i64* %eptr11956                                            ; *eptr11956 = %yFd$_37take
  %eptr11955 = getelementptr inbounds i64, i64* %cloptr11954, i64 0                  ; &cloptr11954[0]
  %f11957 = ptrtoint void(i64,i64)* @lam9233 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11957, i64* %eptr11955                                                 ; store fptr
  %arg7985 = ptrtoint i64* %cloptr11954 to i64                                       ; closure cast; i64* -> i64
  %rva9060 = add i64 0, 0                                                            ; quoted ()
  %rva9059 = call i64 @prim_cons(i64 %arg7985, i64 %rva9060)                         ; call prim_cons
  %rva9058 = call i64 @prim_cons(i64 %arg7986, i64 %rva9059)                         ; call prim_cons
  %cloptr11958 = inttoptr i64 %cont7154 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11958)                                        ; assert function application
  %i0ptr11959 = getelementptr inbounds i64, i64* %cloptr11958, i64 0                 ; &cloptr11958[0]
  %f11961 = load i64, i64* %i0ptr11959, align 8                                      ; load; *i0ptr11959
  %fptr11960 = inttoptr i64 %f11961 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11960(i64 %cont7154, i64 %rva9058)                  ; tail call
  ret void
}


define void @lam9233(i64 %env9234, i64 %rvp9057) {
  %envptr11962 = inttoptr i64 %env9234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11963 = getelementptr inbounds i64, i64* %envptr11962, i64 1                ; &envptr11962[1]
  %yFd$_37take = load i64, i64* %envptr11963, align 8                                ; load; *envptr11963
  %cont7155 = call i64 @prim_car(i64 %rvp9057)                                       ; call prim_car
  %rvp9056 = call i64 @prim_cdr(i64 %rvp9057)                                        ; call prim_cdr
  %fFN$lst = call i64 @prim_car(i64 %rvp9056)                                        ; call prim_car
  %rvp9055 = call i64 @prim_cdr(i64 %rvp9056)                                        ; call prim_cdr
  %JoS$n = call i64 @prim_car(i64 %rvp9055)                                          ; call prim_car
  %na9037 = call i64 @prim_cdr(i64 %rvp9055)                                         ; call prim_cdr
  %arg7988 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6856 = call i64 @prim__61(i64 %JoS$n, i64 %arg7988)                              ; call prim__61
  %cmp11964 = icmp eq i64 %a6856, 15                                                 ; false?
  br i1 %cmp11964, label %else11966, label %then11965                                ; if

then11965:
  %arg7991 = add i64 0, 0                                                            ; quoted ()
  %arg7990 = add i64 0, 0                                                            ; quoted ()
  %rva9040 = add i64 0, 0                                                            ; quoted ()
  %rva9039 = call i64 @prim_cons(i64 %arg7990, i64 %rva9040)                         ; call prim_cons
  %rva9038 = call i64 @prim_cons(i64 %arg7991, i64 %rva9039)                         ; call prim_cons
  %cloptr11967 = inttoptr i64 %cont7155 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11967)                                        ; assert function application
  %i0ptr11968 = getelementptr inbounds i64, i64* %cloptr11967, i64 0                 ; &cloptr11967[0]
  %f11970 = load i64, i64* %i0ptr11968, align 8                                      ; load; *i0ptr11968
  %fptr11969 = inttoptr i64 %f11970 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11969(i64 %cont7155, i64 %rva9038)                  ; tail call
  ret void

else11966:
  %a6857 = call i64 @prim_null_63(i64 %fFN$lst)                                      ; call prim_null_63
  %cmp11971 = icmp eq i64 %a6857, 15                                                 ; false?
  br i1 %cmp11971, label %else11973, label %then11972                                ; if

then11972:
  %arg7995 = add i64 0, 0                                                            ; quoted ()
  %arg7994 = add i64 0, 0                                                            ; quoted ()
  %rva9043 = add i64 0, 0                                                            ; quoted ()
  %rva9042 = call i64 @prim_cons(i64 %arg7994, i64 %rva9043)                         ; call prim_cons
  %rva9041 = call i64 @prim_cons(i64 %arg7995, i64 %rva9042)                         ; call prim_cons
  %cloptr11974 = inttoptr i64 %cont7155 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11974)                                        ; assert function application
  %i0ptr11975 = getelementptr inbounds i64, i64* %cloptr11974, i64 0                 ; &cloptr11974[0]
  %f11977 = load i64, i64* %i0ptr11975, align 8                                      ; load; *i0ptr11975
  %fptr11976 = inttoptr i64 %f11977 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11976(i64 %cont7155, i64 %rva9041)                  ; tail call
  ret void

else11973:
  %a6858 = call i64 @prim_car(i64 %fFN$lst)                                          ; call prim_car
  %a6859 = call i64 @prim_cdr(i64 %fFN$lst)                                          ; call prim_cdr
  %arg7999 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6860 = call i64 @prim__45(i64 %JoS$n, i64 %arg7999)                              ; call prim__45
  %cloptr11978 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11980 = getelementptr inbounds i64, i64* %cloptr11978, i64 1                  ; &eptr11980[1]
  %eptr11981 = getelementptr inbounds i64, i64* %cloptr11978, i64 2                  ; &eptr11981[2]
  store i64 %a6858, i64* %eptr11980                                                  ; *eptr11980 = %a6858
  store i64 %cont7155, i64* %eptr11981                                               ; *eptr11981 = %cont7155
  %eptr11979 = getelementptr inbounds i64, i64* %cloptr11978, i64 0                  ; &cloptr11978[0]
  %f11982 = ptrtoint void(i64,i64)* @lam9229 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11982, i64* %eptr11979                                                 ; store fptr
  %arg8003 = ptrtoint i64* %cloptr11978 to i64                                       ; closure cast; i64* -> i64
  %rva9054 = add i64 0, 0                                                            ; quoted ()
  %rva9053 = call i64 @prim_cons(i64 %a6860, i64 %rva9054)                           ; call prim_cons
  %rva9052 = call i64 @prim_cons(i64 %a6859, i64 %rva9053)                           ; call prim_cons
  %rva9051 = call i64 @prim_cons(i64 %arg8003, i64 %rva9052)                         ; call prim_cons
  %cloptr11983 = inttoptr i64 %yFd$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11983)                                        ; assert function application
  %i0ptr11984 = getelementptr inbounds i64, i64* %cloptr11983, i64 0                 ; &cloptr11983[0]
  %f11986 = load i64, i64* %i0ptr11984, align 8                                      ; load; *i0ptr11984
  %fptr11985 = inttoptr i64 %f11986 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11985(i64 %yFd$_37take, i64 %rva9051)               ; tail call
  ret void
}


define void @lam9229(i64 %env9230, i64 %rvp9050) {
  %envptr11987 = inttoptr i64 %env9230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11988 = getelementptr inbounds i64, i64* %envptr11987, i64 2                ; &envptr11987[2]
  %cont7155 = load i64, i64* %envptr11988, align 8                                   ; load; *envptr11988
  %envptr11989 = inttoptr i64 %env9230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr11990 = getelementptr inbounds i64, i64* %envptr11989, i64 1                ; &envptr11989[1]
  %a6858 = load i64, i64* %envptr11990, align 8                                      ; load; *envptr11990
  %_957156 = call i64 @prim_car(i64 %rvp9050)                                        ; call prim_car
  %rvp9049 = call i64 @prim_cdr(i64 %rvp9050)                                        ; call prim_cdr
  %a6861 = call i64 @prim_car(i64 %rvp9049)                                          ; call prim_car
  %na9045 = call i64 @prim_cdr(i64 %rvp9049)                                         ; call prim_cdr
  %retprim7157 = call i64 @prim_cons(i64 %a6858, i64 %a6861)                         ; call prim_cons
  %arg8008 = add i64 0, 0                                                            ; quoted ()
  %rva9048 = add i64 0, 0                                                            ; quoted ()
  %rva9047 = call i64 @prim_cons(i64 %retprim7157, i64 %rva9048)                     ; call prim_cons
  %rva9046 = call i64 @prim_cons(i64 %arg8008, i64 %rva9047)                         ; call prim_cons
  %cloptr11991 = inttoptr i64 %cont7155 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11991)                                        ; assert function application
  %i0ptr11992 = getelementptr inbounds i64, i64* %cloptr11991, i64 0                 ; &cloptr11991[0]
  %f11994 = load i64, i64* %i0ptr11992, align 8                                      ; load; *i0ptr11992
  %fptr11993 = inttoptr i64 %f11994 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11993(i64 %cont7155, i64 %rva9046)                  ; tail call
  ret void
}


define void @lam9216(i64 %env9217, i64 %rvp9100) {
  %cont7158 = call i64 @prim_car(i64 %rvp9100)                                       ; call prim_car
  %rvp9099 = call i64 @prim_cdr(i64 %rvp9100)                                        ; call prim_cdr
  %kOQ$_37map = call i64 @prim_car(i64 %rvp9099)                                     ; call prim_car
  %na9069 = call i64 @prim_cdr(i64 %rvp9099)                                         ; call prim_cdr
  %arg8011 = add i64 0, 0                                                            ; quoted ()
  %cloptr11995 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11997 = getelementptr inbounds i64, i64* %cloptr11995, i64 1                  ; &eptr11997[1]
  store i64 %kOQ$_37map, i64* %eptr11997                                             ; *eptr11997 = %kOQ$_37map
  %eptr11996 = getelementptr inbounds i64, i64* %cloptr11995, i64 0                  ; &cloptr11995[0]
  %f11998 = ptrtoint void(i64,i64)* @lam9213 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f11998, i64* %eptr11996                                                 ; store fptr
  %arg8010 = ptrtoint i64* %cloptr11995 to i64                                       ; closure cast; i64* -> i64
  %rva9098 = add i64 0, 0                                                            ; quoted ()
  %rva9097 = call i64 @prim_cons(i64 %arg8010, i64 %rva9098)                         ; call prim_cons
  %rva9096 = call i64 @prim_cons(i64 %arg8011, i64 %rva9097)                         ; call prim_cons
  %cloptr11999 = inttoptr i64 %cont7158 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11999)                                        ; assert function application
  %i0ptr12000 = getelementptr inbounds i64, i64* %cloptr11999, i64 0                 ; &cloptr11999[0]
  %f12002 = load i64, i64* %i0ptr12000, align 8                                      ; load; *i0ptr12000
  %fptr12001 = inttoptr i64 %f12002 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12001(i64 %cont7158, i64 %rva9096)                  ; tail call
  ret void
}


define void @lam9213(i64 %env9214, i64 %rvp9095) {
  %envptr12003 = inttoptr i64 %env9214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12004 = getelementptr inbounds i64, i64* %envptr12003, i64 1                ; &envptr12003[1]
  %kOQ$_37map = load i64, i64* %envptr12004, align 8                                 ; load; *envptr12004
  %cont7159 = call i64 @prim_car(i64 %rvp9095)                                       ; call prim_car
  %rvp9094 = call i64 @prim_cdr(i64 %rvp9095)                                        ; call prim_cdr
  %GWN$f = call i64 @prim_car(i64 %rvp9094)                                          ; call prim_car
  %rvp9093 = call i64 @prim_cdr(i64 %rvp9094)                                        ; call prim_cdr
  %sbv$lst = call i64 @prim_car(i64 %rvp9093)                                        ; call prim_car
  %na9071 = call i64 @prim_cdr(i64 %rvp9093)                                         ; call prim_cdr
  %a6851 = call i64 @prim_null_63(i64 %sbv$lst)                                      ; call prim_null_63
  %cmp12005 = icmp eq i64 %a6851, 15                                                 ; false?
  br i1 %cmp12005, label %else12007, label %then12006                                ; if

then12006:
  %arg8015 = add i64 0, 0                                                            ; quoted ()
  %arg8014 = add i64 0, 0                                                            ; quoted ()
  %rva9074 = add i64 0, 0                                                            ; quoted ()
  %rva9073 = call i64 @prim_cons(i64 %arg8014, i64 %rva9074)                         ; call prim_cons
  %rva9072 = call i64 @prim_cons(i64 %arg8015, i64 %rva9073)                         ; call prim_cons
  %cloptr12008 = inttoptr i64 %cont7159 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12008)                                        ; assert function application
  %i0ptr12009 = getelementptr inbounds i64, i64* %cloptr12008, i64 0                 ; &cloptr12008[0]
  %f12011 = load i64, i64* %i0ptr12009, align 8                                      ; load; *i0ptr12009
  %fptr12010 = inttoptr i64 %f12011 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12010(i64 %cont7159, i64 %rva9072)                  ; tail call
  ret void

else12007:
  %a6852 = call i64 @prim_car(i64 %sbv$lst)                                          ; call prim_car
  %cloptr12012 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12014 = getelementptr inbounds i64, i64* %cloptr12012, i64 1                  ; &eptr12014[1]
  %eptr12015 = getelementptr inbounds i64, i64* %cloptr12012, i64 2                  ; &eptr12015[2]
  %eptr12016 = getelementptr inbounds i64, i64* %cloptr12012, i64 3                  ; &eptr12016[3]
  %eptr12017 = getelementptr inbounds i64, i64* %cloptr12012, i64 4                  ; &eptr12017[4]
  store i64 %kOQ$_37map, i64* %eptr12014                                             ; *eptr12014 = %kOQ$_37map
  store i64 %sbv$lst, i64* %eptr12015                                                ; *eptr12015 = %sbv$lst
  store i64 %GWN$f, i64* %eptr12016                                                  ; *eptr12016 = %GWN$f
  store i64 %cont7159, i64* %eptr12017                                               ; *eptr12017 = %cont7159
  %eptr12013 = getelementptr inbounds i64, i64* %cloptr12012, i64 0                  ; &cloptr12012[0]
  %f12018 = ptrtoint void(i64,i64)* @lam9211 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12018, i64* %eptr12013                                                 ; store fptr
  %arg8019 = ptrtoint i64* %cloptr12012 to i64                                       ; closure cast; i64* -> i64
  %rva9092 = add i64 0, 0                                                            ; quoted ()
  %rva9091 = call i64 @prim_cons(i64 %a6852, i64 %rva9092)                           ; call prim_cons
  %rva9090 = call i64 @prim_cons(i64 %arg8019, i64 %rva9091)                         ; call prim_cons
  %cloptr12019 = inttoptr i64 %GWN$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12019)                                        ; assert function application
  %i0ptr12020 = getelementptr inbounds i64, i64* %cloptr12019, i64 0                 ; &cloptr12019[0]
  %f12022 = load i64, i64* %i0ptr12020, align 8                                      ; load; *i0ptr12020
  %fptr12021 = inttoptr i64 %f12022 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12021(i64 %GWN$f, i64 %rva9090)                     ; tail call
  ret void
}


define void @lam9211(i64 %env9212, i64 %rvp9089) {
  %envptr12023 = inttoptr i64 %env9212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12024 = getelementptr inbounds i64, i64* %envptr12023, i64 4                ; &envptr12023[4]
  %cont7159 = load i64, i64* %envptr12024, align 8                                   ; load; *envptr12024
  %envptr12025 = inttoptr i64 %env9212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12026 = getelementptr inbounds i64, i64* %envptr12025, i64 3                ; &envptr12025[3]
  %GWN$f = load i64, i64* %envptr12026, align 8                                      ; load; *envptr12026
  %envptr12027 = inttoptr i64 %env9212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12028 = getelementptr inbounds i64, i64* %envptr12027, i64 2                ; &envptr12027[2]
  %sbv$lst = load i64, i64* %envptr12028, align 8                                    ; load; *envptr12028
  %envptr12029 = inttoptr i64 %env9212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12030 = getelementptr inbounds i64, i64* %envptr12029, i64 1                ; &envptr12029[1]
  %kOQ$_37map = load i64, i64* %envptr12030, align 8                                 ; load; *envptr12030
  %_957160 = call i64 @prim_car(i64 %rvp9089)                                        ; call prim_car
  %rvp9088 = call i64 @prim_cdr(i64 %rvp9089)                                        ; call prim_cdr
  %a6853 = call i64 @prim_car(i64 %rvp9088)                                          ; call prim_car
  %na9076 = call i64 @prim_cdr(i64 %rvp9088)                                         ; call prim_cdr
  %a6854 = call i64 @prim_cdr(i64 %sbv$lst)                                          ; call prim_cdr
  %cloptr12031 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12033 = getelementptr inbounds i64, i64* %cloptr12031, i64 1                  ; &eptr12033[1]
  %eptr12034 = getelementptr inbounds i64, i64* %cloptr12031, i64 2                  ; &eptr12034[2]
  store i64 %a6853, i64* %eptr12033                                                  ; *eptr12033 = %a6853
  store i64 %cont7159, i64* %eptr12034                                               ; *eptr12034 = %cont7159
  %eptr12032 = getelementptr inbounds i64, i64* %cloptr12031, i64 0                  ; &cloptr12031[0]
  %f12035 = ptrtoint void(i64,i64)* @lam9209 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12035, i64* %eptr12032                                                 ; store fptr
  %arg8024 = ptrtoint i64* %cloptr12031 to i64                                       ; closure cast; i64* -> i64
  %rva9087 = add i64 0, 0                                                            ; quoted ()
  %rva9086 = call i64 @prim_cons(i64 %a6854, i64 %rva9087)                           ; call prim_cons
  %rva9085 = call i64 @prim_cons(i64 %GWN$f, i64 %rva9086)                           ; call prim_cons
  %rva9084 = call i64 @prim_cons(i64 %arg8024, i64 %rva9085)                         ; call prim_cons
  %cloptr12036 = inttoptr i64 %kOQ$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12036)                                        ; assert function application
  %i0ptr12037 = getelementptr inbounds i64, i64* %cloptr12036, i64 0                 ; &cloptr12036[0]
  %f12039 = load i64, i64* %i0ptr12037, align 8                                      ; load; *i0ptr12037
  %fptr12038 = inttoptr i64 %f12039 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12038(i64 %kOQ$_37map, i64 %rva9084)                ; tail call
  ret void
}


define void @lam9209(i64 %env9210, i64 %rvp9083) {
  %envptr12040 = inttoptr i64 %env9210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12041 = getelementptr inbounds i64, i64* %envptr12040, i64 2                ; &envptr12040[2]
  %cont7159 = load i64, i64* %envptr12041, align 8                                   ; load; *envptr12041
  %envptr12042 = inttoptr i64 %env9210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12043 = getelementptr inbounds i64, i64* %envptr12042, i64 1                ; &envptr12042[1]
  %a6853 = load i64, i64* %envptr12043, align 8                                      ; load; *envptr12043
  %_957161 = call i64 @prim_car(i64 %rvp9083)                                        ; call prim_car
  %rvp9082 = call i64 @prim_cdr(i64 %rvp9083)                                        ; call prim_cdr
  %a6855 = call i64 @prim_car(i64 %rvp9082)                                          ; call prim_car
  %na9078 = call i64 @prim_cdr(i64 %rvp9082)                                         ; call prim_cdr
  %retprim7162 = call i64 @prim_cons(i64 %a6853, i64 %a6855)                         ; call prim_cons
  %arg8029 = add i64 0, 0                                                            ; quoted ()
  %rva9081 = add i64 0, 0                                                            ; quoted ()
  %rva9080 = call i64 @prim_cons(i64 %retprim7162, i64 %rva9081)                     ; call prim_cons
  %rva9079 = call i64 @prim_cons(i64 %arg8029, i64 %rva9080)                         ; call prim_cons
  %cloptr12044 = inttoptr i64 %cont7159 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12044)                                        ; assert function application
  %i0ptr12045 = getelementptr inbounds i64, i64* %cloptr12044, i64 0                 ; &cloptr12044[0]
  %f12047 = load i64, i64* %i0ptr12045, align 8                                      ; load; *i0ptr12045
  %fptr12046 = inttoptr i64 %f12047 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12046(i64 %cont7159, i64 %rva9079)                  ; tail call
  ret void
}


define void @lam9198(i64 %env9199, i64 %rvp9134) {
  %cont7163 = call i64 @prim_car(i64 %rvp9134)                                       ; call prim_car
  %rvp9133 = call i64 @prim_cdr(i64 %rvp9134)                                        ; call prim_cdr
  %qiw$_37foldr1 = call i64 @prim_car(i64 %rvp9133)                                  ; call prim_car
  %na9107 = call i64 @prim_cdr(i64 %rvp9133)                                         ; call prim_cdr
  %arg8032 = add i64 0, 0                                                            ; quoted ()
  %cloptr12048 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr12050 = getelementptr inbounds i64, i64* %cloptr12048, i64 1                  ; &eptr12050[1]
  store i64 %qiw$_37foldr1, i64* %eptr12050                                          ; *eptr12050 = %qiw$_37foldr1
  %eptr12049 = getelementptr inbounds i64, i64* %cloptr12048, i64 0                  ; &cloptr12048[0]
  %f12051 = ptrtoint void(i64,i64)* @lam9195 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12051, i64* %eptr12049                                                 ; store fptr
  %arg8031 = ptrtoint i64* %cloptr12048 to i64                                       ; closure cast; i64* -> i64
  %rva9132 = add i64 0, 0                                                            ; quoted ()
  %rva9131 = call i64 @prim_cons(i64 %arg8031, i64 %rva9132)                         ; call prim_cons
  %rva9130 = call i64 @prim_cons(i64 %arg8032, i64 %rva9131)                         ; call prim_cons
  %cloptr12052 = inttoptr i64 %cont7163 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12052)                                        ; assert function application
  %i0ptr12053 = getelementptr inbounds i64, i64* %cloptr12052, i64 0                 ; &cloptr12052[0]
  %f12055 = load i64, i64* %i0ptr12053, align 8                                      ; load; *i0ptr12053
  %fptr12054 = inttoptr i64 %f12055 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12054(i64 %cont7163, i64 %rva9130)                  ; tail call
  ret void
}


define void @lam9195(i64 %env9196, i64 %rvp9129) {
  %envptr12056 = inttoptr i64 %env9196 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12057 = getelementptr inbounds i64, i64* %envptr12056, i64 1                ; &envptr12056[1]
  %qiw$_37foldr1 = load i64, i64* %envptr12057, align 8                              ; load; *envptr12057
  %cont7164 = call i64 @prim_car(i64 %rvp9129)                                       ; call prim_car
  %rvp9128 = call i64 @prim_cdr(i64 %rvp9129)                                        ; call prim_cdr
  %bId$f = call i64 @prim_car(i64 %rvp9128)                                          ; call prim_car
  %rvp9127 = call i64 @prim_cdr(i64 %rvp9128)                                        ; call prim_cdr
  %IkI$acc = call i64 @prim_car(i64 %rvp9127)                                        ; call prim_car
  %rvp9126 = call i64 @prim_cdr(i64 %rvp9127)                                        ; call prim_cdr
  %I6n$lst = call i64 @prim_car(i64 %rvp9126)                                        ; call prim_car
  %na9109 = call i64 @prim_cdr(i64 %rvp9126)                                         ; call prim_cdr
  %a6847 = call i64 @prim_null_63(i64 %I6n$lst)                                      ; call prim_null_63
  %cmp12058 = icmp eq i64 %a6847, 15                                                 ; false?
  br i1 %cmp12058, label %else12060, label %then12059                                ; if

then12059:
  %arg8036 = add i64 0, 0                                                            ; quoted ()
  %rva9112 = add i64 0, 0                                                            ; quoted ()
  %rva9111 = call i64 @prim_cons(i64 %IkI$acc, i64 %rva9112)                         ; call prim_cons
  %rva9110 = call i64 @prim_cons(i64 %arg8036, i64 %rva9111)                         ; call prim_cons
  %cloptr12061 = inttoptr i64 %cont7164 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12061)                                        ; assert function application
  %i0ptr12062 = getelementptr inbounds i64, i64* %cloptr12061, i64 0                 ; &cloptr12061[0]
  %f12064 = load i64, i64* %i0ptr12062, align 8                                      ; load; *i0ptr12062
  %fptr12063 = inttoptr i64 %f12064 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12063(i64 %cont7164, i64 %rva9110)                  ; tail call
  ret void

else12060:
  %a6848 = call i64 @prim_car(i64 %I6n$lst)                                          ; call prim_car
  %a6849 = call i64 @prim_cdr(i64 %I6n$lst)                                          ; call prim_cdr
  %cloptr12065 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12067 = getelementptr inbounds i64, i64* %cloptr12065, i64 1                  ; &eptr12067[1]
  %eptr12068 = getelementptr inbounds i64, i64* %cloptr12065, i64 2                  ; &eptr12068[2]
  %eptr12069 = getelementptr inbounds i64, i64* %cloptr12065, i64 3                  ; &eptr12069[3]
  store i64 %bId$f, i64* %eptr12067                                                  ; *eptr12067 = %bId$f
  store i64 %cont7164, i64* %eptr12068                                               ; *eptr12068 = %cont7164
  store i64 %a6848, i64* %eptr12069                                                  ; *eptr12069 = %a6848
  %eptr12066 = getelementptr inbounds i64, i64* %cloptr12065, i64 0                  ; &cloptr12065[0]
  %f12070 = ptrtoint void(i64,i64)* @lam9193 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12070, i64* %eptr12066                                                 ; store fptr
  %arg8043 = ptrtoint i64* %cloptr12065 to i64                                       ; closure cast; i64* -> i64
  %rva9125 = add i64 0, 0                                                            ; quoted ()
  %rva9124 = call i64 @prim_cons(i64 %a6849, i64 %rva9125)                           ; call prim_cons
  %rva9123 = call i64 @prim_cons(i64 %IkI$acc, i64 %rva9124)                         ; call prim_cons
  %rva9122 = call i64 @prim_cons(i64 %bId$f, i64 %rva9123)                           ; call prim_cons
  %rva9121 = call i64 @prim_cons(i64 %arg8043, i64 %rva9122)                         ; call prim_cons
  %cloptr12071 = inttoptr i64 %qiw$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12071)                                        ; assert function application
  %i0ptr12072 = getelementptr inbounds i64, i64* %cloptr12071, i64 0                 ; &cloptr12071[0]
  %f12074 = load i64, i64* %i0ptr12072, align 8                                      ; load; *i0ptr12072
  %fptr12073 = inttoptr i64 %f12074 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12073(i64 %qiw$_37foldr1, i64 %rva9121)             ; tail call
  ret void
}


define void @lam9193(i64 %env9194, i64 %rvp9120) {
  %envptr12075 = inttoptr i64 %env9194 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12076 = getelementptr inbounds i64, i64* %envptr12075, i64 3                ; &envptr12075[3]
  %a6848 = load i64, i64* %envptr12076, align 8                                      ; load; *envptr12076
  %envptr12077 = inttoptr i64 %env9194 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12078 = getelementptr inbounds i64, i64* %envptr12077, i64 2                ; &envptr12077[2]
  %cont7164 = load i64, i64* %envptr12078, align 8                                   ; load; *envptr12078
  %envptr12079 = inttoptr i64 %env9194 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12080 = getelementptr inbounds i64, i64* %envptr12079, i64 1                ; &envptr12079[1]
  %bId$f = load i64, i64* %envptr12080, align 8                                      ; load; *envptr12080
  %_957165 = call i64 @prim_car(i64 %rvp9120)                                        ; call prim_car
  %rvp9119 = call i64 @prim_cdr(i64 %rvp9120)                                        ; call prim_cdr
  %a6850 = call i64 @prim_car(i64 %rvp9119)                                          ; call prim_car
  %na9114 = call i64 @prim_cdr(i64 %rvp9119)                                         ; call prim_cdr
  %rva9118 = add i64 0, 0                                                            ; quoted ()
  %rva9117 = call i64 @prim_cons(i64 %a6850, i64 %rva9118)                           ; call prim_cons
  %rva9116 = call i64 @prim_cons(i64 %a6848, i64 %rva9117)                           ; call prim_cons
  %rva9115 = call i64 @prim_cons(i64 %cont7164, i64 %rva9116)                        ; call prim_cons
  %cloptr12081 = inttoptr i64 %bId$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12081)                                        ; assert function application
  %i0ptr12082 = getelementptr inbounds i64, i64* %cloptr12081, i64 0                 ; &cloptr12081[0]
  %f12084 = load i64, i64* %i0ptr12082, align 8                                      ; load; *i0ptr12082
  %fptr12083 = inttoptr i64 %f12084 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12083(i64 %bId$f, i64 %rva9115)                     ; tail call
  ret void
}


define void @lam9185(i64 %env9186, i64 %rvp9167) {
  %cont7167 = call i64 @prim_car(i64 %rvp9167)                                       ; call prim_car
  %rvp9166 = call i64 @prim_cdr(i64 %rvp9167)                                        ; call prim_cdr
  %Ttd$y = call i64 @prim_car(i64 %rvp9166)                                          ; call prim_car
  %na9141 = call i64 @prim_cdr(i64 %rvp9166)                                         ; call prim_cdr
  %arg8050 = add i64 0, 0                                                            ; quoted ()
  %cloptr12085 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr12087 = getelementptr inbounds i64, i64* %cloptr12085, i64 1                  ; &eptr12087[1]
  store i64 %Ttd$y, i64* %eptr12087                                                  ; *eptr12087 = %Ttd$y
  %eptr12086 = getelementptr inbounds i64, i64* %cloptr12085, i64 0                  ; &cloptr12085[0]
  %f12088 = ptrtoint void(i64,i64)* @lam9182 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12088, i64* %eptr12086                                                 ; store fptr
  %arg8049 = ptrtoint i64* %cloptr12085 to i64                                       ; closure cast; i64* -> i64
  %rva9165 = add i64 0, 0                                                            ; quoted ()
  %rva9164 = call i64 @prim_cons(i64 %arg8049, i64 %rva9165)                         ; call prim_cons
  %rva9163 = call i64 @prim_cons(i64 %arg8050, i64 %rva9164)                         ; call prim_cons
  %cloptr12089 = inttoptr i64 %cont7167 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12089)                                        ; assert function application
  %i0ptr12090 = getelementptr inbounds i64, i64* %cloptr12089, i64 0                 ; &cloptr12089[0]
  %f12092 = load i64, i64* %i0ptr12090, align 8                                      ; load; *i0ptr12090
  %fptr12091 = inttoptr i64 %f12092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12091(i64 %cont7167, i64 %rva9163)                  ; tail call
  ret void
}


define void @lam9182(i64 %env9183, i64 %rvp9162) {
  %envptr12093 = inttoptr i64 %env9183 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12094 = getelementptr inbounds i64, i64* %envptr12093, i64 1                ; &envptr12093[1]
  %Ttd$y = load i64, i64* %envptr12094, align 8                                      ; load; *envptr12094
  %cont7168 = call i64 @prim_car(i64 %rvp9162)                                       ; call prim_car
  %rvp9161 = call i64 @prim_cdr(i64 %rvp9162)                                        ; call prim_cdr
  %K8m$f = call i64 @prim_car(i64 %rvp9161)                                          ; call prim_car
  %na9143 = call i64 @prim_cdr(i64 %rvp9161)                                         ; call prim_cdr
  %cloptr12095 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12097 = getelementptr inbounds i64, i64* %cloptr12095, i64 1                  ; &eptr12097[1]
  %eptr12098 = getelementptr inbounds i64, i64* %cloptr12095, i64 2                  ; &eptr12098[2]
  store i64 %K8m$f, i64* %eptr12097                                                  ; *eptr12097 = %K8m$f
  store i64 %Ttd$y, i64* %eptr12098                                                  ; *eptr12098 = %Ttd$y
  %eptr12096 = getelementptr inbounds i64, i64* %cloptr12095, i64 0                  ; &cloptr12095[0]
  %f12099 = ptrtoint void(i64,i64)* @lam9180 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12099, i64* %eptr12096                                                 ; store fptr
  %arg8052 = ptrtoint i64* %cloptr12095 to i64                                       ; closure cast; i64* -> i64
  %rva9160 = add i64 0, 0                                                            ; quoted ()
  %rva9159 = call i64 @prim_cons(i64 %arg8052, i64 %rva9160)                         ; call prim_cons
  %rva9158 = call i64 @prim_cons(i64 %cont7168, i64 %rva9159)                        ; call prim_cons
  %cloptr12100 = inttoptr i64 %K8m$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12100)                                        ; assert function application
  %i0ptr12101 = getelementptr inbounds i64, i64* %cloptr12100, i64 0                 ; &cloptr12100[0]
  %f12103 = load i64, i64* %i0ptr12101, align 8                                      ; load; *i0ptr12101
  %fptr12102 = inttoptr i64 %f12103 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12102(i64 %K8m$f, i64 %rva9158)                     ; tail call
  ret void
}


define void @lam9180(i64 %env9181, i64 %VtE$args7170) {
  %envptr12104 = inttoptr i64 %env9181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12105 = getelementptr inbounds i64, i64* %envptr12104, i64 2                ; &envptr12104[2]
  %Ttd$y = load i64, i64* %envptr12105, align 8                                      ; load; *envptr12105
  %envptr12106 = inttoptr i64 %env9181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12107 = getelementptr inbounds i64, i64* %envptr12106, i64 1                ; &envptr12106[1]
  %K8m$f = load i64, i64* %envptr12107, align 8                                      ; load; *envptr12107
  %cont7169 = call i64 @prim_car(i64 %VtE$args7170)                                  ; call prim_car
  %VtE$args = call i64 @prim_cdr(i64 %VtE$args7170)                                  ; call prim_cdr
  %cloptr12108 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12110 = getelementptr inbounds i64, i64* %cloptr12108, i64 1                  ; &eptr12110[1]
  %eptr12111 = getelementptr inbounds i64, i64* %cloptr12108, i64 2                  ; &eptr12111[2]
  %eptr12112 = getelementptr inbounds i64, i64* %cloptr12108, i64 3                  ; &eptr12112[3]
  store i64 %K8m$f, i64* %eptr12110                                                  ; *eptr12110 = %K8m$f
  store i64 %VtE$args, i64* %eptr12111                                               ; *eptr12111 = %VtE$args
  store i64 %cont7169, i64* %eptr12112                                               ; *eptr12112 = %cont7169
  %eptr12109 = getelementptr inbounds i64, i64* %cloptr12108, i64 0                  ; &cloptr12108[0]
  %f12113 = ptrtoint void(i64,i64)* @lam9178 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12113, i64* %eptr12109                                                 ; store fptr
  %arg8058 = ptrtoint i64* %cloptr12108 to i64                                       ; closure cast; i64* -> i64
  %rva9157 = add i64 0, 0                                                            ; quoted ()
  %rva9156 = call i64 @prim_cons(i64 %Ttd$y, i64 %rva9157)                           ; call prim_cons
  %rva9155 = call i64 @prim_cons(i64 %arg8058, i64 %rva9156)                         ; call prim_cons
  %cloptr12114 = inttoptr i64 %Ttd$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12114)                                        ; assert function application
  %i0ptr12115 = getelementptr inbounds i64, i64* %cloptr12114, i64 0                 ; &cloptr12114[0]
  %f12117 = load i64, i64* %i0ptr12115, align 8                                      ; load; *i0ptr12115
  %fptr12116 = inttoptr i64 %f12117 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12116(i64 %Ttd$y, i64 %rva9155)                     ; tail call
  ret void
}


define void @lam9178(i64 %env9179, i64 %rvp9154) {
  %envptr12118 = inttoptr i64 %env9179 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12119 = getelementptr inbounds i64, i64* %envptr12118, i64 3                ; &envptr12118[3]
  %cont7169 = load i64, i64* %envptr12119, align 8                                   ; load; *envptr12119
  %envptr12120 = inttoptr i64 %env9179 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12121 = getelementptr inbounds i64, i64* %envptr12120, i64 2                ; &envptr12120[2]
  %VtE$args = load i64, i64* %envptr12121, align 8                                   ; load; *envptr12121
  %envptr12122 = inttoptr i64 %env9179 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12123 = getelementptr inbounds i64, i64* %envptr12122, i64 1                ; &envptr12122[1]
  %K8m$f = load i64, i64* %envptr12123, align 8                                      ; load; *envptr12123
  %_957171 = call i64 @prim_car(i64 %rvp9154)                                        ; call prim_car
  %rvp9153 = call i64 @prim_cdr(i64 %rvp9154)                                        ; call prim_cdr
  %a6845 = call i64 @prim_car(i64 %rvp9153)                                          ; call prim_car
  %na9145 = call i64 @prim_cdr(i64 %rvp9153)                                         ; call prim_cdr
  %cloptr12124 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12126 = getelementptr inbounds i64, i64* %cloptr12124, i64 1                  ; &eptr12126[1]
  %eptr12127 = getelementptr inbounds i64, i64* %cloptr12124, i64 2                  ; &eptr12127[2]
  store i64 %VtE$args, i64* %eptr12126                                               ; *eptr12126 = %VtE$args
  store i64 %cont7169, i64* %eptr12127                                               ; *eptr12127 = %cont7169
  %eptr12125 = getelementptr inbounds i64, i64* %cloptr12124, i64 0                  ; &cloptr12124[0]
  %f12128 = ptrtoint void(i64,i64)* @lam9176 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f12128, i64* %eptr12125                                                 ; store fptr
  %arg8061 = ptrtoint i64* %cloptr12124 to i64                                       ; closure cast; i64* -> i64
  %rva9152 = add i64 0, 0                                                            ; quoted ()
  %rva9151 = call i64 @prim_cons(i64 %K8m$f, i64 %rva9152)                           ; call prim_cons
  %rva9150 = call i64 @prim_cons(i64 %arg8061, i64 %rva9151)                         ; call prim_cons
  %cloptr12129 = inttoptr i64 %a6845 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12129)                                        ; assert function application
  %i0ptr12130 = getelementptr inbounds i64, i64* %cloptr12129, i64 0                 ; &cloptr12129[0]
  %f12132 = load i64, i64* %i0ptr12130, align 8                                      ; load; *i0ptr12130
  %fptr12131 = inttoptr i64 %f12132 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12131(i64 %a6845, i64 %rva9150)                     ; tail call
  ret void
}


define void @lam9176(i64 %env9177, i64 %rvp9149) {
  %envptr12133 = inttoptr i64 %env9177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12134 = getelementptr inbounds i64, i64* %envptr12133, i64 2                ; &envptr12133[2]
  %cont7169 = load i64, i64* %envptr12134, align 8                                   ; load; *envptr12134
  %envptr12135 = inttoptr i64 %env9177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr12136 = getelementptr inbounds i64, i64* %envptr12135, i64 1                ; &envptr12135[1]
  %VtE$args = load i64, i64* %envptr12136, align 8                                   ; load; *envptr12136
  %_957172 = call i64 @prim_car(i64 %rvp9149)                                        ; call prim_car
  %rvp9148 = call i64 @prim_cdr(i64 %rvp9149)                                        ; call prim_cdr
  %a6846 = call i64 @prim_car(i64 %rvp9148)                                          ; call prim_car
  %na9147 = call i64 @prim_cdr(i64 %rvp9148)                                         ; call prim_cdr
  %cps_45lst7173 = call i64 @prim_cons(i64 %cont7169, i64 %VtE$args)                 ; call prim_cons
  %cloptr12137 = inttoptr i64 %a6846 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12137)                                        ; assert function application
  %i0ptr12138 = getelementptr inbounds i64, i64* %cloptr12137, i64 0                 ; &cloptr12137[0]
  %f12140 = load i64, i64* %i0ptr12138, align 8                                      ; load; *i0ptr12138
  %fptr12139 = inttoptr i64 %f12140 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12139(i64 %a6846, i64 %cps_45lst7173)               ; tail call
  ret void
}





@sym10635 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
