.class public final Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Ljava/lang/Object;

.field public final arg$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->_supertypes$delegate:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->computation:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    invoke-interface {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadEnumEntryAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget-object v1, v1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-interface {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Landroidx/window/core/ConsumerAdapter;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_4
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;)V

    return-object v2

    :pswitch_5
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "additionalAnnotations"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    invoke-virtual {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "additionalAnnotations"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    invoke-virtual {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const-string v1, "getDefaultType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;

    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v4, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->typeAliasDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-object v0, v5

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    move-object v0, v5

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getKind()I

    move-result v8

    const-string v1, "getKind(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m$1(ILjava/lang/String;)V

    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->typeAliasDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v9

    const-string v10, "getSource(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    move-object v2, v5

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v5

    :cond_4
    move-object v9, v5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getContextReceiverParameters()Ljava/util/List;

    move-result-object v0

    const-string v4, "getContextReceiverParameters(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v12

    iget-object v13, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->unsubstitutedReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->visibilityImpl:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    const/4 v8, 0x0

    move-object v7, v2

    invoke-virtual/range {v7 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    :goto_3
    return-object v2

    :pswitch_9
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v1

    :pswitch_a
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;

    new-instance v5, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v0}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->NO_LOCKS:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;

    invoke-direct {v4, v0, v5}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    invoke-static {v3, v4, v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleTypeWithNonTrivialMemberScope(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v4, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v7, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Landroidx/window/core/ConsumerAdapter;

    iget-object v8, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v9, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    iget-object v10, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signaturePropagator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iget-object v11, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    iget-object v12, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaPropertyInitializerEvaluator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iget-object v13, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->samConversionResolver:Lcom/google/mlkit/common/internal/zzb;

    iget-object v14, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    iget-object v15, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lcom/motorola/camera/PermissionCallback;

    move-object/from16 p0, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->packagePartProvider:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    move-object/from16 v16, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    move-object/from16 v17, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

    move-object/from16 v18, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-object/from16 v19, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v20, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v21, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    move-object/from16 v22, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    move-object/from16 v23, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    move-object/from16 v24, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v25, v5

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaModuleResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Landroidx/window/core/ConsumerAdapter;Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lcom/google/mlkit/common/internal/zzb;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;Lcom/motorola/camera/PermissionCallback;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V

    new-instance v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v6, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    iget-object v3, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-direct {v4, v5, v6, v3}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v3

    const-string v5, "getContainingDeclaration(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-direct {v2, v4, v3, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    return-object v2

    :pswitch_c
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    move-result-object v2

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    new-instance v4, Landroidx/work/WorkQuery;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    move-result-object v1

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    invoke-direct {v4, v0, v1}, Landroidx/work/WorkQuery;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    invoke-static {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Landroidx/work/WorkQuery;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInsModule()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    move-result-object v3

    const-string v4, "getBuiltInsModule(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v1}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3, v0, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;)V

    return-object v2

    :pswitch_e
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->computeContainingDeclaration:Lkotlin/jvm/functions/Function1;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/CloneableClassScope;

    invoke-direct {v0, v8, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;)V

    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;)V

    return-object v2

    :pswitch_f
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    sget-object v7, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$3;->INSTANCE:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$3;

    const/16 v8, 0x30

    const-string v4, ", "

    const-string v5, "("

    const-string v6, ")"

    invoke-static/range {v2 .. v8}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->signature:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "signature"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<init>"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getConstructorDescriptors()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->isPrimary()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;

    move-result-object v8

    const-string v9, "getContainingDeclaration(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isMultiFieldValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;->asString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "constructor-impl"

    invoke-static {v8, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ")V"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V"

    invoke-static {v8, v11}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->mapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid signature of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;->asString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move-object v4, v5

    :cond_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    sget-object v11, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$5:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/16 v12, 0x1e

    const-string v8, "\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string v5, "\' (JVM signature: "

    const-string v6, ") not resolved in "

    const-string v7, "Function \'"

    invoke-static {v7, v0, v5, v1, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    const-string v1, " no members found"

    goto :goto_8

    :cond_e
    const-string v1, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    return-object v0

    :pswitch_11
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_c

    :cond_10
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$0;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;I)V

    invoke-static {v3, v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_16

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v9

    if-eqz v9, :cond_11

    sget-object v5, Lkotlin/reflect/KTypeProjection;->star:Lkotlin/reflect/KTypeProjection;

    goto :goto_b

    :cond_11
    new-instance v9, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    const-string v11, "getType(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    new-instance v8, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;

    invoke-direct {v8, v1, v5, v3}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;ILkotlin/Lazy;)V

    :goto_a
    invoke-direct {v9, v10, v8}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    new-instance v5, Lkotlin/reflect/KTypeProjection;

    sget-object v6, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-direct {v5, v6, v9}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    goto :goto_b

    :cond_13
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    new-instance v5, Lkotlin/reflect/KTypeProjection;

    sget-object v6, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    invoke-direct {v5, v6, v9}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    goto :goto_b

    :cond_15
    new-instance v5, Lkotlin/reflect/KTypeProjection;

    sget-object v6, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    invoke-direct {v5, v6, v9}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    :goto_b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_9

    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v8

    :cond_17
    move-object v0, v4

    :goto_c
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
