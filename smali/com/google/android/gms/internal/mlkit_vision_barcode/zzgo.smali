.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final boxTypeIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "possiblyPrimitiveType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;->jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    if-eqz p1, :cond_1

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->byFqNameWithoutInnerClasses(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->getInternalName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getInternalName(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static final indexSegment(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method
