.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    iput-object v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    xor-int/2addr v0, v3

    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    monitor-enter v5

    :try_start_0
    iput-boolean v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout$2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mContinuousBlur:Z

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_0
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v2, 0x10

    if-eqz v0, :cond_2

    move v4, v2

    :cond_2
    invoke-interface {v1, v4, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_3
    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(Z)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const v4, 0x7f07056e

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const v1, 0x7f07056d

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f1303b7

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const v4, 0x7f07056c

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f1303b8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_5
    iget-boolean v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    goto :goto_1

    :cond_5
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->shouldShowToggleBar:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->showToggle()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->animateShow()V

    :goto_1
    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->seekGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_7

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_7
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateSeekLayoutForFoldState(Z)V

    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateParentViewMargin()V

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v4, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateLayoutForFoldState(Z)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->$r8$lambda$rVJ8IhWFVnHcHtanqJVcUdhT-o0(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Z)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const/4 v5, -0x1

    const v6, 0x7f0704c8

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_9

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v8

    float-to-int v8, v8

    goto :goto_2

    :cond_9
    move v8, v5

    :goto_2
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    const v9, 0x7f0704c7

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    invoke-virtual {v1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateItemGap(IZ)V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemDecorator:Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    if-eqz v3, :cond_b

    iget v7, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    iput v7, v3, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    :cond_b
    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_c
    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    iget-object v7, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v3, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->setRecyclerViewInCenter(Landroid/view/View;IZ)V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_d

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    :cond_d
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    const v6, 0x7f0704c9

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_e

    const v0, 0x7f080179

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_e
    const v0, 0x106000d

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_f
    :goto_3
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v4, 0x7f0704c2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->closeSliderBar()V

    return-void

    :pswitch_a
    iget-boolean v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v6, :cond_11

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    goto :goto_4

    :cond_11
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->WIDE_CLI_TEXT:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/TranslateAnimation;

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v15, 0x3f8ccccd    # 1.1f

    mul-float v12, v7, v15

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;

    invoke-direct {v9, v0, v4}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;I)V

    invoke-virtual {v6, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v16, Landroid/view/animation/TranslateAnimation;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v24, v2, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v2, v16

    const-wide/16 v9, 0x7d0

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;

    invoke-direct {v7, v0, v3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;I)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_12
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_13

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    goto :goto_5

    :cond_13
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->WIDE_CLI_TEXT:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_6
    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    if-eqz v0, :cond_15

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->registerOrUnregisterListeners(Z)V

    :cond_15
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v0, :cond_16

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_17
    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_19
    return-void

    :pswitch_d
    iget-boolean v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "IS_SELECTED"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->autoSetting:Ljava/util/HashMap;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "TORCH_AUTO_TYPE"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->eventHandler:Lcom/motorola/camera/ui/UIManager;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_TORCH_AUTO_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v2, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1b
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1c
    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->controlPanelShowing:Z

    iget v5, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->showDisableLux:F

    if-nez v2, :cond_24

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->videoIdle:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->videoNvCompatible:Z

    if-nez v2, :cond_1d

    goto/16 :goto_7

    :cond_1d
    if-nez v0, :cond_1e

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-nez v2, :cond_1e

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    iget v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->showEnableLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_1e

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isEnableSuggestionNeeded:Z

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateTextAndImage(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    goto/16 :goto_8

    :cond_1e
    if-nez v0, :cond_1f

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz v2, :cond_1f

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    iget v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->hideEnableLux:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1f

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    goto/16 :goto_8

    :cond_1f
    const v2, 0x7f120606

    if-eqz v0, :cond_20

    iget-boolean v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->alertToastShowed:Z

    if-nez v6, :cond_20

    iget v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_20

    iput-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->alertToastShowed:Z

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput-boolean v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v2, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_8

    :cond_20
    if-eqz v0, :cond_21

    iget-boolean v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->alertToastShowed:Z

    if-eqz v6, :cond_21

    iget v6, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    const/high16 v7, 0x43f50000    # 490.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_21

    iput-boolean v4, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->alertToastShowed:Z

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_8

    :cond_21
    if-eqz v0, :cond_23

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-nez v2, :cond_23

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_23

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableSuggestionNeeded:Z

    if-eqz v0, :cond_22

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateTextAndImage(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    goto :goto_8

    :cond_22
    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableAgainSuggestionNeeded:Z

    if-eqz v0, :cond_25

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->nextDisableShowLux:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_25

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateTextAndImage(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    goto :goto_8

    :cond_23
    if-eqz v0, :cond_25

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz v0, :cond_25

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_25

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    goto :goto_8

    :cond_24
    :goto_7
    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz v0, :cond_25

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    :cond_25
    :goto_8
    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    iget-object v3, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v2, :cond_28

    if-eqz v0, :cond_27

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const-wide/16 v5, 0x4000

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    iget-object v5, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v5

    if-eqz v5, :cond_26

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    goto :goto_9

    :cond_26
    const-string v0, "SaveImageService"

    const-string v3, "Unable to move timelapse file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_9
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_28
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "MCF_PROCESSING"

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v2, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_13
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/tinder/StateMachine;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, v1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    if-ne v2, v0, :cond_29

    goto :goto_a

    :cond_29
    iput-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(IZ)V

    const/16 v0, 0x17

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :goto_a
    return-void

    :pswitch_14
    iget-boolean v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraData;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    if-eqz v1, :cond_2a

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_2
    invoke-interface {v2, v0}, Lcom/motorola/camera/saving/SaveListener;->onSaveComplete(Lcom/motorola/camera/CameraData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_b

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    throw v0

    :cond_2a
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_3
    invoke-interface {v2, v0}, Lcom/motorola/camera/saving/SaveListener;->onSaveError(Lcom/motorola/camera/CameraData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_c

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    throw v0

    :cond_2b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
