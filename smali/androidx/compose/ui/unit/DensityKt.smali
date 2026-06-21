.class public abstract Landroidx/compose/ui/unit/DensityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Density$default()Landroidx/compose/ui/unit/DensityImpl;
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    return-object v0
.end method

.method public static final findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->serialName2Serializer:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->getSerializersModule()Lcom/google/mlkit/common/internal/zzc;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "baseClass"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(ILjava/lang/Object;)Z

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {p2, v0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwSubtypeNotRegistered(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    throw v1
.end method

.method public static final findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer;->baseClass:Lkotlin/reflect/KClass;

    const-string/jumbo v1, "value"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->class2Serializer:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    const-string v1, "baseClass"

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, p2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 11
    invoke-static {p0, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(ILjava/lang/Object;)Z

    :goto_0
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    if-nez p0, :cond_4

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 13
    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1, v0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwSubtypeNotRegistered(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    throw v3

    :cond_4
    return-object p0
.end method
