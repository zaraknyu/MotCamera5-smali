.class public final Lkotlinx/serialization/json/JsonConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final classDiscriminator:Ljava/lang/Object;

.field public final classDiscriminatorMode:Ljava/lang/Object;

.field public final explicitNulls:Z

.field public final prettyPrintIndent:Ljava/lang/Object;

.field public final useAlternativeNames:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->$r8$classId:I

    .line 7
    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 10
    const-string v2, "    "

    iput-object v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    .line 11
    const-string/jumbo v2, "type"

    iput-object v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    .line 12
    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 13
    iput-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/decoder/Buffer;ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->$r8$classId:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    .line 17
    iput-object p3, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    .line 18
    iput-boolean p4, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 19
    iput-boolean p5, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->$r8$classId:I

    const-string v0, "containerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    .line 6
    iput-boolean p5, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    return-void
.end method

.method public static flattenTree(Ljava/lang/Object;Ljava/util/ArrayList;Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkotlinx/serialization/json/JsonConfiguration;->flattenTree(Ljava/lang/Object;Ljava/util/ArrayList;Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v1, "getUpperBounds(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v1, p0

    goto :goto_2

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_4

    :cond_c
    :goto_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    :goto_4
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    if-eq v1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_5

    :cond_d
    const/4 p0, 0x0

    :goto_5
    invoke-direct {v2, v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    return-object v2

    :cond_e
    :goto_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->lowerBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    return-object p0

    :cond_2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->upperBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v2, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    const-string v3, "<this>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    new-instance p1, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v1, 0x10

    invoke-direct {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, p0, p1}, Lkotlinx/serialization/json/JsonConfiguration;->flattenTree(Ljava/lang/Object;Ljava/util/ArrayList;Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=false, isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrintIndent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', coerceInputValues=false, useArrayPolymorphism=false, classDiscriminator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', allowSpecialFloatingPointValues=false, useAlternativeNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
