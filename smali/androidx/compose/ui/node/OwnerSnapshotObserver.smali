.class public final Landroidx/compose/ui/node/OwnerSnapshotObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final observer:Landroidx/preference/PreferenceManager;

.field public final onCommitAffectingLayout:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingLayoutModifier:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingLayoutModifierInLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingLookaheadMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

.field public final onCommitAffectingSemantics:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/preference/PreferenceManager;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$9:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookaheadMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$10:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$11:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingSemantics:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$6:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifier:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$7:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifierInLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$8:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    return-void
.end method


# virtual methods
.method public final observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v6, v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    if-nez v5, :cond_2

    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const-string v2, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit v0

    iget-object p2, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/internal/Utils_jvmKt;->currentThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), currentThread={id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/compose/runtime/internal/Utils_jvmKt;->currentThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    :goto_3
    :try_start_1
    iput-object v5, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/internal/Utils_jvmKt;->currentThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    iget-object v2, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/io/Serializable;

    check-cast v2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-virtual {v5, p1, v2, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->observe(Landroidx/compose/ui/node/OwnerScope;Landroidx/compose/runtime/Recomposer$effectJob$1$1;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object p2, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    return-void

    :catchall_1
    move-exception p1

    iput-object p2, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    throw p1

    :goto_4
    monitor-exit v0

    throw p0
.end method
