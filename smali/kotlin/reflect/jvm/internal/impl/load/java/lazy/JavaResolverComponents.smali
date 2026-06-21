.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

.field public final deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

.field public final errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

.field public final finder:Landroidx/window/core/ConsumerAdapter;

.field public final javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

.field public final javaModuleResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

.field public final javaPropertyInitializerEvaluator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

.field public final javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

.field public final javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

.field public final kotlinClassFinder:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public final kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

.field public final lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

.field public final module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

.field public final moduleClassResolver:Lcom/motorola/camera/PermissionCallback;

.field public final packagePartProvider:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

.field public final reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

.field public final samConversionResolver:Lcom/google/mlkit/common/internal/zzb;

.field public final settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

.field public final signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

.field public final signaturePropagator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

.field public final sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

.field public final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field public final supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

.field public final syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Landroidx/window/core/ConsumerAdapter;Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;Lcom/google/mlkit/common/internal/zzb;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;Lcom/motorola/camera/PermissionCallback;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    const-string/jumbo v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signaturePropagator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "samConversionResolver"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceElementFactory"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packagePartProvider"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "supertypeLoopChecker"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reflectionTypes"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signatureEnhancement"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "syntheticPartsProvider"

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Landroidx/window/core/ConsumerAdapter;

    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    iput-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signaturePropagator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    move-object/from16 v1, v16

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iput-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaPropertyInitializerEvaluator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iput-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->samConversionResolver:Lcom/google/mlkit/common/internal/zzb;

    iput-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    iput-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lcom/motorola/camera/PermissionCallback;

    iput-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->packagePartProvider:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    iput-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    iput-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

    iput-object v14, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v1, p16

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v1, p17

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    move-object/from16 v1, p18

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    move-object/from16 v1, p19

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver$EMPTY;

    move-object/from16 v1, p20

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v1, p21

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v1, p22

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaModuleResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    iput-object v15, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    return-void
.end method
