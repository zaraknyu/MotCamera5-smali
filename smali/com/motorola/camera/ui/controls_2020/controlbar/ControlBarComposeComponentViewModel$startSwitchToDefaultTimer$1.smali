.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->resetStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v0, v0, v1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->resetStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
