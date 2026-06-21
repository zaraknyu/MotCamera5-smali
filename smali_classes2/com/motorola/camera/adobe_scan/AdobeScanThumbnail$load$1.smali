.class public final Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $orientation:I

.field public final synthetic $page:Lh/F;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;


# direct methods
.method public constructor <init>(ILcom/motorola/camera/adobe_scan/AdobeScanThumbnail;Lh/F;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$page:Lh/F;

    iput p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$orientation:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$page:Lh/F;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$orientation:I

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    invoke-direct {p1, v1, p0, v0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;-><init>(ILcom/motorola/camera/adobe_scan/AdobeScanThumbnail;Lh/F;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->label:I

    iget-object v2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->updateThumbnailJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz p1, :cond_2

    iput v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, v2, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1$1;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$page:Lh/F;

    iget p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1;->$orientation:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail$load$1$1;-><init>(ILcom/motorola/camera/adobe_scan/AdobeScanThumbnail;Lh/F;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    iput-object p0, v2, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->updateThumbnailJob:Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
