.class public final Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;


# instance fields
.field public mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

.field public final mHandler:Landroid/os/Handler;

.field public mRootLayout:Landroid/widget/RelativeLayout;

.field public mTextCenter:Landroid/widget/TextView;

.field public mTextLeft:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->HIDE_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mHandler:Landroid/os/Handler;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final rotate(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 9

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v7

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result v2

    mul-float/2addr v2, v8

    sub-float/2addr v6, v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-float/2addr v0, v3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, 0x0

    float-to-int v0, v0

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :goto_2
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final updateFrameLayoutParams()V
    .locals 14

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz v0, :cond_5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070575

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f070578

    goto :goto_2

    :cond_2
    :goto_1
    const v4, 0x7f070576

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v4, 0xd

    const/16 v7, 0xe

    const/16 v8, 0xb

    const/16 v9, 0x9

    const/16 v10, 0xc

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    invoke-virtual {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p0, 0xf

    invoke-virtual {v1, p0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int p0, v2

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v13, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v13, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method
