.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $dialog$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;->$dialog$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 6

    iget v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;->$dialog$inlined:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isFirstDraw:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "<get-keys>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    sget-object v5, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->releasePlayer(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->playerStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_1
    iput-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->actionLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isViewEnable:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->clear()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isFirstDraw:Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerState;->settledPage$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->getPagerState()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->finishOnboarding$1()V

    :cond_2
    return-void

    :pswitch_3
    check-cast p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    iget-object p0, p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;->onDispose:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->isDisposed:Z

    return-void

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/core/view/MenuHostHelper;

    return-void

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->_content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void

    :pswitch_7
    check-cast p0, Landroidx/compose/ui/window/DialogWrapper;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
