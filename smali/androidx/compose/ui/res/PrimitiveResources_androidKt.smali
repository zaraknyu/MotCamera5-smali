.class public abstract Landroidx/compose/ui/res/PrimitiveResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;
    .locals 12

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;

    const/4 v2, 0x2

    const-string v3, "getType(...)"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    invoke-static {p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-static {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only nontrivial projections should have been captured, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    invoke-static {p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v7, "getParameters(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    iget-object v7, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    if-eqz v7, :cond_a

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_8

    if-eq v8, v4, :cond_7

    if-ne v8, v2, :cond_6

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v10

    const-string v11, "getNullableAnyType(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_2

    :cond_8
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    :goto_2
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v6, v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v6}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    move-result-object v6

    iget-object v7, v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v9, v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v9}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    move-result-object v9

    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-direct {v11, v8, v6, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-direct {v6, v8, v7, v9}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x24

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    throw v9

    :cond_b
    const/16 p0, 0x23

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    throw v9

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    :cond_d
    move v4, v2

    goto :goto_3

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v6, v7, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_f

    :goto_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    if-eqz v4, :cond_10

    invoke-static {p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    goto :goto_4

    :cond_10
    invoke-static {p0, v1}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :goto_4
    invoke-static {p0, v5}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_11
    :goto_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    invoke-direct {v0, p0, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {p1}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/ComposerImpl;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static final integerResource(ILandroidx/compose/runtime/ComposerImpl;)I
    .locals 0

    invoke-static {p1}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/ComposerImpl;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static final replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 7

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    invoke-virtual {v5, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNothing(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    if-eq v5, v6, :cond_2

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    if-ne v4, v1, :cond_1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_1
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_6

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isAnyOrNullableAny(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    if-ne v6, v1, :cond_3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_3
    invoke-direct {v2, v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    if-ne v4, v1, :cond_5

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_5
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto :goto_2

    :cond_6
    const/16 p0, 0x8c

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->$$$reportNull$$$0(I)V

    throw v2

    :cond_7
    :goto_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 p1, 0x6

    invoke-static {p0, v0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method
