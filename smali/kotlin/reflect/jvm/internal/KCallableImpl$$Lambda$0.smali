.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/KCallableImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-class v3, Lkotlin/coroutines/Continuation;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v2, "getActualTypeArguments(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Type;

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_4
    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KParameter;

    check-cast v0, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->getNeedsMultiFieldValueClassFlattening(Lkotlin/reflect/jvm/internal/KTypeImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v5

    add-int/2addr v5, v4

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl;->parametersNeedMFVCFlattening:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v3

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KParameter;

    check-cast v7, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/KParameterImpl;->kind:Lkotlin/reflect/KParameter$Kind;

    sget-object v9, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v8, v9, :cond_a

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v8

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/UtilKt;->getNeedsMultiFieldValueClassFlattening(Lkotlin/reflect/jvm/internal/KTypeImpl;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v7

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-static {v7}, Lokio/SegmentPool;->getMfvcUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v2

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Check if parametersNeedMFVCFlattening is true before"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move v7, v3

    :goto_6
    add-int/2addr v6, v7

    goto :goto_5

    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    move v6, v3

    goto :goto_8

    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v6, v3

    :cond_d
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KParameter;

    check-cast v4, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/KParameterImpl;->kind:Lkotlin/reflect/KParameter$Kind;

    sget-object v7, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v4, v7, :cond_d

    add-int/lit8 v6, v6, 0x1

    if-ltz v6, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    throw v1

    :cond_f
    :goto_8
    add-int/lit8 v6, v6, 0x1f

    div-int/lit8 v6, v6, 0x20

    add-int p0, v5, v6

    add-int/2addr p0, v2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KParameter;

    check-cast v4, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v7

    iget v8, v4, Lkotlin/reflect/jvm/internal/KParameterImpl;->index:I

    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    if-eqz v9, :cond_11

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    goto :goto_a

    :cond_11
    move-object v7, v1

    :goto_a
    if-eqz v7, :cond_12

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->declaresOrInheritsDefaultValue(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;)Z

    move-result v7

    goto :goto_b

    :cond_12
    move v7, v3

    :goto_b
    if-eqz v7, :cond_18

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v7

    sget-object v9, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v7, :cond_13

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClassType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v7

    if-ne v7, v2, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v4

    iget-object v7, v4, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Type;

    goto :goto_c

    :cond_14
    move-object v9, v1

    :goto_c
    if-nez v9, :cond_17

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    move-object v9, v7

    goto :goto_d

    :cond_15
    move-object v9, v1

    :goto_d
    if-eqz v9, :cond_16

    goto :goto_e

    :cond_16
    invoke-static {v4, v3}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object v9

    :cond_17
    :goto_e
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p0, v8

    goto :goto_9

    :cond_18
    :goto_f
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v7

    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    if-eqz v9, :cond_10

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v7, :cond_10

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/KTypesJvm;->getJvmErasure(Lkotlin/jvm/internal/KTypeBase;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v7, "run(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, p0, v8

    goto/16 :goto_9

    :cond_19
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot instantiate the default empty array of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", because it is not an array type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    move v0, v3

    :goto_10
    if-ge v0, v6, :cond_1b

    add-int v1, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1b
    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "getTypeParameters(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, p0, v2}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1c
    return-object v1

    :pswitch_3
    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isBound()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->getInstanceReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v4

    if-eqz v4, :cond_1d

    new-instance v5, Lkotlin/reflect/jvm/internal/KParameterImpl;

    sget-object v6, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    new-instance v7, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;

    invoke-direct {v7, v4, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;I)V

    invoke-direct {v5, p0, v3, v6, v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_12

    :cond_1d
    move v4, v3

    :goto_12
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v5

    if-eqz v5, :cond_1f

    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lkotlin/reflect/KParameter$Kind;->EXTENSION_RECEIVER:Lkotlin/reflect/KParameter$Kind;

    new-instance v9, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;

    invoke-direct {v9, v5, v2}, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;I)V

    invoke-direct {v6, p0, v4, v8, v9}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_13

    :cond_1e
    move v4, v3

    :cond_1f
    :goto_13
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_14
    if-ge v3, v5, :cond_20

    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    new-instance v9, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$8;

    invoke-direct {v9, v0, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$8;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)V

    invoke-direct {v6, p0, v4, v8, v9}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_14

    :cond_20
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result p0

    if-eqz p0, :cond_21

    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz p0, :cond_21

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v2, :cond_21

    new-instance p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;-><init>(I)V

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1

    :pswitch_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->computeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
