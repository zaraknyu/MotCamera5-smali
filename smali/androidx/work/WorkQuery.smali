.class public final Landroidx/work/WorkQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/autofill/Autofill;
.implements Landroidx/media3/extractor/text/SubtitleParser;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;


# instance fields
.field public ids:Ljava/lang/Object;

.field public states:Ljava/lang/Object;

.field public tags:Ljava/lang/Object;

.field public uniqueWorkNames:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SimpleSQLiteQuery;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;)V
    .locals 0

    .line 5
    iput-object p1, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableList;Lcom/tinder/StateMachine;Lcom/motorola/camera/CameraKpi;Landroidx/room/concurrent/FileLock;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 10
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 11
    :goto_0
    iput-object p1, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    .line 14
    iput-object p4, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    .line 3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;-><init>(Landroidx/work/WorkQuery;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p2

    iput-object p2, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    .line 4
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;-><init>(Landroidx/work/WorkQuery;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    iget-object v2, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/selects/SelectClause1Impl;

    iget-object v3, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    iget-object p0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-direct {v1, v2, v0, v3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v2, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    iget-object p0, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V

    return-object v3
.end method

.method public getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;
    .locals 5

    iget-object v0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/SupportActionModeWrapper;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/appcompat/view/SupportActionModeWrapper;

    iget-object p0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object p0
.end method

.method public getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    iget p1, p1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    sget-object v1, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 v1, 0x2

    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    invoke-static {v1, v2}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string/jumbo p1, "work_spec_id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v0, "generation"

    invoke-static {p0, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "system_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v3, Landroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v3, p1, v0, v1}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object p0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p2, Landroidx/core/internal/view/SupportMenuItem;

    invoke-direct {v1, p0, p2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    iget-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object p0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    move-object v3, p2

    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v1, p2, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    add-int v3, v1, p3

    move-object/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, v0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    iget-object v4, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v4, Ljava/util/zip/Inflater;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v4, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/Inflater;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x78

    if-ne v4, v5, :cond_1

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Util;->inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    const/4 v1, 0x0

    iput-object v1, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    const/4 v4, -0x1

    iput v4, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    iput v4, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    if-eq v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v5, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    const/4 v7, 0x1

    if-eqz v5, :cond_8

    iget-boolean v8, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-nez v8, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    iget-object v9, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    :goto_0
    :pswitch_0
    iget v10, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v10, v8, :cond_8

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x4

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-ge v10, v12, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    iput v10, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    iput v10, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    shl-int/2addr v10, v12

    shr-int/lit8 v14, v11, 0x4

    or-int/2addr v10, v14

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    shl-int/lit8 v12, v13, 0x4

    shr-int/lit8 v13, v14, 0x4

    or-int/2addr v12, v13

    and-int/lit8 v13, v14, 0xf

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v15

    new-instance v14, Landroid/graphics/Rect;

    add-int/2addr v11, v7

    add-int/2addr v13, v7

    invoke-direct {v14, v10, v12, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v14, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-lt v10, v6, :cond_8

    iget-boolean v10, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    aget v13, v9, v11

    shr-int/lit8 v14, v10, 0x4

    invoke-static {v13, v14}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v13

    aput v13, v9, v11

    aget v11, v9, v6

    and-int/lit8 v10, v10, 0xf

    invoke-static {v11, v10}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v10

    aput v10, v9, v6

    aget v10, v9, v7

    shr-int/lit8 v11, v12, 0x4

    invoke-static {v10, v11}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v10

    aput v10, v9, v7

    aget v10, v9, v0

    and-int/lit8 v11, v12, 0xf

    invoke-static {v10, v11}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v10

    aput v10, v9, v0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-ge v10, v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    shr-int/lit8 v13, v10, 0x4

    invoke-static {v5, v13}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v13

    aput v13, v9, v11

    and-int/lit8 v10, v10, 0xf

    invoke-static {v5, v10}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v10

    aput v10, v9, v6

    shr-int/lit8 v10, v12, 0x4

    invoke-static {v5, v10}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v10

    aput v10, v9, v7

    and-int/lit8 v10, v12, 0xf

    invoke-static {v5, v10}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v10

    aput v10, v9, v0

    iput-boolean v7, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    goto/16 :goto_0

    :cond_8
    :goto_1
    iget-object v5, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    if-eqz v5, :cond_a

    iget-boolean v5, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-eqz v5, :cond_a

    iget-object v5, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    if-eqz v5, :cond_a

    iget v8, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    if-eq v8, v4, :cond_a

    iget v8, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    if-eq v8, v4, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v6, :cond_a

    iget-object v4, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v6, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v4

    new-array v4, v5, [I

    new-instance v5, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v5}, Landroidx/media3/extractor/VorbisBitArray;-><init>()V

    iget v6, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5, v2}, Landroidx/media3/extractor/VorbisBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v3, v5, v7, v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/extractor/VorbisBitArray;ZLandroid/graphics/Rect;[I)V

    iget v6, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5, v2}, Landroidx/media3/extractor/VorbisBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v3, v5, v0, v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/extractor/VorbisBitArray;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v2, v2

    div-float v14, v0, v2

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v2, v2

    div-float v11, v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v2, v2

    div-float v18, v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v1, v1

    div-float v19, v0, v1

    new-instance v6, Landroidx/media3/common/text/Cue;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x80000000

    const v17, -0x800001

    const/16 v20, 0x0

    const/high16 v21, -0x1000000

    const/16 v23, 0x0

    move-object v8, v7

    move-object v9, v7

    move/from16 v22, v16

    invoke-direct/range {v6 .. v23}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object v1, v6

    :cond_a
    :goto_2
    new-instance v2, Landroidx/media3/extractor/text/CuesWithTiming;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    :goto_3
    move-object v7, v0

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_3

    :goto_4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v5, 0x4c4b40

    invoke-direct/range {v2 .. v7}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object p0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p0}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object p0

    return-object p0
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;
    .locals 3

    iget-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p2, p3, v0}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object p0

    return-object p0
.end method
