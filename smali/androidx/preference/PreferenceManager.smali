.class public final Landroidx/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContext:Ljava/lang/Object;

.field public mEditor:Ljava/lang/Object;

.field public mNextId:J

.field public mNoCommit:Z

.field public mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

.field public mOnNavigateToScreenListener:Ljava/lang/Object;

.field public mOnPreferenceTreeClickListener:Ljava/lang/Object;

.field public mPreferenceScreen:Ljava/lang/Object;

.field public mSharedPreferences:Ljava/lang/Object;

.field public mSharedPreferencesName:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    .line 13
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/io/Serializable;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/16 v0, 0xc

    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 5
    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v0, 0x15

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/io/Serializable;

    .line 6
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 7
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    return-void
.end method

.method public static final access$drainChanges(Landroidx/preference/PreferenceManager;)Z
    .locals 10

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    instance-of v6, v3, Ljava/util/Set;

    if-eqz v6, :cond_3

    move-object v6, v3

    check-cast v6, Ljava/util/Set;

    goto :goto_2

    :cond_3
    instance-of v6, v3, Ljava/util/List;

    if-eqz v6, :cond_a

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :cond_5
    :goto_1
    move-object v6, v7

    :goto_2
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v4, v6

    :goto_3
    if-nez v4, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v7, v0

    :goto_4
    if-ge v7, v3, :cond_9

    aget-object v8, v6, v7

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v5

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_9
    monitor-exit v2

    goto :goto_0

    :goto_7
    monitor-exit v2

    throw p0

    :cond_a
    const-string p0, "Unexpected notification"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences$Editor;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    sget-object v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->INSTANCE$1:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
