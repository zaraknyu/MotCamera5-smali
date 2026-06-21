.class public final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$overrider:Ljava/lang/Object;

.field public final val$strategy:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->val$strategy:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->val$overrider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->$r8$classId:I

    const/16 v1, 0x24

    const/16 v2, 0x2e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "name"

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->val$overrider:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->val$strategy:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/transition/TransitionValuesMaps;

    move-object v8, v6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-object v9, p1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v8, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-static/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    move-result-object v4

    :cond_0
    return-object v4

    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    check-cast v6, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;->map:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-nez p0, :cond_3

    :cond_1
    if-ltz p1, :cond_2

    array-length p0, v6

    if-ge p1, p0, :cond_2

    aget-object p0, v6, p1

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    :cond_3
    :goto_0
    return-object p0

    :pswitch_1
    check-cast p0, Lkotlinx/serialization/json/JsonConfiguration;

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    const-string v1, "$this$extractNullability"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    :cond_4
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;->isFreshlySupportedTypeUseAnnotation:Z

    if-nez v2, :cond_a

    iget-object p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-eq p0, v2, :cond_a

    :cond_5
    const/4 p0, 0x0

    if-eqz v1, :cond_9

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->BUILTINS_MODULE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->findAnnotation(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->enumArguments(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_9
    :goto_1
    move v3, p0

    :cond_a
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    check-cast v6, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v3, v6, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;

    const-string/jumbo v5, "request"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v8, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->javaClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    if-eqz p1, :cond_d

    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v8, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v8

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "metadataVersion"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Landroidx/compose/animation/ChangeSize;->tryLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-static {v7}, Landroidx/compose/animation/CrossfadeKt;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v8, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v8, v7}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    :goto_3
    move-object v8, v4

    goto :goto_4

    :cond_d
    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v8, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v8

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v7, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lcom/google/android/gms/tasks/zzb;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_e

    iget-object v7, v8, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    goto :goto_5

    :cond_e
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_f

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v8

    goto :goto_6

    :cond_f
    move-object v8, v4

    :goto_6
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isNestedClass()Z

    move-result v9

    if-nez v9, :cond_1c

    iget-boolean v8, v8, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-eqz v8, :cond_10

    goto/16 :goto_c

    :cond_10
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    iget-object v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->kind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v9, v10, :cond_13

    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->readClassData$descriptors_jvm(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    move-result-object v9

    if-nez v9, :cond_12

    move-object v0, v4

    goto :goto_7

    :cond_12
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v7

    invoke-virtual {v0, v7, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_14

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    invoke-direct {v8, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    goto :goto_8

    :cond_13
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    :cond_14
    :goto_8
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    if-eqz v0, :cond_15

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto/16 :goto_c

    :cond_15
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    if-eqz v0, :cond_16

    goto/16 :goto_c

    :cond_16
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_19

    iget-object p1, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Landroidx/window/core/ConsumerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->relativeClassName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_9

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    iget-object p1, p1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Landroidx/compose/animation/ChangeSize;->tryLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    move-object p1, v0

    goto :goto_a

    :cond_18
    move-object p1, v4

    :cond_19
    :goto_a
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    goto :goto_b

    :cond_1a
    move-object v0, v4

    :goto_b
    if-eqz v0, :cond_1c

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    invoke-direct {v0, v6, p0, p1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    iget-object p0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    :cond_1c
    :goto_c
    return-object v4

    :cond_1d
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_3
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "accessorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_d

    :cond_1e
    invoke-virtual {v6, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->searchMethodsByNameWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v6, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->searchMethodsInSupertypesWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_d
    return-object p0

    :pswitch_4
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    check-cast v6, Landroidx/media3/extractor/text/pgs/PgsParser;

    move-object v9, p1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->nestedClassIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p0, v6, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Landroidx/window/core/ConsumerAdapter;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->relativeClassName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_e

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_e
    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    invoke-static {p0, p1}, Landroidx/compose/animation/ChangeSize;->tryLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_20

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    goto :goto_f

    :cond_20
    move-object p1, v4

    :goto_f
    if-eqz p1, :cond_24

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    invoke-direct {p0, v6, v0, p1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    iget-object p1, v6, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    goto/16 :goto_10

    :cond_21
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->generatedNestedClassNames:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    iget-object p1, v6, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "thisDescriptor"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "c"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->getSize()I

    move-result p1

    if-eqz p1, :cond_24

    if-ne p1, v3, :cond_22

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_10

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multiple classes with same name are generated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->enumEntryIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;

    if-eqz p1, :cond_24

    iget-object v0, v6, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$$Lambda$1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;I)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {v10, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v6, p1}, Landroidx/compose/foundation/text/ClickableTextKt;->resolveAnnotations(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-result-object v11

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    move-result-object v4

    :cond_24
    :goto_10
    return-object v4

    :pswitch_5
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string/jumbo v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->conflict(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

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
