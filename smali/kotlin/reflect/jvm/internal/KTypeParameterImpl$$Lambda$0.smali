.class public final Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;->arg$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;->$r8$classId:I

    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;->arg$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->typeParameter:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->starProjectionType(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->computeSupertypes()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_1
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-interface {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getNonDeclaredClassifierNames()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    move-result-object v2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->impl:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope$OptimizedImplementation;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope$OptimizedImplementation;->typeAliasBytes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v7

    :goto_0
    return-object v7

    :pswitch_3
    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v4

    invoke-static {v4, v7, v5}, Landroidx/compose/ui/geometry/SizeKt;->getContributedDescriptors$default(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v8, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    if-nez v8, :cond_3

    instance-of v8, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v8, :cond_2

    :cond_3
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    const-string v4, "getFunctionList(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    iget-object v5, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v4, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    invoke-static {v5, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    const-string v2, "getPropertyList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v2, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->name_:I

    invoke-static {v4, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v1, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->classDataFinder:Landroidx/work/WorkQuery;

    iget-object v0, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isNestedClass()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-object v0

    :pswitch_5
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;->workerScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-static {v1, v7, v5}, Landroidx/compose/ui/geometry/SizeKt;->getContributedDescriptors$default(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;->substitute(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    return-object v1

    :pswitch_7
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;->computeDeclaredFunctions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;->containingClass:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v4

    const-string v6, "getSupertypes(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v8

    invoke-static {v8, v7, v5}, Landroidx/compose/ui/geometry/SizeKt;->getContributedDescriptors$default(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;I)Ljava/util/Collection;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_6

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz v7, :cond_b

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "component1(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    instance-of v8, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    if-eqz v7, :cond_14

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    move-object v11, v6

    goto :goto_c

    :cond_14
    move-object v11, v3

    :goto_c
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope$createFakeOverrides$4;

    invoke-direct {v13, v2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope$createFakeOverrides$4;-><init>(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;)V

    invoke-virtual/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->generateOverridesInFunctionGroup(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;)V

    goto :goto_a

    :cond_15
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->compact(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_8
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;-><init>()V

    const-class v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v3

    :cond_16
    :goto_d
    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_16

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lkotlin/properties/ObservableProperty;

    if-eqz v9, :cond_17

    check-cast v8, Lkotlin/properties/ObservableProperty;

    goto :goto_e

    :cond_17
    move-object v8, v7

    :goto_e
    if-nez v8, :cond_18

    goto :goto_d

    :cond_18
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "is"

    invoke-static {v9, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v9, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v9, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_19

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "substring(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    check-cast v9, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v9}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    iget-object v5, v8, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    invoke-direct {v8, v5, v1}, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;)V

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1a
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->FQ_NAMES_IN_TYPES:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;->getExcludedTypeAnnotationClasses()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->extensionFunctionType:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->contextFunctionTypeParams:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    filled-new-array {v2, v3}, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;->setExcludedTypeAnnotationClasses(Ljava/util/LinkedHashSet;)V

    iput-boolean v5, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->isLocked:Z

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;)V

    return-object v0

    :pswitch_a
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;->packageFragment:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->binaryClasses$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v3, v3, v6

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/storage/StorageKt;->getValue(Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v5, v5, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v5, v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->createKotlinPackagePartScope(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpi;->listOfNonEmptyScopes(Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    move-result-object v0

    new-array v1, v6, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0

    :pswitch_b
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaTargetAnnotationDescriptor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;->firstArgument:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationArgument;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument;

    if-eqz v1, :cond_1d

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->targetNameLists:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->mapJavaTargetArguments$descriptors_jvm(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;

    move-result-object v0

    goto :goto_10

    :cond_1d
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;

    if-eqz v1, :cond_1e

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->targetNameLists:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->mapJavaTargetArguments$descriptors_jvm(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;

    move-result-object v0

    goto :goto_10

    :cond_1e
    move-object v0, v7

    :goto_10
    if-eqz v0, :cond_1f

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->TARGET_ANNOTATION_ALLOWED_TARGETS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    :cond_1f
    if-nez v7, :cond_20

    goto :goto_11

    :cond_20
    move-object v2, v7

    :goto_11
    return-object v2

    :pswitch_c
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaRetentionAnnotationDescriptor;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->targetNameLists:Ljava/lang/Object;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;->firstArgument:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationArgument;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;

    if-eqz v1, :cond_21

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;

    goto :goto_12

    :cond_21
    move-object v0, v7

    :goto_12
    if-eqz v0, :cond_22

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationTargetMapper;->retentionNameList:Ljava/lang/Object;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;->value:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinRetention;

    if-eqz v0, :cond_22

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationRetention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string/jumbo v4, "topLevelFqName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    goto :goto_13

    :cond_22
    move-object v1, v7

    :goto_13
    if-eqz v1, :cond_23

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->RETENTION_ANNOTATION_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    :cond_23
    if-nez v7, :cond_24

    goto :goto_14

    :cond_24
    move-object v2, v7

    :goto_14
    return-object v2

    :pswitch_d
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->globalLevel:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->migrationLevel:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-eqz v2, :cond_25

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->description:Ljava/lang/String;

    const-string/jumbo v3, "under-migration:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->userDefinedLevelForSpecificAnnotation:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :pswitch_e
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl$WithDestructuringDeclaration;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl$WithDestructuringDeclaration;->destructuringVariables$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_f
    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_10
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->enumMemberNames:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-virtual {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_27
    return-object v1

    :pswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scope for type parameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->create(Ljava/lang/String;Ljava/util/SequencedCollection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object v10, v0

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    move-object v0, v10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v1

    if-nez v1, :cond_28

    goto/16 :goto_1f

    :cond_28
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getConstructors()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "getConstructors(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    iget-object v9, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "storageManager"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v8

    if-nez v8, :cond_29

    move-object v8, v7

    goto :goto_18

    :cond_29
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v8

    :goto_18
    if-nez v8, :cond_2a

    :goto_19
    move-object/from16 p0, v0

    move-object v12, v7

    move-object/from16 v21, v12

    goto/16 :goto_1e

    :cond_2a
    invoke-virtual {v5, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-result-object v11

    if-nez v11, :cond_2b

    goto :goto_19

    :cond_2b
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;

    move-object v13, v5

    check-cast v13, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v13}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v13

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getKind()I

    move-result v14

    const-string v15, "getKind(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m$1(ILjava/lang/String;)V

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v15

    const-string v6, "getSource(...)"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    move-object v8, v12

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    move-object/from16 v22, v11

    move-object v11, v8

    move-object/from16 v8, v22

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v13, v6

    invoke-static/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getSubstitutedValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_2c

    goto :goto_19

    :cond_2c
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->unsubstitutedReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v18

    iget-object v8, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    if-eqz v8, :cond_2d

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v6, v8, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    invoke-static {v11, v8, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v8

    move-object v13, v8

    goto :goto_1a

    :cond_2d
    move-object v13, v7

    :goto_1a
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v8

    if-eqz v8, :cond_30

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getContextReceiverParameters()Ljava/util/List;

    move-result-object v5

    const-string v12, "getContextReceiverParameters(...)"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x0

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_2e

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    move-object/from16 v21, v7

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object v7

    const-string v15, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->getCustomLabelName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-object/from16 p0, v0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;

    invoke-direct {v0, v8, v4, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/name/NameUtils;->SANITIZE_AS_JAVA_INVALID_CHARACTERS:Lkotlin/text/Regex;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/name/NameUtils;->CONTEXT_RECEIVER_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-direct {v15, v8, v0, v9, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Landroidx/media3/common/BasePlayer;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v14, v16

    move-object/from16 v7, v21

    const/16 v4, 0xa

    goto :goto_1b

    :cond_2e
    move-object/from16 v21, v7

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v21

    :cond_2f
    move-object v15, v12

    :goto_1c
    move-object/from16 p0, v0

    move-object/from16 v21, v7

    goto :goto_1d

    :cond_30
    move-object v15, v3

    goto :goto_1c

    :goto_1d
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v16

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->visibilityImpl:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    const/4 v14, 0x0

    move-object/from16 v20, v0

    move-object v12, v11

    invoke-virtual/range {v12 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    :goto_1e
    if-eqz v12, :cond_31

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v7, v21

    const/16 v4, 0xa

    const/4 v6, 0x0

    goto/16 :goto_17

    :cond_32
    move-object/from16 v21, v7

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->$$$reportNull$$$0(I)V

    throw v21

    :cond_33
    move-object v3, v2

    :goto_1f
    return-object v3

    :pswitch_13
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_14
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeFactory:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0

    :pswitch_15
    move-object/from16 v21, v7

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    move-object/from16 v2, v21

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;

    return-object v1

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_16
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, [Z

    if-eqz v3, :cond_35

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_21

    :cond_35
    instance-of v3, v1, [C

    if-eqz v3, :cond_36

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_21

    :cond_36
    instance-of v3, v1, [B

    if-eqz v3, :cond_37

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_21

    :cond_37
    instance-of v3, v1, [S

    if-eqz v3, :cond_38

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto :goto_21

    :cond_38
    instance-of v3, v1, [I

    if-eqz v3, :cond_39

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_21

    :cond_39
    instance-of v3, v1, [F

    if-eqz v3, :cond_3a

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto :goto_21

    :cond_3a
    instance-of v3, v1, [J

    if-eqz v3, :cond_3b

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_21

    :cond_3b
    instance-of v3, v1, [D

    if-eqz v3, :cond_3c

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto :goto_21

    :cond_3c
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_3d

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_21

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7f

    xor-int/2addr v1, v2

    add-int/2addr v6, v1

    goto/16 :goto_20

    :cond_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_17
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V

    return-object v1

    :pswitch_18
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    return-object v1

    :pswitch_19
    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;)V

    return-object v1

    :pswitch_1a
    check-cast v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    move-result-object v0

    return-object v0

    :pswitch_1b
    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "getUpperBounds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3f
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
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
