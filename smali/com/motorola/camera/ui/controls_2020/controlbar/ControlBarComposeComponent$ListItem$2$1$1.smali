.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

.field public final synthetic $scale:Landroidx/compose/animation/core/Animatable;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$scale:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$scale:Landroidx/compose/animation/core/Animatable;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->onStartBlinkAnimationFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v1, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$scale:Landroidx/compose/animation/core/Animatable;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    invoke-direct {v1, v4, v5, v3}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;->label:I

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-object v0
.end method
