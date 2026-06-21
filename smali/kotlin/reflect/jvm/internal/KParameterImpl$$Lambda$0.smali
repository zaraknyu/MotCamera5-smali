.class public final Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/KParameterImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KParameterImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/KParameterImpl;->index:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl;->callable:Lkotlin/reflect/jvm/internal/KCallableImpl;

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/UtilKt;->getInstanceReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine receiver Java type of inherited declaration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    const-string v3, "Expected at least 1 type for compound type"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isBound()Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->getRealSlicesOfParameters(I)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->getRealSlicesOfParameters(I)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    add-int/2addr v1, v5

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/ranges/IntRange;

    iget v6, p0, Lkotlin/ranges/IntProgression;->first:I

    sub-int/2addr v6, v1

    iget p0, p0, Lkotlin/ranges/IntProgression;->last:I

    sub-int/2addr p0, v1

    invoke-direct {v2, v6, p0, v5}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->getRealSlicesOfParameters(I)Lkotlin/ranges/IntRange;

    move-result-object p0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p0

    :goto_0
    new-array v0, v4, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/KParameterImpl$CompoundTypeImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KParameterImpl$CompoundTypeImpl;-><init>([Ljava/lang/reflect/Type;)V

    :goto_1
    move-object p0, v0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_2

    :cond_4
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    invoke-direct {p0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;

    if-eqz p0, :cond_8

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->originalParametersGroups:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-array v0, v4, [Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    new-instance v0, Lkotlin/reflect/jvm/internal/KParameterImpl$CompoundTypeImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KParameterImpl$CompoundTypeImpl;-><init>([Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_2

    :cond_7
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    invoke-direct {p0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :goto_2
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->computeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
