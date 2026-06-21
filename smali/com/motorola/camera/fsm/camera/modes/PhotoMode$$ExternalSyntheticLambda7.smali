.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;->$r8$classId:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->refreshMatrix()V

    :cond_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_2
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_3
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v4, 0xe

    invoke-direct {v3, v2, v4, v0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :pswitch_4
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderWhileModeSwitch:Z

    if-eqz v2, :cond_a

    :cond_9
    iput-boolean v11, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderWhileModeSwitch:Z

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    return-void

    :pswitch_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v3, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v3, v1, :cond_c

    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v2, v11}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_b
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v2, v12}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v2, v1, :cond_d

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_d
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v2, v1, :cond_e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    :goto_4
    return-void

    :pswitch_6
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v2, :cond_f

    goto :goto_5

    :cond_f
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v1

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSplitScreen:Z

    if-eq v1, v2, :cond_10

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSplitScreen:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    :goto_5
    return-void

    :pswitch_7
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v2, :cond_11

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateGuideLinePosition()V

    :cond_12
    :goto_6
    return-void

    :pswitch_8
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    const-string v3, "<unused var>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->isDvPosture:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->updateLabelViewsVisibleState()V

    return-void

    :pswitch_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string/jumbo v6, "type"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v6, :cond_25

    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_25

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v6, "getLayoutManager(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isControlPanelAvailable:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    const v6, 0x7f0a036d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v10

    :cond_13
    instance-of v1, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    if-eqz v1, :cond_14

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    if-eqz v1, :cond_14

    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v1, :cond_14

    goto/16 :goto_a

    :cond_14
    move-object v1, v2

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "DIRECTION"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v10, "ORIGIN"

    const-class v13, Landroid/graphics/PointF;

    invoke-virtual {v1, v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    if-ne v2, v7, :cond_25

    if-nez v10, :cond_15

    goto/16 :goto_a

    :cond_15
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_16

    goto/16 :goto_a

    :cond_16
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Companion:Lokio/Timeout;

    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/16 v10, 0x5a

    if-eq v3, v10, :cond_1c

    const/16 v10, 0xb4

    if-eq v3, v10, :cond_1a

    const/16 v10, 0x10e

    if-eq v3, v10, :cond_18

    if-ne v6, v7, :cond_17

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_17
    if-ne v6, v8, :cond_1e

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_18
    if-ne v6, v9, :cond_19

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_19
    if-ne v6, v12, :cond_1e

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_1a
    if-ne v6, v7, :cond_1b

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_1b
    if-ne v6, v8, :cond_1e

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_1c
    if-ne v6, v9, :cond_1d

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_7

    :cond_1d
    if-ne v6, v12, :cond_1e

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    :cond_1e
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v12, :cond_20

    if-eq v3, v9, :cond_1f

    goto :goto_8

    :cond_1f
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    goto :goto_8

    :cond_20
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    :goto_8
    const-string v3, "ON_DOWN"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x96

    cmp-long v1, v3, v5

    if-gez v1, :cond_21

    move v1, v12

    goto :goto_9

    :cond_21
    move v1, v11

    :goto_9
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    if-ne v2, v3, :cond_22

    if-eqz v1, :cond_22

    goto :goto_a

    :cond_22
    iput-boolean v11, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isClosing:Z

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v12, :cond_24

    if-eq v0, v9, :cond_23

    goto :goto_a

    :cond_23
    invoke-static {v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->notifyControlPanelAction(Z)V

    goto :goto_a

    :cond_24
    invoke-static {v12}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->notifyControlPanelAction(Z)V

    :cond_25
    :goto_a
    return-void

    :pswitch_a
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    instance-of v1, v2, Ljava/lang/Boolean;

    if-nez v1, :cond_26

    goto :goto_b

    :cond_26
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->isDvPosture:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateVisible()V

    :goto_b
    return-void

    :pswitch_b
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    if-nez v1, :cond_27

    const/4 v1, -0x1

    goto :goto_c

    :cond_27
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    :goto_c
    if-eq v1, v12, :cond_2a

    if-eq v1, v9, :cond_29

    if-eq v1, v7, :cond_28

    goto :goto_d

    :cond_28
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_29
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_2a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.mcf.McfCallbackAIScene"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mCandidateScenes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_d
    return-void

    :pswitch_c
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v3, :cond_2e

    sget-object v1, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->DumpAppInfo:Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;

    if-ne v2, v1, :cond_2e

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_e

    :cond_2b
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    :cond_2c
    if-nez v10, :cond_2d

    goto :goto_e

    :cond_2d
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2e
    :goto_e
    return-void

    :pswitch_d
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FOLDING_STATE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_2f

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->checkPosture(Z)V

    :cond_2f
    return-void

    :pswitch_e
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_30

    goto :goto_11

    :cond_30
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_f

    :cond_31
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    invoke-direct {v1, v12, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_f
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_11

    :cond_32
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->featureLabelTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_33

    goto :goto_11

    :cond_33
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_10

    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070161

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_10
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_11
    return-void

    :pswitch_f
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_35

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_35
    return-void

    :pswitch_10
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_36

    goto/16 :goto_17

    :cond_36
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_37

    goto/16 :goto_16

    :cond_37
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iput-object v10, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_38

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v12}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_39

    const v3, 0x7f0a0094

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_39
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3a

    const v3, 0x7f0a0092

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    :cond_3a
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3b

    const v3, 0x7f0a0093

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_12

    :cond_3b
    move-object v1, v10

    :goto_12
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3c

    const v3, 0x7f0a0096

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_13

    :cond_3c
    move-object v1, v10

    :goto_13
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3d

    const v3, 0x7f0a0095

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_14

    :cond_3d
    move-object v1, v10

    :goto_14
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3e

    const v3, 0x7f0a0090

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_15

    :cond_3e
    move-object v1, v10

    :goto_15
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3f

    const v3, 0x7f0a0091

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    :cond_3f
    iput-object v10, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_40

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v11}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    if-eqz v1, :cond_41

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v12}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_41
    :goto_16
    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.BannerPromptComponent.BannerData"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    if-eqz v2, :cond_47

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_42

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_42

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_42
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_43

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_43

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_43
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_44

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerText:Landroid/widget/TextView;

    if-eqz v2, :cond_44

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_45

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_45

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_45
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_46

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    if-eqz v2, :cond_46

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_46
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_17

    :cond_47
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    :goto_17
    return-void

    :pswitch_11
    check-cast v0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1, v12}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    return-void

    :pswitch_12
    move-object v14, v0

    check-cast v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean v0, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean v0, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    if-nez v0, :cond_4b

    iput-boolean v12, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    instance-of v0, v2, Landroid/os/Bundle;

    if-eqz v0, :cond_48

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    :cond_48
    if-eqz v10, :cond_49

    const-string v0, "ON_UP"

    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_18

    :cond_49
    move-wide v0, v4

    :goto_18
    cmp-long v2, v0, v4

    if-lez v2, :cond_4b

    iget-object v2, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v2

    :try_start_0
    iget-object v3, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    aget-wide v3, v3, v11

    cmp-long v0, v0, v3

    if-lez v0, :cond_4a

    goto :goto_19

    :cond_4a
    move v11, v12

    :goto_19
    iget-object v0, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    aget-object v15, v0, v11

    iget-object v1, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    aput-object v1, v0, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v15, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iget v0, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%.2f"

    iget v4, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->lastLux:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->exposure:F

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->iso:I

    iget v5, v14, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->aperture:F

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_iso"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_fnum"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "_lux"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_exp"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v13, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;

    move/from16 v17, v0

    move-object/from16 v16, v1

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJLjava/lang/String;)V

    invoke-virtual {v2, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4b
    :goto_1a
    return-void

    :pswitch_13
    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v1, :cond_4c

    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_4c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
