.class public final Lh/u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput p3, p0, Lh/u;->$r8$classId:I

    iput-object p1, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget p1, p0, Lh/u;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lh/u;

    iget-object p0, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lh/u;

    iget-object p0, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh/u;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lh/u;

    iget-object p0, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lh/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_0
    new-instance p1, Lh/u;

    iget-object p0, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lh/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lh/u;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lh/u;->a:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;->onSessionResumeFailed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v1

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;->onSessionResumed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
