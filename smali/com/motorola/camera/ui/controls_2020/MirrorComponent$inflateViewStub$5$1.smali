.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyFeatures(II)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    if-nez p3, :cond_5

    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    if-ne p3, v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_7

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->modifyAdjustment(IZ)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyFeatures(II)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getFaceBeautyToningType()I

    move-result p1

    add-int/2addr p1, v0

    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    if-eq p3, p1, :cond_6

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p3, :cond_6

    iget-object v1, p3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyToning(II)V

    :cond_7
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    int-to-float v0, v0

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080220

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMirrorModeMaxZoom()F

    move-result p0

    div-float/2addr p2, p0

    const/16 p0, 0x64

    int-to-float p0, p0

    div-float/2addr p2, p0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "VALUE"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "TYPE"

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ORIENTATION"

    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "CLI_ZOOM_ENABLE"

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "CAMERA_TYPE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "VIDEO_RECORDING"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0, p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, p2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyUiData(I)I

    move-result v3

    if-eq v5, v3, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-eq v4, v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_8

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v1, :cond_8

    :cond_5
    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v2, 0x0

    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    :cond_8
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_5

    :cond_a
    move-object p1, v3

    :goto_5
    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    const-string v0, "fast-adjustment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_c
    :goto_6
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CLI_ZOOM_ENABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iput-boolean v2, p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v0

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080220

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
