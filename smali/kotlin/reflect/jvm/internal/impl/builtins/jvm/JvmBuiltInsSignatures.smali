.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEPRECATED_LIST_METHODS:Ljava/util/LinkedHashSet;

.field public static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final HIDDEN_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final MUTABLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final VISIBLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 55

    const-string/jumbo v0, "toArray()[Ljava/lang/Object;"

    const-string/jumbo v1, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collection"

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    filled-new-array {v0, v2}, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xf

    const-string v6, "asString(...)"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v7, :cond_0

    iget-object v4, v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Value()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    throw v4

    :cond_1
    const-string/jumbo v0, "sort(Ljava/util/Comparator;)V"

    const-string/jumbo v3, "reversed()Ljava/util/List;"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "List"

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v53, "lines()Ljava/util/stream/Stream;"

    const-string/jumbo v54, "repeat(I)Ljava/lang/String;"

    const-string v7, "codePointAt(I)I"

    const-string v8, "codePointBefore(I)I"

    const-string v9, "codePointCount(II)I"

    const-string v10, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v11, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v12, "contains(Ljava/lang/CharSequence;)Z"

    const-string v13, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v14, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v15, "endsWith(Ljava/lang/String;)Z"

    const-string v16, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v17, "getBytes()[B"

    const-string v18, "getBytes(II[BI)V"

    const-string v19, "getBytes(Ljava/lang/String;)[B"

    const-string v20, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v21, "getChars(II[CI)V"

    const-string v22, "indexOf(I)I"

    const-string v23, "indexOf(II)I"

    const-string v24, "indexOf(Ljava/lang/String;)I"

    const-string v25, "indexOf(Ljava/lang/String;I)I"

    const-string v26, "intern()Ljava/lang/String;"

    const-string v27, "isEmpty()Z"

    const-string v28, "lastIndexOf(I)I"

    const-string v29, "lastIndexOf(II)I"

    const-string v30, "lastIndexOf(Ljava/lang/String;)I"

    const-string v31, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v32, "matches(Ljava/lang/String;)Z"

    const-string v33, "offsetByCodePoints(II)I"

    const-string/jumbo v34, "regionMatches(ILjava/lang/String;II)Z"

    const-string/jumbo v35, "regionMatches(ZILjava/lang/String;II)Z"

    const-string/jumbo v36, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string/jumbo v37, "replace(CC)Ljava/lang/String;"

    const-string/jumbo v38, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string/jumbo v39, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string/jumbo v40, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string/jumbo v41, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string/jumbo v42, "startsWith(Ljava/lang/String;I)Z"

    const-string/jumbo v43, "startsWith(Ljava/lang/String;)Z"

    const-string/jumbo v44, "substring(II)Ljava/lang/String;"

    const-string/jumbo v45, "substring(I)Ljava/lang/String;"

    const-string/jumbo v46, "toCharArray()[C"

    const-string/jumbo v47, "toLowerCase()Ljava/lang/String;"

    const-string/jumbo v48, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string/jumbo v49, "toUpperCase()Ljava/lang/String;"

    const-string/jumbo v50, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string/jumbo v51, "trim()Ljava/lang/String;"

    const-string v52, "isBlank()Z"

    filled-new-array/range {v7 .. v54}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, "String"

    invoke-static {v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "Double"

    const-string v8, "isInfinite()Z"

    const-string v9, "isNaN()Z"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v8, "Float"

    invoke-static {v8, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "getDeclaringClass()Ljava/lang/Class;"

    const-string v9, "finalize()V"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "Enum"

    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "isEmpty()Z"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "CharSequence"

    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    const-string v0, "getFirst()Ljava/lang/Object;"

    const-string v2, "getLast()Ljava/lang/Object;"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/LinkedHashSet;

    const-string v0, "codePoints()Ljava/util/stream/IntStream;"

    const-string v2, "chars()Ljava/util/stream/IntStream;"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "forEachRemaining(Ljava/util/function/Consumer;)V"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "Iterator"

    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v2, "forEach(Ljava/util/function/Consumer;)V"

    const-string/jumbo v9, "spliterator()Ljava/util/Spliterator;"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v10, "Iterable"

    invoke-static {v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v18, "getSuppressed()[Ljava/lang/Throwable;"

    const-string v19, "addSuppressed(Ljava/lang/Throwable;)V"

    const-string/jumbo v10, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v11, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v12, "getLocalizedMessage()Ljava/lang/String;"

    const-string/jumbo v13, "printStackTrace()V"

    const-string/jumbo v14, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string/jumbo v15, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v16, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v17, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    move-result-object v2

    const-string v10, "Throwable"

    invoke-static {v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string/jumbo v2, "parallelStream()Ljava/util/stream/Stream;"

    const-string/jumbo v11, "stream()Ljava/util/stream/Stream;"

    const-string/jumbo v12, "removeIf(Ljava/util/function/Predicate;)Z"

    filled-new-array {v9, v2, v11, v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string/jumbo v2, "removeFirst()Ljava/lang/Object;"

    const-string/jumbo v9, "removeLast()Ljava/lang/Object;"

    const-string/jumbo v11, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    const-string v13, "addFirst(Ljava/lang/Object;)V"

    const-string v14, "addLast(Ljava/lang/Object;)V"

    filled-new-array {v11, v13, v14, v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v21, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v22, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v13, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v14, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string/jumbo v15, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v16, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string/jumbo v18, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string/jumbo v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string/jumbo v20, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    filled-new-array/range {v13 .. v22}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "Map"

    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string/jumbo v15, "removeFirst()Ljava/lang/Object;"

    const-string/jumbo v16, "removeLast()Ljava/lang/Object;"

    const-string/jumbo v11, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    const-string/jumbo v12, "sort(Ljava/util/Comparator;)V"

    const-string v13, "addFirst(Ljava/lang/Object;)V"

    const-string v14, "addLast(Ljava/lang/Object;)V"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string/jumbo v18, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string/jumbo v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v11, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v13, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v14, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string/jumbo v15, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string/jumbo v16, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string/jumbo v17, "replaceAll(Ljava/util/function/BiFunction;)V"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-object v15, v12

    filled-new-array/range {v11 .. v18}, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Ljava/lang/String;"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    throw v4

    :cond_3
    const-string v0, "D"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v20, "Ljava/lang/StringBuffer;"

    const-string v21, "Ljava/lang/StringBuilder;"

    const-string v11, "[C"

    const-string v12, "[CII"

    const-string v13, "[III"

    const-string v14, "[BIILjava/lang/String;"

    const-string v15, "[BIILjava/nio/charset/Charset;"

    const-string v16, "[BLjava/lang/String;"

    const-string v17, "[BLjava/nio/charset/Charset;"

    const-string v18, "[BII"

    const-string v19, "[B"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

    const-string v0, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

    return-void
.end method
