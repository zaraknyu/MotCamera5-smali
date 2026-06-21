.class public abstract Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final annotationsAttribute$delegate:Lcom/google/android/gms/dynamite/zzo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    const/4 v2, 0x1

    const-class v3, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;

    const-string v4, "annotationsAttribute"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/dynamite/zzo;

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->annotationsAttribute$delegate:Lcom/google/android/gms/dynamite/zzo;

    return-void
.end method

.method public static final getAnnotations(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->annotationsAttribute$delegate:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "property"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    iget v0, v1, Lcom/google/android/gms/dynamite/zzo;->zza:I

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0
.end method
