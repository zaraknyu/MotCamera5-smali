.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

.field public final synthetic this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->SHOWN_MODE_STATES:Landroid/util/ArraySet;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/compose/ComposablePositions;->SLOW_MOTION_FRAME_RATE_BUTTON:Lcom/motorola/camera/ui/compose/ComposablePositions;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v2

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    iget p0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->screenWidth:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v0, p0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide p0

    const-wide v5, 0xffffffffL

    and-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-int v5, p0

    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    invoke-virtual {v2, v4, v5, p0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    return-object v1

    :cond_0
    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    iget-object v8, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->parentView:Landroid/view/View;

    const/16 v3, 0x30

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;)V

    :cond_1
    return-object v1
.end method
