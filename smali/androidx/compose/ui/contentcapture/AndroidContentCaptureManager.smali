.class public final Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final SendRecurringContentCaptureEventsIntervalMillis:J

.field public final boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final bufferedEvents:Ljava/util/ArrayList;

.field public checkingForSemanticsChanges:Z

.field public final contentCaptureChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

.field public contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

.field public currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public currentSemanticsNodesInvalidated:Z

.field public currentSemanticsNodesSnapshotTimestampMillis:J

.field public final handler:Landroid/os/Handler;

.field public final onContentCaptureSession:Landroidx/room/RoomDatabase$closeBarrier$1;

.field public final previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

.field public translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

.field public final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/room/RoomDatabase$closeBarrier$1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->onContentCaptureSession:Landroidx/room/RoomDatabase$closeBarrier$1;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->SendRecurringContentCaptureEventsIntervalMillis:J

    sget-object p2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesInvalidated:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->handler:Landroid/os/Handler;

    sget-object p2, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    const-string v0, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final boundsUpdatesEventLoop$ui_release(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    iget v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    :goto_1
    iput-object p0, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iput-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v4, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->notifyContentCaptureChanges()V

    :cond_6
    iget-boolean p1, v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    if-nez p1, :cond_7

    iput-boolean v4, v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    iget-object p1, v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->handler:Landroid/os/Handler;

    iget-object v5, v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-wide v5, v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->SendRecurringContentCaptureEventsIntervalMillis:J

    iput-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iput-object p0, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    :goto_3
    return-object v1

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesInvalidated:Z

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public final isEnabled$ui_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyContentCaptureChanges()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Landroid/view/contentcapture/ContentCaptureSession;

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    iget-object v7, v6, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v6, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    goto :goto_1

    :cond_2
    iget-object v5, v6, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/room/ObservedTableVersions;

    if-eqz v5, :cond_3

    iget-object v5, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewStructure;

    invoke-virtual {v1, v5}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    new-array v2, v5, [J

    const-wide/high16 v4, -0x8000000000000000L

    aput-wide v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->onContentCaptureSession:Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$closeBarrier$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnAppeared(ILandroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->notifyContentCaptureChanges()V

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->notifyContentCaptureChanges()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    return-void
.end method

.method public final sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    .locals 7

    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p2, p0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x4

    invoke-static {p2, p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v6

    iget v5, v5, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v6, v5}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    invoke-static {p2, p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v2

    iget v3, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v2, v3}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, v3}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    goto :goto_2

    :cond_2
    const-string p0, "node not present in pruned tree before this change"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final updateBuffersOnAppeared(ILandroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Ljava/lang/Boolean;

    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    sget-object v6, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    if-ne v5, v6, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v4

    :cond_2
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    sget-object v6, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    if-ne v5, v6, :cond_5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_5
    :goto_0
    iget v6, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    const/4 v3, 0x0

    if-nez v2, :cond_6

    :goto_1
    move-object v10, v4

    goto/16 :goto_3

    :cond_6
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v7

    iget v8, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    if-eqz v7, :cond_7

    iget v5, v7, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    int-to-long v9, v5

    invoke-virtual {v2, v9, v10}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    int-to-long v9, v8

    iget-object v2, v2, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v2, v5, v9, v10}, Landroid/view/contentcapture/ContentCaptureSession;->newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    move-result-object v11

    new-instance v2, Landroidx/room/ObservedTableVersions;

    const/16 v5, 0xc

    invoke-direct {v2, v5, v11}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    iget-object v5, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v9, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v11}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v10, "android.view.contentcapture.EventTimestamp"

    iget-wide v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    invoke-virtual {v7, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX"

    move/from16 v12, p1

    invoke-virtual {v7, v10, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v7, v4

    :cond_a
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_b

    invoke-virtual {v11, v8, v4, v4, v7}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c

    move-object v7, v4

    :cond_c
    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_d

    const-string v7, "android.widget.ViewGroup"

    invoke-virtual {v11, v7}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_d
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    move-object v7, v4

    :cond_e
    check-cast v7, Ljava/util/List;

    const/16 v8, 0x3e

    const-string v10, "\n"

    if-eqz v7, :cond_f

    const-string v12, "android.widget.TextView"

    invoke-virtual {v11, v12}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-static {v8, v10, v7}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_10

    move-object v7, v4

    :cond_10
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v7, :cond_11

    const-string v12, "android.widget.EditText"

    invoke-virtual {v11, v12}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_12

    move-object v7, v4

    :cond_12
    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_13

    invoke-static {v8, v10, v7}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_13
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_14

    move-object v7, v4

    :cond_14
    check-cast v7, Landroidx/compose/ui/semantics/Role;

    if-eqz v7, :cond_15

    iget v7, v7, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {v7}, Landroidx/compose/ui/platform/InvertMatrixKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v11, v7}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_15
    invoke-static {v5}, Landroidx/compose/ui/platform/InvertMatrixKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, v5, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v7, v5, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v5, v5, Landroidx/compose/ui/text/TextLayoutInput;->density:Landroidx/compose/ui/unit/Density;

    iget-object v7, v7, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v7, v7, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v7

    invoke-interface {v5}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v8

    mul-float/2addr v8, v7

    invoke-interface {v5}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual {v11, v5, v3, v3, v3}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    :cond_16
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    if-nez v5, :cond_17

    goto :goto_2

    :cond_17
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    iget-boolean v9, v9, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v9, :cond_18

    move-object v4, v8

    :cond_18
    if-eqz v4, :cond_19

    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v7, 0x8

    invoke-static {v5, v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Landroidx/compose/ui/node/NodeCoordinator;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    :cond_19
    :goto_2
    iget v4, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    float-to-int v12, v4

    iget v5, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    float-to-int v13, v5

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v8, v4

    float-to-int v4, v8

    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v7, v5

    float-to-int v5, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    move-object v10, v2

    :goto_3
    if-nez v10, :cond_1a

    goto :goto_4

    :cond_1a
    new-instance v5, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    iget-wide v7, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    sget-object v9, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_APPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/room/ObservedTableVersions;)V

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    move v4, v3

    :goto_5
    if-ge v3, v2, :cond_1c

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v7

    iget v6, v6, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v7, v6}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnAppeared(ILandroidx/compose/ui/semantics/SemanticsNode;)V

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method public final updateBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    new-instance v1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    iget-wide v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    sget-object v5, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_DISAPPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/room/ObservedTableVersions;)V

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0, p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
