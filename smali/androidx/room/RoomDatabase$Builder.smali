.class public final Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowDestructiveMigrationOnDowngrade:Z

.field public allowMainThreadQueries:Z

.field public final autoCloseTimeout:J

.field public final autoMigrationSpecs:Ljava/util/ArrayList;

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final inMemoryTrackingTableMode:Z

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field public final klass:Lkotlin/reflect/KClass;

.field public final migrationContainer:Lcom/google/android/gms/tasks/zzs;

.field public final migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

.field public final migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

.field public final name:Ljava/lang/String;

.field public queryExecutor:Ljava/util/concurrent/Executor;

.field public requireMigration:Z

.field public supportOpenHelperFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

.field public transactionExecutor:Ljava/util/concurrent/Executor;

.field public final typeConverters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Landroidx/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    iget-object p0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "migrations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/zzs;->addMigration(Landroidx/room/migration/Migration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final build()Landroidx/room/RoomDatabase;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    const-string v1, "migrationStartAndEndVersions"

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "migrationsNotRequiredFrom"

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    invoke-static {v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/mlkit/common/internal/zze;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    :cond_5
    move-object v6, v1

    iget-wide v1, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const/4 v4, 0x1

    if-lez v1, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-string v5, "Required value was null."

    if-eqz v1, :cond_8

    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v16, v3

    new-instance v3, Landroidx/room/DatabaseConfiguration;

    iget-boolean v9, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "context"

    move v8, v4

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    if-eq v1, v7, :cond_9

    goto :goto_4

    :cond_9
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Landroid/app/ActivityManager;

    if-eqz v7, :cond_a

    check-cast v1, Landroid/app/ActivityManager;

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    goto :goto_4

    :cond_b
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    :goto_4
    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_31

    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_30

    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iget-boolean v15, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    move v13, v8

    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    move/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    const/16 v22, 0x0

    move/from16 v21, v20

    move-object/from16 v20, v2

    move/from16 v2, v21

    move-object/from16 v21, v10

    move-object v10, v1

    const/4 v1, 0x0

    invoke-direct/range {v3 .. v24}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Lcom/google/android/gms/tasks/zzs;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    iget-boolean v4, v0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    iput-boolean v4, v3, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, ""

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const/16 v6, 0x5f

    const/16 v7, 0x2e

    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_Impl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    move-object v0, v5

    goto :goto_6

    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v0, v2, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.util.KClassUtil.findAndInstantiateDatabaseImpl>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v3, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    iput-boolean v4, v0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    :try_start_1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v10

    const-string v4, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-object v10, v1

    :goto_7
    if-nez v10, :cond_10

    new-instance v4, Landroidx/room/RoomConnectionManager;

    new-instance v5, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v4, v3, v5}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    goto :goto_8

    :cond_10
    new-instance v4, Landroidx/room/RoomConnectionManager;

    invoke-direct {v4, v3, v10}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V

    :goto_8
    iput-object v4, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v3, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Z

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/KClass;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/2addr v11, v10

    if-ltz v11, :cond_13

    :goto_a
    add-int/lit8 v12, v11, -0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    aput-boolean v2, v8, v11

    move v10, v11

    goto :goto_b

    :cond_11
    if-gez v12, :cond_12

    goto :goto_b

    :cond_12
    move v11, v12

    goto :goto_a

    :cond_13
    :goto_b
    if-ltz v10, :cond_14

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v10

    if-ltz v5, :cond_18

    :goto_c
    add-int/lit8 v6, v5, -0x1

    if-ge v5, v7, :cond_17

    aget-boolean v5, v8, v5

    if-eqz v5, :cond_17

    if-gez v6, :cond_16

    goto :goto_d

    :cond_16
    move v5, v6

    goto :goto_c

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    invoke-virtual {v0, v4}, Landroidx/room/RoomDatabase;->createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/migration/Migration;

    iget v6, v5, Landroidx/room/migration/Migration;->startVersion:I

    iget v7, v5, Landroidx/room/migration/Migration;->endVersion:I

    iget-object v8, v3, Landroidx/room/DatabaseConfiguration;->migrationContainer:Lcom/google/android/gms/tasks/zzs;

    iget-object v9, v8, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_1a

    sget-object v6, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :cond_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    :goto_f
    if-nez v6, :cond_19

    invoke-virtual {v8, v5}, Lcom/google/android/gms/tasks/zzs;->addMigration(Landroidx/room/migration/Migration;)V

    goto :goto_e

    :cond_1c
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, v3, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Z

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/KClass;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/KClass;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/2addr v11, v10

    if-ltz v11, :cond_20

    :goto_11
    add-int/lit8 v12, v11, -0x1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    aput-boolean v2, v6, v11

    goto :goto_13

    :cond_1e
    if-gez v12, :cond_1f

    goto :goto_12

    :cond_1f
    move v11, v12

    goto :goto_11

    :cond_20
    :goto_12
    move v11, v10

    :goto_13
    if-ltz v11, :cond_21

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "kclass"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "converter"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v10

    if-ltz v2, :cond_25

    :goto_14
    add-int/lit8 v4, v2, -0x1

    aget-boolean v7, v6, v2

    if-eqz v7, :cond_24

    if-gez v4, :cond_23

    goto :goto_15

    :cond_23
    move v2, v4

    goto :goto_14

    :cond_24
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_15
    iget-object v2, v3, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/TransactionExecutor;

    iget-object v4, v3, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v2, v0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    iget-object v2, v0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_2f

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v2

    iput-object v2, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object v2, v2, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v4, v0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    if-eqz v4, :cond_2e

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    iget-boolean v2, v3, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v2, v0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    iget-object v2, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    const-string v3, "connectionManager"

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    if-nez v2, :cond_27

    :cond_26
    move-object v10, v1

    goto :goto_17

    :cond_27
    move-object v10, v2

    :goto_16
    instance-of v2, v10, Landroidx/room/support/PrePackagedCopyOpenHelper;

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    instance-of v2, v10, Landroidx/room/DelegatingOpenHelper;

    if-eqz v2, :cond_26

    check-cast v10, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v10}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v10

    goto :goto_16

    :goto_17
    check-cast v10, Landroidx/room/support/PrePackagedCopyOpenHelper;

    iget-object v2, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    if-nez v2, :cond_2a

    :cond_29
    move-object v10, v1

    goto :goto_19

    :cond_2a
    move-object v10, v2

    :goto_18
    instance-of v2, v10, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v2, :cond_2b

    goto :goto_19

    :cond_2b
    instance-of v2, v10, Landroidx/room/DelegatingOpenHelper;

    if-eqz v2, :cond_29

    check-cast v10, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v10}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v10

    goto :goto_18

    :goto_19
    check-cast v10, Landroidx/room/support/AutoClosingRoomOpenHelper;

    return-object v0

    :cond_2c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2e
    const-string v0, "internalTransactionExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2f
    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1a

    :catch_2
    move-exception v0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_1c

    :goto_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access the constructor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find implementation for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist. Is Room annotation processor correctly configured?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
