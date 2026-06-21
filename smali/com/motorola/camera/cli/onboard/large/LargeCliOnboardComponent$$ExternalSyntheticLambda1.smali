.class public final synthetic Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateForward$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateForward$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateForward$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateForward$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->onboardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
