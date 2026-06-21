.class public final Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final database:Landroidx/room/RoomDatabase;

.field public final implementation:Landroidx/room/TriggerBasedInvalidationTracker;

.field public final observerMap:Ljava/util/LinkedHashMap;

.field public final observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final onRefreshCompleted:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

.field public final onRefreshScheduled:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

.field public final trackerLock:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    new-instance v9, Landroidx/room/TriggerBasedInvalidationTracker;

    iget-boolean v10, p1, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const-class v3, Landroidx/room/InvalidationTracker;

    const-string v4, "notifyInvalidatedObservers"

    const-string v5, "notifyInvalidatedObservers(Ljava/util/Set;)V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    move-object v0, v9

    move v5, v10

    invoke-direct/range {v0 .. v6}, Landroidx/room/TriggerBasedInvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;ZLandroidx/room/InvalidationTracker$implementation$1;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;-><init>(Landroidx/room/InvalidationTracker;I)V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "newSetFromMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;-><init>(Landroidx/room/InvalidationTracker;I)V

    iput-object v1, v0, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final sync$room_runtime_release(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpenInternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->syncTriggers$room_runtime_release(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
