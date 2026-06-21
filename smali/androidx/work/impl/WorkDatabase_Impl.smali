.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# instance fields
.field public volatile _dependencyDao:Lcom/tinder/StateMachine;

.field public volatile _preferenceDao:Lcom/motorola/camera/CameraKpi;

.field public volatile _rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

.field public volatile _systemIdInfoDao:Landroidx/work/WorkQuery;

.field public volatile _workNameDao:Landroidx/room/concurrent/FileLock;

.field public volatile _workProgressDao:Landroidx/transition/TransitionValuesMaps;

.field public volatile _workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public volatile _workTagDao:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    new-instance v3, Landroidx/room/RoomOpenHelper;

    new-instance v0, Landroidx/room/ObservedTableVersions;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, p1, v0}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/ObservedTableVersions;)V

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/decoder/Buffer;ZZ)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Lkotlinx/serialization/json/JsonConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public final dependencyDao()Lcom/tinder/StateMachine;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/tinder/StateMachine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/tinder/StateMachine;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/tinder/StateMachine;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/tinder/StateMachine;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/tinder/StateMachine;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0xe

    const/16 v1, 0xa

    const/16 v2, 0xd

    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Landroidx/work/impl/Migration_1_2;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0xc

    const/16 v1, 0x10

    const/16 v2, 0x11

    invoke-direct {p1, v1, v2, v0}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0xd

    const/16 v1, 0x12

    invoke-direct {p1, v2, v1, v0}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0x13

    const/16 v2, 0xe

    invoke-direct {p1, v1, v0, v2}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Landroidx/work/impl/Migration_1_2;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0x15

    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/impl/Migration_1_2;

    const/16 v0, 0x17

    const/16 v1, 0x11

    const/16 v2, 0x16

    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-class v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/tinder/StateMachine;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/work/WorkQuery;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/transition/TransitionValuesMaps;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final preferenceDao()Lcom/motorola/camera/CameraKpi;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/CameraKpi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/CameraKpi;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, p0}, Lcom/motorola/camera/CameraKpi;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/CameraKpi;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/CameraKpi;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final rawWorkInfoDao()Lcom/google/android/gms/tasks/zzad;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/google/android/gms/tasks/zzad;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final systemIdInfoDao()Landroidx/work/WorkQuery;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/work/WorkQuery;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v1, v0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v1, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v1, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final workNameDao()Landroidx/room/concurrent/FileLock;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/room/concurrent/FileLock;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/room/concurrent/FileLock;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/room/concurrent/FileLock;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/room/concurrent/FileLock;

    invoke-direct {v0, p0}, Landroidx/room/concurrent/FileLock;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/room/concurrent/FileLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/room/concurrent/FileLock;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final workProgressDao()Landroidx/transition/TransitionValuesMaps;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/transition/TransitionValuesMaps;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/transition/TransitionValuesMaps;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/transition/TransitionValuesMaps;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v0, p0}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/transition/TransitionValuesMaps;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/transition/TransitionValuesMaps;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final workTagDao()Landroidx/core/view/MenuHostHelper;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
