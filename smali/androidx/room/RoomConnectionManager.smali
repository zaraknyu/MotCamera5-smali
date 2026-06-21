.class public final Landroidx/room/RoomConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final callbacks:Ljava/lang/Object;

.field public final configuration:Ljava/lang/Object;

.field public final connectionPool:Ljava/lang/Object;

.field public isConfigured:Z

.field public isInitializing:Z

.field public final openDelegate:Ljava/lang/Object;

.field public supportDatabase:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    .line 4
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 5
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x15

    invoke-direct {p3, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 6
    const-class p2, Landroidx/room/RoomConnectionManager;

    .line 7
    sget-object p3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p3, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, ":"

    .line 9
    invoke-static {p2, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 13
    new-instance v2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    const/4 v3, -0x1

    .line 14
    const-string v4, ""

    invoke-direct {v2, v4, v3, v4}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 16
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iput-object v4, v0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 17
    new-instance v4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    if-nez v2, :cond_1

    move-object v2, v3

    .line 18
    :cond_1
    new-instance v3, Landroidx/work/impl/CleanupCallback;

    invoke-direct {v3, v4}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    .line 19
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 20
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 21
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 22
    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 23
    iget-object v5, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    .line 24
    iget-boolean v7, v1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 25
    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 26
    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 27
    iget-object v11, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    .line 28
    iget-boolean v12, v1, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    .line 29
    iget-boolean v13, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    .line 30
    iget-object v14, v1, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    .line 31
    iget-object v15, v1, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 32
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    move-object/from16 v17, v3

    .line 33
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v18, v3

    .line 34
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    move-object/from16 v19, v4

    .line 35
    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    move-object/from16 v20, v6

    .line 36
    iget-boolean v6, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    move/from16 v21, v6

    .line 37
    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    .line 38
    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v22, v1

    .line 39
    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "migrationContainer"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "queryExecutor"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "transactionExecutor"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "typeConverters"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "autoMigrationSpecs"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v1, Landroidx/room/DatabaseConfiguration;

    move-object/from16 v23, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v23

    move-object/from16 v23, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v23

    move/from16 v23, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    move/from16 v20, v23

    invoke-direct/range {v1 .. v22}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Lcom/google/android/gms/tasks/zzs;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 41
    new-instance v2, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 42
    new-instance v3, Lcom/google/android/gms/tasks/zza;

    move-object/from16 v4, p2

    .line 43
    invoke-virtual {v4, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 44
    invoke-direct {v3, v1}, Lcom/google/android/gms/tasks/zza;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 45
    invoke-direct {v2, v3}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Lcom/google/android/gms/tasks/zza;)V

    .line 46
    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 47
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v8, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_1
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 9

    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iget-object v4, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 52
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v2, :cond_0

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    iput-object v2, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 53
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    const/4 v8, 0x1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 54
    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 55
    const-string p1, "context"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v5, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    .line 57
    iget p1, p2, Landroidx/room/RoomOpenDelegate;->version:I

    .line 58
    invoke-direct {v5, p0, p1}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    .line 59
    new-instance v2, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/decoder/Buffer;ZZ)V

    .line 60
    new-instance p1, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 61
    new-instance p2, Lcom/google/android/gms/tasks/zza;

    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Lkotlinx/serialization/json/JsonConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/google/android/gms/tasks/zza;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 62
    invoke-direct {p1, p2}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Lcom/google/android/gms/tasks/zza;)V

    .line 63
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    goto/16 :goto_3

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v4, :cond_3

    .line 65
    new-instance p1, Lcom/tinder/StateMachine;

    invoke-direct {p1, p0, v2}, Lcom/tinder/StateMachine;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 66
    new-instance p2, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {p2, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Lcom/tinder/StateMachine;)V

    goto :goto_2

    .line 67
    :cond_3
    new-instance p1, Lcom/tinder/StateMachine;

    invoke-direct {p1, p0, v2}, Lcom/tinder/StateMachine;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/16 v1, 0x27

    const/4 v2, 0x2

    if-eq p2, v8, :cond_5

    if-ne p2, v2, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of reader for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move p2, v8

    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v8, :cond_7

    if-ne v3, v2, :cond_6

    goto :goto_1

    .line 72
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of writers for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_7
    :goto_1
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v1, p1, v4, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Lcom/tinder/StateMachine;Ljava/lang/String;I)V

    move-object p2, v1

    .line 75
    :goto_2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 76
    :goto_3
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 77
    :goto_4
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, v8}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public static final access$configureDatabase(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomOpenDelegate;

    const-string v1, "PRAGMA user_version = "

    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v2, Landroidx/room/DatabaseConfiguration;

    iget-object v3, v2, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v4, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v3, v4, :cond_0

    const-string v3, "PRAGMA journal_mode = WAL"

    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "PRAGMA journal_mode = TRUNCATE"

    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :goto_0
    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v2, v4, :cond_1

    const-string v2, "PRAGMA synchronous = NORMAL"

    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "PRAGMA synchronous = FULL"

    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Landroidx/room/RoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    const-string v2, "PRAGMA user_version"

    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget v0, v0, Landroidx/room/RoomOpenDelegate;->version:I

    if-eq v3, v0, :cond_5

    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Landroidx/room/RoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    const-string v0, "PRAGMA busy_timeout"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-string v0, "PRAGMA busy_timeout = 3000"

    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast p0, Landroidx/room/coroutines/ConnectionPool;

    instance-of v0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Lcom/google/android/gms/tasks/zza;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 8

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomOpenDelegate;

    const-string v1, "connection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/CleanupCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/room/driver/SupportSQLiteConnection;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object v0, v0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v1, "db"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onMigrate(Landroidx/sqlite/SQLiteConnection;II)V
    .locals 4

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomOpenDelegate;

    const-string v1, "connection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v1, Landroidx/room/DatabaseConfiguration;

    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    invoke-static {v2, p2, p3}, Landroidx/room/util/MigrationUtil;->findMigrationPath(Lcom/google/android/gms/tasks/zzs;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/room/migration/Migration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p1, Landroidx/room/driver/SupportSQLiteConnection;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p3, p3, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-virtual {p2, p3}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object p0

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object p0, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1, p2, p3}, Landroidx/room/util/MigrationUtil;->isMigrationRequired(Landroidx/room/DatabaseConfiguration;II)Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean p2, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    if-eqz p2, :cond_8

    const-string p2, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    invoke-interface {p1, p2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p2

    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p2, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sqlite_"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android_metadata"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    invoke-static {p3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v2}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :goto_2
    move-object p3, p2

    check-cast p3, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {p3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    iget-object v1, p3, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p3, p3, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "DROP VIEW IF EXISTS "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    :cond_9
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/impl/CleanupCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Landroidx/room/driver/SupportSQLiteConnection;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p2, p2, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string p3, "db"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "A migration from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 10

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomOpenDelegate;

    const-string v1, "Pre-packaged database has an invalid schema: "

    const-string v2, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_3

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v6

    :goto_1
    invoke-static {v1, v6}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->legacyIdentityHash:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object v2

    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :catchall_3
    move-exception v1

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_4
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, v1

    check-cast v2, Lkotlin/Unit;

    const-string v2, "END TRANSACTION"

    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_5
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_6
    :goto_5
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/CleanupCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Landroidx/room/driver/SupportSQLiteConnection;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object v2, v2, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-virtual {v1, v2}, Landroidx/work/impl/CleanupCallback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_6

    :cond_8
    iput-boolean v4, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    return-void

    :cond_9
    const-string p0, "ROLLBACK TRANSACTION"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    throw v1

    :goto_7
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public processInput()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    iget-object v3, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/media/MediaCodec;

    iget-boolean v0, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_3

    :cond_0
    :goto_0
    move v5, v7

    goto :goto_3

    :cond_1
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {v4, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v10, v3

    check-cast v10, Landroid/media/MediaCodec;

    iget-object v8, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v14, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x0

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_3

    :goto_1
    move v7, v5

    goto :goto_2

    :cond_2
    move-object v10, v3

    check-cast v10, Landroid/media/MediaCodec;

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz v11, :cond_0

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public processOutput()V
    .locals 7

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec;

    const-wide/32 v3, 0x186a0

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :cond_0
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleFormatChanged(Landroid/media/MediaCodec;)V

    return-void

    :cond_1
    if-gez v3, :cond_2

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "Got invalid output status "

    invoke-static {v0, v3, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    new-instance v5, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v5, v4, v1, v3, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    invoke-interface {v0, v5}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V

    iget v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 5

    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Thread;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v3, 0xbb8

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "codec looper thread still alive, interrupt"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to stop codec thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_1
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Failed to stop/release codec"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
