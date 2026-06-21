.class public final Lcom/motorola/camera/ui/widgets/gl/Matrices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwo;
.implements Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;
.implements Landroidx/databinding/InverseBindingListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;


# instance fields
.field public final synthetic $r8$classId:I

.field public mTypeMap:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->values()[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const/16 v4, 0x10

    .line 20
    new-array v4, v4, [F

    .line 21
    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 23
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    return-void

    .line 25
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 26
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->Companion:Landroidx/transition/Transition$1;

    .line 4
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_1

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    .line 8
    const-string v2, "fileData_table.db"

    .line 9
    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 12
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    .line 13
    sput-object p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->fileDataDao()Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    :goto_3
    return-void
.end method


# virtual methods
.method public findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->packageFragments(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->classDataFinder:Landroidx/work/WorkQuery;

    invoke-virtual {v0, p1}, Landroidx/work/WorkQuery;->findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lcom/google/android/gms/tasks/zzb;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->relativeClassName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-static {p2, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ClassLoader;

    invoke-static {p0, p2}, Landroidx/compose/animation/ChangeSize;->tryLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/animation/CrossfadeKt;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zze:[Landroid/graphics/Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    move v3, v2

    move v4, v3

    move v2, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zze:[Landroid/graphics/Point;

    array-length v6, v5

    if-ge v0, v6, :cond_0

    aget-object v5, v5, v0

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zze:[Landroid/graphics/Point;

    return-object p0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zza:I

    return p0
.end method

.method public getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    iget p1, p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;->aCoeff:F

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget p0, p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;->bCoeff:F

    sub-float/2addr p2, p0

    div-float/2addr p2, p1

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "getSupertypes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v3, :cond_2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getJavaAnalogue(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzo:[B

    return-object p0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getValueType()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzd:I

    return p0
.end method

.method public insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p5, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    iget v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    invoke-direct {v0, p0, p5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-wide p2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    const/4 p5, 0x3

    const/4 v2, 0x0

    sget-object v4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    if-eqz p4, :cond_5

    new-instance p4, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;

    invoke-direct {p4, p0, p1, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, p4, p5}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    iput-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    iput v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Long;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_4
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_5
    new-instance p4, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;

    invoke-direct {p4, p0, p1, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, p4, p5}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0
.end method

.method public onChange()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH383dpNormalImpl;

    iget-object v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->binaryClasses$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/StorageKt;->getValue(Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public touchUp(I)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    return-void
.end method

.method public zza()Lcom/google/common/base/Splitter;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    .line 3
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/tasks/zzad;-><init>(IZ)V

    .line 9
    iput-object p0, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    .line 10
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;-><init>(Lcom/google/android/gms/tasks/zzad;)V

    .line 11
    iput-object p0, v0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    .line 12
    new-instance p0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/fsm/Fsm;I)V

    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PermissionCallback;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzac;

    .line 14
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/google/android/play/core/splitinstall/zzs;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/zzs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
