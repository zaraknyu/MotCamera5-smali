.class public final synthetic Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v2, "getLayoutManager(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070182

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f07006a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v8

    const/16 v10, 0xb4

    if-eqz v8, :cond_2

    if-eq v9, v10, :cond_a

    goto :goto_1

    :cond_2
    if-ne v9, v10, :cond_a

    :goto_1
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v6

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_3
    add-int v0, v4, v7

    add-int/2addr v0, v5

    :goto_2
    if-eqz v3, :cond_4

    sub-int v2, v0, v5

    sub-int v4, v2, v7

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    add-int v0, v4, v6

    add-int/2addr v0, v5

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    sub-int/2addr v0, v7

    :goto_3
    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    sub-int v2, v0, v5

    sub-int v4, v2, v6

    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_9
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_5

    :cond_a
    add-int/2addr v7, v5

    add-int/2addr v7, v6

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    add-int v4, v3, v6

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v6

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_e
    :goto_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->needUpdateVerticalPosition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->needUpdateVerticalPosition:Z

    :cond_f
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    move-result v1

    :cond_10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imeVisible:Z

    if-ne v0, v1, :cond_11

    goto :goto_7

    :cond_11
    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->holderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->primaryTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    :goto_6
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;

    if-eqz v2, :cond_14

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->primaryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_14
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->imeVisible:Z

    :goto_7
    return-void

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->updatePositionCacheAndDispatch()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
