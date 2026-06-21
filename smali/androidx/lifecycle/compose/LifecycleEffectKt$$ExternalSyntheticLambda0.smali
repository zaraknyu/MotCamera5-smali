.class public final synthetic Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    const-string v2, "coordinates"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    const-string v2, "getKey(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    const-string/jumbo v2, "scope"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/compose/ComposablePositions;->SLOW_MOTION_FRAME_RATE_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/compose/ComposablePositions;->CONTROL_PANEL_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/ui/compose/ComposablePositions;->FRAME_RATE_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    new-instance v2, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/motorola/camera/ui/compose/component/ComposeComponent$setComposablePositions$1$1;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Lcom/motorola/camera/ui/compose/ComposablePositions;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v3, v3, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
