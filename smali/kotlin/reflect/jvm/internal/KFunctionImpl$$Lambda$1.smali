.class public final Lkotlin/reflect/jvm/internal/KFunctionImpl$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$$Lambda$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$$Lambda$1;->$r8$classId:I

    const/4 v1, 0x2

    const-string v2, "desc"

    const-string v3, "getValueParameters(...)"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getContainingDeclaration(...)"

    const/4 v7, 0x0

    const/16 v8, 0xa

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v0

    instance-of v10, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isMultiFieldValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v7, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v7, :cond_1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot have default arguments"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->declaresDefaultValue()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_4
    :goto_1
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->overriddenTreeAsSequence(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v2

    new-instance v6, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v6, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FlatteningSequence;)V

    :cond_5
    :goto_2
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->declaresDefaultValue()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_8
    move-object v2, v5

    :goto_3
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v3, :cond_9

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    goto :goto_5

    :cond_9
    :goto_4
    move-object v2, v5

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v9, v2, v0, v4}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findDefaultMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_8

    :cond_a
    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v9, v2, v0, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findDefaultMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_8

    :cond_b
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KParameter;

    check-cast v2, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    sget-object p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->CALL_BY_NAME:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    sget-object v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    new-instance v5, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct {v5, v0, v1, p0}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;)V

    goto/16 :goto_a

    :cond_d
    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0, v7}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->parseJvmDescriptor(Ljava/lang/String;Z)Landroidx/room/concurrent/FileLock;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v3, v0, v4}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->addParametersAndMasks(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :try_start_0
    new-array v0, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_e
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    if-eqz v2, :cond_10

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;->methods:Ljava/util/List;

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    sget-object v4, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->CALL_BY_NAME:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    sget-object v5, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V

    move-object v5, v1

    goto/16 :goto_a

    :catch_0
    :cond_10
    move-object v0, v5

    :goto_8
    instance-of v2, v0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_11

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->createConstructorCaller(Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl;

    move-result-object v0

    goto :goto_9

    :cond_11
    instance-of v2, v0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isCompanionObject()Z

    move-result v2

    if-nez v2, :cond_13

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;-><init>(Ljava/lang/reflect/Method;)V

    move-object v0, v1

    goto :goto_9

    :cond_12
    new-instance v2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    move-object v0, v2

    goto :goto_9

    :cond_13
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/calls/Caller;->isBoundInstanceCallWithValueClasses()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->createStaticMethodCaller(Ljava/lang/reflect/Method;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;

    move-result-object v0

    goto :goto_9

    :cond_14
    move-object v0, v5

    :goto_9
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    invoke-static {v0, p0, v4}, Lokio/SegmentPool;->createValueClassAwareCallerIfNeeded(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v5

    :cond_15
    :goto_a
    return-object v5

    :pswitch_0
    sget-object v0, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v0

    instance-of v10, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    if-eqz v10, :cond_18

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KParameter;

    check-cast v2, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    sget-object p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    sget-object v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    new-instance v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct {v2, v0, v1, p0}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;)V

    goto/16 :goto_f

    :cond_17
    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v9, v0, v7}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->parseJvmDescriptor(Ljava/lang/String;Z)Landroidx/room/concurrent/FileLock;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :try_start_1
    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :cond_18
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isMultiFieldValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_19

    instance-of v5, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v5, :cond_19

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v1

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v9, v0, p0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_f

    :cond_19
    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findMethodBySignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_c

    :cond_1a
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;

    const-string v3, "null cannot be cast to non-null type java.lang.reflect.Member"

    if-eqz v2, :cond_1b

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;

    if-eqz v2, :cond_22

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_1
    :goto_c
    instance-of v0, v5, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1c

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v7}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->createConstructorCaller(Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl;

    move-result-object v0

    goto :goto_d

    :cond_1c
    instance-of v0, v5, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->rawBoundReceiver:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Lokio/SegmentPool;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v0, v4, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_d

    :cond_1e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;

    invoke-direct {v0, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_d

    :cond_1f
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v0, v1, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_d

    :cond_20
    invoke-virtual {p0, v5, v7}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->createStaticMethodCaller(Ljava/lang/reflect/Method;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;

    move-result-object v0

    :goto_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    invoke-static {v0, p0, v7}, Lokio/SegmentPool;->createValueClassAwareCallerIfNeeded(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v2

    goto :goto_f

    :cond_21
    new-instance v0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not compute caller for function: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (member = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    if-eqz p0, :cond_24

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;->methods:Ljava/util/List;

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_23
    sget-object v4, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    sget-object v5, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;->JAVA:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V

    move-object v2, v1

    :goto_f
    return-object v2

    :cond_24
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
