.class public final Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final BRIGHT_ALPHA:F

.field public static final DARK_ALPHA:F

.field public static final GROWN_SIZE:F

.field public static final HIDE_STATES:Ljava/util/ArrayList;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final SHRUNKEN_SIZE:F


# instance fields
.field public circleOne:Landroid/widget/ImageView;

.field public circleTwo:Landroid/widget/ImageView;

.field public final cutoutsCoordinates$delegate:Lkotlin/SynchronizedLazyImpl;

.field public hideAnimator:Landroid/view/ViewPropertyAnimator;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public shutterButtonVisibilityListener:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    const-string v1, "getDisplayCutoutConfigs(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    const/4 v1, 0x1

    aget v1, v0, v1

    sput v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->cutoutsCoordinates$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static getDirectionX(FF)F
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    :cond_0
    sub-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final animateHide()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->hideAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 8

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final hideAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->hideAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final inflateViewStub()V
    .locals 9

    invoke-static {}, Lcom/google/android/gms/dynamite/zzf;->access$visibleAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->remove()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    float-to-int v4, v3

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->cutoutsCoordinates$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->DISPLAY_CUTOUT_PANTONE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f080109

    goto :goto_2

    :cond_2
    const v7, 0x7f080108

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    instance-of v7, v6, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_4

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_4

    :cond_4
    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_5

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_5
    sget v7, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    if-eqz v6, :cond_6

    float-to-int v8, v7

    invoke-virtual {v6, v8, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v7, v6

    invoke-static {v4, v8}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    sub-float v4, v3, v7

    div-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v2, "mParentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    filled-new-array {v2, v0}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/motorola/camera/ui/widgets/LevelerView$1;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lcom/motorola/camera/ui/widgets/LevelerView$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {p1, v1, v2}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/dynamite/zzf;->access$visibleAllowed()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    :goto_1
    invoke-static {}, Lcom/google/android/gms/dynamite/zzf;->access$visibleAllowed()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    :goto_2
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterShutterButtonListener()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;

    :cond_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
