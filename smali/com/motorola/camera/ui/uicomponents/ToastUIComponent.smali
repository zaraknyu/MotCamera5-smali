.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static mIsModesMenuOpen:Z = false

.field public static mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;


# instance fields
.field public mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

.field public final mHandler:Landroid/os/Handler;

.field public mImage:Landroid/widget/ImageView;

.field public mIsControlPanelOpen:Z

.field public mIsSplitScreen:Z

.field public mIsVideoRecording:Z

.field public mLandscapeAlignCenter:Z

.field public mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public mPreviewRect:Landroid/graphics/RectF;

.field public mRootLayout:Landroid/widget/RelativeLayout;

.field public mText:Landroid/widget/TextView;

.field public mTextDescription:Landroid/widget/TextView;

.field public mToastStyle:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    new-instance p2, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsVideoRecording:Z

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getContext$3()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/motorola/camera/PermissionCallback;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_CLOSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 0

    return-void
.end method

.method public final isCenterRotation()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mCenterRotation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isToastVisible$2()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    :cond_0
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_6

    instance-of p1, p2, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    if-eq p2, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsVideoRecording:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateFrameLayoutParams$1()V

    :cond_6
    return-void
.end method

.method public final rotate(I)V
    .locals 4

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->isCenterRotation()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;ZII)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method

.method public final showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a047f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0482

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0481

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0484

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0485

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0483

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0480

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    :cond_0
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->rotate(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    :cond_2
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    :goto_0
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_6

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateFrameLayoutParams$1()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    iget v6, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    iget-object v7, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mGraphicResourceSize:Landroid/util/Size;

    iget-object v8, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    iget v9, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mGraphicResource:I

    if-eqz v8, :cond_8

    iget-object v10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    iget v11, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    const/16 v10, 0x8

    if-eqz v9, :cond_c

    iget-object v11, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_4

    :cond_9
    const-string/jumbo v12, "raw"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_4
    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f070572

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_5
    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_c
    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_6
    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    const v9, 0x7f08009f

    if-eqz v7, :cond_10

    const v11, 0x7f1303b9

    const v12, 0x7f0800a3

    if-eq v7, v3, :cond_f

    const/4 v3, 0x4

    if-eq v7, v3, :cond_e

    if-eq v7, v5, :cond_d

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    const/4 v2, 0x6

    iput v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v3, 0x7f13015d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    iput-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput v5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f0800a2

    invoke-static {v3, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v3, 0x7f130255

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070571

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070581

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v2, v7, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07057c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v3, 0x7f1301c6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v3, 0x17

    invoke-direct {v2, v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda17;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-ne v6, v5, :cond_12

    const-string p1, " "

    invoke-static {p0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_12
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_5

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    sput-boolean v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_11

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_11

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_CLOSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    return-void

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {p1, v0}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    move v3, v4

    :goto_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {p1, v0, v2}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_11

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    if-nez p1, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v3, :cond_11

    :cond_a
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-boolean v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_c

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->isToastVisible$2()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    :cond_c
    iput-boolean v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsVideoRecording:Z

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    return-void

    :cond_f
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mDismissOnCaptureStarts:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1

    :cond_11
    return-void

    :cond_12
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsVideoRecording:Z

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateFrameLayoutParams$1()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070575

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_3

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x7f070578

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean v6, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsVideoRecording:Z

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v6

    if-nez v6, :cond_4

    const v6, 0x7f070577

    goto :goto_3

    :cond_4
    const v6, 0x7f070576

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iget v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    sget-object v10, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 v11, 0xb4

    sget-object v12, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne v9, v11, :cond_8

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v13, 0x2

    if-eq v9, v13, :cond_6

    goto :goto_4

    :cond_6
    move-object v6, v10

    goto :goto_4

    :cond_7
    move-object v6, v12

    :cond_8
    :goto_4
    sget-object v9, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne v6, v9, :cond_9

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1d

    :cond_9
    if-eq v6, v10, :cond_a

    if-ne v6, v12, :cond_24

    :cond_a
    iget v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v14, 0xc

    const/16 v15, 0xa

    const/4 v13, 0x0

    if-eq v9, v8, :cond_1c

    if-eq v9, v11, :cond_17

    if-eq v9, v7, :cond_f

    if-ne v6, v12, :cond_b

    move v0, v13

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v2, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    move v0, v13

    :goto_6
    invoke-virtual {v2, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-nez v0, :cond_d

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1d

    :cond_d
    float-to-int v0, v4

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_e
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1d

    :cond_f
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_10

    const/4 v3, 0x1

    :goto_7
    const/16 v4, 0x9

    goto :goto_8

    :cond_10
    move v3, v13

    goto :goto_7

    :goto_8
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v10, :cond_11

    const/4 v3, 0x1

    :goto_9
    const/16 v4, 0xb

    goto :goto_a

    :cond_11
    move v3, v13

    goto :goto_9

    :goto_a
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v10, :cond_12

    move v0, v5

    goto :goto_b

    :cond_12
    move v0, v13

    :goto_b
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne v6, v12, :cond_13

    goto :goto_c

    :cond_13
    move v5, v13

    :goto_c
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1d

    :cond_14
    invoke-virtual {v2, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_15

    const/4 v0, 0x1

    :goto_d
    const/16 v3, 0x9

    goto :goto_e

    :cond_15
    move v0, v13

    goto :goto_d

    :goto_e
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_16

    move v0, v13

    :goto_f
    const/16 v3, 0xb

    goto :goto_10

    :cond_16
    const/4 v0, 0x1

    goto :goto_f

    :goto_10
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v4

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1d

    :cond_17
    if-ne v6, v12, :cond_18

    move v0, v13

    goto :goto_11

    :cond_18
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_19

    const/4 v0, 0x1

    goto :goto_12

    :cond_19
    move v0, v13

    :goto_12
    invoke-virtual {v2, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1a

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1d

    :cond_1a
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1b

    float-to-int v0, v4

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1b
    float-to-int v0, v4

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1d

    :cond_1c
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v10, :cond_1d

    const/4 v3, 0x1

    :goto_13
    const/16 v4, 0x9

    goto :goto_14

    :cond_1d
    move v3, v13

    goto :goto_13

    :goto_14
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_1e

    const/4 v3, 0x1

    :goto_15
    const/16 v4, 0xb

    goto :goto_16

    :cond_1e
    move v3, v13

    goto :goto_15

    :goto_16
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v10, :cond_1f

    move v0, v5

    goto :goto_17

    :cond_1f
    move v0, v13

    :goto_17
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v6, v12, :cond_20

    goto :goto_18

    :cond_20
    move v5, v13

    :goto_18
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1d

    :cond_21
    invoke-virtual {v2, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_22

    move v0, v13

    :goto_19
    const/16 v3, 0x9

    goto :goto_1a

    :cond_22
    const/4 v0, 0x1

    goto :goto_19

    :goto_1a
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v6, v12, :cond_23

    const/4 v6, 0x1

    :goto_1b
    const/16 v0, 0xb

    goto :goto_1c

    :cond_23
    move v6, v13

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v4

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_24
    :goto_1d
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateToastLayout(Z)V
    .locals 14

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v7, 0x5a

    if-eq v5, v7, :cond_3

    const/16 v7, 0x10e

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->top:I

    int-to-float v5, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v6

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v5

    mul-float/2addr v5, v4

    :goto_2
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v7

    const v8, 0x7f070580

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v3

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v5, v3

    goto :goto_3

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v9, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v10

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;Z)F

    move-result v10

    mul-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_4
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_5
    float-to-int p1, p1

    goto :goto_6

    :cond_7
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    goto :goto_5

    :goto_6
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x2

    goto :goto_7

    :cond_8
    sub-float/2addr v7, v5

    mul-float/2addr v7, v3

    float-to-int p1, v7

    :goto_7
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p1, 0xe

    const/4 v0, -0x1

    invoke-virtual {v4, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    sget-object v7, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 v9, 0xf

    if-ne p1, v7, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v4, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_8

    :cond_9
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_a
    :goto_8
    mul-float/2addr v5, v3

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->isCenterRotation()Z

    move-result p1

    const/16 v1, 0xd

    if-eqz p1, :cond_b

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move p1, v6

    goto/16 :goto_b

    :cond_b
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    const v0, 0x7f070575

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705e8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_9
    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v0

    :cond_d
    :goto_a
    move v13, v6

    move v6, p1

    move p1, v13

    goto :goto_b

    :cond_e
    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p1

    iget v1, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float v6, p1, v1

    iget-object p1, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    goto :goto_a

    :cond_f
    move p1, v6

    move v6, v5

    :goto_b
    float-to-int v0, v6

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int p1, p1

    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method
