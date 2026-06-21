.class public final Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public $cont:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)V
    .locals 0

    const/16 p2, 0xf

    iput p2, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    const-string v3, "getType(...)"

    const-string v4, "fqName"

    const-string v5, "kotlinTypeRefiner"

    const/16 v6, 0xa

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v8, "it"

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeAttr:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->getDefaultType(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    const-string v4, "getDefaultType(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v3, v3, v4, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->extractTypeParametersFromUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v3

    const/16 v5, 0x10

    if-ge v3, v5, :cond_1

    move v3, v5

    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v1, :cond_3

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v6

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v6, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    if-eqz v6, :cond_4

    invoke-static {v6, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v6

    :goto_2
    move-object v15, v6

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    goto :goto_2

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x2f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->getErasedUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-static {v4, v12, v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawProjectionComputer;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v6

    :goto_4
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;

    invoke-direct {v1, v11, v5}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    const-string v2, "getUpperBounds(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->substituteErasedUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/collections/builders/SetBuilder;

    move-result-object v1

    iget-object v2, v1, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, v1, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    iget v0, v0, Lkotlin/collections/builders/MapBuilder;->size:I

    if-ne v0, v11, :cond_6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should only be one computed upper bound if no need to intersect all bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v0, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->getDefaultType(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_0
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v11

    goto :goto_6

    :cond_8
    if-nez v9, :cond_9

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    :cond_a
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v10, v2, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-object v10, v2

    :goto_7
    if-nez v10, :cond_b

    goto :goto_8

    :cond_b
    move-object v0, v10

    :goto_8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    const-string/jumbo v2, "supertypes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    move-result-object v2

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->allSupertypes:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "superTypes"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :cond_c
    move-object v2, v10

    :goto_9
    if-nez v2, :cond_d

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_d
    move-object v3, v2

    :cond_e
    instance-of v2, v3, Ljava/util/List;

    if-eqz v2, :cond_f

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    :cond_f
    if-nez v10, :cond_10

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    :cond_10
    invoke-virtual {v0, v10}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->processSupertypesWithoutCycles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v2, "<set-?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->supertypesWithoutCycles:Ljava/util/List;

    return-object v7

    :pswitch_3
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->fictitiousClassDescriptorFactories:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;

    invoke-interface {v5, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;->createClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v5

    if-eqz v5, :cond_11

    move-object v10, v5

    goto/16 :goto_e

    :cond_12
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_e

    :cond_13
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classData:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    if-nez v1, :cond_14

    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDataFinder:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;->findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    move-result-object v1

    if-nez v1, :cond_14

    goto/16 :goto_e

    :cond_14
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->sourceElement:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v0, v4, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v3, :cond_15

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_a

    :cond_15
    move-object v0, v10

    :goto_a
    if-nez v0, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_e

    :cond_17
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    goto/16 :goto_d

    :cond_18
    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->packageFragmentProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->packageFragments(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    instance-of v7, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    if-eqz v7, :cond_1b

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_b

    :cond_1a
    move-object v4, v10

    :cond_1b
    :goto_b
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-nez v4, :cond_1c

    goto :goto_e

    :cond_1c
    new-instance v6, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    const-string v2, "getTypeTable(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    const-string v2, "getVersionRequirementTable(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1d

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-object v7, v0

    goto :goto_c

    :cond_1d
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    const-string v7, "getRequirementList(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v7, v2

    :goto_c
    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->createContext(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v0

    :goto_d
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    move-object v9, v1

    move-object v7, v5

    move-object v6, v11

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    move-object v10, v4

    :goto_e
    return-object v10

    :pswitch_4
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;->findPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    if-eqz v0, :cond_1e

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;)V

    move-object v10, v1

    goto :goto_f

    :cond_1e
    const-string v0, "components"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_1f
    :goto_f
    return-object v10

    :pswitch_5
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    return-object v7

    :pswitch_8
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    const-string v2, "kotlinClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v7, 0x1d

    invoke-direct {v6, v0, v2, v4, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    const-string v1, "klass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v1

    :goto_10
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v7

    const-string/jumbo v8, "toString(...)"

    const-string v10, "("

    if-eqz v7, :cond_25

    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v10

    :goto_11
    invoke-virtual {v10}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual {v10}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_20
    const-string v10, ")"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    const-string v13, "getReturnType(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v11, v10}, Landroidx/sqlite/db/SimpleSQLiteQuery;->visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Landroidx/work/WorkQuery;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v10

    :goto_12
    invoke-virtual {v10}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v10}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/annotation/Annotation;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8, v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotation(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;Ljava/lang/annotation/Annotation;)V

    goto :goto_12

    :cond_21
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v10, "getParameterAnnotations(...)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [[Ljava/lang/annotation/Annotation;

    array-length v10, v7

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v10, :cond_24

    aget-object v12, v7, v11

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v12

    :cond_22
    :goto_14
    invoke-virtual {v12}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-virtual {v12}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/annotation/Annotation;

    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v15

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v9, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v11, v15, v9}, Landroidx/work/WorkQuery;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object v9

    if-eqz v9, :cond_22

    invoke-static {v9, v13, v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_14

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_24
    invoke-virtual {v8}, Landroidx/work/WorkQuery;->visitEnd()V

    goto/16 :goto_10

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v1

    :goto_15
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->INIT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v12

    :goto_16
    invoke-virtual {v12}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-virtual {v12}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_26
    const-string v12, ")V"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v11}, Landroidx/sqlite/db/SimpleSQLiteQuery;->visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Landroidx/work/WorkQuery;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v11

    :goto_17
    invoke-virtual {v11}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-virtual {v11}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/annotation/Annotation;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9, v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotation(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;Ljava/lang/annotation/Annotation;)V

    goto :goto_17

    :cond_27
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v12, v11

    if-nez v12, :cond_29

    :cond_28
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 v18, v8

    goto :goto_1a

    :cond_29
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v12, v11

    sub-int/2addr v7, v12

    array-length v12, v11

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v12, :cond_28

    aget-object v14, v11, v13

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v14

    :goto_19
    invoke-virtual {v14}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-virtual {v14}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/annotation/Annotation;

    invoke-static {v15}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object/from16 p0, v0

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    move-object/from16 p1, v1

    add-int v1, v13, v7

    move/from16 v17, v7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v7

    move-object/from16 v18, v8

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v8, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v1, v7, v8}, Landroidx/work/WorkQuery;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v1, v15, v0}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v17

    move-object/from16 v8, v18

    goto :goto_19

    :cond_2b
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 v17, v7

    move-object/from16 v18, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    :goto_1a
    invoke-virtual {v9}, Landroidx/work/WorkQuery;->visitEnd()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, v18

    goto/16 :goto_15

    :cond_2c
    move-object/from16 p0, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v0

    :cond_2d
    :goto_1b
    invoke-virtual {v0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "desc"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "asString(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x23

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v1

    :cond_2e
    :goto_1c
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v11

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v12, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    iget-object v13, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v13, v11, v12, v7}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object v11

    if-eqz v11, :cond_2e

    invoke-static {v11, v8, v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_1c

    :cond_2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_30
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;

    invoke-direct {v0, v2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :pswitch_9
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v1

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/json/JsonConfiguration;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    iget-boolean v3, v0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    const-string v4, "$receiver"

    const-string v5, ", "

    const-string v7, "ClassicTypeSystemContext couldn\'t handle: "

    if-eqz v3, :cond_32

    if-eqz v1, :cond_32

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v3, :cond_31

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    if-ne v3, v11, :cond_32

    goto/16 :goto_1f

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    if-eqz v1, :cond_37

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v8

    if-eqz v8, :cond_37

    instance-of v9, v8, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-eqz v9, :cond_36

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v8

    const-string v9, "getParameters(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v4, :cond_35

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->getType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v6

    if-nez v6, :cond_33

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    invoke-direct {v6, v10, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    goto :goto_1e

    :cond_33
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    iget-object v9, v0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v9, v9, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v11

    invoke-virtual {v9, v2, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v9

    invoke-direct {v8, v6, v9, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    move-object v6, v8

    :goto_1e
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_34
    move-object v10, v7

    goto :goto_1f

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    :goto_1f
    return-object v10

    :pswitch_b
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    return-object v10

    :pswitch_c
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/name/Name;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->additionalSupertypeClassDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v0, :cond_38

    move v5, v11

    goto :goto_20

    :cond_38
    const/4 v5, 0x0

    :goto_20
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->unsubstitutedMemberScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    return-object v1

    :pswitch_e
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    const-string v2, "m"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;->memberFilter:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDeclaringClass(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x69e9ad94

    if-eq v2, v3, :cond_40

    const v3, -0x4d378041

    if-eq v2, v3, :cond_3a

    const v3, 0x8cdac1b

    if-eq v2, v3, :cond_39

    goto :goto_22

    :cond_39
    const-string v2, "hashCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_22

    :cond_3a
    const-string v2, "equals"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_22

    :cond_3b
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;->type:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    goto :goto_21

    :cond_3c
    move-object v0, v10

    :goto_21
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    if-eqz v1, :cond_3d

    move-object v10, v0

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    :cond_3d
    if-nez v10, :cond_3e

    goto :goto_22

    :cond_3e
    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    if-eqz v1, :cond_3f

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    const-string v1, "java.lang.Object"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v11

    goto :goto_23

    :cond_3f
    :goto_22
    const/4 v0, 0x0

    goto :goto_23

    :cond_40
    const-string/jumbo v2, "toString"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_41
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    :goto_23
    if-eqz v0, :cond_42

    move v0, v11

    goto :goto_24

    :cond_42
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_43

    move v9, v11

    goto :goto_25

    :cond_43
    const/4 v9, 0x0

    :goto_25
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/GlProgram;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    const-string/jumbo v2, "typeParameter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    iget-object v3, v0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    iget-object v4, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v6, v4, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v4, v4, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-direct {v5, v6, v0, v4}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/compose/foundation/text/BasicTextKt;->copyWithNewDefaultTypeQualifiers(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v4

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/2addr v0, v2

    invoke-direct {v10, v4, v1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;ILkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;)V

    :cond_44
    return-object v10

    :pswitch_10
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    const-string v2, "annotation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->DEPRECATED_ANNOTATION_MESSAGE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->areAnnotationsFreshlySupported:Z

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->mapOrResolveJavaAnnotation(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_11
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz v1, :cond_45

    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1;->val$errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    return-object v7

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string/jumbo v5, "packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result v5

    if-eqz v5, :cond_47

    move-object v5, v10

    goto :goto_27

    :cond_47
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    :goto_27
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    :cond_48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_49
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_28

    :cond_4a
    move-object v1, v10

    :goto_28
    if-nez v1, :cond_4b

    goto :goto_2a

    :cond_4b
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4c

    move-object v0, v10

    goto :goto_29

    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_29

    :cond_4d
    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqNamesUtilKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v5, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqNamesUtilKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v1, v5, :cond_4f

    move-object v0, v4

    move v1, v5

    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4e

    :goto_29
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    :cond_50
    :goto_2a
    return-object v10

    :pswitch_13
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->SIGNATURE_TO_JVM_REPRESENTATION_NAME:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->computeJvmSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_14
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_2c

    :cond_51
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterTypes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_52

    move v0, v11

    goto :goto_2b

    :cond_52
    const/4 v0, 0x0

    goto :goto_2b

    :cond_53
    const-string/jumbo v2, "valueOf"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_2b
    if-nez v0, :cond_54

    goto :goto_2d

    :cond_54
    :goto_2c
    const/4 v9, 0x0

    goto :goto_2e

    :cond_55
    :goto_2d
    move v9, v11

    :goto_2e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->packageViewDescriptorFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Default;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "storageManager"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;

    invoke-direct {v2, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    return-object v2

    :pswitch_16
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_56

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    move v9, v11

    goto :goto_2f

    :cond_56
    const/4 v9, 0x0

    :goto_2f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_17
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor$1;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;->defaultType:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0

    :pswitch_18
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    check-cast v1, Lkotlin/Pair;

    const-string v2, "<destruct>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()\' member of List is redundant in Kotlin and might be removed soon. Please use \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()\' stdlib extension instead"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HIDDEN"

    invoke-static {v0, v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->createDeprecatedAnnotation(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_30

    :cond_57
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;I)V

    move-object v0, v1

    :goto_30
    return-object v0

    :pswitch_19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    if-nez v0, :cond_58

    goto :goto_31

    :cond_58
    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    :goto_31
    return-object v7

    :pswitch_1a
    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
