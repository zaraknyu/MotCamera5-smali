.class public final synthetic Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->show()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateMenu(Z)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateShow()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateHide()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->remove()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillText()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePillArea$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v3

    :goto_1
    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateHideModePill()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateMenu(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v3, "getLayoutManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v1, v0, :cond_8

    move v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_3
    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_b

    goto/16 :goto_6

    :cond_b
    new-instance v3, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;

    const/16 v4, 0x8

    invoke-direct {v3, v4, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    const-string v4, "getLayoutManager(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v1

    const v4, 0x7f070390

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v1, :cond_10

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getContext(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v10}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap()V

    iget v10, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq v10, v8, :cond_d

    iput v8, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_d
    iget v10, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    sub-float/2addr v10, v9

    cmpg-float v11, v10, v9

    if-gez v11, :cond_e

    add-float/2addr v10, v7

    :cond_e
    cmpl-float v6, v10, v6

    if-lez v6, :cond_f

    sub-float/2addr v10, v7

    :cond_f
    add-float/2addr v9, v10

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;-><init>(I)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5

    :cond_10
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(I)V

    iget v10, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    sub-float/2addr v10, v9

    cmpg-float v11, v10, v9

    if-gez v11, :cond_11

    add-float/2addr v10, v7

    :cond_11
    cmpl-float v6, v10, v6

    if-lez v6, :cond_12

    sub-float/2addr v10, v7

    :cond_12
    add-float/2addr v9, v10

    iput v9, v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v4, v3}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_5
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_13
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePillArea$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_16

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120540

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillText()V

    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
