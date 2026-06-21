.class public final synthetic Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 2
    const/16 p2, 0x15

    iput p2, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "$this$DisposableEffect"

    const-string v4, "it"

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    return-object v5

    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-object v5

    :pswitch_2
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_3
    check-cast p0, Lkotlin/collections/AbstractMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v1, p0, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lkotlin/collections/AbstractCollection;

    if-ne p1, p0, :cond_4

    const-string p0, "(this Collection)"

    goto :goto_3

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ActivityStarter;

    check-cast p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-object v5

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    check-cast p1, Landroid/graphics/PointF;

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TRACKING_ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-object v5

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_5

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Job didn\'t complete, cause: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2$2;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/JobKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_4
    return-object v5

    :pswitch_a
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    const-string v0, "$this$LazyVerticalGrid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v2, v0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;-><init>(Ljava/util/List;I)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;

    invoke-direct {v6, v0, p0, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x29b3c0fe

    invoke-direct {p0, v6, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    iget-object v0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    invoke-direct {v6, v3, v2, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function2;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {v0, v1, v6}, Lcom/google/common/base/Splitter;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    iput-boolean v4, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->hasCustomSpans:Z

    return-object v5

    :pswitch_b
    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    return-object v5

    :pswitch_c
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    return-object v5

    :pswitch_d
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    const-string v0, "$this$graphicsLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    return-object v5

    :pswitch_e
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    check-cast p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->launchRequestInfo:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "LaunchGalleryHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_5
    return-object v5

    :pswitch_f
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    check-cast p1, Lcom/motorola/camera/settings/Setting;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    return-object v5

    :pswitch_10
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    check-cast p1, Lcom/motorola/camera/settings/Setting;

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->freshIconRes(I)V

    return-object v5

    :pswitch_11
    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, v1, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_12
    check-cast p0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    check-cast p1, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->$r8$lambda$DkXsR36SH7kCV5M_Om4Zlb5A55w(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Landroidx/room/RoomConnectionManager;

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    return-object v5

    :pswitch_15
    check-cast p0, Lcom/google/mlkit/vision/common/internal/zza;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/mlkit/vision/common/internal/zza;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Landroidx/room/RoomDatabase;

    check-cast p1, Landroidx/room/DatabaseConfiguration;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
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
