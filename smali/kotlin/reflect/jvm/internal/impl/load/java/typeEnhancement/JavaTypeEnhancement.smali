.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v2, :cond_2

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v5

    :goto_2
    const/4 v8, 0x0

    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v0, v8, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v0, v8, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    if-eq v1, v3, :cond_8

    instance-of v10, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v10, v11, :cond_7

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne v1, v10, :cond_7

    move-object v10, v6

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v6, :cond_6

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v10

    invoke-virtual {v10, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a mutable collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v10, v11, :cond_8

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne v1, v10, :cond_8

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    goto :goto_4

    :cond_8
    :goto_3
    move-object v6, v8

    :goto_4
    if-eq v1, v3, :cond_c

    iget-object v1, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-nez v1, :cond_9

    const/4 v1, -0x1

    goto :goto_5

    :cond_9
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_5
    if-eq v1, v5, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a

    goto :goto_6

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_c
    :goto_6
    move-object v1, v8

    :goto_7
    if-eqz v6, :cond_d

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    if-nez v3, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    :cond_e
    add-int/lit8 v10, p2, 0x1

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v11

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    const-string v13, "getParameters(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v11, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v12, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    const/16 v5, 0xc

    if-nez v7, :cond_f

    move-object/from16 p4, v1

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v1, v4, v5, v8}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    goto :goto_9

    :cond_f
    move-object/from16 p4, v1

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-static {v1, v0, v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;IZ)Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    goto :goto_9

    :cond_10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v1, v8, :cond_11

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    new-instance v8, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    const/16 v5, 0xc

    invoke-direct {v8, v4, v5, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    move-object v1, v8

    goto :goto_9

    :cond_11
    const/4 v4, 0x1

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v8, 0x0

    invoke-direct {v1, v4, v5, v8}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    :goto_9
    iget v4, v1, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v10, v4

    iget-object v1, v1, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v4, "getProjectionKind(...)"

    if-eqz v1, :cond_12

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v8

    goto :goto_a

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v5, "getType(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v8

    goto :goto_a

    :cond_13
    if-eqz v6, :cond_14

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v8

    goto :goto_a

    :cond_14
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p4

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_15
    move-object/from16 p4, v1

    sub-int v10, v10, p2

    if-nez v6, :cond_17

    if-nez p4, :cond_17

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    const/4 v8, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v8, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    if-eqz v6, :cond_19

    goto :goto_e

    :cond_19
    move-object v2, v8

    :goto_e
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    if-eqz p4, :cond_1a

    move-object v8, v4

    :cond_1a
    filled-new-array {v0, v2, v8}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1b

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;I)V

    goto :goto_f

    :cond_1b
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    :goto_f
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v15, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    if-nez v2, :cond_1c

    goto :goto_11

    :cond_1c
    move-object v8, v2

    :goto_11
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    if-eqz p4, :cond_1e

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_12

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v2

    :goto_12
    invoke-static {v7, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    iget-boolean v2, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-eqz v2, :cond_1f

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    move-object v0, v2

    :cond_1f
    if-eqz p4, :cond_20

    iget-boolean v2, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    if-eqz v2, :cond_20

    goto :goto_13

    :cond_20
    move v4, v1

    :goto_13
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v1, v0, v4, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    return-object v1

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one Annotations object expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;IZ)Landroidx/media3/extractor/mkv/Sniffer;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v1, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    return-object v0

    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v1, :cond_b

    instance-of v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    iget-object v10, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    move-result-object v11

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    move-result-object v1

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    iget-object v4, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    goto :goto_6

    :cond_1
    iget-boolean v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-nez v2, :cond_8

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v7, :cond_5

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v4

    :goto_0
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v3

    :goto_1
    invoke-direct {v2, v10, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    goto :goto_6

    :cond_5
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v10, v4

    :goto_2
    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move-object v9, v3

    :goto_3
    invoke-static {v10, v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    if-nez v4, :cond_9

    move-object v4, v3

    :cond_9
    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    goto :goto_5

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    :goto_6
    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    return-object v0

    :cond_b
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v1, :cond_d

    move-object v12, v0

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    const/16 v16, 0x0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v17, p3

    invoke-static/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz v4, :cond_c

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    :cond_c
    iget v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    const/16 v1, 0xc

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    return-object v3

    :cond_d
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 6

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V

    .line 3
    invoke-interface {p8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    const-string p3, "getOverriddenDescriptors(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 8
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p4, p6

    move p5, p7

    move-object p1, v0

    .line 9
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlinx/serialization/json/JsonConfiguration;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public enhance(Lkotlinx/serialization/json/JsonConfiguration;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 10
    iget-object v2, v0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;

    iget-object v3, v0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 11
    iget-boolean v4, v0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p2}, Lkotlinx/serialization/json/JsonConfiguration;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    move-result-object v5

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    move-object/from16 v8, p3

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 15
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 16
    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonConfiguration;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    move-result-object v9

    .line 17
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_3

    .line 18
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 20
    const-string v10, "other"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v10, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 22
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 23
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    invoke-virtual {v10, v1, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 25
    :goto_2
    new-array v9, v8, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_51

    .line 26
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 27
    iget-object v13, v0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 28
    iget-object v14, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    iget-object v15, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->typeParameterForArgument:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 29
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    if-nez v14, :cond_5

    if-eqz v15, :cond_4

    .line 30
    invoke-interface {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    const-string v1, "getVariance(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Landroidx/compose/ui/res/ColorResources_androidKt;->convertVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 31
    :goto_4
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->IN:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v1, v7, :cond_5

    .line 32
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v22, v8

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_27

    :cond_5
    if-nez v15, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 33
    :goto_5
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v14, :cond_7

    .line 34
    move-object/from16 v16, v14

    check-cast v16, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v16

    move-object/from16 v24, v16

    move/from16 v16, v1

    move-object/from16 v1, v24

    goto :goto_6

    :cond_7
    move/from16 v16, v1

    move-object v1, v7

    :goto_6
    if-eqz v14, :cond_8

    .line 35
    invoke-virtual {v10, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 36
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->getTypeParameterClassifier(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v14

    :goto_7
    move/from16 v17, v4

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .line 37
    :goto_8
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-ne v13, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    if-nez v16, :cond_a

    move/from16 v18, v4

    goto :goto_a

    :cond_a
    move/from16 v18, v4

    if-nez v4, :cond_b

    .line 38
    iget-object v4, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 39
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    if-eqz v2, :cond_c

    .line 41
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object v7, v4

    .line 42
    :cond_c
    invoke-static {v7, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    :goto_a
    iget-object v4, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 44
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v1

    .line 47
    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->getFqName(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    .line 48
    sget-object v19, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->READ_ONLY_ANNOTATIONS:Ljava/util/Set;

    move-object/from16 v21, v4

    .line 49
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    goto :goto_c

    .line 50
    :cond_d
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->MUTABLE_ANNOTATIONS:Ljava/util/Set;

    .line 51
    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    :goto_c
    if-eqz v7, :cond_e

    if-eq v7, v1, :cond_e

    const/4 v7, 0x0

    goto :goto_d

    :cond_e
    move-object v7, v1

    :cond_f
    move-object/from16 v1, v20

    move-object/from16 v4, v21

    goto :goto_b

    :cond_10
    move-object/from16 v20, v1

    .line 52
    :goto_d
    iget-object v1, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 53
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 54
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;

    move-object/from16 v19, v3

    const/4 v3, 0x4

    invoke-direct {v4, v3, v0, v12}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v20, v3

    const/4 v3, 0x0

    :goto_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v21, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 56
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    move-object/from16 v23, v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->knownNullability(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v6

    if-eqz v6, :cond_11

    move-object/from16 p3, v1

    move/from16 v22, v8

    :goto_f
    const/4 v8, 0x0

    goto :goto_15

    .line 57
    :cond_11
    invoke-virtual {v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->resolveTypeQualifierAnnotation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    move/from16 v22, v8

    :cond_12
    move-object/from16 p3, v1

    const/4 v8, 0x0

    goto :goto_14

    .line 58
    :cond_13
    invoke-virtual {v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->resolveJsr305CustomState(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object v5

    if-eqz v5, :cond_14

    :goto_10
    move/from16 v22, v8

    goto :goto_11

    .line 59
    :cond_14
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    .line 60
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->jsr305:Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    .line 61
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->globalLevel:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    goto :goto_10

    .line 62
    :goto_11
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne v5, v8, :cond_15

    move-object/from16 p3, v1

    const/4 v6, 0x0

    goto :goto_f

    .line 63
    :cond_15
    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v6, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->knownNullability(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 64
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne v5, v8, :cond_16

    const/4 v5, 0x1

    :goto_12
    move-object/from16 p3, v1

    const/4 v1, 0x1

    const/4 v8, 0x0

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    goto :goto_12

    .line 65
    :goto_13
    invoke-static {v6, v8, v5, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v6

    goto :goto_15

    :goto_14
    move-object v6, v8

    :goto_15
    if-nez v3, :cond_17

    goto :goto_16

    .line 66
    :cond_17
    iget-boolean v1, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    if-eqz v6, :cond_1b

    .line 67
    invoke-virtual {v6, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_17

    .line 68
    :cond_18
    iget-boolean v5, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    if-eqz v5, :cond_19

    if-nez v1, :cond_19

    goto :goto_17

    :cond_19
    if-nez v5, :cond_1a

    if-eqz v1, :cond_1a

    :goto_16
    move-object v3, v6

    goto :goto_17

    :cond_1a
    move-object v3, v8

    goto :goto_18

    :cond_1b
    :goto_17
    move-object/from16 v1, p3

    move-object/from16 v5, v21

    move/from16 v8, v22

    move-object/from16 v6, v23

    goto/16 :goto_e

    :cond_1c
    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v22, v8

    const/4 v8, 0x0

    :goto_18
    if-eqz v3, :cond_1e

    .line 69
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 70
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 71
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v4, v5, :cond_1d

    if-eqz v14, :cond_1d

    const/4 v5, 0x1

    goto :goto_19

    :cond_1d
    const/4 v5, 0x0

    .line 72
    :goto_19
    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 73
    invoke-direct {v1, v4, v7, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    const/4 v6, 0x1

    goto/16 :goto_27

    :cond_1e
    if-nez v16, :cond_20

    if-eqz v18, :cond_1f

    goto :goto_1a

    .line 74
    :cond_1f
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 75
    :cond_20
    :goto_1a
    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    if-eqz v1, :cond_21

    .line 76
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;->defaultQualifiers:Ljava/util/EnumMap;

    invoke-virtual {v1, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;

    goto :goto_1b

    :cond_21
    move-object v1, v8

    :goto_1b
    if-eqz v14, :cond_22

    .line 77
    invoke-static {v14}, Lkotlinx/serialization/json/JsonConfiguration;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v3

    goto :goto_1c

    :cond_22
    move-object v3, v8

    :goto_1c
    const/4 v4, 0x2

    if-eqz v3, :cond_23

    .line 78
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v5

    goto :goto_1d

    :cond_23
    if-eqz v1, :cond_24

    .line 79
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->nullabilityQualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    goto :goto_1d

    :cond_24
    move-object v5, v8

    :goto_1d
    if-eqz v3, :cond_25

    .line 80
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_1e

    :cond_25
    move-object v3, v8

    .line 81
    :goto_1e
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-eq v3, v6, :cond_27

    if-eqz v14, :cond_26

    if-eqz v1, :cond_26

    .line 82
    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->definitelyNotNull:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_26

    goto :goto_1f

    :cond_26
    const/4 v1, 0x0

    goto :goto_20

    :cond_27
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    if-eqz v15, :cond_28

    .line 83
    invoke-static {v15}, Lkotlinx/serialization/json/JsonConfiguration;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 84
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 85
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v6, v12, :cond_29

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v12, 0x0

    invoke-static {v3, v6, v12, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    move-result-object v3

    goto :goto_21

    :cond_28
    move-object v3, v8

    :cond_29
    :goto_21
    if-nez v3, :cond_2a

    goto :goto_23

    .line 86
    :cond_2a
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-nez v5, :cond_2b

    goto :goto_22

    .line 87
    :cond_2b
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    iget-boolean v12, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 88
    iget-boolean v13, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    if-eqz v13, :cond_2c

    if-nez v12, :cond_2c

    goto :goto_23

    :cond_2c
    if-nez v13, :cond_2d

    if-eqz v12, :cond_2d

    goto :goto_22

    .line 89
    :cond_2d
    invoke-virtual {v4, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v12

    if-gez v12, :cond_2e

    goto :goto_23

    .line 90
    :cond_2e
    invoke-virtual {v4, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_2f

    :goto_22
    move-object v5, v3

    .line 91
    :cond_2f
    :goto_23
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-eqz v5, :cond_30

    .line 92
    iget-object v4, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_24

    :cond_30
    move-object v4, v8

    :goto_24
    if-eqz v5, :cond_32

    .line 93
    iget-boolean v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    move v5, v6

    goto :goto_26

    :cond_31
    :goto_25
    const/4 v5, 0x0

    goto :goto_26

    :cond_32
    const/4 v6, 0x1

    goto :goto_25

    .line 94
    :goto_26
    invoke-direct {v3, v4, v7, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    move-object v1, v3

    .line 95
    :goto_27
    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 97
    check-cast v7, Ljava/util/List;

    .line 98
    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    if-eqz v7, :cond_3b

    .line 99
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    if-eqz v7, :cond_3b

    .line 100
    invoke-static {v7}, Lkotlinx/serialization/json/JsonConfiguration;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v12

    if-nez v12, :cond_35

    .line 101
    move-object v13, v7

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v13

    if-eqz v13, :cond_34

    .line 102
    invoke-static {v13}, Lkotlinx/serialization/json/JsonConfiguration;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v13

    goto :goto_29

    :cond_34
    move-object v13, v8

    goto :goto_29

    :cond_35
    move-object v13, v12

    .line 103
    :goto_29
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v10, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v14

    invoke-static {v14}, Lkotlinx/serialization/json/JsonConfiguration;->getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v14

    .line 104
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 105
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    goto :goto_2a

    .line 106
    :cond_36
    invoke-virtual {v10, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v14

    invoke-static {v14}, Lkotlinx/serialization/json/JsonConfiguration;->getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v14

    .line 107
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 108
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    goto :goto_2a

    :cond_37
    move-object v14, v8

    .line 109
    :goto_2a
    invoke-virtual {v10, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v15

    if-nez v15, :cond_39

    .line 110
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    instance-of v7, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    if-eqz v7, :cond_38

    goto :goto_2b

    :cond_38
    const/4 v7, 0x0

    goto :goto_2c

    :cond_39
    :goto_2b
    move v7, v6

    .line 111
    :goto_2c
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-eq v13, v12, :cond_3a

    move v12, v6

    goto :goto_2d

    :cond_3a
    const/4 v12, 0x0

    :goto_2d
    invoke-direct {v15, v13, v14, v7, v12}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    goto :goto_2e

    :cond_3b
    move-object v15, v8

    :goto_2e
    if-eqz v15, :cond_33

    .line 112
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3c
    if-nez v11, :cond_3d

    if-eqz v17, :cond_3d

    move v5, v6

    goto :goto_2f

    :cond_3d
    const/4 v5, 0x0

    :goto_2f
    if-nez v11, :cond_3e

    .line 113
    instance-of v7, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    if-eqz v7, :cond_3e

    move-object v7, v2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 114
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v7, :cond_3e

    move v7, v6

    goto :goto_30

    :cond_3e
    const/4 v7, 0x0

    .line 115
    :goto_30
    iget-object v10, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 116
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3f
    :goto_31
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_41

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 118
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 119
    iget-boolean v15, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    if-eqz v15, :cond_40

    move-object v14, v8

    goto :goto_32

    .line 120
    :cond_40
    iget-object v14, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    :goto_32
    if-eqz v14, :cond_3f

    .line 121
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 122
    :cond_41
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    if-eqz v3, :cond_42

    move-object v13, v8

    goto :goto_33

    :cond_42
    move-object v13, v10

    .line 123
    :goto_33
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v13, v14, :cond_43

    goto :goto_34

    .line 124
    :cond_43
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-static {v12, v14, v15, v13, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    :goto_34
    if-nez v14, :cond_47

    .line 125
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_44
    :goto_35
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_45

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 127
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 128
    iget-object v15, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-eqz v15, :cond_44

    .line 129
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 130
    :cond_45
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    .line 131
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v10, v13, :cond_46

    goto :goto_36

    .line 132
    :cond_46
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-static {v12, v13, v15, v10, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    goto :goto_36

    :cond_47
    move-object v13, v14

    .line 133
    :goto_36
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_48
    :goto_37
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_49

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 135
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 136
    iget-object v15, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-eqz v15, :cond_48

    .line 137
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 138
    :cond_49
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    .line 139
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 140
    iget-object v6, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 141
    invoke-static {v10, v12, v15, v6, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-eqz v13, :cond_4b

    if-nez p5, :cond_4b

    if-eqz v7, :cond_4a

    .line 142
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v13, v6, :cond_4a

    goto :goto_38

    :cond_4a
    move-object v7, v13

    goto :goto_39

    :cond_4b
    :goto_38
    move-object v7, v8

    :goto_39
    if-eqz v7, :cond_4c

    if-nez v14, :cond_4c

    const/4 v6, 0x1

    goto :goto_3a

    :cond_4c
    const/4 v6, 0x0

    .line 143
    :goto_3a
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v7, v8, :cond_50

    if-ne v3, v6, :cond_4d

    .line 144
    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-eqz v1, :cond_4d

    goto :goto_3b

    .line 145
    :cond_4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_3c

    .line 146
    :cond_4e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 147
    iget-boolean v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    if-ne v4, v6, :cond_4f

    .line 148
    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-eqz v3, :cond_4f

    :goto_3b
    const/4 v1, 0x1

    goto :goto_3d

    :cond_50
    :goto_3c
    const/4 v1, 0x0

    .line 149
    :goto_3d
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    invoke-direct {v3, v7, v5, v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 150
    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    move/from16 v4, v17

    move-object/from16 v3, v19

    move-object/from16 v5, v21

    move/from16 v8, v22

    move-object/from16 v6, v23

    goto/16 :goto_3

    .line 151
    :cond_51
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;

    const/4 v2, 0x5

    move-object/from16 v3, p4

    invoke-direct {v1, v2, v3, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 153
    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    const/4 v12, 0x0

    invoke-static {v2, v1, v12, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;IZ)Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    .line 154
    iget-object v0, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public enhanceSignatures(Landroidx/media3/extractor/text/pgs/PgsParser;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;
    .locals 26

    move-object/from16 v0, p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;

    const-string v2, "c"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    instance-of v5, v7, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-nez v5, :cond_0

    :goto_1
    move v13, v3

    goto/16 :goto_21

    :cond_0
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()I

    move-result v5

    const/4 v6, 0x2

    const/4 v15, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v15, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->getTopLevelContainingClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v7

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    goto :goto_6

    :cond_2
    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    if-eqz v8, :cond_3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->moduleAnnotations$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-direct {v10, v0, v9, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v5, v7

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_6

    :cond_7
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;I)V

    move-object v5, v8

    goto :goto_6

    :cond_8
    :goto_5
    move-object v5, v7

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    :goto_6
    invoke-static {v0, v5}, Landroidx/compose/foundation/text/BasicTextKt;->copyWithNewDefaultTypeQualifiers(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v10

    instance-of v5, v7, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    if-eqz v5, :cond_9

    move-object v5, v7

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isDefault:Z

    if-nez v8, :cond_9

    move-object v8, v5

    goto :goto_7

    :cond_9
    move-object v8, v7

    :goto_7
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v5

    if-eqz v5, :cond_d

    instance-of v5, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v5, :cond_a

    move-object v5, v8

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_b

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    invoke-interface {v5, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-object/from16 v18, v5

    goto :goto_9

    :cond_b
    const/16 v18, 0x0

    :goto_9
    sget-object v24, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;

    move-object/from16 v17, v7

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz v18, :cond_c

    move-object/from16 v5, v18

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    invoke-static {v10, v5}, Landroidx/compose/foundation/text/BasicTextKt;->copyWithNewDefaultTypeQualifiers(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_a

    :cond_c
    move-object/from16 v20, v10

    :goto_a
    sget-object v21, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v24}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    if-eqz v9, :cond_e

    move-object v9, v7

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v12, 0x3

    invoke-static {v9, v12}, Landroidx/compose/runtime/collection/ScopeMap;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgm;->signature(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;

    if-eqz v9, :cond_12

    iget-object v11, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->errorsSinceLanguageVersion:Ljava/lang/String;

    if-eqz v11, :cond_10

    const-string v12, "2."

    invoke-static {v11, v12}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-ne v12, v15, :cond_f

    goto :goto_d

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_d
    if-nez v11, :cond_11

    goto :goto_e

    :cond_11
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->warningModeClone:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;

    goto :goto_e

    :cond_12
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_13

    iget-object v11, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-object v11, v7

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    :cond_13
    iget-object v11, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    const-string v12, "javaTypeEnhancementState"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v11, v12}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    const/16 v25, 0x0

    if-ne v11, v12, :cond_14

    instance-of v11, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v11, :cond_15

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->HAS_ERASED_VALUE_PARAMETERS:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    invoke-interface {v7, v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    move/from16 v23, v15

    goto :goto_f

    :cond_14
    iget-object v11, v10, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_15
    move/from16 v23, v25

    :goto_f
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v11

    const-string v12, "getValueParameters(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    if-eqz v9, :cond_16

    iget-object v6, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/ArrayList;

    iget v3, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    move-object/from16 v22, v3

    goto :goto_11

    :cond_16
    const/16 v22, 0x0

    :goto_11
    new-instance v3, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v6, 0x11

    invoke-direct {v3, v6, v14}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    move-object/from16 v17, v7

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz v14, :cond_17

    move-object v6, v14

    check-cast v6, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v6}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    invoke-static {v10, v6}, Landroidx/compose/foundation/text/BasicTextKt;->copyWithNewDefaultTypeQualifiers(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_12

    :cond_17
    move-object/from16 v20, v10

    :goto_12
    sget-object v21, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v24, v3

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v24}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_10

    :cond_18
    instance-of v3, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v3, :cond_19

    move-object v3, v7

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto :goto_13

    :cond_19
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1a

    invoke-static {v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->isJavaField(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Z

    move-result v3

    if-ne v3, v15, :cond_1a

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    :goto_14
    move-object v11, v3

    goto :goto_15

    :cond_1a
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    goto :goto_14

    :goto_15
    if-eqz v9, :cond_1b

    iget-object v3, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->returnTypeInfo:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    goto :goto_16

    :cond_1b
    const/4 v3, 0x0

    :goto_16
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$$Lambda$0;

    move-object v6, v13

    const/4 v13, 0x0

    const/4 v9, 0x1

    move-object/from16 p2, v6

    move-object v15, v12

    move-object/from16 v6, p0

    move-object v12, v3

    const/4 v3, 0x0

    invoke-virtual/range {v6 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLandroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v6

    const-string v9, "getType(...)"

    if-nez v6, :cond_21

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-static {v6, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v6

    goto :goto_17

    :cond_1c
    move/from16 v6, v25

    :goto_17
    if-nez v6, :cond_21

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e

    :cond_1d
    move/from16 v6, v25

    goto :goto_18

    :cond_1e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v6, 0x1

    :goto_18
    if-eqz v6, :cond_20

    goto :goto_19

    :cond_20
    move/from16 v6, v25

    goto :goto_1a

    :cond_21
    :goto_19
    const/4 v6, 0x1

    :goto_1a
    if-eqz v6, :cond_22

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lkotlin/Pair;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    invoke-direct {v10, v11, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v10

    goto :goto_1b

    :cond_22
    move-object v6, v3

    :goto_1b
    if-nez v5, :cond_28

    if-nez v8, :cond_28

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_24

    :cond_23
    move/from16 v15, v25

    goto :goto_1d

    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v11, :cond_26

    const/4 v11, 0x1

    goto :goto_1c

    :cond_26
    move/from16 v11, v25

    :goto_1c
    if-eqz v11, :cond_25

    const/4 v15, 0x1

    :goto_1d
    if-nez v15, :cond_28

    if-eqz v6, :cond_27

    goto :goto_1e

    :cond_27
    const/16 v13, 0xa

    goto :goto_21

    :cond_28
    :goto_1e
    move-object v10, v7

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-nez v5, :cond_2a

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    goto :goto_1f

    :cond_29
    move-object v5, v3

    :cond_2a
    :goto_1f
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v12, p2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_20
    move/from16 v14, v25

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v25, v14, 0x1

    if-ltz v14, :cond_2c

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v15, :cond_2b

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v15

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_2d
    if-nez v8, :cond_2e

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_2e
    invoke-interface {v10, v5, v11, v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;->enhance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/Pair;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    move-result-object v7

    :goto_21
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v13

    goto/16 :goto_0

    :cond_2f
    return-object v2
.end method
