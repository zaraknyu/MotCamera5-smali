.class public final synthetic Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    monitor-enter p0

    :try_start_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->stopAnimation()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusRotation:Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    filled-new-array {v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusRotation:Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->stopAnimation()V

    :goto_2
    return v0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->reset()V

    goto :goto_4

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_4
    return v1

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    :cond_7
    const/4 p0, 0x1

    return p0

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_a

    if-ltz v3, :cond_a

    invoke-virtual {p1, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    move-object p1, v2

    :goto_6
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_BACK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy$1$1()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy$1$1()V

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy$1$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    if-lez p1, :cond_10

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_8

    :cond_e
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState$1(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    or-int/lit16 v4, v4, 0x1504

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_10
    :goto_8
    return v1

    :pswitch_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v1, "motorola.camera.intent.action.TAKE_PICTURE"

    const-string v2, "SWITCH_TYPE"

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_11

    goto/16 :goto_b

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "motorola.camera.intent.action.SWITCH_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_12

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, p0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_a

    :cond_12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;->createTakePictureEvent()Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p1

    goto :goto_a

    :cond_13
    const-string v4, "motorola.camera.intent.action.TAKE_SELFIE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_16

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_9

    :cond_14
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v7, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;->mIntentList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    :goto_9
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;->createTakePictureEvent()Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    move-object p1, p0

    :goto_a
    invoke-interface {v3, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v5

    goto :goto_b

    :cond_16
    const-string p0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_17
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-virtual {p0, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v7, v0, p0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :cond_18
    if-nez v7, :cond_19

    goto :goto_b

    :cond_19
    invoke-interface {v3, v7}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    aget v0, v0, v5

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/CameraIntentReceiver;->vibrateForQuickCapture(Landroid/content/Context;J)V

    :cond_1a
    move v5, p0

    :cond_1b
    :goto_b
    return v5

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 p0, 0x1

    return p0

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    const/4 p0, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x0

    :goto_c
    return p0

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1d

    goto :goto_d

    :cond_1d
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_d

    :cond_1e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_d
    return v1

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    const/4 v3, 0x2

    if-eq v1, v3, :cond_20

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    goto :goto_f

    :cond_20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v3, p1, v1}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_f

    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    const/4 v1, 0x0

    :goto_e
    iget-object v3, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v3

    if-ge v1, v3, :cond_23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    new-instance v3, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_23
    :goto_f
    return v2

    :pswitch_8
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/ScanningEngine;

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2a

    check-cast p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_2
    iget-object v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_12

    :cond_24
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v0, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v0

    if-nez v0, :cond_26

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_13

    :cond_26
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_11

    :cond_28
    monitor-exit v1

    goto :goto_14

    :cond_29
    :goto_12
    monitor-exit v1

    goto :goto_14

    :goto_13
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2a
    :goto_14
    const/4 p0, 0x1

    goto :goto_15

    :cond_2b
    const/4 p0, 0x0

    :goto_15
    return p0

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const-string/jumbo v0, "task_id"

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2c

    goto :goto_16

    :cond_2c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/motorola/camera/background/common/TaskId;

    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    if-eqz v0, :cond_2e

    sget-object p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, ""

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "SaveImageServiceHandler"

    const-string v0, "Error while sending Job Progress"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :cond_2d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V

    :cond_2e
    :goto_16
    const/4 p0, 0x1

    return p0

    :pswitch_a
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    iget-object p1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    iget-boolean v3, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v3, :cond_30

    iget-boolean v3, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v3, :cond_30

    iget-object v3, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/DownUpDetector;->build()Landroidx/media3/common/FlagSet;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/ui/DownUpDetector;

    invoke-direct {v4}, Lcom/motorola/camera/ui/DownUpDetector;-><init>()V

    iput-object v4, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v0, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_30
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_31
    return v1

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
