.class public abstract Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getSafeClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    sget-object v21, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const-class v6, Lkotlin/Unit;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "getClassLoader(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    new-instance v4, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v4, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "runtime module for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    sget-object v31, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    const-string v6, "moduleName"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v7, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v6, v7}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;

    invoke-direct {v7, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "<"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const/16 v9, 0x38

    invoke-direct {v8, v0, v6, v7, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;I)V

    iget-object v9, v6, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    :try_start_0
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    if-nez v0, :cond_7

    iput-object v8, v7, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;

    const/4 v9, 0x1

    invoke-direct {v0, v8, v9}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;I)V

    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;

    new-instance v26, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/16 v9, 0x11

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Lcom/motorola/camera/PermissionCallback;-><init>(IZ)V

    new-instance v14, Landroidx/work/WorkQuery;

    invoke-direct {v14, v6, v8}, Landroidx/work/WorkQuery;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    sget-object v33, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    new-instance v22, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    sget-object v27, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    sget-object v29, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    new-instance v9, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v9, v6}, Lcom/google/mlkit/common/internal/zzb;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    sget-object v34, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    invoke-direct {v10, v8, v14}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    invoke-direct {v12, v13}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    new-instance v39, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    sget-object v41, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    new-instance v44, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    sget-object v35, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

    sget-object v40, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    move-object/from16 v32, v0

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-object/from16 v36, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v28, v11

    move-object/from16 v38, v12

    move-object/from16 v43, v13

    move-object/from16 v42, v18

    invoke-direct/range {v22 .. v44}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Landroidx/window/core/ConsumerAdapter;Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lcom/google/mlkit/common/internal/zzb;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;Lcom/motorola/camera/PermissionCallback;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V

    move-object v3, v7

    move-object/from16 v8, v22

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v7, v36

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    invoke-direct {v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;)V

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const-string v9, "metadataVersion"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lkotlinx/coroutines/flow/SharingConfig;

    invoke-direct {v9, v0, v4}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v9

    new-instance v9, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v9, v7, v14, v6, v0}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lcom/motorola/camera/ui/widgets/gl/Matrices;)V

    iput-object v8, v9, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    instance-of v13, v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    if-eqz v13, :cond_2

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    :goto_0
    move-object v13, v5

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :goto_1
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-object v15, v8

    move-object v8, v12

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v16

    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    :goto_2
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v15

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    :goto_3
    sget-object v17, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    move-object/from16 p0, v3

    new-instance v3, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v3, v6}, Lcom/google/mlkit/common/internal/zzb;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    move-object/from16 v19, v13

    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v22, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v32

    invoke-direct/range {v5 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lcom/google/mlkit/common/internal/zzb;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;)V

    iput-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    new-instance v8, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v8, v10}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v9

    new-instance v11, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v11, v6}, Lcom/google/mlkit/common/internal/zzb;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    const-string v12, "additionalClassPartsProvider"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v12, "platformDependentDeclarationFilter"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v6, v3, v7}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    new-instance v32, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v12, 0x10

    invoke-direct {v3, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;

    invoke-direct {v12, v7, v14, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;

    invoke-direct {v15, v6, v7}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    move-object/from16 v37, v1

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    invoke-direct {v1, v6, v7}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    filled-new-array {v15, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v38

    iget-object v1, v13, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->extensionRegistry:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    const/high16 v45, 0x40000

    move-object/from16 v42, v1

    move-object/from16 v35, v3

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v44, v11

    move-object/from16 v36, v12

    move-object/from16 v39, v14

    move-object/from16 v43, v18

    invoke-direct/range {v32 .. v45}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Ljava/lang/Iterable;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lcom/google/mlkit/common/internal/zzb;I)V

    move-object/from16 v3, v32

    move-object/from16 v1, v37

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    filled-new-array {v7}, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v6, v3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(Ljava/util/List;)V

    iput-object v6, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->dependencies:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;

    filled-new-array {v10, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "CompositeProvider@RuntimeModuleData for "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->packageFragmentProviderForModuleContent:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    new-instance v3, Lcom/google/zxing/Result;

    invoke-direct {v3, v4, v0}, Lcom/google/zxing/Result;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lcom/motorola/camera/ui/widgets/gl/Matrices;)V

    invoke-direct {v1, v5, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;Lcom/google/zxing/Result;)V

    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v22, v3

    goto :goto_4

    :cond_7
    move-object/from16 p0, v7

    move-object v7, v8

    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-ins module is already set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (attempting to reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    throw v0
.end method
