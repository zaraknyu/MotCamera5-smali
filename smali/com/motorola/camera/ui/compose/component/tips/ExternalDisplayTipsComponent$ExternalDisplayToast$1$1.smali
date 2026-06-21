.class public final Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v2, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->label:I

    const-wide/16 v1, 0x157c

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponent$ExternalDisplayToast$1$1;->this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/tips/ExternalDisplayTipsComponentViewModel;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
