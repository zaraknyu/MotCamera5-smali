.class public final Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $consumer:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;->$consumer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;->$consumer:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/Pair;

    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/settings/Setting;

    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    iget-object v5, p2, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v5

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_DUAL_SCREEN_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v7, 0x7f110018

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v7, 0x7f110017

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v7, 0x7f080172

    :cond_2
    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f1205ff

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_3
    const p0, 0x7f1205fc

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f1202d1

    goto :goto_1

    :cond_5
    const p0, 0x7f1202d0

    :goto_1
    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f1205fe

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x7f1205fd

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f120528

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v2, p2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const p2, 0x7f120527

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_9
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {p2, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput v7, p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mGraphicResource:I

    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {p2, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_c
    return-object v3

    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    check-cast p0, Ljava/util/HashMap;

    iget-object v0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->_onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v3

    :pswitch_1
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/window/layout/HardwareFoldingFeature;

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_e
    move-object p2, v2

    :goto_5
    instance-of p1, p2, Landroidx/window/layout/HardwareFoldingFeature;

    if-eqz p1, :cond_f

    check-cast p2, Landroidx/window/layout/HardwareFoldingFeature;

    goto :goto_6

    :cond_f
    move-object p2, v2

    :goto_6
    sget-object p1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-eqz p2, :cond_10

    iget-object v2, p2, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    :cond_10
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    return-object v3

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->scaleFactor$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    return-object v3

    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz p2, :cond_12

    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p2, :cond_13

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz p2, :cond_14

    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p2, :cond_15

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_16

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_17

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    :cond_17
    :goto_7
    return-object v3

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
