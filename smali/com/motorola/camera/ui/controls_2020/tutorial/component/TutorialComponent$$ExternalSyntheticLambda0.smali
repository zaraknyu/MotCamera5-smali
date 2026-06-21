.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->inflateViewStub()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-nez v0, :cond_3

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v3, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;

    invoke-direct {v4, v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v3, v1, v1, v4, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float p0, p0

    iput p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->degree:F

    :cond_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :cond_5
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    :cond_7
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    if-eqz p0, :cond_d

    new-instance v0, Landroid/graphics/RectF;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f06041d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v1, Landroid/widget/PopupWindow;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_d
    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
