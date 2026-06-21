.class public final Landroidx/compose/runtime/internal/RememberEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final abandoning:Ljava/util/Set;

.field public final afters:Landroidx/collection/MutableIntList;

.field public currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

.field public final leaving:Landroidx/compose/runtime/collection/MutableVector;

.field public nestedRemembersLists:Ljava/util/ArrayList;

.field public final pending:Ljava/util/ArrayList;

.field public final priorities:Landroidx/collection/MutableIntList;

.field public releasing:Landroidx/collection/MutableScatterSet;

.field public final remembering:Landroidx/compose/runtime/collection/MutableVector;

.field public final sideEffects:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/runtime/RememberObserverHolder;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/ArrayList;

    new-instance p1, Landroidx/collection/MutableIntList;

    invoke-direct {p1}, Landroidx/collection/MutableIntList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    new-instance p1, Landroidx/collection/MutableIntList;

    invoke-direct {p1}, Landroidx/collection/MutableIntList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    return-void
.end method


# virtual methods
.method public final dispatchAbandons()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 6

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->processPendingLeaving(I)V

    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-eqz v1, :cond_4

    const-string v1, "Compose:onForgotten"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    iget v3, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, -0x1

    if-ge v4, v3, :cond_3

    iget-object v4, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v4, v3

    instance-of v5, v4, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v5, v5, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    :cond_0
    instance-of v5, v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v4}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_1

    :cond_1
    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v4}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_4
    :goto_2
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v0, :cond_6

    const-string v0, "Compose:onRemembered"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_5

    aget-object v3, v0, v1

    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v3, v3, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_6
    return-void
.end method

.method public final processPendingLeaving(I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    iget-object v6, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    iget v7, v6, Landroidx/collection/MutableIntList;->_size:I

    const-string v8, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    if-ge v5, v7, :cond_2

    invoke-virtual {v6, v5}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    if-gt p1, v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v6

    iget-object v9, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {v9, v5}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v9

    if-nez v2, :cond_0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Landroidx/collection/MutableIntList;

    invoke-direct {v4}, Landroidx/collection/MutableIntList;-><init>()V

    invoke-virtual {v4, v6}, Landroidx/collection/MutableIntList;->add(I)V

    new-instance v3, Landroidx/collection/MutableIntList;

    invoke-direct {v3}, Landroidx/collection/MutableIntList;-><init>()V

    invoke-virtual {v3, v9}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Landroidx/collection/MutableIntList;->add(I)V

    invoke-virtual {v3, v9}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_7

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ge v1, p1, :cond_6

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v4, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v4, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_3

    if-ne v8, v7, :cond_4

    invoke-virtual {v3, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v3, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-ge v7, v8, :cond_4

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v3, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    invoke-virtual {v3, v1, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v3, v6, v7}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v4, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v4, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    invoke-virtual {v4, v1, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v4, v6, v7}, Landroidx/collection/MutableIntList;->set(II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {p0, v2, p1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(Ljava/util/List;I)V

    :cond_7
    return-void
.end method

.method public final recordLeaving(Ljava/lang/Object;III)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->processPendingLeaving(I)V

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {p1, p3}, Landroidx/collection/MutableIntList;->add(I)V

    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    invoke-virtual {p0, p4}, Landroidx/collection/MutableIntList;->add(I)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    return-void
.end method
