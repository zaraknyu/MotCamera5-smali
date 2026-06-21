.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, v0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast p1, Landroid/content/Context;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v4

    const p1, 0x7f0a01ee

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a01e3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->actionLayoutGuideline:Landroidx/constraintlayout/widget/Guideline;

    const p1, 0x7f0a01ed

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    if-eqz p1, :cond_6

    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>(I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v1, v4, v1

    if-nez v1, :cond_1

    :goto_0
    move v1, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v1, v8

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v2, v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x3

    iput v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    iput-boolean v8, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez v1, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_2
    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    :goto_3
    move-wide v6, v1

    goto :goto_4

    :cond_4
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-wide v1, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    goto :goto_3

    :goto_4
    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object v2, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;-><init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;FLjava/util/ArrayList;J)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iget-object v3, v1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_5
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v6, 0xe

    invoke-direct {v3, v6, p1, v5}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v5, v2, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_5
    new-instance v2, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->onItemClick:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_7

    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_7
    const p1, 0x7f0a01f0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->splashView:Landroid/widget/ImageView;

    const p1, 0x7f0a01f1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01f2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->titleTextView:Landroid/widget/TextView;

    const p1, 0x7f0a01e5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->descriptionTextView:Landroid/widget/TextView;

    const p1, 0x7f0a01e2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->actionLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01ef

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->shareButton:Landroid/widget/ImageButton;

    const p1, 0x7f0a01e4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->deleteButton:Landroid/widget/ImageButton;

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    :cond_7
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->shareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda12;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->deleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda12;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->INIT:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {v0, v8, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateBackgroundColor(Z)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Animatable;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    const-string v1, "$this$DisposableEffect"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/16 v1, 0xa

    invoke-direct {p1, v1, v0, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_b

    const-string p0, ""

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_c
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_9
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p1}, Landroidx/compose/ui/text/AnnotatedString;->getStringAnnotations(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-eqz p1, :cond_e

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string v1, "_connection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__insertAdapterOfBgCaptureRecord:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    invoke-virtual {v0, p1, p0}, Landroidx/room/Room;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MediatorLiveData;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_10

    if-nez v1, :cond_f

    if-nez p1, :cond_10

    :cond_f
    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MediatorLiveData;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
