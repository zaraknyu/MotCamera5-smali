.class public final Landroidx/room/concurrent/ExclusiveLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Landroidx/collection/internal/Lock;

.field public static final threadLocksMap:Ljava/util/LinkedHashMap;


# instance fields
.field public final fileLock:Landroidx/room/concurrent/FileLock;

.field public final threadLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/internal/Lock;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    sput-object v0, Landroidx/room/concurrent/ExclusiveLock;->Companion:Landroidx/collection/internal/Lock;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/room/concurrent/ExclusiveLock;->threadLocksMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/room/concurrent/ExclusiveLock;->Companion:Landroidx/collection/internal/Lock;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/room/concurrent/ExclusiveLock;->threadLocksMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v2, p0, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/room/concurrent/FileLock;

    invoke-direct {p2, p1}, Landroidx/room/concurrent/FileLock;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Landroidx/room/concurrent/ExclusiveLock;->fileLock:Landroidx/room/concurrent/FileLock;

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
