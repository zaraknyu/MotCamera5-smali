.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

.field public final synthetic this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v5, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->onPositionChangedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->this$1:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    const/4 v6, 0x0

    invoke-direct {p1, v1, v4, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionStaticTooltip$show$1;->label:I

    sget v1, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    invoke-direct {v4, p1, v6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/4 v7, -0x2

    sget-object v8, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;-><init>(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/internal/NopCollector;->INSTANCE:Lkotlinx/coroutines/flow/internal/NopCollector;

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v2
.end method
