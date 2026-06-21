.class public final Landroidx/transition/TransitionValuesMaps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;


# instance fields
.field public mIdValues:Ljava/lang/Object;

.field public mItemIdValues:Ljava/lang/Object;

.field public mNameValues:Ljava/lang/Object;

.field public final mViewValues:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Landroidx/collection/ArrayMap;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroidx/collection/ArrayMap;

    .line 14
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 15
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    return-void

    .line 16
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 18
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 20
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnstableContentProvider."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Animations;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V
    .locals 2

    .line 71
    new-instance v0, Landroidx/room/ObservedTableVersions;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    .line 72
    invoke-direct {p0, v0}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroidx/compose/animation/core/Animations;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    .line 76
    iget p1, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array p2, p1, [Z

    iput-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    .line 77
    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 25
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x5

    .line 26
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 27
    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 30
    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    .line 31
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    const/4 v1, 0x4

    .line 32
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 33
    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Landroidx/media3/extractor/text/pgs/PgsParser;Ljava/util/ArrayList;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/tasks/zzu;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroidx/room/TransactionExecutor;

    invoke-direct {v0, p1, v1}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V
    .locals 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    .line 43
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 44
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 45
    const-string v1, "getEnumEntryList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 46
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 47
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 50
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 51
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 52
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    .line 53
    invoke-static {v4, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    .line 54
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_1
    iput-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 57
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 58
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 59
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 60
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 62
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 63
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 64
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 65
    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 67
    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 68
    iput-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquireClientIfNeeded()Landroid/content/ContentProviderClient;
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Provider not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public closeClient()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p1
.end method

.method public dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroidx/transition/TransitionValuesMaps;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeOnTaskThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    invoke-virtual {p0, p1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/Animations;

    invoke-interface {v4, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v6

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroidx/compose/animation/core/FloatAnimationSpec;->getDurationNanos(FFF)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 9

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    const/4 v1, 0x0

    const-string v2, "endVelocityVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/animation/core/Animations;

    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v6

    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Landroidx/compose/animation/core/FloatAnimationSpec;->getEndVelocity(FFF)F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 14

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    const/4 v1, 0x0

    const-string/jumbo v2, "valueVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/animation/core/Animations;

    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    move-result-object v6

    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    move-object/from16 v12, p4

    invoke-virtual {v12, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    move-object/from16 v13, p5

    invoke-virtual {v13, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    move-wide v10, p1

    invoke-interface/range {v6 .. v11}, Landroidx/compose/animation/core/FloatAnimationSpec;->getValueFromNanos(FFFJ)F

    move-result v6

    invoke-virtual {v4, v6, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 14

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    const/4 v1, 0x0

    const-string/jumbo v2, "velocityVector"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/animation/core/Animations;

    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    move-result-object v6

    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    move-object/from16 v12, p4

    invoke-virtual {v12, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    move-object/from16 v13, p5

    invoke-virtual {v13, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    move-wide v10, p1

    invoke-interface/range {v6 .. v11}, Landroidx/compose/animation/core/FloatAnimationSpec;->getVelocityFromNanos(FFFJ)F

    move-result v6

    invoke-virtual {v4, v6, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object p0

    return-object p0
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;

    move-result-object p0

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitEnd()V

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    return-void
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {v1}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/zzx;

    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {v1}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/zzs;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzbe;

    new-instance p0, Lcom/google/android/play/core/splitinstall/zzaa;

    check-cast v0, Lcom/google/android/play/core/splitinstall/zzbc;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/splitinstall/zzaa;-><init>(Lcom/google/android/play/core/splitinstall/zzs;)V

    return-object p0
.end method
